#!/usr/bin/env python3
"""Package the TEESimulator-RS core as MapleSU's bundled KSU module ZIP.

Upstream (read-only): `.research/SKRoot/Pro(众测开放中)/src/testModule/
module_TEESimulatorRS/resources/TEESimulatorRS_Core/`. The kernel-side binaries
are copied byte for byte. Since 6.0.10 the **launch layout is the upstream one**,
which is the only configuration that is known to work on a real KernelSU device
(`.tmp_upstream_rel/upstream.zip`, v6.0.1-282):

  * **flat module root**: `classes.dex`, `daemon`, `inject`, `supervisor`,
    `libTEESimulator.so`, `libcertgen.so`, `resetprop`, `keybox.xml`,
    `target.txt` all live next to `service.sh`. This is required, not cosmetic:
    the dex resolves three paths against the process working directory
    (`exec ./inject ...`, `new File("libcertgen.so").getAbsolutePath()`,
    `core=$(pwd)` in `mpl.SoterInjector`), and `service.sh` starts the daemon
    with `cd $MODDIR`, exactly like upstream;
  * **`SKIPUNZIP=1` + self-extracting `customize.sh`**: KernelSU only
    auto-extracts when `customize.sh` does not set `SKIPUNZIP=1`
    (`ksud/src/installer.sh:411-413`). Upstream never relies on that, because
    the host `unzip` is not part of the module contract and an extraction
    difference would trip our old `[ -f ... ] || abort` check - and `abort()`
    deletes `$MODPATH`, i.e. the module is not installed at all;
  * **one start, at the service stage**: no `post-fs-data.sh` (upstream has
    none) and no `kill` of a running `TEESimulator`. `supervisor` is a
    fork/exec respawn loop (`0xaa0`), so killing the daemon only makes the old
    supervisor fork another one while `service.sh` starts a second supervisor:
    two daemons then inject into keystore2 concurrently;
  * `service.sh` keeps upstream's two lines (`cd $MODDIR` then
    `./supervisor ./daemon "$MODDIR" &`) and moves every MapleSU extra
    (`hide_bootloader.sh`, `webui.sh boot-apply`, keybox auto-update, logd
    props) into one detached background subshell, so nothing can block or fail
    the core start. Since 6.0.11 the preflight is **recorded, never gating**:
    a missing runtime file writes `core=incomplete:<files>` to `ksu_status` and
    the supervisor is still started, exactly like upstream, which has no
    preflight at all.

Self-diagnosis (6.0.11): the same detached subshell also starts a **nested**
subshell that appends two snapshots of the device state (20s and 60s after
boot) to `/sdcard/Download/tee_diag.txt`: build props, `ksu_status`,
supervisor/daemon/keystore2 process table, the daemon's cwd, the
`libTEESimulator` count in keystore2's maps, filtered logcat, `dmesg` avc,
the module directory listing, `target.txt` and the keybox DeviceIDs. That is
the minimum evidence needed to tell "not started", "started but not injected"
and "injected but the chain is wrong" apart without another blind install. A
lock file (`/data/adb/tricky_store/.diag_lock`) keeps it single-instance, every
command is guarded so a failure only writes `[fail: ...]`, and the writer is
detached so it can never delay the core start.

Key material is **unchanged** from 6.0.10, by explicit user instruction: the KSU
bundle ships the same keybox as the Ultra/Pro package
(`TEESimulatorRS_Core/keybox.xml`, sha b7629b3d..., `DeviceID="Yurikey66..."`),
sourced from the shipped Pro ZIP so the two packages cannot drift. Nothing
overwrites an existing `/data/adb/tricky_store/keybox.xml`: `customize.sh` and
`service.sh` only seed it when it is missing (`seed_file`), which is the 6.0.10
behaviour. (Audit note for a later round, not acted on here: that keybox's leaf
certificate has notAfter 2026-11-04T10:54:52Z, so verifiers that call
checkValidity() on the chain would reject it from 2026-11-05.)

MapleSU assets that stay:

  * `core/webui.sh` is the KSU/Lite WebUI backend (POSIX shell) from
    `work/tee13/src/testModule/module_TEESimulatorRS/resources/webui.sh`; the
    Pro build serves the same WebUI over HTTP from the module `.so`, so KSU
    needs the script. It stays under `core/` because the packaged
    `webroot/main.js` calls `sh $MODDIR/core/webui.sh`; packaging adds a
    `CORE` fallback so the flat runtime works;
  * `webroot/` is the front end the KSU manager renders in an iframe;
  * `hide_bootloader.sh` is the **same** file the Pro package ships
    (`work/tee13/.../resources/hide_bootloader.sh`, no `setenforce`);
  * the root `sepolicy.rule` is the project-owned policy (upstream's rules plus
    the `su` ptrace grants). It is not load-bearing - KernelSU runs module
    scripts in the permissive `su` domain (`kernel/selinux/rules.c:88`).

`MAPLESU_TEE_DEX` is mandatory: the upstream checkout's classes.dex has no
`mpl/Soter*` or `mpl/ScopeCli` classes, so falling back to it silently produced
a package without the SOTER lane (2026-11-02 audit). The build verifies the
required classes and prints the dex digest + class hits in its provenance
output.

The output is deterministic (fixed timestamps/order) so its SHA-256 can be
pinned in `LiteScriptModuleBackend` and verified before installation.
"""
import hashlib
import os
import re
import sys
import zipfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
UPSTREAM = os.path.join(
    ROOT, ".research", "SKRoot", "Pro(众测开放中)", "src", "testModule",
    "module_TEESimulatorRS", "resources", "TEESimulatorRS_Core")
OUT = os.path.join(ROOT, "manager", "src", "main", "assets", "maplesu", "bundled",
                   "teesimulator-rs.zip")

# The KSU/Lite WebUI is served by the manager from `webroot/` (iframe + window.ksu
# bridge), so the same front-end the Pro build serves over HTTP ships here too.
WEBROOT = os.path.join(ROOT, "work", "tee13", "src", "testModule",
                       "module_TEESimulatorRS", "resources", "webroot")
WEBROOT_FILES = ["index.html", "main.js", "request.js", "style.css", "toast.css", "toast.js"]

# KSU/Lite WebUI backend (shipped as core/webui.sh, mode 0755). The front end calls
# `sh $MODDIR/core/webui.sh <cmd>` through window.ksu.exec, so the path is a
# contract with the packaged webroot/main.js and is kept even though the runtime
# itself is flat.
WEBUI_SH = os.path.join(ROOT, "work", "tee13", "src", "testModule",
                        "module_TEESimulatorRS", "resources", "webui.sh")

# hide_bootloader.sh is a module-root asset: the module .so runs it from there
# (module_TEESimulatorRS.cpp:116). 6.0.10 ships the exact file the Pro package
# carries instead of the older SKRoot checkout copy: it locates `resetprop`
# absolutely and reports per-property failures instead of failing silently.
HIDE_BOOTLOADER = os.path.join(
    ROOT, "work", "tee13", "src", "testModule", "module_TEESimulatorRS",
    "resources", "hide_bootloader.sh")

# The package must ship the rebuilt dex. The upstream checkout's classes.dex has
# neither the SOTER lane nor the WebUI scope backend, so a silent fallback produced
# a package whose features could never work (2026-11-02 audit, finding #3).
DEX_REQUIRED_CLASSES = ("mpl/SoterForge", "mpl/ScopeCli")

# KernelSU applies <module>/sepolicy.rule at boot; a rule inside core/ is never
# read. This is the project-owned policy (include the su/keystore ptrace grants).
POLICY_SRC = os.path.join(ROOT, "work", "tee13", "src", "testModule",
                          "module_TEESimulatorRS", "resources", "sepolicy.rule")

# Flat runtime: everything the dex, the daemon and the injector open by name.
# `sepolicy.rule` is added separately (module root), `core/webui.sh` + `webroot/`
# are the WebUI contract.
FLAT = ["inject", "libTEESimulator.so", "libcertgen.so", "keybox.xml", "target.txt",
        "supervisor", "daemon", "resetprop", "classes.dex"]

