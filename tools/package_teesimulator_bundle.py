#!/usr/bin/env python3
"""Package the TEESimulator-RS core as MapleSU's bundled KSU module ZIP.

Upstream assets: `module/core-assets/Pro(众测开放中)/src/testModule/
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
UPSTREAM = os.environ.get("TEESIM_CORE") or os.path.join(ROOT, "module", "core-assets")


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
