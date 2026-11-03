#include "soter_control.hpp"

#include <binder/IPCThreadState.h>
#include <binder/Parcel.h>

#include <fcntl.h>
#include <sys/socket.h>
#include <sys/stat.h>
#include <sys/un.h>
#include <unistd.h>

#include <atomic>
#include <chrono>
#include <condition_variable>
#include <cstddef>
#include <cstring>
#include <map>
#include <memory>
#include <mutex>
#include <string>
#include <thread>
#include <vector>

#include "logging.hpp"

// =============================================================================
// Wire format (protocol version 1)
// =============================================================================
//
// Every frame starts with a fixed 16-byte little-endian header:
//
//   offset  size  field
//   0       4     magic  = 'M' 'S' 'T' '1'  (0x3154534d LE)
//   4       2     version (kProtocolVersion)
//   6       2     type    (see the command table below)
//   8       4     req_id  (correlates a TX with its REPLY; 0 for control frames)
//   12      4     length  (body length in bytes, <= kMaxFrame)
//   16      ...   body
//
// Command table (direction is from the daemon's point of view):
//
//   type  name           dir   body
//   1     HELLO          C->S  u32 proto, u32 pid, u32 uid, u32 client_ver
//   2     HELLO_ACK      S->C  u32 proto, u32 self_pid, u32 self_uid, u32 lib_ver,
//                              u32 path_kind (0=abstract, 1=filesystem), u32 gen
//   3     REGISTER       C->S  u32 n, n * u32 code
//   4     REGISTER_ACK   S->C  u32 n, u32 mask, n * u32 accepted code
//   5     PING           C->S  (empty)
//   6     PONG           S->C  INFO (see below)
//   7     TX             S->C  u32 code, u32 flags, i32 caller_uid, i32 caller_pid,
//                              u64 tx_id, u32 data_len, data_len bytes of request
//   8     REPLY          C->S  i32 binder_status, u32 data_len, data_len bytes of
//                              the reply Parcel (as the service would have written it)
//   9     STATUS         C->S  (empty)  -> answered with STATUS_RESP
//   10    STATUS_RESP    S->C  INFO
//
// INFO (PONG / STATUS_RESP body), all little endian:
//   u32 active, u32 mask, u32 gen, u32 path_kind, u64 tx_total, u64 tx_ok,
//   u64 tx_fallback, u64 tx_timeout, u64 tx_dropped, u32 last_code, i32 last_uid,
//   u64 uptime_ms
//
// The REPLY body is byte-for-byte the Parcel the binder interceptor's
// `kActionOverrideReply` path would have forwarded: `writeNoException()` followed by
// the service's own reply fields. The native side copies it into the outgoing Binder
// reply Parcel, so the client cannot tell the two paths apart.
// =============================================================================

