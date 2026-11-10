#!/usr/bin/env python3
"""Static acceptance checks for the two TEESimulator-RS release packages.

Ultra  : module_TEESimulatorRS.zip   (TEESimulatorRS_Core/ layout)
KSU    : teesimulator-rs.zip         (flat upstream layout since 6.0.10:
                                      classes.dex/daemon/inject/supervisor/*.so at
                                      the module root, WebUI backend in core/)

Key material is unchanged in 6.0.11 by explicit user instruction: the KSU bundle
ships the same keybox as Ultra (b7629b3d..., `DeviceID="Yurikey66..."`), and
nothing overwrites an existing /data/adb/tricky_store/keybox.xml. The audit date
on that keybox's leaf (notAfter 2026-11-04T10:54:52Z) is recorded as evidence in
A-U-05 / A-K-04, not acted on.

The script only reads the two zip files plus the webui.sh source tree.  It
never extracts, patches or installs anything.  Every assertion prints a
PASS/FAIL/WARN/SKIP line with the evidence it used, and the process exits
non-zero when at least one hard assertion failed.

Run (Windows, repo root):
    py -3 tools/verify_packages.py
    py -3 tools/verify_packages.py --json work/tee16-verify/out/A-verify_packages.json

This file is intentionally dependency-free (stdlib only) so it keeps working
after the dex / tee13 agents replace the zip contents.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
import re
import sys
import zipfile
from dataclasses import dataclass, field
from datetime import datetime, timezone
from pathlib import Path

# ---------------------------------------------------------------------------
# constants that are part of the release contract
# ---------------------------------------------------------------------------

# Pro module baseline keybox (full sha256; the task quotes the b7629b3d prefix).
# The KSU bundle must ship exactly these bytes (unchanged in 6.0.11 by user
# instruction). The leaf certificate's notAfter (2026-11-04T10:54:52Z) is
# recorded as evidence only; no check changes or replaces the file.
PRO_KEYBOX_SHA256 = "b7629b3d348c7386b397966111c0ef3b3d9fa9eef4e2d715a64fef6740b6de49"
PRO_KEYBOX_NOTAFTER = "2026-11-04T10:54:52Z"

# Classes that must be present in the dex of both packages.
DEX_CLASS_MARKERS = [
    "mpl/SoterForge",
    "mpl/SoterPolicy",
    "mpl/SoterIdentity",
    "mpl/ScopeCli",
    "mpl/TargetTxt",
]

# Ultra native module contract.  The version marker is a family: the task says
# "6.0.x_MapleSU", the build embeds e.g. "6.0.7_MapleSU".
SO_VERSION_RE = re.compile(rb"6\.0\.\d+_MapleSU")
SO_LITERAL_MARKERS = [
    b"TEESimulator-RS_MapleSU",
    b"/soterScope",
    b"mpl/ScopeCli",
]
SO_SOFTCERTS_MARKERS = [b"/soterCerts", b"/getSoterCerts", b"/setSoterCerts"]  # "if implemented"

ULTRA_DEX = "TEESimulatorRS_Core/classes.dex"
ULTRA_SO = "libmodule_TEESimulatorRS.so"
ULTRA_KEYBOX = "TEESimulatorRS_Core/keybox.xml"
ULTRA_SERVICE = "TEESimulatorRS_Core/service.sh"
ULTRA_DAEMON = "TEESimulatorRS_Core/daemon"
ULTRA_SUPERVISOR = "TEESimulatorRS_Core/supervisor"
ULTRA_WEBROOT_EXPECTED = [
    "webroot/index.html",
    "webroot/main.js",
    "webroot/request.js",
    "webroot/i18n.js",
    "webroot/locales.js",
    "webroot/style.css",
]

# 6.0.10: the KSU runtime is flat, exactly like the upstream module. The WebUI
# backend keeps `core/webui.sh` because that path is part of the packaged
# webroot/main.js contract.
KSU_DEX = "classes.dex"
KSU_CORE_SERVICE = "service.sh"
KSU_ROOT_SERVICE = "service.sh"
KSU_WEBUI = "core/webui.sh"
KSU_KEYBOX = "keybox.xml"
KSU_MODULE_PROP = "module.prop"
KSU_CORE_DAEMON = "daemon"
KSU_FLAT_RUNTIME = [
    "classes.dex", "daemon", "inject", "supervisor", "libTEESimulator.so",
    "libcertgen.so", "keybox.xml", "target.txt", "resetprop",
]
KSU_MIN_VERSION_CODE = 61100
KSU_ENTRY_COUNT = 22

# 6.0.11 self-diagnosis contract: the dump path the user pulls, the lock that
# keeps the writer single-instance, the default 20s/60s schedule, and the ten
# numbered sections of one snapshot.
KSU_DIAG_FILE = "/sdcard/Download/tee_diag.txt"
KSU_DIAG_LOCK = ".diag_lock"
KSU_DIAG_MARKERS = ["[%d] " % n for n in range(1, 11)]

SCRIPT_MODE = 0o755

PASS, FAIL, WARN, SKIP = "PASS", "FAIL", "WARN", "SKIP"


# ---------------------------------------------------------------------------
# reporting
# ---------------------------------------------------------------------------

@dataclass
class Check:
    cid: str
    title: str
    status: str
    detail: str
    evidence: list[str] = field(default_factory=list)


class Report:
    def __init__(self) -> None:
        self.rows: list[Check] = []

    def add(self, cid: str, title: str, status: str, detail: str,
            evidence: list[str] | None = None) -> None:
        self.rows.append(Check(cid, title, status, detail, evidence or []))

    def add_bool(self, cid: str, title: str, ok: bool, pass_detail: str,
                 fail_detail: str, evidence: list[str] | None = None,
                 fail_status: str = FAIL) -> None:
        self.add(cid, title, PASS if ok else fail_status,
                 pass_detail if ok else fail_detail, evidence)

    def counts(self) -> dict[str, int]:
        out = {PASS: 0, FAIL: 0, WARN: 0, SKIP: 0}
        for row in self.rows:
            out[row.status] += 1
        return out

    def failures(self) -> list[Check]:
        return [r for r in self.rows if r.status == FAIL]

    def render(self) -> None:
        print("=" * 78)
        print(" A. Static package consistency")
        print("=" * 78)
        for row in self.rows:
            print(f"[{row.status:4}] {row.cid:14} {row.title}")
            for line in row.detail.splitlines():
                print(f"         {line}")
            for ev in row.evidence:
                print(f"         evidence: {ev}")
        counts = self.counts()
        print("-" * 78)
        print("SUMMARY: PASS={PASS} FAIL={FAIL} WARN={WARN} SKIP={SKIP}".format(**counts))
        print("-" * 78)


# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

class Package:
    """Read-only view over a release zip."""

    def __init__(self, label: str, path: Path) -> None:
        self.label = label
        self.path = path
        self.zip = zipfile.ZipFile(path)
        self.infos = {i.filename: i for i in self.zip.infolist() if not i.is_dir()}
        self.names = sorted(self.infos)
        self.sha256 = hashlib.sha256(path.read_bytes()).hexdigest()

    def has(self, name: str) -> bool:
        return name in self.infos

    def read(self, name: str) -> bytes:
        return self.zip.read(name)

    def text(self, name: str) -> str:
        return self.read(name).decode("utf-8", "replace")

    def mode(self, name: str) -> int:
        if name not in self.infos:
            return -1
        return (self.infos[name].external_attr >> 16) & 0o7777

    def files_under(self, prefix: str) -> list[str]:
        return [n for n in self.names if n.startswith(prefix)]


def sha256_bytes(data: bytes) -> str:
    return hashlib.sha256(data).hexdigest()


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def effective_lines(text: str) -> list[tuple[int, str]]:
    """(line number, line) with full-line comments and blank lines removed.

    Only whole-line comments are ignored.  That is deliberate: a trailing
    `setenforce` after a command still executes.
    """
    out: list[tuple[int, str]] = []
    for no, line in enumerate(text.splitlines(), 1):
        stripped = line.strip()
        if not stripped or stripped.startswith("#"):
            continue
        # strip a trailing comment for the policy scan only (keep it simple:
        # a '#' that starts a token, not inside quotes).
        code = re.sub(r"\s+#.*$", "", line)
        out.append((no, code))
    return out


def find_setenforce(text: str) -> list[tuple[int, str]]:
    hits = []
    for no, line in effective_lines(text):
        if re.search(r"\bsetenforce\b", line):
            hits.append((no, line.strip()))
    return hits


def crlf_lines(text: bytes) -> int:
    return text.count(b"\r\n")


def archive_lines(data: bytes) -> int:
    """Logical line count of a text file, tolerating CRLF."""
    return data.replace(b"\r\n", b"\n").count(b"\n")


def config_dir_assignment(text: str) -> list[tuple[int, str]]:
    return [
        (no, line.strip())
        for no, line in effective_lines(text)
        if re.search(r"\bCONFIG_DIR\s*=\s*/data/adb/maplesu/tee\b", line)
        and "tricky_store" not in line
    ]


def hide_bootloader_call(text: str) -> tuple[bool, str]:
    """Detect a real invocation, not just a path string.

    Accepted shapes:
      sh "$_HB_SCRIPT"          with _HB_SCRIPT=.../hide_bootloader.sh
      sh /path/hide_bootloader.sh
      sh "$MODDIR/hide_bootloader.sh"
    """
    assign = re.search(
        r"(?m)^\s*([A-Za-z_][A-Za-z0-9_]*)=[^\n#]*hide_bootloader\.sh", text)
    if assign:
        var = assign.group(1)
        pat = r"(?m)\bsh\s+[\"']?\$\{?" + re.escape(var) + r"\}?[\"']?"
        if re.search(pat, text):
            return True, f"{var} -> hide_bootloader.sh, invoked as sh ${var}"
        return False, f"{var} points at hide_bootloader.sh but no 'sh ${var}' invocation found"
    m = re.search(r"(?m)\bsh\s+[^\n#]*hide_bootloader\.sh", text)
    if m:
        return True, "direct sh .../hide_bootloader.sh invocation"
    if "hide_bootloader.sh" in text:
        return False, "hide_bootloader.sh is mentioned but never executed"
    return False, "hide_bootloader.sh is not referenced"


# ---------------------------------------------------------------------------
# A.1 Ultra package
# ---------------------------------------------------------------------------

def check_ultra(pkg: Package, rep: Report, pro_sha: str,
                require_sotercerts: bool) -> None:
    sec = "A-U"

    # entry count
    n = len(pkg.names)
    rep.add_bool(f"{sec}-01", "Ultra entry count == 20", n == 20,
                 f"{n} file entries",
                 f"{n} file entries, expected 20",
                 [f"{pkg.path.name} sha256={pkg.sha256}"])

    # dex presence + class markers.  The layout is part of the contract:
    # Ultra puts it under TEESimulatorRS_Core/, a root-level dex is a FAIL.
    dex_name = ULTRA_DEX if pkg.has(ULTRA_DEX) else None
    if not dex_name:
        hint = ""
        if pkg.has("classes.dex"):
            hint = " (a root-level classes.dex exists, but the Ultra layout requires TEESimulatorRS_Core/classes.dex)"
        rep.add(f"{sec}-02", "Ultra classes.dex contains mpl/* classes", FAIL,
                f"{ULTRA_DEX} not found{hint}")
    else:
        dex = pkg.read(dex_name)
        missing = [m for m in DEX_CLASS_MARKERS if m.encode() not in dex]
        extras = [m for m in ("soter_certs", "MPL-BUILD", "MPL-SOTER")
                  if m.encode() in dex]
        rep.add_bool(
            f"{sec}-02", "Ultra classes.dex contains mpl/* classes",
            not missing,
            f"{dex_name}: all {len(DEX_CLASS_MARKERS)} markers present "
            f"({', '.join(DEX_CLASS_MARKERS)}); extra markers: {', '.join(extras) or 'none'}",
            f"{dex_name}: missing {', '.join(missing)}",
            [f"dex size={len(dex)} sha256={sha256_bytes(dex)}"])

    # native module markers
    if not pkg.has(ULTRA_SO):
        rep.add(f"{sec}-03", "Ultra .so markers", FAIL, f"{ULTRA_SO} is missing")
    else:
        so = pkg.read(ULTRA_SO)
        ver = SO_VERSION_RE.search(so)
        missing = [m.decode() for m in SO_LITERAL_MARKERS if m not in so]
        ver_txt = ver.group(0).decode() if ver else "none"
        rep.add_bool(
            f"{sec}-03", "Ultra .so: version family 6.0.x_MapleSU + name + /soterScope + mpl/ScopeCli",
            bool(ver) and not missing,
            f"version marker={ver_txt}, name/TEESimulator-RS_MapleSU=/soterScope/mpl/ScopeCli present",
            f"version marker={ver_txt}; missing {', '.join(missing) or 'none'}",
            [f"{ULTRA_SO} size={len(so)}"])

    # /soterCerts is conditional on the cert-chain feature being implemented.
    # The tee13 route table names the pair /getSoterCerts + /setSoterCerts, so
    # either the umbrella prefix or the concrete routes satisfy this marker.
    if pkg.has(ULTRA_SO):
        so = pkg.read(ULTRA_SO)
        certs_hits = [m.decode() for m in SO_SOFTCERTS_MARKERS if m in so]
        has_certs = bool(certs_hits)
        status = PASS if has_certs else (FAIL if require_sotercerts else WARN)
        rep.add(
            f"{sec}-04", "Ultra .so: /soterCerts route (conditional)",
            status,
            f"present: {', '.join(certs_hits)}" if has_certs
            else "absent: cert-chain native route not implemented yet (task says 'if implemented'); "
                 "re-run with --require-sotercerts once tee13 lands",
            [f"grep {', '.join(m.decode() for m in SO_SOFTCERTS_MARKERS)} -> {certs_hits or False}"])

    # keybox sha. Ultra and KSU must ship the same bytes; the leaf's notAfter is
    # recorded as evidence (user instruction: do not change the keybox).
    if not pkg.has(ULTRA_KEYBOX):
        rep.add(f"{sec}-05", "Ultra keybox.xml == Pro baseline", FAIL,
                f"{ULTRA_KEYBOX} is missing")
    else:
        kb = pkg.read(ULTRA_KEYBOX)
        got = sha256_bytes(kb)
        rep.add_bool(
            f"{sec}-05", "Ultra keybox.xml == Pro baseline (b7629b3d...)",
            got == pro_sha,
            f"sha256={got} (size={len(kb)}), baseline={pro_sha}; "
            f"leaf notAfter={PRO_KEYBOX_NOTAFTER} (recorded, unchanged)",
            f"sha256={got} (size={len(kb)}) != baseline {pro_sha}",
            [f"{ULTRA_KEYBOX}"])

    # webroot
    wr = pkg.files_under("webroot/")
    rep.add_bool(
        f"{sec}-06", "Ultra webroot has exactly 6 expected files",
        sorted(wr) == sorted(ULTRA_WEBROOT_EXPECTED),
        f"6 files: {', '.join(sorted(wr))}",
        f"found {len(wr)}: {', '.join(sorted(wr))}; expected {len(ULTRA_WEBROOT_EXPECTED)}",
        [f"webroot entries={wr}"])

    # script modes
    for cid, name in (("07", ULTRA_SERVICE), ("08", ULTRA_DAEMON),
                      ("09", ULTRA_SUPERVISOR)):
        if not pkg.has(name):
            rep.add(f"{sec}-{cid}", f"Ultra {name} exists + mode 0755", FAIL,
                    f"{name} is missing")
            continue
        mode = pkg.mode(name)
        rep.add_bool(f"{sec}-{cid}", f"Ultra {name} exists + mode 0755",
                     mode == SCRIPT_MODE,
                     f"mode={mode:04o}",
                     f"mode={mode:04o}, expected {SCRIPT_MODE:04o}",
                     [f"{name} mode={mode:04o}"])

    # policy: no setenforce, no CRLF
    files = [ULTRA_SERVICE, "hide_bootloader.sh"]
    hits_all = []
    for name in files:
        if pkg.has(name):
            hits_all.extend((name, no, line) for no, line in
                            find_setenforce(pkg.text(name)))
    rep.add_bool(
        f"{sec}-10", "Ultra service.sh/hide_bootloader.sh: no effective setenforce",
        not hits_all,
        "no setenforce on an executable line",
        "; ".join(f"{n}:{no}: {line}" for n, no, line in hits_all),
        [f"files checked: {files}"])

    crlf_hits = []
    for name in (ULTRA_SERVICE, ULTRA_DAEMON):
        if pkg.has(name) and crlf_lines(pkg.read(name)):
            crlf_hits.append(f"{name}:{crlf_lines(pkg.read(name))} CRLF")
    rep.add_bool(
        f"{sec}-11", "Ultra service.sh/daemon have no CRLF",
        not crlf_hits,
        "LF only",
        "; ".join(crlf_hits),
        [f"files checked: {ULTRA_SERVICE}, {ULTRA_DAEMON}"])


# ---------------------------------------------------------------------------
# A.2 KSU package
# ---------------------------------------------------------------------------

def expected_webui_bytes(source: bytes) -> bytes | None:
    """The packaged webui.sh: the source plus the flat-layout CORE fallback.

    The transform lives in tools/package_teesimulator_bundle.py; import it so the
    verifier and the packager can never disagree about the expected bytes.
    Returns None when the transform cannot be applied (missing marker).
    """
    try:
        import package_teesimulator_bundle as tee_bundle  # same directory
    except Exception:
        return None
    if source.count(tee_bundle.WEBUI_CORE_ORIGINAL) != 1:
        return None
    return source.replace(tee_bundle.WEBUI_CORE_ORIGINAL, tee_bundle.WEBUI_CORE_PATCHED)


def check_ksu(pkg: Package, rep: Report, ultra_keybox_sha: str | None,
              pro_sha: str, webui_source: Path) -> None:
    sec = "A-K"

    n = len(pkg.names)
    rep.add_bool(f"{sec}-01", "KSU entry count >= 22 (flat runtime + webui + webroot)",
                 n >= KSU_ENTRY_COUNT,
                 f"{n} file entries",
                 f"{n} file entries, expected >= {KSU_ENTRY_COUNT}",
                 [f"{pkg.path.name} sha256={pkg.sha256}"])

    # dex
    if not pkg.has(KSU_DEX):
        rep.add(f"{sec}-02", "KSU classes.dex contains mpl/* classes", FAIL,
                f"{KSU_DEX} is missing")
    else:
        dex = pkg.read(KSU_DEX)
        missing = [m for m in DEX_CLASS_MARKERS if m.encode() not in dex]
        rep.add_bool(
            f"{sec}-02", "KSU classes.dex contains mpl/* classes",
            not missing,
            f"{KSU_DEX}: all {len(DEX_CLASS_MARKERS)} markers present "
            f"({', '.join(DEX_CLASS_MARKERS)})",
            f"{KSU_DEX}: missing {', '.join(missing)}",
            [f"dex size={len(dex)} sha256={sha256_bytes(dex)}"])

    # webui.sh: exists, 0755, == source webui.sh + the documented flat transform
    if not pkg.has(KSU_WEBUI):
        rep.add(f"{sec}-03", "KSU core/webui.sh == source webui.sh (+ flat CORE fallback)", FAIL,
                f"{KSU_WEBUI} is missing")
    else:
        mode = pkg.mode(KSU_WEBUI)
        zipped = pkg.read(KSU_WEBUI)
        zsha = sha256_bytes(zipped)
        expected = None
        if webui_source.is_file():
            expected = expected_webui_bytes(webui_source.read_bytes())
        if expected is not None:
            esha = sha256_bytes(expected)
            ok = zsha == esha and mode == SCRIPT_MODE
            if zsha != esha:
                fail_detail = (f"sha256={zsha} (mode={mode:04o}) != expected {esha} "
                               f"(packaged webui is stale / not repacked)")
            elif mode != SCRIPT_MODE:
                fail_detail = f"sha256 matches but mode={mode:04o}, expected {SCRIPT_MODE:04o}"
            else:
                fail_detail = "unexpected"
            rep.add_bool(
                f"{sec}-03", "KSU core/webui.sh == source webui.sh (+ flat CORE fallback)",
                ok,
                f"sha256={zsha}, mode={mode:04o}; expected sha256={esha}",
                fail_detail,
                [f"source: {webui_source}"])
        elif webui_source.is_file():
            rep.add(f"{sec}-03", "KSU core/webui.sh == source webui.sh (+ flat CORE fallback)",
                    WARN,
                    f"source webui.sh has no single `CORE=$MODDIR/core` marker; cannot "
                    f"derive the expected bytes (packaged sha256={zsha}, mode={mode:04o})")
        else:
            rep.add(f"{sec}-03", "KSU core/webui.sh == source webui.sh (+ flat CORE fallback)",
                    WARN,
                    f"source webui.sh not found at {webui_source}; cannot compare "
                    f"(packaged sha256={zsha}, mode={mode:04o})")

    # keybox equality with Ultra (and Pro baseline): 6.0.11 does not change key
    # material, and an existing /data/adb/tricky_store/keybox.xml is never
    # overwritten at boot (create-only seeding).
    if not pkg.has(KSU_KEYBOX):
        rep.add(f"{sec}-04", "KSU keybox.xml identical to Ultra keybox", FAIL,
                f"{KSU_KEYBOX} is missing")
    else:
        kb = pkg.read(KSU_KEYBOX)
        got = sha256_bytes(kb)
        same_ultra = ultra_keybox_sha is not None and got == ultra_keybox_sha
        same_pro = got == pro_sha
        rep.add_bool(
            f"{sec}-04", "KSU keybox.xml identical to Ultra keybox (unchanged in 6.0.11)",
            same_ultra and same_pro,
            f"sha256={got} (size={len(kb)}); equals Ultra and Pro baseline; "
            f"leaf notAfter={PRO_KEYBOX_NOTAFTER} (recorded, unchanged)",
            f"sha256={got} (size={len(kb)}); ultra={ultra_keybox_sha}, "
            f"pro={pro_sha}",
            [f"{KSU_KEYBOX}"])

    # service.sh content contract
    if not pkg.has(KSU_CORE_SERVICE):
        rep.add(f"{sec}-05", "KSU service.sh content contract", FAIL,
                f"{KSU_CORE_SERVICE} is missing")
        return
    svc = pkg.text(KSU_CORE_SERVICE)

    tricky_lines = sum(1 for line in svc.splitlines() if "tricky_store" in line)
    rep.add_bool(
        f"{sec}-05", "KSU service.sh: grep -c tricky_store >= 3",
        tricky_lines >= 3,
        f"{tricky_lines} lines mention tricky_store",
        f"only {tricky_lines} lines mention tricky_store",
        [f"{KSU_CORE_SERVICE}"])

    bad_cfg = config_dir_assignment(svc)
    rep.add_bool(
        f"{sec}-06",
        "KSU service.sh: CONFIG_DIR is not the legacy /data/adb/maplesu/tee",
        not bad_cfg,
        "canonical CONFIG_DIR is not hard-wired to /data/adb/maplesu/tee",
        "; ".join(f"line {no}: {line}" for no, line in bad_cfg),
        [f"{KSU_CORE_SERVICE}"])

    exits = [(no, line.strip()) for no, line in effective_lines(svc)
             if re.search(r"(?m)\bexit\s+3\b", line)]
    rep.add_bool(
        f"{sec}-07", "KSU service.sh: no 'exit 3'", not exits,
        "no exit 3 on an executable line",
        "; ".join(f"line {no}: {line}" for no, line in exits),
        [f"{KSU_CORE_SERVICE}"])

    rep.add_bool(
        f"{sec}-08", "KSU service.sh: calls webui.sh boot-apply",
        "boot-apply" in svc,
        "boot-apply referenced",
        "boot-apply not found",
        [f"{KSU_CORE_SERVICE}"])

    hb_ok, hb_why = hide_bootloader_call(svc)
    rep.add_bool(
        f"{sec}-09", "KSU service.sh: invokes hide_bootloader.sh", hb_ok,
        hb_why, hb_why, [f"{KSU_CORE_SERVICE}"])

    # module.prop versionCode
    if not pkg.has(KSU_MODULE_PROP):
        rep.add(f"{sec}-10", "KSU module.prop versionCode >= 61100", FAIL,
                f"{KSU_MODULE_PROP} is missing")
    else:
        prop = pkg.text(KSU_MODULE_PROP)
        m = re.search(r"(?m)^versionCode=(\d+)\s*$", prop)
        v = int(m.group(1)) if m else -1
        ver = re.search(r"(?m)^version=(\S+)", prop)
        rep.add_bool(
            f"{sec}-10", "KSU module.prop versionCode >= 61100",
            v >= KSU_MIN_VERSION_CODE,
            f"versionCode={v} (version={ver.group(1) if ver else '?'})",
            f"versionCode={v}, expected >= {KSU_MIN_VERSION_CODE}",
            [f"{KSU_MODULE_PROP}"])

    # policy: setenforce + CRLF
    hits_all = []
    for name in (KSU_CORE_SERVICE, "hide_bootloader.sh"):
        if pkg.has(name):
            hits_all.extend((name, no, line) for no, line in find_setenforce(pkg.text(name)))
    rep.add_bool(
        f"{sec}-11", "KSU service.sh/hide_bootloader.sh: no effective setenforce",
        not hits_all,
        "no setenforce on an executable line (only the explanatory comment)",
        "; ".join(f"{n}:{no}: {line}" for n, no, line in hits_all),
        [f"files checked: {KSU_CORE_SERVICE}, hide_bootloader.sh"])

    crlf_hits = []
    for name in (KSU_CORE_SERVICE, KSU_CORE_DAEMON):
        if pkg.has(name) and crlf_lines(pkg.read(name)):
            crlf_hits.append(f"{name}:{crlf_lines(pkg.read(name))} CRLF")
    rep.add_bool(
        f"{sec}-12", "KSU service.sh/daemon have no CRLF", not crlf_hits,
        "LF only", "; ".join(crlf_hits),
        [f"files checked: {KSU_CORE_SERVICE}, {KSU_CORE_DAEMON}"])

    # --- 6.0.10 root-cause audit invariants --------------------------------
    # The 6.0.9 boot chain had two defects that no static check caught: a
    # post-fs-data early start plus a name-based kill in service.sh, which made
    # the fork/exec supervisor respawn a second daemon. These assertions keep
    # the fix from regressing.
    rep.add_bool(
        f"{sec}-13", "KSU: no post-fs-data.sh (single start, service stage only)",
        not pkg.has("post-fs-data.sh"),
        "post-fs-data.sh absent, like upstream",
        "post-fs-data.sh is back: the daemon would be started twice per boot")

    flat_missing = [name for name in KSU_FLAT_RUNTIME if not pkg.has(name)]
    rep.add_bool(
        f"{sec}-14", "KSU: flat upstream runtime at the module root",
        not flat_missing,
        "all runtime files are at the module root: " + ", ".join(KSU_FLAT_RUNTIME),
        "missing at the module root: " + ", ".join(flat_missing),
        [f"{pkg.path.name}"])

    sup_starts = [(no, line.strip()) for no, line in effective_lines(svc)
                  if "./supervisor" in line]
    kills = [(no, line.strip()) for no, line in effective_lines(svc)
             if re.search(r"\bkill\b", line) and "pidof TEESimulator" in line]
    ok_start = len(sup_starts) == 1 and not kills
    rep.add_bool(
        f"{sec}-15",
        "KSU service.sh: one upstream-style supervisor start, no kill of TEESimulator",
        ok_start,
        "one `./supervisor ./daemon` start, no daemon kill",
        "; ".join([f"line {no}: {line}" for no, line in sup_starts] +
                  [f"kill at line {no}: {line}" for no, line in kills]) or
        "no `./supervisor` start found",
        [f"{KSU_CORE_SERVICE}"])

    nohup_hits = [(no, line.strip()) for no, line in effective_lines(svc)
                  if "nohup" in line]
    rep.add_bool(
        f"{sec}-16", "KSU service.sh: no nohup dependency",
        not nohup_hits,
        "upstream-style `&` without nohup",
        "; ".join(f"line {no}: {line}" for no, line in nohup_hits),
        [f"{KSU_CORE_SERVICE}"])

    cust = pkg.text("customize.sh") if pkg.has("customize.sh") else ""
    skip_ok = any(line.strip() == "SKIPUNZIP=1" for line in cust.splitlines())
    rep.add_bool(
        f"{sec}-17", "KSU customize.sh: SKIPUNZIP=1 self-extract",
        skip_ok,
        "customize.sh sets SKIPUNZIP=1 on its own line (no host-unzip dependency)",
        "SKIPUNZIP=1 missing: the package depends on KernelSU auto-extraction",
        ["customize.sh"])

    # --- 6.0.11 self-diagnosis + keybox migration ---------------------------
    # The user refuses further blind installs: every field the next debugging
    # round needs must be in the dump, written twice, detached, single-instance.
    diag_missing = [marker for marker in KSU_DIAG_MARKERS if marker not in svc]
    diag_fork = '( diag_loop ) >> "$BOOT_LOG" 2>&1 &'
    diag_ok = (
        KSU_DIAG_FILE in svc
        and KSU_DIAG_LOCK in svc
        and ":-20 60" in svc            # default schedule 20s + 60s
        and "diag_start" in svc          # called from the detached extras
        and diag_fork in svc             # writer really forks away from the extras
        and not diag_missing
    )
    diag_detail = (
        f"dump={KSU_DIAG_FILE}, lock={KSU_DIAG_LOCK}, default delays 20s+60s, "
        f"10/10 numbered sections, writer forked and detached from the extras"
        if diag_ok else
        f"missing sections: {diag_missing or 'none'}; "
        f"dump={KSU_DIAG_FILE in svc}, lock={KSU_DIAG_LOCK in svc}, "
        f"delays={':-20 60' in svc}, fork={diag_fork in svc}"
    )
    rep.add_bool(
        f"{sec}-18", "KSU service.sh: detached 20s/60s diagnostic dump to "
                     "/sdcard/Download/tee_diag.txt",
        diag_ok, diag_detail, diag_detail, [f"{KSU_CORE_SERVICE}"])

    # 6.0.11 boot-chain contract: the preflight must not gate the start.
    # The old `exit 0` on a missing runtime file produced a silent no-op that was
    # indistinguishable from "TEE does not work"; upstream starts unconditionally.
    core_bad = [(no, line.strip()) for no, line in effective_lines(svc)
                if line.strip() == "set_status core incomplete"]
    sup_line = next((no for no, line in effective_lines(svc)
                     if "./supervisor ./daemon" in line), -1)
    pre_line = next((no for no, line in effective_lines(svc)
                     if line.strip() == "_CORE_MISSING="), -1)
    exits = [(no, line.strip()) for no, line in effective_lines(svc)
             if re.match(r"^\s*exit\b", line.strip())]
    # Only exits *inside* the preflight window matter (the early "cannot create
    # CONFIG_DIR" exit happens before it and is unrelated).
    preflight_exits = [x for x in exits
                       if pre_line != -1 and sup_line != -1 and pre_line <= x[0] < sup_line]
    ok_start2 = (sup_line != -1 and pre_line != -1 and not preflight_exits
                 and not core_bad and '_CORE_STATE="incomplete:' in svc)
    detail2 = (
        f"core=incomplete:<files> recorded on preflight (line {pre_line}), no exit "
        f"between it and the supervisor line {sup_line}, single unconditional start"
        if ok_start2 else
        f"preflight line={pre_line}, sup_line={sup_line}, "
        f"exits_in_window={preflight_exits}, "
        f"old 'set_status core incomplete' present={bool(core_bad)}, "
        f"incomplete list recorded={'_CORE_STATE=\"incomplete:' in svc}"
    )
    rep.add_bool(
        f"{sec}-19", "KSU service.sh: preflight never gates the boot "
                     "(records core=incomplete, starts upstream-style anyway)",
        ok_start2, detail2, detail2, [f"{KSU_CORE_SERVICE}"])

    # 6.0.11 keybox contract: seeding is create-only, so a user keybox survives
    # install and boot. No direct write to $CONFIG_DIR/keybox.xml may exist.
    seed_guard = 'if [ -f "$CONFIG_DIR/$_sf" ]; then' in svc
    kb_write_re = re.compile(
        r'(?:>>?\s*"?\$CONFIG_DIR/keybox\.xml)'
        r'|(?:\b(?:cp|mv|tee|install|sed\s+-i)\b[^\n]*\$CONFIG_DIR/keybox\.xml)')
    kb_writes = [(no, line.strip()) for no, line in effective_lines(svc)
                 if kb_write_re.search(line)]
    rep.add_bool(
        f"{sec}-20", "KSU service.sh: existing keybox.xml is never overwritten "
                     "(create-only seeding)",
        seed_guard and not kb_writes,
        "seed_file returns early when the config file exists; no direct write to "
        "$CONFIG_DIR/keybox.xml anywhere in service.sh",
        f"seed early-return={seed_guard}; direct writes={kb_writes}",
        [f"{KSU_CORE_SERVICE}"])


# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------

def build_parser(root: Path) -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Static acceptance for Ultra + KSU TEESimulator-RS packages.")
    p.add_argument("--ultra", default=str(root / "deliverables/teesim-6.0.9/TEESimulator-RS_MapleSU_6.0.9_pro.zip"),
                   help="Ultra package zip (default: the shipped 6.0.9 Pro deliverable; "
                        "the old work/tee16-fix/package-final build is stale)")
    p.add_argument("--ksu", default=str(root / "manager/src/main/assets/maplesu/bundled/teesimulator-rs.zip"),
                   help="KSU package zip")
    p.add_argument("--webui-source",
                   default=str(root / "work/tee13/src/testModule/module_TEESimulatorRS/resources/webui.sh"),
                   help="source webui.sh that core/webui.sh must match")
    p.add_argument("--pro-keybox", default=str(root / ".tmp_pro_keybox.xml"),
                   help="Pro baseline keybox.xml (sha256 compared to the constant)")
    p.add_argument("--require-sotercerts", action="store_true",
                   help="treat a missing /soterCerts route as FAIL (after tee13 delivery)")
    p.add_argument("--json", metavar="PATH", help="write a machine-readable report")
    return p


def main(argv: list[str] | None = None) -> int:
    root = Path(__file__).resolve().parent.parent
    args = build_parser(root).parse_args(argv)

    ultra_path = Path(args.ultra).resolve()
    ksu_path = Path(args.ksu).resolve()
    webui_source = Path(args.webui_source).resolve()

    rep = Report()
    print(f"Ultra package : {ultra_path}")
    print(f"KSU package   : {ksu_path}")
    print(f"webui source  : {webui_source}")
    print(f"Pro keybox    : {Path(args.pro_keybox).resolve()}")
    print()

    pro_sha = PRO_KEYBOX_SHA256
    pro_path = Path(args.pro_keybox).resolve()
    if pro_path.is_file():
        got = sha256_file(pro_path)
        if got != PRO_KEYBOX_SHA256:
            print(f"WARN: {pro_path} sha256={got} != documented baseline "
                  f"{PRO_KEYBOX_SHA256}; using the file's hash")
        pro_sha = got

    try:
        ultra = Package("ultra", ultra_path)
    except Exception as exc:  # noqa: BLE001 - report, do not traceback
        print(f"FATAL: cannot open Ultra package {ultra_path}: {exc}")
        return 2
    try:
        ksu = Package("ksu", ksu_path)
    except Exception as exc:  # noqa: BLE001
        print(f"FATAL: cannot open KSU package {ksu_path}: {exc}")
        return 2

    print(f"Ultra sha256  : {ultra.sha256}")
    print(f"KSU   sha256  : {ksu.sha256}")
    print()

    check_ultra(ultra, rep, pro_sha, args.require_sotercerts)

    ultra_keybox_sha = sha256_bytes(ultra.read(ULTRA_KEYBOX)) if ultra.has(ULTRA_KEYBOX) else None
    check_ksu(ksu, rep, ultra_keybox_sha, pro_sha, webui_source)

    try:
        ultra.zip.close()
        ksu.zip.close()
    except Exception:
        pass

    rep.render()

    payload = {
        "generated_at": datetime.now(timezone.utc).isoformat(timespec="seconds"),
        "ultra": {"path": str(ultra_path), "sha256": ultra.sha256,
                  "entries": len(ultra.names)},
        "ksu": {"path": str(ksu_path), "sha256": ksu.sha256,
                "entries": len(ksu.names)},
        "webui_source": str(webui_source),
        "pro_keybox_sha256": pro_sha,
        "checks": [
            {"id": r.cid, "title": r.title, "status": r.status,
             "detail": r.detail, "evidence": r.evidence}
            for r in rep.rows
        ],
        "summary": rep.counts(),
    }
    if args.json:
        out = Path(args.json)
        out.parent.mkdir(parents=True, exist_ok=True)
        out.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n",
                       encoding="utf-8")
        print(f"JSON report: {out}")

    return 0 if not rep.failures() else 1


if __name__ == "__main__":
    sys.exit(main())