# --- keybox source ----------------------------------------------------------
# Unchanged from 6.0.10 by explicit user instruction (2026-11-02): the KSU
# bundle carries the same keybox as Ultra, taken from the shipped Pro package so
# the two cannot drift. The .research checkout carries a different (older, 16 KB)
# keybox, which is why this is not read from UPSTREAM.
PRO_RELEASE_ZIP = os.path.join(ROOT, "deliverables", "teesim-6.0.9",
                               "TEESimulator-RS_MapleSU_6.0.9_pro.zip")
PRO_RELEASE_KEYBOX = "TEESimulatorRS_Core/keybox.xml"
PRO_KEYBOX_SHA256 = "b7629b3d348c7386b397966111c0ef3b3d9fa9eef4e2d715a64fef6740b6de49"

MODULE_PROP = """id=tricky_store
name=TEESimulator-RS_MapleSU
version=6.0.33_MapleSU
versionCode=63300
author=TEESimulator-RS / MapleSU
description=频道：@MapleAutumn MapleSU_Normal定制版.Hardware-backed key attestation simulator, bundled and default-installed by MapleSU. By.MapleAutumn Customized Fixed Soter. 解决TEESimulator-RS目前已知所有检测点与Soter.
updateJson=https://raw.githubusercontent.com/FengQiuFQ/TEESimulator-MapleSU/main/update.json
"""

CUSTOMIZE = r"""#!/system/bin/sh
# MapleSU packaging for the bundled TEESimulator-RS module (KSU/Lite).
#
# Upstream parity (TEESimulator-RS v6.0.1 customize.sh): SKIPUNZIP=1, so the
# KernelSU/Magisk installer does not auto-extract the archive; this script
# extracts exactly the files the module needs into $MODPATH. That removes the
# dependency on the host `unzip` behaviour and, with it, the old failure mode
# where a missing `core/` file ran `abort` and KernelSU deleted the module.
#
# Layout is flat, like the upstream module: classes.dex/daemon/inject/supervisor/
# libTEESimulator.so/libcertgen.so live at the module root, because the dex
# resolves ./inject, libTEESimulator.so and libcertgen.so relative to the
# daemon's working directory and service.sh starts it with `cd $MODDIR`.
SKIPUNZIP=1
MIN_SDK=29
CONFIG_DIR=/data/adb/tricky_store

if [ "$BOOTMODE" != true ]; then
  abort "! Install this module from the KernelSU/Magisk manager"
fi
if [ "$KSU" = true ] && [ "$KSU_VER_CODE" -lt 10670 ]; then
  abort "! Please update KernelSU and the KernelSU manager"
fi

ui_print "- Installing $(grep_prop name "$TMPDIR/module.prop") $(grep_prop version "$TMPDIR/module.prop")"

case "$ARCH" in
  arm64) ;;
  *) abort "! Unsupported architecture: $ARCH (this package ships arm64-v8a only)" ;;
esac
if [ "$API" -lt "$MIN_SDK" ]; then
  abort "! Unsupported SDK: $API (minimum required is $MIN_SDK)"
fi
ui_print "- Device platform: $ARCH, SDK $API"

# Cross-model: toybox ships unzip on AOSP, but some vendor ROMs strip it. Fall
# back to the KernelSU busybox so installs do not depend on one ROM's toybox.
UNZIP="unzip"
if ! command -v unzip >/dev/null 2>&1; then
  for _bb in /data/adb/ksu/bin/busybox /data/adb/magisk/busybox busybox; do
    if [ -x "$_bb" ] || command -v "$_bb" >/dev/null 2>&1; then
      UNZIP="$_bb unzip"; break
    fi
  done
fi
install_file() {
  $UNZIP -o -q "$ZIPFILE" "$1" -d "$MODPATH" || abort "! Failed to extract $1"
}

ui_print "- Extracting module files"
for f in module.prop service.sh uninstall.sh sepolicy.rule hide_bootloader.sh \
         classes.dex daemon inject supervisor libTEESimulator.so libcertgen.so \
         resetprop keybox.xml target.txt core/webui.sh \
         webroot/index.html webroot/main.js webroot/request.js \
         webroot/style.css webroot/toast.css webroot/toast.js ; do
  install_file "$f"
done

# KernelSU's default 0755/0644 pass is skipped when SKIPUNZIP=1, so set it here.
# (`|| true`: the Lite backend sources this file under `set -e`, so a permission
# call that a device refuses must not abort the install.)
set_perm_recursive "$MODPATH" 0 0 0755 0644 2>/dev/null || true
for f in service.sh uninstall.sh hide_bootloader.sh daemon inject supervisor \
         resetprop core/webui.sh ; do
  chown 0:0 "$MODPATH/$f" 2>/dev/null || true
  chmod 0755 "$MODPATH/$f" 2>/dev/null || true
done

# --- config dir: the dex reads /data/adb/tricky_store unconditionally ---
[ -d "$CONFIG_DIR" ] || mkdir -p "$CONFIG_DIR" 2>/dev/null || true

seed_config() {
  [ -f "$CONFIG_DIR/$1" ] && return 0
  $UNZIP -o -q "$ZIPFILE" "$1" -d "$CONFIG_DIR" || return 1
  chmod 0644 "$CONFIG_DIR/$1" 2>/dev/null || true
  ui_print "- seeded $1 into $CONFIG_DIR"
}

seed_config keybox.xml || ui_print "! keybox.xml not seeded (service.sh retries at boot)"
seed_config target.txt || ui_print "! target.txt not seeded (service.sh retries at boot)"

if [ ! -f "$CONFIG_DIR/security_patch.txt" ]; then
  printf '%s\n' \
    '# TEESimulator default: mirror live device props.' \
    '# system=prop reads ro.build.version.security_patch at cert-gen time;' \
    '# boot and vendor are auto-forced to prop too.' \
    '# Override with explicit YYYY-MM-DD dates if you want active spoofing.' \
    'system=prop' > "$CONFIG_DIR/security_patch.txt" 2>/dev/null || true
  chmod 0644 "$CONFIG_DIR/security_patch.txt" 2>/dev/null || true
fi

if [ ! -s "$CONFIG_DIR/hbk" ]; then
  # 32 random bytes are a key-derivation input, not a boot gate; urandom cannot
  # block early in boot.
  head -c 32 /dev/urandom > "$CONFIG_DIR/hbk" 2>/dev/null \
    || head -c 32 /dev/random > "$CONFIG_DIR/hbk" 2>/dev/null || true
  chmod 0600 "$CONFIG_DIR/hbk" 2>/dev/null || true
fi

# Soter certificate lane ships ON; only seed the default when the file is absent
# so an explicit "off" written from the WebUI survives.
# 6.0.13: certificate chain defaults to OFF; nothing is seeded here.

# Two TEESimulator modules would both start a daemon and both inject into
# keystore2. The previous ids (teesimulator-rs, tricky_store) are migrated by
# service.sh on the next boot: their directories are disabled and their daemons
# stopped. User data lives in /data/adb/tricky_store and is kept.
for _old in teesimulator-rs trick_store; do
  if [ -d "/data/adb/modules/$_old" ]; then
    ui_print "- 检测到旧模块目录 $_old，开机时将自动迁移（配置保留）"
  fi
done

ui_print "『时光流转，愿你能与珍爱之人再度重逢』"
ui_print "Channel：@MapleAutumn"
ui_print "By.MapleAutumn"
"""