namespace teesim::soter {
namespace {

// ---- wire constants ---------------------------------------------------------

constexpr uint32_t kMagic = 0x3154534du;  // "MST1" little endian
constexpr size_t kHeaderSize = 16;
constexpr uint32_t kLibVersion = 60200u;
/// REPLY status meaning "the daemon declines; forward to the real service".
constexpr int32_t kStatusPass = -1;

enum : uint16_t {
    kTypeHello = 1,
    kTypeHelloAck = 2,
    kTypeRegister = 3,
    kTypeRegisterAck = 4,
    kTypePing = 5,
    kTypePong = 6,
    kTypeTx = 7,
    kTypeReply = 8,
    kTypeStatus = 9,
    kTypeStatusResp = 10,
};

enum class Outcome { kFallback, kHandled };

// ---- state ------------------------------------------------------------------

std::atomic<bool> g_started{false};
std::atomic<bool> g_lane_enabled{false};
std::atomic<bool> g_session_active{false};
std::atomic<uint32_t> g_registered_mask{0};
std::atomic<uint32_t> g_generation{0};

// The listening socket is created once and never closed.
int g_listen_fd = -1;

// Session fd. Only `shutdown()` is ever issued from another thread; the owning
// reader thread is the only one that closes it, which keeps the descriptor from
// being recycled under a writer.
std::mutex g_session_mutex;
int g_session_fd = -1;
int g_path_kind = 0;

/// Serializes frames from the several binder threads that may answer at once.
std::mutex g_write_mutex;

struct Pending {
    std::mutex mutex;
    std::condition_variable cv;
    bool done = false;
    bool failed = false;
    int32_t status = 0;
    std::vector<uint8_t> payload;
};

std::mutex g_pending_mutex;
std::map<uint32_t, std::shared_ptr<Pending>> g_pending;
std::atomic<uint32_t> g_req_seq{0};

std::atomic<uint64_t> g_tx_total{0};
std::atomic<uint64_t> g_tx_ok{0};
std::atomic<uint64_t> g_tx_fallback{0};
std::atomic<uint64_t> g_tx_timeout{0};
std::atomic<uint64_t> g_tx_dropped{0};
std::atomic<uint32_t> g_last_code{0};
std::atomic<int32_t> g_last_uid{0};

std::chrono::steady_clock::time_point g_start_time = std::chrono::steady_clock::now();

// ---- little-endian codec ----------------------------------------------------

void put16(std::vector<uint8_t> &out, uint16_t v) {
    out.push_back(static_cast<uint8_t>(v & 0xffu));
    out.push_back(static_cast<uint8_t>((v >> 8) & 0xffu));
}

void put32(std::vector<uint8_t> &out, uint32_t v) {
    out.push_back(static_cast<uint8_t>(v & 0xffu));
    out.push_back(static_cast<uint8_t>((v >> 8) & 0xffu));
    out.push_back(static_cast<uint8_t>((v >> 16) & 0xffu));
    out.push_back(static_cast<uint8_t>((v >> 24) & 0xffu));
}

void put64(std::vector<uint8_t> &out, uint64_t v) {
    put32(out, static_cast<uint32_t>(v & 0xffffffffull));
    put32(out, static_cast<uint32_t>((v >> 32) & 0xffffffffull));
}

uint16_t get16(const uint8_t *p) {
    return static_cast<uint16_t>(p[0] | (p[1] << 8));
}

uint32_t get32(const uint8_t *p) {
    return static_cast<uint32_t>(p[0]) | (static_cast<uint32_t>(p[1]) << 8)
           | (static_cast<uint32_t>(p[2]) << 16) | (static_cast<uint32_t>(p[3]) << 24);
}

uint64_t get64(const uint8_t *p) {
    return static_cast<uint64_t>(get32(p)) | (static_cast<uint64_t>(get32(p + 4)) << 32);
}

// ---- socket io --------------------------------------------------------------

bool writeAll(int fd, const void *buffer, size_t length) {
    const uint8_t *cursor = static_cast<const uint8_t *>(buffer);
    while (length > 0) {
        ssize_t written = ::send(fd, cursor, length, MSG_NOSIGNAL);
        if (written < 0) {
            if (errno == EINTR) continue;
            return false;
        }
        if (written == 0) return false;
        cursor += written;
        length -= static_cast<size_t>(written);
    }
    return true;
}

bool readAll(int fd, void *buffer, size_t length) {
    uint8_t *cursor = static_cast<uint8_t *>(buffer);
    while (length > 0) {
        ssize_t got = ::recv(fd, cursor, length, 0);
        if (got < 0) {
            if (errno == EINTR) continue;
            return false;
        }
        if (got == 0) return false;  // orderly shutdown
        cursor += got;
        length -= static_cast<size_t>(got);
    }
    return true;
}

bool sendFrame(int fd, uint16_t type, uint32_t req_id, const std::vector<uint8_t> &body) {
    if (body.size() > kMaxFrame) return false;
    std::vector<uint8_t> frame;
    frame.reserve(kHeaderSize + body.size());
    put32(frame, kMagic);
    put16(frame, kProtocolVersion);
    put16(frame, type);
    put32(frame, req_id);
    put32(frame, static_cast<uint32_t>(body.size()));
    if (!body.empty()) frame.insert(frame.end(), body.begin(), body.end());
    std::lock_guard<std::mutex> lock(g_write_mutex);
    return writeAll(fd, frame.data(), frame.size());
}

bool recvFrame(int fd, uint16_t &type, uint32_t &req_id, std::vector<uint8_t> &body) {
    uint8_t header[kHeaderSize];
    if (!readAll(fd, header, sizeof(header))) return false;
    if (get32(header) != kMagic) {
        LOGE("SOTER-SOCK bad magic 0x%08x", get32(header));
        return false;
    }
    uint16_t version = get16(header + 4);
    if (version != kProtocolVersion) {
        LOGE("SOTER-SOCK peer speaks proto %u, we speak %u", version, kProtocolVersion);
        return false;
    }
    type = get16(header + 6);
    req_id = get32(header + 8);
    uint32_t length = get32(header + 12);
    if (length > kMaxFrame) {
        LOGE("SOTER-SOCK frame too large: %u", length);
        return false;
    }
    body.clear();
    body.resize(length);
    if (length > 0 && !readAll(fd, body.data(), length)) return false;
    return true;
}

// ---- helpers ----------------------------------------------------------------

std::string readCmdline() {
    char buffer[256];
    int fd = ::open("/proc/self/cmdline", O_RDONLY | O_CLOEXEC);
    if (fd < 0) return std::string();
    ssize_t got = ::read(fd, buffer, sizeof(buffer) - 1);
    ::close(fd);
    if (got <= 0) return std::string();
    size_t length = 0;
    while (length < static_cast<size_t>(got) && buffer[length] != '\0') length++;
    return std::string(buffer, length);
}

bool isTargetProcess(const std::string &cmdline) {
    const size_t n = std::strlen(kTargetProcess);
    if (cmdline.compare(0, n, kTargetProcess) != 0) return false;
    // Accept the bare package and its `:sub` processes, nothing else.
    return cmdline.size() == n || cmdline[n] == ':';
}

void failAllPending() {
    std::map<uint32_t, std::shared_ptr<Pending>> drained;
    {
        std::lock_guard<std::mutex> lock(g_pending_mutex);
        drained.swap(g_pending);
    }
    for (auto &entry : drained) {
        std::shared_ptr<Pending> pending = entry.second;
        {
            std::lock_guard<std::mutex> lock(pending->mutex);
            pending->failed = true;
            pending->done = true;
        }
        pending->cv.notify_all();
    }
}

void removePending(uint32_t req_id) {
    std::lock_guard<std::mutex> lock(g_pending_mutex);
    g_pending.erase(req_id);
}

void deliverReply(uint32_t req_id, const std::vector<uint8_t> &body) {
    if (body.size() < 8) {
        LOGW("SOTER-SOCK short REPLY (%zu bytes)", body.size());
        return;
    }
    int32_t status = static_cast<int32_t>(get32(body.data()));
    uint32_t length = get32(body.data() + 4);
    if (length > body.size() - 8) {
        LOGW("SOTER-SOCK REPLY length %u > body %zu", length, body.size());
        return;
    }
    std::shared_ptr<Pending> pending;
    {
        std::lock_guard<std::mutex> lock(g_pending_mutex);
        auto it = g_pending.find(req_id);
        if (it == g_pending.end()) {
            g_tx_dropped.fetch_add(1);
            LOGW("SOTER-SOCK REPLY for unknown req=%u (late reply after timeout)", req_id);
            return;
        }
        pending = it->second;
        g_pending.erase(it);
    }
    {
        std::lock_guard<std::mutex> lock(pending->mutex);
        pending->status = status;
        pending->payload.assign(body.begin() + 8, body.begin() + 8 + length);
        pending->done = true;
    }
    pending->cv.notify_all();
}

std::vector<uint8_t> infoBody() {
    std::vector<uint8_t> body;
    body.reserve(64);
    put32(body, g_session_active.load(std::memory_order_acquire) ? 1u : 0u);
    put32(body, g_registered_mask.load(std::memory_order_acquire));
    put32(body, g_generation.load());
    put32(body, static_cast<uint32_t>(g_path_kind));
    put64(body, g_tx_total.load());
    put64(body, g_tx_ok.load());
    put64(body, g_tx_fallback.load());
    put64(body, g_tx_timeout.load());
    put64(body, g_tx_dropped.load());
    put32(body, g_last_code.load());
    put32(body, static_cast<uint32_t>(g_last_uid.load()));
    auto uptime = std::chrono::duration_cast<std::chrono::milliseconds>(
                          std::chrono::steady_clock::now() - g_start_time)
                          .count();
    put64(body, static_cast<uint64_t>(uptime));
    return body;
}

void handleRegister(int fd, uint32_t req_id, const std::vector<uint8_t> &body) {
    if (body.size() < 4) {
        LOGW("SOTER-SOCK REGISTER without a count");
        return;
    }
    uint32_t count = get32(body.data());
    if (count > 64 || body.size() < 4 + static_cast<size_t>(count) * 4) {
        LOGW("SOTER-SOCK REGISTER malformed (count=%u body=%zu)", count, body.size());
        return;
    }
    uint32_t mask = 0;
    std::vector<uint32_t> accepted;
    accepted.reserve(count);
    for (uint32_t i = 0; i < count; i++) {
        uint32_t code = get32(body.data() + 4 + i * 4);
        if (code >= kMinCode && code <= kMaxCode) {
            mask |= (1u << code);
            accepted.push_back(code);
        }
    }
    g_registered_mask.store(mask, std::memory_order_release);
    std::vector<uint8_t> ack;
    put32(ack, static_cast<uint32_t>(accepted.size()));
    put32(ack, mask);
    for (uint32_t code : accepted) put32(ack, code);
    sendFrame(fd, kTypeRegisterAck, req_id, ack);
    LOGI("SOTER-SOCK REGISTER codes=%u accepted=%zu mask=0x%08x", count, accepted.size(), mask);
}

void handleHello(int fd, uint32_t req_id, const std::vector<uint8_t> &body) {
    uint32_t proto = body.size() >= 4 ? get32(body.data()) : 0;
    uint32_t pid = body.size() >= 8 ? get32(body.data() + 4) : 0;
    uint32_t uid = body.size() >= 12 ? get32(body.data() + 8) : 0;
    uint32_t client_ver = body.size() >= 16 ? get32(body.data() + 12) : 0;
    std::vector<uint8_t> ack;
    put32(ack, kProtocolVersion);
    put32(ack, static_cast<uint32_t>(::getpid()));
    put32(ack, static_cast<uint32_t>(::getuid()));
    put32(ack, kLibVersion);
    put32(ack, static_cast<uint32_t>(g_path_kind));
    put32(ack, g_generation.load());
    sendFrame(fd, kTypeHelloAck, req_id, ack);
    if (proto != kProtocolVersion) {
        LOGW("SOTER-SOCK HELLO proto=%u (we speak %u), client_ver=%u", proto, kProtocolVersion,
             client_ver);
    } else {
        LOGI("SOTER-SOCK HELLO from pid=%u uid=%u client_ver=%u", pid, uid, client_ver);
    }
}

void serveConnection(int fd) {
    uint16_t type = 0;
    uint32_t req_id = 0;
    std::vector<uint8_t> body;

    // Handshake: the peer must speak first, and only a HELLO opens the session.
    // SO_RCVTIMEO keeps a silent connector from pinning this thread forever.
    struct timeval timeout {};
    timeout.tv_sec = 5;
    ::setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
    if (!recvFrame(fd, type, req_id, body) || type != kTypeHello) {
        LOGW("SOTER-SOCK peer did not open with HELLO (type=%u)", type);
        ::close(fd);
        return;
    }
    timeout.tv_sec = 0;
    timeout.tv_usec = 0;
    ::setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &timeout, sizeof(timeout));
    handleHello(fd, req_id, body);

