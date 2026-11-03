#pragma once

// =============================================================================
// Soter native control channel (MapleSU, 6.0.20)
// =============================================================================
//
// A second, binder-free control path for the Soter forge. The module daemon is a
// bare `app_process` on this ROM: `bindService(ISoterService)` is refused ("Unable
// to find app for caller", no AMS app record) and the manager provider does not
// exist (KernelSU-only device), so the daemon can never obtain the service binder
// and therefore can never register a binder interceptor callback.
//
// This channel moves the whole registration inside the *already injected*
// `com.tencent.soter.soterserver` process:
//
//     daemon (uid 0)  --connect-->  @teesim_soter (abstract unix socket, in-proc)
//            |                              ^
//            |  REGISTER (13 AIDL codes)    |
//            +------------------------------+
//            |  <-- TX (code + request bytes)
//            +------------------------------+
//            |  REPLY (status + forged reply parcel bytes) -->
//
// The library owns the listening socket, because it lives in the application
// domain: *it* creates the socket and it accepts exactly one peer, whose
// SO_PEERCRED uid must be 0. Nothing else in the system can drive the forge.
//
// The wire format is versioned (kProtocolVersion) and length-prefixed; see
// soter_control.cpp for the frame layout and the command table, and
// work/tee16-soter-socket/RESULT.md for the maintained protocol description.
//
// Failure policy: every transaction either gets a forged reply within
// kReplyTimeoutMs or is forwarded to the real service. The hook never waits
// without a deadline and never fails a transaction because the channel is down.

#include <cstdint>
#include <vector>

namespace android {
class Parcel;
}

namespace teesim::soter {

/// Wire version of the control channel. Any incompatible change bumps this.
inline constexpr uint16_t kProtocolVersion = 1;

/// Abstract unix socket name (the leading NUL of the abstract namespace is implied).
inline constexpr char kSocketName[] = "teesim_soter";

/// Filesystem fallback, used only when the abstract bind is refused. It lives in the
/// service's own files directory, which the module daemon already writes to
/// (`soter_scope`, `soter_identity`) and root can always reach.
inline constexpr char kSocketPath[] =
        "/data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock";

/// Hard deadline for one forged reply. Past this the transaction is forwarded to the
/// real service, so a wedged daemon degrades Soter instead of hanging the caller.
inline constexpr int kReplyTimeoutMs = 2000;

/// Largest frame either side accepts (request or reply parcel bytes included).
inline constexpr uint32_t kMaxFrame = 4u * 1024u * 1024u;

/// The Soter AIDL surface is codes 1..13; nothing outside this range is ever hijacked.
inline constexpr uint32_t kMinCode = 1;
inline constexpr uint32_t kMaxCode = 13;

/// Process this lane is scoped to. The library is also injected into keystore2, where
/// codes 1..13 are KeyMint transactions and must never be touched.
inline constexpr char kTargetProcess[] = "com.tencent.soter.soterserver";

/// Rollback switch: when this file exists the lane is not started at all and the
/// library behaves exactly like 6.0.19 (binder registration only).
inline constexpr char kOffMarker[] = "/data/adb/tricky_store/soter_socket_off";

/// Start the lane. Idempotent, cheap when the process is not the Soter service.
void start();

/// True when `code` is registered by the daemon and a session is up.
bool shouldIntercept(uint32_t code);

/// Try to answer `code` from the daemon. Returns true when the reply was written to
/// `reply` (and `result` holds the binder status); false means "forward to the real
/// service", which is also what happens when the daemon is gone or too slow.
bool handleTransaction(uint64_t tx_id, uint32_t code, const android::Parcel &request,
                       android::Parcel *reply, uint32_t flags, int32_t &result);

bool laneEnabled();
bool sessionActive();
uint32_t registeredMask();

}  // namespace teesim::soter