SERVICE = r"""#!/system/bin/sh
# MapleSU packaging of the upstream TEESimulator-RS boot service.
#
# Boot chain (identical in behaviour to upstream v6.0.1 service.sh, which is the
# only configuration verified on a real KernelSU device):
#
#     MODDIR=${0%/*}; cd "$MODDIR"
#     ./supervisor ./daemon "$MODDIR" &
#
# The daemon must run with its working directory at the module root: the dex
# resolves three paths against it (Keystore2Interceptor `exec ./inject `pidof
# keystore2` libTEESimulator.so entry`; App.main
# `new File("libcertgen.so").getAbsolutePath()`; mpl.SoterInjector `core=$(pwd)`).
#
# Deliberately NOT done here (6.0.10 root-cause audit):
#   * no post-fs-data stage - upstream starts the daemon once, at the service
#     stage, when keystore2 and system_server exist;
#   * no kill of a running TEESimulator - components/supervisor is a fork/exec
#     respawn loop (main @0xaa0: fork -> prctl(PDEATHSIG,9) -> execv ->
#     waitpid -> usleep), so killing the daemon only makes the old supervisor
#     fork another one while this script starts a second supervisor: two daemons
#     then inject into keystore2 concurrently and keystore can end up wedged
#     ("no certificate chain at all").
#
# MapleSU additions, none of which can block the core start:
#   * first-install seeding of /data/adb/tricky_store (the dex's canonical
#     config dir): keybox.xml, target.txt, security_patch.txt, hbk, soter_certs.
#     Seeding is create-only: an existing keybox.xml is never overwritten;
#   * /data/adb/tricky_store/ksu_status, the machine-readable boot record the
#     WebUI reads (supervisor, daemon, inject, hide_bootloader, boot_apply, kbu);
#   * hide_bootloader.sh, `webui.sh boot-apply` and the keybox auto-update, all
#     inside ONE detached background subshell *after* the supervisor is up, so a
#     slow `pm`, a missing network or a broken helper can never fail the module;
#   * two diagnostic snapshots (20s / 60s) appended to
#     /sdcard/Download/tee_diag.txt from a nested detached subshell, so a KSU
#     device can be diagnosed without another blind install.
#
# 6.0.11 boot-chain change: the five-file preflight no longer gates the start.
# It records `core=incomplete:<files>` (or `core=nocd`) in ksu_status and the
# supervisor is started unconditionally, which is upstream's semantics - upstream
# has no preflight at all. The old `exit 0` made a single missing or unreadable
# file look exactly like "TEE does not work", with no daemon, no log and no retry.
#
# Test hooks (never set on a device): MAPLESU_TEE_CONFIG_DIR, MAPLESU_TEE_LITE_DIR,
# MAPLESU_TEE_KIT_STATUS, MAPLESU_TEE_DIAG_FILE, MAPLESU_TEE_DIAG_DELAYS,
# MAPLESU_TEE_MODULE_DIR and MAPLESU_TEE_BOOT_WAIT override the absolute paths,
# the snapshot delays and the final boot-completed wait for a local dry run.

case ${0:-} in
    */*) MODDIR=${0%/*} ;;
    *)   MODDIR=$(pwd) ;;
esac
MODDIR=${MODDIR%/}
[ -n "$MODDIR" ] || MODDIR=.

CONFIG_DIR=${MAPLESU_TEE_CONFIG_DIR:-/data/adb/tricky_store}
LITE_DIR=${MAPLESU_TEE_LITE_DIR:-/data/adb/maplesu/tee}
KIT_STATUS=${MAPLESU_TEE_KIT_STATUS:-/data/adb/maplesu/kit/status}
STATUS_FILE="$CONFIG_DIR/ksu_status"
BOOT_LOG="$CONFIG_DIR/ksu_boot.log"

# Diagnostics (6.0.11): two snapshots written to the shared storage so the user
# can `adb pull /sdcard/Download/tee_diag.txt` without root on the host.
DIAG_FILE=${MAPLESU_TEE_DIAG_FILE:-/sdcard/Download/tee_diag.txt}
DIAG_FALLBACK=$CONFIG_DIR/tee_diag.txt
DIAG_LOCK=$CONFIG_DIR/.diag_lock
DIAG_MODULE_DIR=${MAPLESU_TEE_MODULE_DIR:-/data/adb/modules/tricky_store}
DIAG_DELAYS=${MAPLESU_TEE_DIAG_DELAYS:-20 60}
BOOT_WAIT_MAX=${MAPLESU_TEE_BOOT_WAIT:-180}
_DIAG_DEST=
_DIAG_TMP=

# --- helpers ---------------------------------------------------------------

log_msg() {
    printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S' 2>/dev/null)" "$*" >> "$BOOT_LOG" 2>/dev/null
    return 0
}

set_status() {
    # One `key=value` line per boot; the file is truncated at the start of a run.
    printf '%s=%s\n' "$1" "$2" >> "$STATUS_FILE" 2>/dev/null
    return 0
}

flag_value() {
    # flag_value <file> <default>: 1/0 with the usual text aliases.
    _fv=$(tr -d ' \t\r\n' < "$1" 2>/dev/null | tr 'A-Z' 'a-z')
    case $_fv in
        1|on|true|yes) printf '1' ;;
        0|off|false|no) printf '0' ;;
        *) printf '%s' "$2" ;;
    esac
}

pid_of() {
    # pid_of <name>: first pid or an empty string. pidof is the fast path; ps is a
    # fallback for images without toybox pidof.
    _pid=$(pidof "$1" 2>/dev/null | tr ' ' '\n' | sed -n '1p')
    if [ -z "$_pid" ]; then
        _pid=$(ps -A -o PID,NAME 2>/dev/null \
            | sed -n "s/^[[:space:]]*\([0-9][0-9]*\)[[:space:]][[:space:]]*$1\$/\1/p" \
            | sed -n '1p')
    fi
    printf '%s' "$_pid"
}

supervisor_pid() {
    # Only OUR supervisor: its command line carries this module's directory as
    # the daemon's argv ("<module>/supervisor <module>/daemon <module>").
    for _sp in $(pidof supervisor 2>/dev/null); do
        case $(tr '\0' ' ' < "/proc/$_sp/cmdline" 2>/dev/null) in
            *"$MODDIR"*) printf '%s' "$_sp"; return 0 ;;
        esac
    done
    return 1
}

seed_file() {
    # seed_file <name>: first install only, never overwritten. A file already in
    # the Lite directory wins over the packaged default so an existing user keeps
    # their own keybox/target list when the canonical directory changes.
    _sf=$1
    if [ -f "$CONFIG_DIR/$_sf" ]; then
        return 0
    fi
    if [ -f "$LITE_DIR/$_sf" ]; then
        if cp -f "$LITE_DIR/$_sf" "$CONFIG_DIR/$_sf" 2>/dev/null; then
            chmod 0644 "$CONFIG_DIR/$_sf" 2>/dev/null
            log_msg "seeded $_sf from $LITE_DIR"
            return 0
        fi
    fi
    if [ -f "$MODDIR/$_sf" ]; then
        if cp -f "$MODDIR/$_sf" "$CONFIG_DIR/$_sf" 2>/dev/null; then
            chmod 0644 "$CONFIG_DIR/$_sf" 2>/dev/null
            log_msg "seeded $_sf from module"
            return 0
        fi
    fi
    return 1
}

mirror_to_lite() {
    # Keep /data/adb/maplesu/tee readable for the Lite backend by pointing it at
    # the canonical file. A symlink is used so the two paths cannot drift; a
    # filesystem without symlinks falls back to a copy.
    [ -d "$LITE_DIR" ] || return 1
    _mf=$1
    [ -f "$CONFIG_DIR/$_mf" ] || return 1
    if [ -L "$LITE_DIR/$_mf" ]; then
        if [ "$(readlink "$LITE_DIR/$_mf" 2>/dev/null)" = "$CONFIG_DIR/$_mf" ]; then
            return 0
        fi
        rm -f "$LITE_DIR/$_mf" 2>/dev/null
    elif [ -f "$LITE_DIR/$_mf" ]; then
        if cmp -s "$CONFIG_DIR/$_mf" "$LITE_DIR/$_mf" 2>/dev/null; then
            return 0
        fi
        rm -f "$LITE_DIR/$_mf" 2>/dev/null
    fi
    if ln -s "$CONFIG_DIR/$_mf" "$LITE_DIR/$_mf" 2>/dev/null; then
        return 0
    fi
    cp -f "$CONFIG_DIR/$_mf" "$LITE_DIR/$_mf" 2>/dev/null \
        && chmod 0644 "$LITE_DIR/$_mf" 2>/dev/null
}

inject_state() {
    # The daemon runs `exec ./inject `pidof keystore2` libTEESimulator.so entry`,
    # so the library showing up in keystore2's maps is the ground truth for "the
    # injection actually happened". Unreadable /proc or a missing keystore2 is
    # unknown, never a fabricated failure.
    _ks=$(pid_of keystore2)
    if [ -z "$_ks" ]; then
        printf 'unknown'
        return 0
    fi
    if [ ! -r "/proc/$_ks/maps" ]; then
        printf 'unknown'
        return 0
    fi
    if grep -q 'libTEESimulator\.so' "/proc/$_ks/maps" 2>/dev/null; then
        printf 'ok'
    else
        printf 'fail'
    fi
    return 0
}

# --- diagnostics (6.0.11) ---------------------------------------------------
#
# A KSU install that "does nothing" can only be diagnosed from device state, and
# the user is not going to keep flashing packages. Every probe below is guarded:
# a missing tool, a denied /proc or a failed command writes one `[fail: ...]`
# line and the snapshot continues. Nothing here can change the boot outcome.

diag_now() {
    date '+%Y-%m-%d %H:%M:%S' 2>/dev/null
}

diag_open() {
    # Pick the first writable dump path; nonzero when none is usable.
    [ -n "$_DIAG_DEST" ] && return 0
    for _cand in "$DIAG_FILE" "$DIAG_FALLBACK"; do
        _cdir=${_cand%/*}
        [ -d "$_cdir" ] || continue
        if : >> "$_cand" 2>/dev/null; then
            _DIAG_DEST=$_cand
            return 0
        fi
    done
    return 1
}

diag_pid_alive() {
    case $1 in
        ''|*[!0-9]*) return 1 ;;
    esac
    [ "$1" -gt 0 ] 2>/dev/null || return 1
    kill -0 "$1" 2>/dev/null
}

diag_lock_free() {
    # No lock, or a stale one: its writer is gone (reboot, crash, kill -9), so
    # the next boot may take it over instead of losing the diagnostics forever.
    [ -f "$DIAG_LOCK" ] || return 0
    _lp=$(cat "$DIAG_LOCK" 2>/dev/null)
    if diag_pid_alive "$_lp"; then
        return 1
    fi
    rm -f "$DIAG_LOCK" 2>/dev/null
    return 0
}

diag_unlock() {
    rm -f "$DIAG_LOCK" 2>/dev/null
    return 0
}

diag_start() {
    # Single-instance writer, forked from the extras subshell: check the lock,
    # fork, then record the *child* pid. $$ is the service.sh pid in every
    # subshell (POSIX) and service.sh exits right after the extras start, so the
    # lock must name the snapshot subshell itself - $! is the only pid a POSIX
    # shell can know here. The child is the only writer and drops the lock when
    # it is done.
    if ! diag_open; then
        log_msg "diag: neither $DIAG_FILE nor $DIAG_FALLBACK is writable"
        return 0
    fi
    if ! diag_lock_free; then
        log_msg "diag: $DIAG_LOCK is held by a live writer; skipping this boot"
        return 0
    fi
    ( diag_loop ) >> "$BOOT_LOG" 2>&1 &
    printf '%s\n' "$!" > "$DIAG_LOCK" 2>/dev/null
    return 0
}

diag_tmp() {
    if [ -z "$_DIAG_TMP" ]; then
        _DIAG_TMP="$CONFIG_DIR/.diag.$$"
    fi
    printf '%s' "$_DIAG_TMP"
}

diag_field() {
    # diag_field <label> <cmd...> -> "label: value", or "[fail: label ...]".
    _df_label=$1
    shift
    _df_out=$("$@" 2>/dev/null)
    _df_rc=$?
    printf '%s: ' "$_df_label"
    if [ "$_df_rc" -ne 0 ]; then
        printf '[fail: %s rc=%s]\n' "$_df_label" "$_df_rc"
    elif [ -z "$_df_out" ]; then
        printf '[fail: %s empty]\n' "$_df_label"
    else
        printf '%s\n' "$_df_out"
    fi
    return 0
}

diag_ps() {
    _dp=$(diag_tmp).ps
    if ps -A -o PID,PPID,USER,NAME > "$_dp" 2>&1; then
        grep -E 'supervisor|TEESimulator|keystore2|soterserver' "$_dp" 2>/dev/null \
            || printf '(no matching process)\n'
    else
        printf '[fail: ps -A]\n'
        head -3 "$_dp" 2>/dev/null
    fi
    rm -f "$_dp" 2>/dev/null
    return 0
}

diag_cwd() {
    _dc=$(pid_of TEESimulator)
    if [ -z "$_dc" ]; then
        printf '[fail: no TEESimulator pid]\n'
        return 0
    fi
    _dw=$(readlink "/proc/$_dc/cwd" 2>/dev/null)
    if [ $? -eq 0 ] && [ -n "$_dw" ]; then
        printf '%s\n' "$_dw"
    else
        printf '[fail: readlink /proc/%s/cwd]\n' "$_dc"
    fi
    return 0
}

diag_maps() {
    _dm=$(pid_of keystore2)
    if [ -z "$_dm" ]; then
        printf '[fail: no keystore2 pid]\n'
        return 0
    fi
    if [ ! -r "/proc/$_dm/maps" ]; then
        printf '[fail: /proc/%s/maps unreadable]\n' "$_dm"
        return 0
    fi
    # grep -c prints 0 and exits 1 when the pattern is absent (a real "0"), but
    # prints nothing and exits 2 when /proc/<pid>/maps cannot be read. Counting a
    # denied read as "0" would turn a permissions problem into "not injected".
    _dn=$(grep -c 'libTEESimulator' "/proc/$_dm/maps" 2>/dev/null)
    _drc=$?
    case $_dn in
        ''|*[!0-9]*) _dn= ;;
    esac
    if [ -z "$_dn" ]; then
        printf '[fail: grep /proc/%s/maps rc=%s]\n' "$_dm" "$_drc"
    else
        printf '%s\n' "$_dn"
    fi
    return 0
}

diag_logcat() {
    _dl=$(diag_tmp).logcat
    if logcat -d -s TEESimulator MPL-BUILD MPL-SOTER AndroidRuntime > "$_dl" 2>&1; then
        if [ -s "$_dl" ]; then
            tail -150 "$_dl" 2>/dev/null
        else
            printf '(no matching log lines)\n'
        fi
    else
        printf '[fail: logcat]\n'
        head -3 "$_dl" 2>/dev/null
    fi
    rm -f "$_dl" 2>/dev/null
    return 0
}

diag_avc() {
    _da=$(diag_tmp).dmesg
    if dmesg > "$_da" 2>&1; then
        _dv=$(grep -i 'avc' "$_da" 2>/dev/null | tail -30)
        if [ -n "$_dv" ]; then
            printf '%s\n' "$_dv"
        else
            printf '(no avc lines)\n'
        fi
    else
        printf 'dmesg: denied\n'
    fi
    rm -f "$_da" 2>/dev/null
    return 0
}

diag_ls() {
    _do=$(diag_tmp).ls
    if ls -l "$DIAG_MODULE_DIR" > "$_do" 2>&1; then
        cat "$_do" 2>/dev/null
    else
        printf '[fail: ls %s]\n' "$DIAG_MODULE_DIR"
        head -3 "$_do" 2>/dev/null
    fi
    rm -f "$_do" 2>/dev/null
    return 0
}

diag_snapshot() {
    _dw=$1
    diag_open || return 1
    {
        printf '\n============================================================\n'
        printf 'TEESimulator-RS_MapleSU KSU diagnostic snapshot: %s\n' "$_dw"
        printf 'local time: %s\n' "$(diag_now)"
        printf 'utc time  : %s\n' "$(date -u '+%Y-%m-%dT%H:%M:%SZ' 2>/dev/null)"
        printf 'module dir: %s\n' "$MODDIR"
        printf 'config dir: %s\n' "$CONFIG_DIR"
        printf 'dump file : %s\n' "$_DIAG_DEST"
        printf '============================================================\n'

        printf '\n[1] build\n'
        printf 'date: %s\n' "$(diag_now)"
        diag_field 'ro.build.version.release' getprop ro.build.version.release
        diag_field 'ro.product.model' getprop ro.product.model
        diag_field 'uname -r' uname -r

        printf '\n[2] %s/ksu_status\n' "$CONFIG_DIR"
        if [ -f "$CONFIG_DIR/ksu_status" ]; then
            cat "$CONFIG_DIR/ksu_status" 2>/dev/null || printf '[fail: cat ksu_status]\n'
        else
            printf 'missing\n'
        fi

        printf '\n[3] PID PPID USER NAME (supervisor|TEESimulator|keystore2|soterserver)\n'
        diag_ps

        printf '\n[4] daemon cwd (must be the module dir)\n'
        diag_cwd

        printf '\n[5] keystore2 maps: libTEESimulator count (>0 = injected)\n'
        diag_maps

        printf '\n[6] logcat -d -s TEESimulator MPL-BUILD MPL-SOTER AndroidRuntime (tail 150)\n'
        diag_logcat

        printf '\n[7] dmesg avc (tail 30)\n'
        diag_avc

        printf '\n[8] ls -l %s\n' "$DIAG_MODULE_DIR"
        diag_ls

        printf '\n[9] %s/target.txt (head 40)\n' "$CONFIG_DIR"
        if [ -f "$CONFIG_DIR/target.txt" ]; then
            head -40 "$CONFIG_DIR/target.txt" 2>/dev/null \
                || printf '[fail: head target.txt]\n'
        else
            printf '[fail: target.txt missing]\n'
        fi

        printf '\n[10] keybox DeviceID(s) + utc\n'
        if [ -f "$CONFIG_DIR/keybox.xml" ]; then
            _dv=$(grep -o 'DeviceID="[^"]*"' "$CONFIG_DIR/keybox.xml" 2>/dev/null | head -2)
            if [ -n "$_dv" ]; then
                printf '%s\n' "$_dv"
            else
                printf '[fail: no DeviceID in keybox.xml]\n'
            fi
        else
            printf '[fail: keybox.xml missing]\n'
        fi
        printf 'date -u: %s\n' "$(date -u 2>/dev/null)"
    } >> "$_DIAG_DEST" 2>/dev/null
    chmod 0644 "$_DIAG_DEST" 2>/dev/null
    log_msg "diag snapshot written: $_dw -> $_DIAG_DEST"
    return 0
}

diag_loop() {
    # The forked writer started by diag_start(): one snapshot at 20s and one at
    # 60s after the service stage. The lock already names this pid.
    if ! diag_open; then
        log_msg "diag: no writable dump path in the writer; nothing recorded"
        diag_unlock
        return 0
    fi
    _snaps=0
    _prev=0
    for _d in $DIAG_DELAYS; do
        case $_d in
            ''|*[!0-9]*) continue ;;
        esac
        _step=$((_d - _prev))
        [ "$_step" -gt 0 ] 2>/dev/null || _step=0
        if [ "$_step" -gt 0 ]; then
            sleep "$_step"
        fi
        _prev=$_d
        _snaps=$((_snaps + 1))
        diag_snapshot "after ${_d}s (#${_snaps})"
    done
    chmod 0644 "$_DIAG_DEST" 2>/dev/null
    diag_unlock
    log_msg "diag: $_snaps snapshot(s) appended to $_DIAG_DEST"
    return 0
}

# --- 0. status scaffold ----------------------------------------------------

mkdir -p "$CONFIG_DIR" 2>/dev/null
if [ ! -d "$CONFIG_DIR" ]; then
    echo "TEESimulator: cannot create $CONFIG_DIR; nothing to do" >&2
    exit 0
fi

if [ -f "$BOOT_LOG" ]; then
    _sz=$(wc -c < "$BOOT_LOG" 2>/dev/null | tr -d ' ')
    case $_sz in
        ''|*[!0-9]*) _sz=0 ;;
    esac
    if [ "$_sz" -gt 65536 ] 2>/dev/null; then
        : > "$BOOT_LOG" 2>/dev/null
    fi
fi

: > "$STATUS_FILE" 2>/dev/null
set_status time "$(date '+%Y-%m-%d %H:%M:%S' 2>/dev/null)"
set_status module "$MODDIR"
set_status config "$CONFIG_DIR"
log_msg "=== TEESimulator service.sh start (6.0.11) ==="
log_msg "MODDIR=$MODDIR"

# --- 1. canonical config files (first install only) ------------------------

seed_file keybox.xml || true
seed_file target.txt || true
seed_file security_patch.txt || true
seed_file hbk || true

# 6.0.13: certificate chain defaults to OFF (absent file = off); only an
# explicit "on" from the WebUI enables it. Soter compatibility stays on.
if [ -f "$CONFIG_DIR/soter_certs" ]; then
    set_status soter_certs "$( [ "$(cat "$CONFIG_DIR/soter_certs" 2>/dev/null)" = on ] && echo on || echo off )"
else
    set_status soter_certs off
fi

if [ ! -f "$CONFIG_DIR/security_patch.txt" ]; then
    printf '%s\n' \
        '# TEESimulator default: mirror live device props.' \
        '# system=prop reads ro.build.version.security_patch at cert-gen time;' \
        '# boot and vendor are auto-forced to prop too.' \
        '# Override with explicit YYYY-MM-DD dates if you want active spoofing.' \
        'system=prop' > "$CONFIG_DIR/security_patch.txt" 2>/dev/null
    chmod 0644 "$CONFIG_DIR/security_patch.txt" 2>/dev/null
fi

if [ ! -s "$CONFIG_DIR/hbk" ]; then
    head -c 32 /dev/urandom > "$CONFIG_DIR/hbk" 2>/dev/null \
        || head -c 32 /dev/random > "$CONFIG_DIR/hbk" 2>/dev/null
    chmod 0600 "$CONFIG_DIR/hbk" 2>/dev/null
fi

if [ -s "$CONFIG_DIR/keybox.xml" ]; then
    set_status keybox ok
else
    set_status keybox missing
    log_msg "keybox.xml is missing or empty in $CONFIG_DIR: the dex has no key material"
fi

if [ -f "$CONFIG_DIR/target.txt" ]; then
    set_status target ok
else
    set_status target missing
fi

if [ -s "$CONFIG_DIR/security_patch.txt" ]; then
    set_status security_patch ok
else
    set_status security_patch missing
fi

if [ -s "$CONFIG_DIR/hbk" ]; then
    set_status hbk ok
else
    set_status hbk missing
fi

# kernel-side kit (Ultra only): recorded, never fatal on KSU.
if [ -f "$KIT_STATUS" ] && grep -q '^tee_kit=unavailable' "$KIT_STATUS" 2>/dev/null; then
    _reason=$(sed -n 's/^tee_kit_reason=//p' "$KIT_STATUS" 2>/dev/null | sed -n '1p')
    set_status kit unavailable
    set_status kit_reason "${_reason:-unknown}"
else
    set_status kit absent
fi

# --- 2. core: upstream boot chain, started exactly once ---------------------
#
# 6.0.11: the preflight is a *record*, not a gate. Upstream starts the supervisor
# unconditionally and lets the daemon log its own failure; the old `exit 0` here
# turned one missing/unreadable file into a silent no-op that looked identical to
# "TEE does not work" (no daemon, no log line, no retry). The missing files are
# recorded as core=incomplete:<list> in ksu_status and the start below still runs.

_CORE_MISSING=
for _cf in supervisor daemon classes.dex inject libTEESimulator.so; do
    [ -f "$MODDIR/$_cf" ] || _CORE_MISSING="$_CORE_MISSING $_cf"
done
_CORE_STATE=ok
if [ -n "$_CORE_MISSING" ]; then
    _CORE_STATE="incomplete:${_CORE_MISSING# }"
    log_msg "core files missing:${_CORE_MISSING} (starting anyway, upstream semantics)"
fi
if ! cd "$MODDIR" 2>/dev/null; then
    # Recorded, not fatal: the start below is still attempted, like upstream.
    _CORE_STATE=nocd
    log_msg "cannot cd to $MODDIR (starting anyway)"
fi
set_status core "$_CORE_STATE"

# --- 2b. install integrity + duplicate-instance guard (6.0.16) --------------
#
# Two failures look identical ("KSU is fine, the module does nothing"):
#   1. /data/adb/modules/<id> is a symlink into a manager's private storage
#      (MapleSU installs like that). If the manager clears that storage the link
#      dangles, module.prop disappears and KSU silently treats the module as
#      absent. We cannot even run in that state; recording it makes it visible.
#   2. Another TEESimulator/TrickyStore module is enabled. Both daemons inject
#      into keystore2, the hooks fight and keystore requests block/fail. Start
#      only one: record the conflict and skip our daemon start.
_SELF_ID=$(basename "$MODDIR" 2>/dev/null)
if [ -n "$_SELF_ID" ] && [ -L "/data/adb/modules/$_SELF_ID" ]; then
    set_status install "symlink:$(readlink "/data/adb/modules/$_SELF_ID" 2>/dev/null)"
else
    set_status install realdir
fi

_CONFLICTS=
for _m in /data/adb/modules/*; do
    [ -d "$_m" ] || continue
    _mid=$(basename "$_m")
    [ "$_mid" = "$_SELF_ID" ] && continue
    [ -f "$_m/disable" ] && continue
    [ -f "$_m/module.prop" ] || continue
    _mname=$(sed -n 's/^name=//p' "$_m/module.prop" 2>/dev/null | sed -n '1p')
    _mdesc=$(sed -n 's/^description=//p' "$_m/module.prop" 2>/dev/null | sed -n '1p')
    case "$_mid $_mname" in
        *tricky_store*|*TEESimulator*|*TrickyStore*) _CONFLICTS="$_CONFLICTS $_mid" ;;
        *) case "$_mdesc" in *TEESimulator*|*TrickyStore*) _CONFLICTS="$_CONFLICTS $_mid" ;; esac ;;
    esac
done
# Upgrading from our previous module id (teesimulator-rs -> tricky_store) would
# otherwise leave two copies: the old dir keeps its own daemon alive. Neutralise
# the legacy copy and stop its daemon before the conflict check.
for _legacy_id in teesimulator-rs trick_store; do
    case " $_CONFLICTS " in
        *" $_legacy_id "*)
            _legacy=/data/adb/modules/$_legacy_id
            if [ -f "$_legacy/module.prop" ] \
                && grep -q '^name=TEESimulator-RS' "$_legacy/module.prop" 2>/dev/null; then
                : > "$_legacy/disable" 2>/dev/null
                for _p in $(pidof TEESimulator 2>/dev/null); do kill "$_p" 2>/dev/null; done
                log_msg "migrated legacy module id: disabled /data/adb/modules/$_legacy_id"
                _CONFLICTS=$(printf ' %s ' "$_CONFLICTS" | sed "s/ $_legacy_id / /")
            fi
            ;;
    esac
done

if [ -n "$_CONFLICTS" ]; then
    set_status conflict "${_CONFLICTS# }"
    log_msg "another TEE module is enabled:${_CONFLICTS}; not starting a second daemon"
    set_status done 0
    exit 0
fi

_SUP=$(supervisor_pid)
if [ -n "$_SUP" ]; then
    set_status supervisor "running:$_SUP"
    log_msg "supervisor already running: $_SUP"
else
    # Upstream: ./supervisor ./daemon "$MODDIR" &
    ./supervisor ./daemon "$MODDIR" >> "$BOOT_LOG" 2>&1 &
    _SUP=$!
    set_status supervisor "$_SUP"
    log_msg "supervisor started: $_SUP (cwd=$MODDIR)"
fi

# --- 3. extras: detached, bounded, never able to block or fail the boot ------

(
    # 3.0 diagnostics: a nested detached subshell, so the 20s/60s sleeps can
    # never delay the probes below (let alone the core start).
    diag_start

    if [ -d "$LITE_DIR" ]; then
        _mirrored=0
        for _f in keybox.xml target.txt security_patch.txt hbk; do
            if mirror_to_lite "$_f"; then
                _mirrored=$((_mirrored + 1))
            fi
        done
        set_status lite "mirrored:$_mirrored/4"
    else
        set_status lite absent
    fi

    # 3a. daemon liveness
    _i=0
    _DAEMON=""
    while [ "$_i" -lt 15 ]; do
        _DAEMON=$(pid_of TEESimulator)
        [ -n "$_DAEMON" ] && break
        sleep 1
        _i=$((_i + 1))
    done
    if [ -n "$_DAEMON" ]; then
        set_status daemon "$_DAEMON"
        log_msg "daemon(TEESimulator) pid: $_DAEMON"
    else
        set_status daemon missing
        log_msg "TEESimulator daemon did not appear within 15s"
    fi

    # 3b. injection probe: one bounded observation, never a retry loop.
    # 6.0.21: injection completes a few seconds *after* the daemon starts (the
    # daemon retries internally). Sampling once at t+<1s recorded a false
    # "inject=fail" on every boot, which read as "TEE does not work". Poll for up
    # to 30s instead.
    if [ -n "$_DAEMON" ]; then _TRIES=15; else _TRIES=3; fi
    _i=0
    _INJ=unknown
    while [ "$_i" -lt "$_TRIES" ]; do
        _INJ=$(inject_state)
        [ "$_INJ" = ok ] && break
        sleep 2
        _i=$((_i + 1))
    done
    set_status inject "$_INJ"
    log_msg "inject=$_INJ (keystore2 pid: $(pid_of keystore2))"

    if [ -n "$_DAEMON" ] && ! kill -0 "$_DAEMON" 2>/dev/null; then
        set_status daemon_exit 1
        log_msg "daemon exited during the injection probe; see logcat -s TEESimulator"
    fi

    # 3c. hide_bootloader (module root, default on, same default as the .so)
    _HB_FLAG="$CONFIG_DIR/hide_bootloader_toggle"
    if [ ! -f "$_HB_FLAG" ] && [ -f "$CONFIG_DIR/hide_bootloader" ]; then
        _HB_FLAG="$CONFIG_DIR/hide_bootloader"
    fi
    _HB=1
    if [ -f "$_HB_FLAG" ]; then
        _HB=$(flag_value "$_HB_FLAG" 1)
    fi
    if [ "$_HB" != 1 ]; then
        set_status hide_bootloader skipped
        log_msg "hide_bootloader disabled by $_HB_FLAG"
    elif [ ! -f "$MODDIR/hide_bootloader.sh" ]; then
        set_status hide_bootloader missing
        log_msg "hide_bootloader.sh is not packaged"
    elif sh "$MODDIR/hide_bootloader.sh" >> "$BOOT_LOG" 2>&1; then
        set_status hide_bootloader done
        log_msg "hide_bootloader.sh applied"
    else
        set_status hide_bootloader fail
        log_msg "hide_bootloader.sh returned an error (recorded, not fatal)"
    fi

    # 3d. WebUI persisted toggles, after the daemon so `pm list packages` works
    # for the target.txt refresh. `--no-kbu`: the keybox auto-update is driven
    # from 3e, where the wait is bounded and the outcome is recorded.
    if [ -f "$MODDIR/core/webui.sh" ]; then
        if sh "$MODDIR/core/webui.sh" boot-apply --no-kbu >> "$BOOT_LOG" 2>&1; then
            set_status boot_apply ok
            log_msg "webui.sh boot-apply applied"
        else
            set_status boot_apply fail
            log_msg "webui.sh boot-apply returned an error (recorded, not fatal)"
        fi
    else
        set_status boot_apply absent
    fi

    # 3e. keybox auto-update (KSU has no kernel module to schedule it)
    _KBU=unavailable
    if [ -f "$MODDIR/core/webui.sh" ]; then
        _kbu_json=$(sh "$MODDIR/core/webui.sh" kbu_status 2>/dev/null)
        _kbu_enabled=$(printf '%s' "$_kbu_json" | sed -n 's/.*"enabled":\(true\).*/\1/p')
        _kbu_next=$(printf '%s' "$_kbu_json" | sed -n 's/.*"nextEpoch":\([0-9][0-9]*\).*/\1/p')
        _kbu_now=$(printf '%s' "$_kbu_json" | sed -n 's/.*"now":\([0-9][0-9]*\).*/\1/p')
        if [ "$_kbu_enabled" = true ]; then
            _KBU=not_due
            if [ -n "$_kbu_next" ] && [ -n "$_kbu_now" ] && [ "$_kbu_next" -le "$_kbu_now" ] 2>/dev/null; then
                _KBU=due
            fi
        else
            _KBU=disabled
        fi
        if [ "$_KBU" = due ]; then
            rm -f "$CONFIG_DIR/kbu_boot.rc" "$CONFIG_DIR/kbu_boot.out" 2>/dev/null
            ( sh "$MODDIR/core/webui.sh" kbu_now > "$CONFIG_DIR/kbu_boot.out" 2>> "$BOOT_LOG"; echo $? > "$CONFIG_DIR/kbu_boot.rc" ) &
            _n=0
            while [ "$_n" -lt 25 ]; do
                [ -f "$CONFIG_DIR/kbu_boot.rc" ] && break
                sleep 1
                _n=$((_n + 1))
            done
            if [ -f "$CONFIG_DIR/kbu_boot.rc" ]; then
                _rc=$(cat "$CONFIG_DIR/kbu_boot.rc" 2>/dev/null)
                if [ "$_rc" = 0 ] && grep -q '"ok":true' "$CONFIG_DIR/kbu_boot.out" 2>/dev/null; then
                    _KBU=ok
                    log_msg "keybox auto-update applied"
                else
                    _KBU=fail
                    log_msg "keybox auto-update failed: $(head -c 200 "$CONFIG_DIR/kbu_boot.out" 2>/dev/null)"
                fi
            else
                _KBU=timeout
                log_msg "keybox auto-update still running after 25s (left in background)"
            fi
            rm -f "$CONFIG_DIR/kbu_boot.rc" "$CONFIG_DIR/kbu_boot.out" 2>/dev/null
        fi
    fi
    set_status kbu "$_KBU"

    # 3f. logd size properties (upstream behaviour, bounded)
    _n=0
    while [ "$_n" -lt "$BOOT_WAIT_MAX" ]; do
        [ "$(getprop sys.boot_completed 2>/dev/null)" = "1" ] && break
        sleep 1
        _n=$((_n + 1))
    done
    # 6.0.21: the first boot-apply runs before PackageManagerService is ready, so
    # `pm list packages -3` can be empty and target.txt keeps its old contents
    # (that is why a freshly installed detector was missing from it). Refresh once
    # more after boot, then re-probe the injection so ksu_status reflects reality.
    if [ -f "$MODDIR/core/webui.sh" ]; then
        sh "$MODDIR/core/webui.sh" boot-apply --no-kbu >> "$BOOT_LOG" 2>&1             && log_msg "post-boot target refresh ok"             || log_msg "post-boot target refresh failed (recorded)"
    fi
    set_status inject "$(inject_state)"
    log_msg "post-boot inject=$(inject_state)"

    setprop persist.logd.size "" 2>/dev/null
    setprop persist.logd.size.crash "" 2>/dev/null
    setprop persist.logd.size.system "" 2>/dev/null
    setprop persist.logd.size.main "" 2>/dev/null

    # 6.0.29: the list must keep itself current, not only at boot. The watcher
    # refreshes every 30s (from early boot onwards, as soon as `pm` answers), keeps
    # user markers/comments and only rewrites the file when the content changed.
    if [ -f "$MODDIR/core/webui.sh" ]; then
        if command -v setsid >/dev/null 2>&1; then
            setsid sh "$MODDIR/core/webui.sh" target-watch 30 \
                </dev/null >> "$BOOT_LOG" 2>&1 &
        else
            sh "$MODDIR/core/webui.sh" target-watch 30 \
                </dev/null >> "$BOOT_LOG" 2>&1 &
        fi
        log_msg "target watcher started (interval 30s)"
    fi
    # 6.0.29: surface the target refresh result; "targets=11" in a report was
    # otherwise indistinguishable from "refresh never ran".
    set_status target_refresh "$(cat "$CONFIG_DIR/target_refresh" 2>/dev/null || echo unknown)"
    # 6.0.30: try to start saterserver before a client binds to it. Harmless when the
    # platform refuses (the injector still catches the process when a client starts it).
    if [ -f "$MODDIR/core/webui.sh" ]; then
        ( i=0
          while [ "$i" -lt 3 ]; do
              sleep 15
              sh "$MODDIR/core/webui.sh" soter-warm >> "$BOOT_LOG" 2>&1
              [ -n "$(pidof com.tencent.soter.soterserver 2>/dev/null)" ] && break
              i=$((i + 1))
          done ) &
        log_msg "soter warm-up scheduled"
    fi
    # resetprop-style modules may run later in boot and overwrite the boot props;
    # re-apply ours once after boot settles so the last writer is us.
    if [ -f "$MODDIR/hide_bootloader.sh" ] && [ -f "$CONFIG_DIR/hide_bootloader_toggle" ]; then
        if [ "$(tr -d ' \t\r\n' < "$CONFIG_DIR/hide_bootloader_toggle" 2>/dev/null)" != "0" ]; then
            ( sleep 45; sh "$MODDIR/hide_bootloader.sh" >> "$BOOT_LOG" 2>&1; \
              log_msg "hide_bootloader second pass done" ) &
        fi
    fi
    set_status done 1
    log_msg "extras done"
) >> "$BOOT_LOG" 2>&1 &

exit 0
"""