    // One session at a time: a reconnecting daemon preempts the stale one. Only
    // shutdown() is issued from here, never close(), so the old reader thread keeps
    // ownership of its descriptor.
    {
        std::lock_guard<std::mutex> lock(g_session_mutex);
        if (g_session_fd >= 0 && g_session_fd != fd) {
            LOGW("SOTER-SOCK new session preempts the old one");
            ::shutdown(g_session_fd, SHUT_RDWR);
        }
        g_session_fd = fd;
    }
    g_registered_mask.store(0, std::memory_order_release);
    g_session_active.store(true, std::memory_order_release);
    g_generation.fetch_add(1);
    LOGI("SOTER-SOCK session up (gen=%u pid=%d)", g_generation.load(), ::getpid());

    while (true) {
        if (!recvFrame(fd, type, req_id, body)) break;
        switch (type) {
            case kTypeRegister:
                handleRegister(fd, req_id, body);
                break;
            case kTypeReply:
                deliverReply(req_id, body);
                break;
            case kTypePing:
                sendFrame(fd, kTypePong, req_id, infoBody());
                break;
            case kTypeStatus:
                sendFrame(fd, kTypeStatusResp, req_id, infoBody());
                break;
            case kTypeHello:
                handleHello(fd, req_id, body);
                break;
            default:
                LOGW("SOTER-SOCK unknown frame type=%u len=%zu", type, body.size());
                break;
        }
    }