UNINSTALL = r"""#!/system/bin/sh
# MapleSU packaging: stop what service.sh started and remove the module's own
# runtime state. Removing a process that is not running is not an error.
MODDIR=${0%/*}
MODDIR=${MODDIR%/}
CONFIG_DIR=/data/adb/tricky_store

for _p in $(pidof TEESimulator 2>/dev/null); do
    kill "$_p" 2>/dev/null
    echo "stopped TEESimulator: $_p"
done

# Only this module's supervisor: its command line carries this module directory.
for _p in $(pidof supervisor 2>/dev/null); do
    case $(tr '\0' ' ' < "/proc/$_p/cmdline" 2>/dev/null) in
        *"$MODDIR"*)
            kill "$_p" 2>/dev/null
            echo "stopped supervisor: $_p"
            ;;
    esac
done

# Only this module's own runtime state. keybox.xml / target.txt /
# security_patch.txt / hbk under /data/adb/tricky_store are user data (and that
# directory may be shared with another tricky-store module), so they are kept;
# a fresh install seeds whatever is missing.
rm -f "$CONFIG_DIR/ksu_status" "$CONFIG_DIR/ksu_boot.log"
echo "removed $CONFIG_DIR/ksu_status and ksu_boot.log"

# The Lite mirror only ever holds copies/symlinks of the canonical files above.
rm -rf /data/adb/maplesu/tee
echo "removed /data/adb/maplesu/tee"
exit 0
"""