    bool owned = false;
    {
        std::lock_guard<std::mutex> lock(g_session_mutex);
        if (g_session_fd == fd) {
            g_session_fd = -1;
            owned = true;
        }
    }
    if (owned) {
        g_session_active.store(false, std::memory_order_release);
        g_registered_mask.store(0, std::memory_order_release);
        failAllPending();
        LOGI("SOTER-SOCK session down (tx=%llu ok=%llu fb=%llu timeout=%llu)",
             static_cast<unsigned long long>(g_tx_total.load()),
             static_cast<unsigned long long>(g_tx_ok.load()),
             static_cast<unsigned long long>(g_tx_fallback.load()),
             static_cast<unsigned long long>(g_tx_timeout.load()));
    }
    ::close(fd);
}

int createAbstractListener() {
    int fd = ::socket(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC, 0);
    if (fd < 0) return -1;
    sockaddr_un address {};
    address.sun_family = AF_UNIX;
    address.sun_path[0] = '\0';
    const size_t name_length = std::strlen(kSocketName);
    std::memcpy(address.sun_path + 1, kSocketName, name_length);
    socklen_t length = static_cast<socklen_t>(offsetof(sockaddr_un, sun_path) + 1 + name_length);
    if (::bind(fd, reinterpret_cast<sockaddr *>(&address), length) != 0) {
        LOGW("SOTER-SOCK abstract bind @%s failed: errno=%d", kSocketName, errno);
        ::close(fd);
        return -1;
    }
    if (::listen(fd, 4) != 0) {
        LOGW("SOTER-SOCK abstract listen failed: errno=%d", errno);
        ::close(fd);
        return -1;
    }
    return fd;
}

int createFileListener() {
    int fd = ::socket(AF_UNIX, SOCK_STREAM | SOCK_CLOEXEC, 0);
    if (fd < 0) return -1;
    sockaddr_un address {};
    address.sun_family = AF_UNIX;
    std::strncpy(address.sun_path, kSocketPath, sizeof(address.sun_path) - 1);
    ::unlink(kSocketPath);
    if (::bind(fd, reinterpret_cast<sockaddr *>(&address), sizeof(address)) != 0) {
        LOGW("SOTER-SOCK file bind %s failed: errno=%d", kSocketPath, errno);
        ::close(fd);
        return -1;
    }
    ::chmod(kSocketPath, 0666);
    if (::listen(fd, 4) != 0) {
        LOGW("SOTER-SOCK file listen failed: errno=%d", errno);
        ::close(fd);
        return -1;
    }
    return fd;
}

void listenLoop() {
    g_listen_fd = createAbstractListener();
    if (g_listen_fd >= 0) {
        g_path_kind = 0;
        LOGI("SOTER-SOCK listening on abstract @%s", kSocketName);
    } else {
        g_listen_fd = createFileListener();
        if (g_listen_fd < 0) {
            LOGE("SOTER-SOCK no usable listener (abstract + filesystem both refused)");
            g_lane_enabled.store(false, std::memory_order_release);
            return;
        }
        g_path_kind = 1;
        LOGI("SOTER-SOCK listening on %s", kSocketPath);
    }
    while (true) {
        int client = ::accept(g_listen_fd, nullptr, nullptr);
        if (client < 0) {
            if (errno == EINTR) continue;
            LOGE("SOTER-SOCK accept failed: errno=%d", errno);
            ::usleep(200 * 1000);
            continue;
        }
        struct ucred credentials {};
        socklen_t credentials_length = sizeof(credentials);
        if (::getsockopt(client, SOL_SOCKET, SO_PEERCRED, &credentials, &credentials_length) != 0
            || credentials.uid != 0) {
            LOGW("SOTER-SOCK rejected peer uid=%u pid=%d (root only)",
                 static_cast<unsigned>(credentials.uid), credentials.pid);
            ::close(client);
            continue;
        }
        std::thread(serveConnection, client).detach();
    }
}

}  // namespace

// =============================================================================
// Public API
// =============================================================================

void start() {
    bool expected = false;
    if (!g_started.compare_exchange_strong(expected, true)) return;

    std::string cmdline = readCmdline();
    if (!isTargetProcess(cmdline)) {
        LOGI("SOTER-SOCK lane idle: process=%s", cmdline.empty() ? "?" : cmdline.c_str());
        return;
    }
    if (::access(kOffMarker, F_OK) == 0) {
        LOGI("SOTER-SOCK lane disabled by %s", kOffMarker);
        return;
    }
    g_start_time = std::chrono::steady_clock::now();
    g_lane_enabled.store(true, std::memory_order_release);
    std::thread(listenLoop).detach();
    LOGI("SOTER-SOCK lane enabled proto=%u pid=%d", kProtocolVersion, ::getpid());
}

bool shouldIntercept(uint32_t code) {
    if (!g_lane_enabled.load(std::memory_order_relaxed)) return false;
    if (code < kMinCode || code > kMaxCode) return false;
    if (!g_session_active.load(std::memory_order_acquire)) return false;
    uint32_t mask = g_registered_mask.load(std::memory_order_acquire);
    return (mask & (1u << code)) != 0;
}

bool handleTransaction(uint64_t tx_id, uint32_t code, const android::Parcel &request,
                       android::Parcel *reply, uint32_t flags, int32_t &result) {
    if (!shouldIntercept(code)) return false;
    if (reply == nullptr) return false;  // oneway: nothing to forge

    int32_t caller_uid = 0;
    int32_t caller_pid = 0;
    android::IPCThreadState *thread_state = android::IPCThreadState::self();
    if (thread_state != nullptr) {
        caller_uid = static_cast<int32_t>(thread_state->getCallingUid());
        caller_pid = thread_state->getCallingPid();
    }
    g_last_code.store(code);
    g_last_uid.store(caller_uid);

    int fd = -1;
    {
        std::lock_guard<std::mutex> lock(g_session_mutex);
        fd = g_session_fd;
    }
    if (fd < 0) return false;

    const uint8_t *data = request.data();
    size_t size = data == nullptr ? 0 : request.dataSize();
    if (size > kMaxFrame) {
        LOGW("SOTER-SOCK request too large (%zu), forwarding", size);
        return false;
    }

    uint32_t req_id = ++g_req_seq;
    std::shared_ptr<Pending> pending = std::make_shared<Pending>();
    {
        std::lock_guard<std::mutex> lock(g_pending_mutex);
        g_pending[req_id] = pending;
    }

    std::vector<uint8_t> body;
    body.reserve(32 + size);
    put32(body, code);
    put32(body, flags);
    put32(body, static_cast<uint32_t>(caller_uid));
    put32(body, static_cast<uint32_t>(caller_pid));
    put64(body, tx_id);
    put32(body, static_cast<uint32_t>(size));
    if (size > 0) body.insert(body.end(), data, data + size);

    g_tx_total.fetch_add(1);
    if (!sendFrame(fd, kTypeTx, req_id, body)) {
        removePending(req_id);
        g_tx_fallback.fetch_add(1);
        LOGW("SOTER-SOCK send failed for code=%u tx=%llu, forwarding", code,
             static_cast<unsigned long long>(tx_id));
        return false;
    }

    std::unique_lock<std::mutex> lock(pending->mutex);
    bool finished = pending->cv.wait_for(lock, std::chrono::milliseconds(kReplyTimeoutMs),
                                         [&pending] { return pending->done; });
    if (!finished) {
        lock.unlock();
        removePending(req_id);
        g_tx_timeout.fetch_add(1);
        LOGW("SOTER-SOCK daemon timeout after %dms (code=%u tx=%llu), forwarding",
             kReplyTimeoutMs, code, static_cast<unsigned long long>(tx_id));
        return false;
    }
    if (pending->failed) {
        g_tx_fallback.fetch_add(1);
        LOGW("SOTER-SOCK session lost while waiting (code=%u), forwarding", code);
        return false;
    }

    int32_t status = pending->status;
    std::vector<uint8_t> payload = std::move(pending->payload);
    lock.unlock();

    // The daemon can always decline (scope gate, empty/malformed request, an internal
    // error): that is a normal forward, not a failure. An empty payload cannot be a valid
    // AIDL reply either (every reply starts with writeNoException()), so it is treated the
    // same way - the client then talks to the real service instead of reading garbage.
    if (status == kStatusPass || payload.empty()) {
        g_tx_fallback.fetch_add(1);
        return false;
    }

    if (reply->setData(payload.data(), payload.size()) != android::OK) {
        LOGE("SOTER-SOCK reply->setData(%zu) failed", payload.size());
        g_tx_fallback.fetch_add(1);
        return false;
    }
    g_tx_ok.fetch_add(1);
    result = status;
    return true;
}

bool laneEnabled() {
    return g_lane_enabled.load(std::memory_order_relaxed);
}

bool sessionActive() {
    return g_session_active.load(std::memory_order_acquire);
}

uint32_t registeredMask() {
    return g_registered_mask.load(std::memory_order_acquire);
}

}  // namespace teesim::soter