SETENFORCE = re.compile(r"(?<![A-Za-z0-9_])setenforce(?![A-Za-z0-9_])")

# The WebUI backend still lives in core/ (that path is baked into the packaged
# webroot/main.js), while 6.0.10 moved the runtime to the module root. Teach the
# packaged copy to pick whichever directory actually carries keybox.xml.
WEBUI_CORE_ORIGINAL = b"CORE=$MODDIR/core\n"
WEBUI_CORE_PATCHED = (
    b"CORE=$MODDIR/core\n"
    b"# 6.0.10: the runtime is flat (classes.dex/keybox.xml at the module root),\n"
    b"# while this backend still lives in core/ (webroot/main.js contract). Pick the\n"
    b"# directory that actually carries the config instead of assuming one layout.\n"
    b"[ -f \"$CORE/keybox.xml\" ] || CORE=$MODDIR\n"
)


def build_webui(source_bytes):
    """Return the packaged webui.sh with the flat-layout CORE fallback."""
    if b"\r\n" in source_bytes:
        sys.exit("webui.sh must use LF line endings (found CRLF)")
    if source_bytes.count(WEBUI_CORE_ORIGINAL) != 1:
        sys.exit("webui.sh: expected exactly one %r line, found %d"
                 % (WEBUI_CORE_ORIGINAL.decode().strip(),
                    source_bytes.count(WEBUI_CORE_ORIGINAL)))
    return source_bytes.replace(WEBUI_CORE_ORIGINAL, WEBUI_CORE_PATCHED)


def read_hide_bootloader():
    """The Pro package's hide_bootloader.sh, shipped byte for byte."""
    if not os.path.isfile(HIDE_BOOTLOADER):
        sys.exit("hide_bootloader.sh is missing: %s" % HIDE_BOOTLOADER)
    with open(HIDE_BOOTLOADER, "rb") as handle:
        data = handle.read().replace(b"\r\n", b"\n")
    text = data.decode("utf-8")
    for line in text.splitlines():
        if line.lstrip().startswith("#"):
            continue
        if SETENFORCE.search(line):
            sys.exit("hide_bootloader.sh has an executable setenforce line: %s"
                     % line.strip())
    return data


def assert_policy_safe(name, data):
    """Fail the build when a shipped script would be rejected by the Lite backend."""
    for line in data.decode("utf-8", "replace").splitlines():
        if line.lstrip().startswith("#"):
            continue
        if SETENFORCE.search(line):
            sys.exit("%s has `setenforce` in an executable line; LiteScriptModulePolicy "
                     "would reject the whole module: %s" % (name, line.strip()))


def read_dex():
    """The rebuilt dex is mandatory and must carry the Soter/Scope classes."""
    path = os.environ.get("MAPLESU_TEE_DEX")
    if not path:
        sys.exit("MAPLESU_TEE_DEX is required: the upstream classes.dex has no "
                 "mpl/Soter* classes. Example: MAPLESU_TEE_DEX=work/tee16-fix/dex/"
                 "classes_p16.dex py -3 tools/package_teesimulator_bundle.py")
    if not os.path.isfile(path):
        sys.exit("MAPLESU_TEE_DEX does not exist: %s" % path)
    with open(path, "rb") as handle:
        data = handle.read()
    if not data:
        sys.exit("MAPLESU_TEE_DEX is empty: %s" % path)
    missing = [name for name in DEX_REQUIRED_CLASSES if name.encode() not in data]
    if missing:
        sys.exit("MAPLESU_TEE_DEX is missing required classes (%s): %s"
                 % (", ".join(missing), path))
    return path, data


def read_keybox():
    """The KSU bundle's keybox: the same bytes the Ultra/Pro package ships.

    6.0.11 keeps the 6.0.10 key material (user instruction: do not change the
    keybox). Sourcing it from the shipped Pro ZIP - rather than a scratch copy -
    makes "KSU keybox == Ultra keybox" a build-time guarantee, and the pinned
    SHA-256 catches a swapped or regenerated Pro package. MAPLESU_TEE_KEYBOX can
    still override the path for a local experiment.
    """
    override = os.environ.get("MAPLESU_TEE_KEYBOX")
    if override:
        if not os.path.isfile(override):
            sys.exit("MAPLESU_TEE_KEYBOX does not exist: %s" % override)
        with open(override, "rb") as handle:
            return override, handle.read()
    if not os.path.isfile(PRO_RELEASE_ZIP):
        sys.exit("Pro package for the keybox is missing: %s (or set "
                 "MAPLESU_TEE_KEYBOX)" % PRO_RELEASE_ZIP)
    with zipfile.ZipFile(PRO_RELEASE_ZIP) as zf:
        data = zf.read(PRO_RELEASE_KEYBOX)
    got = hashlib.sha256(data).hexdigest()
    if got != PRO_KEYBOX_SHA256:
        sys.exit("Pro package keybox hash changed: %s != %s (%s)"
                 % (got, PRO_KEYBOX_SHA256, PRO_RELEASE_ZIP))
    return "%s!%s" % (PRO_RELEASE_ZIP, PRO_RELEASE_KEYBOX), data


def add(zf, name, data, mode):
    info = zipfile.ZipInfo(name, date_time=(1980, 1, 1, 0, 0, 0))
    info.compress_type = zipfile.ZIP_DEFLATED
    info.external_attr = ((0o100000 | mode) << 16)
    zf.writestr(info, data)


def main():
    if not os.path.isdir(UPSTREAM):
        sys.exit("upstream core directory is missing: %s" % UPSTREAM)
    # keybox.xml no longer comes from this checkout: see read_keybox().
    missing = [name for name in FLAT if name != "keybox.xml"
               and not os.path.isfile(os.path.join(UPSTREAM, name))]
    if missing:
        sys.exit("upstream core is missing: %s" % ", ".join(missing))
    if not os.path.isfile(WEBUI_SH):
        sys.exit("webui.sh is missing: %s" % WEBUI_SH)
    with open(WEBUI_SH, "rb") as handle:
        webui_data = build_webui(handle.read())
    os.makedirs(os.path.dirname(OUT), exist_ok=True)
    dex_path, dex_data = read_dex()
    hide_data = read_hide_bootloader()
    keybox_label, keybox_data = read_keybox()
    scripts = {
        "customize.sh": CUSTOMIZE.encode(),
        "service.sh": SERVICE.encode(),
        "uninstall.sh": UNINSTALL.encode(),
        "hide_bootloader.sh": hide_data,
        "core/webui.sh": webui_data,
    }
    for name, data in scripts.items():
        assert_policy_safe(name, data)
    # Checked before the ZIP is opened: a missing input must never truncate the
    # previously published asset.
    missing_web = [n for n in WEBROOT_FILES if not os.path.isfile(os.path.join(WEBROOT, n))]
    if missing_web:
        sys.exit("webroot is missing: %s" % ", ".join(missing_web))
    # sha256 of the bytes actually archived (the daemon is CRLF-normalised on the
    # way in, so re-reading the checkout for provenance would print a different
    # hash than the package contains).
    archived = {}
    with zipfile.ZipFile(OUT, "w", zipfile.ZIP_DEFLATED) as zf:
        add(zf, "module.prop", MODULE_PROP.encode(), 0o644)
        # KernelSU reads <module>/sepolicy.rule (NOT core/sepolicy.rule).
        if os.path.isfile(POLICY_SRC):
            with open(POLICY_SRC, "rb") as handle:
                add(zf, "sepolicy.rule", handle.read(), 0o644)
        add(zf, "customize.sh", scripts["customize.sh"], 0o755)
        add(zf, "service.sh", scripts["service.sh"], 0o755)
        add(zf, "uninstall.sh", scripts["uninstall.sh"], 0o755)
        add(zf, "hide_bootloader.sh", hide_data, 0o755)
        # Flat runtime at the module root (upstream layout). Only text scripts are
        # CRLF-normalised; ELF assets are copied verbatim. keybox.xml is the AOSP
        # software keybox from read_keybox(), not the .research checkout copy.
        for name in FLAT:
            if name == "classes.dex":
                data = dex_data
            elif name == "keybox.xml":
                data = keybox_data
            else:
                with open(os.path.join(UPSTREAM, name), "rb") as handle:
                    data = handle.read()
            if name == "target.txt":
                # Detectors users routinely ask about. Keep them in the shipped
                # default list so a fresh install covers them even when the auto
                # refresh has not run yet.
                for _pkg in (b"com.basicas.u52", b"com.chunqiunativecheck",
                             b"com.maple.detect"):
                    if _pkg not in data:
                        data = data.rstrip(b"\r\n") + b"\n" + _pkg + b"\n"
            if name == "daemon":
                # The upstream checkout stores this shell script with CRLF endings.
                # On-device `sh` then parses every "\r" as a command and the core never
                # execs: "daemon[2]: : inaccessible or not found" (measured 2026-10-27).
                data = data.replace(b"\r\n", b"\n")
            mode = 0o755 if name in ("inject", "supervisor", "daemon", "resetprop") else 0o644
            add(zf, name, data, mode)
            archived[name] = hashlib.sha256(data).hexdigest()
        add(zf, "core/webui.sh", webui_data, 0o755)
        archived["core/webui.sh"] = hashlib.sha256(webui_data).hexdigest()
        for name in WEBROOT_FILES:
            with open(os.path.join(WEBROOT, name), "rb") as handle:
                data = handle.read()
            add(zf, "webroot/" + name, data, 0o644)
            archived["webroot/" + name] = hashlib.sha256(data).hexdigest()
    digest = hashlib.sha256(open(OUT, "rb").read()).hexdigest()
    size = os.path.getsize(OUT)
    print("wrote %s (%d bytes)" % (OUT, size))
    print("sha256=%s" % digest)
    # The list of upstream inputs is part of the provenance record.
    print("  dex source=%s sha256=%s classes=%s"
          % (dex_path, hashlib.sha256(dex_data).hexdigest(), ",".join(DEX_REQUIRED_CLASSES)))
    print("  asset hide_bootloader.sh sha256=%s"
          % hashlib.sha256(hide_data).hexdigest())
    print("  asset core/webui.sh sha256=%s" % archived["core/webui.sh"])
    for name in WEBROOT_FILES:
        print("  asset webroot/%s sha256=%s" % (name, archived["webroot/" + name]))
    print("  asset classes.dex sha256=%s" % hashlib.sha256(dex_data).hexdigest())
    print("  asset keybox.xml sha256=%s source=%s"
          % (archived["keybox.xml"], keybox_label))
    for name in FLAT:
        if name in ("classes.dex", "keybox.xml"):
            continue
        print("  asset %s sha256=%s" % (name, archived[name]))


if __name__ == "__main__":
    main()
