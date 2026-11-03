#!/usr/bin/env bash
# =============================================================================
# tools/verify_ksu_scripts.sh -- executable acceptance for the KSU package.
#
# What it does (no root, no device, no installation):
#   1. extracts manager/src/main/assets/maplesu/bundled/teesimulator-rs.zip to a
#      temp dir and runs `sh -n` on service.sh / customize.sh / uninstall.sh /
#      hide_bootloader.sh / core/webui.sh;
#   2. builds a fake MODDIR (fake core/ + fake classes.dex + real webui.sh) and
#      runs the read-only webui.sh commands (info / keyboxes / get soter /
#      get patch / get soter_certs / targets); each must print exactly one line,
#      that line must be valid JSON and the exit code must be 0;
#   3. points WEBUI_KSU_CONFIG_DIR at a path that cannot be created/written and
#      runs the write commands; each must print {"ok":false,...} (rc 0), never a
#      silent success.
#
# Windows: run from git-bash:   bash tools/verify_ksu_scripts.sh
# Linux/macOS:                  tools/verify_ksu_scripts.sh
#
# Exit code: 0 when there is no FAIL (SKIP/WARN allowed), 1 otherwise.
# =============================================================================
set -u

# Allow `sh tools/verify_ksu_scripts.sh` too: re-exec under bash for arrays.
if [ -z "${BASH_VERSION:-}" ]; then
    exec bash "$0" "$@"
fi

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
REPO_ROOT=${REPO_ROOT:-$(CDPATH= cd -- "$SCRIPT_DIR/.." && pwd)}

ZIP=${ZIP:-$REPO_ROOT/manager/src/main/assets/maplesu/bundled/teesimulator-rs.zip}
KEEP=0
VERBOSE=0

usage() {
    awk 'NR > 1 { if ($0 !~ /^#/) exit; sub(/^# ?/, ""); print }' "$0"
    cat <<EOF

Options:
  --zip PATH    KSU package (default: $ZIP)
  --keep        keep the temp directory and print its path
  --verbose     dump raw output of every command
  -h, --help    this help
Environment:
  REPO_ROOT     repository root (default: parent of tools/)
  PYTHON        python interpreter used to validate JSON (auto-detected)
EOF
}

while [ $# -gt 0 ]; do
    case $1 in
        --zip) ZIP=$2; shift 2 ;;
        --zip=*) ZIP=${1#*=}; shift ;;
        --keep) KEEP=1; shift ;;
        --verbose|-v) VERBOSE=1; shift ;;
        -h|--help) usage; exit 0 ;;
        *) echo "unknown argument: $1" >&2; usage >&2; exit 2 ;;
    esac
done

PASS=0
FAIL=0
WARN=0
SKIP=0

pass() { PASS=$((PASS + 1)); printf '[PASS] %-8s %s\n' "$1" "$2"; }
skip() { SKIP=$((SKIP + 1)); printf '[SKIP] %-8s %s\n' "$1" "$2"; }
warn() { WARN=$((WARN + 1)); printf '[WARN] %-8s %s\n' "$1" "$2"; }
fail() {
    FAIL=$((FAIL + 1))
    printf '[FAIL] %-8s %s\n' "$1" "$2"
    shift 2
    for line in "$@"; do
        printf '         %s\n' "$line"
    done
}
note() { printf '         %s\n' "$*"; }

indent() { sed 's/^/         /'; }

# --- python (JSON validation) ------------------------------------------------
PYTHON_BIN=()
detect_python() {
    local cand
    for cand in python3 python; do
        if command -v "$cand" >/dev/null 2>&1 && \
           "$cand" -c 'import json' >/dev/null 2>&1; then
            PYTHON_BIN=("$cand")
            return 0
        fi
    done
    if command -v py >/dev/null 2>&1 && py -3 -c 'import json' >/dev/null 2>&1; then
        PYTHON_BIN=(py -3)
        return 0
    fi
    if [ -n "${PYTHON:-}" ] && "$PYTHON" -c 'import json' >/dev/null 2>&1; then
        PYTHON_BIN=("$PYTHON")
        return 0
    fi
    return 1
}

json_valid() {
    printf '%s' "$1" | "${PYTHON_BIN[@]}" -c 'import json,sys; json.loads(sys.stdin.read())' >/dev/null 2>&1
}

json_ok_false() {
    printf '%s' "$1" | "${PYTHON_BIN[@]}" -c '
import json, sys
try:
    d = json.loads(sys.stdin.read())
except Exception:
    sys.exit(2)
sys.exit(0 if isinstance(d, dict) and d.get("ok") is False else 1)
' >/dev/null 2>&1
}

json_error() {
    printf '%s' "$1" | "${PYTHON_BIN[@]}" -c '
import json, sys
try:
    d = json.loads(sys.stdin.read())
except Exception:
    print("")
    sys.exit(0)
print(d.get("error", "") if isinstance(d, dict) else "")
' 2>/dev/null
}

single_line() {
    case $1 in
        *$'\n'*) return 1 ;;
        *) return 0 ;;
    esac
}

# --- environment -------------------------------------------------------------
printf 'KSU package : %s\n' "$ZIP"
printf 'repo root   : %s\n' "$REPO_ROOT"
printf 'shell       : %s\n' "$(command -v sh) ($(sh -c 'echo ${BASH_VERSION:-unknown}' 2>/dev/null))"
if detect_python; then
    printf 'python      : %s\n' "${PYTHON_BIN[*]}"
else
    echo "FATAL: no working python interpreter found (needed for json.loads)" >&2
    exit 2
fi

if [ ! -f "$ZIP" ]; then
    echo "FATAL: package not found: $ZIP" >&2
    exit 2
fi
printf 'sha256      : %s\n' "$(sha256sum "$ZIP" 2>/dev/null | awk '{print $1}')"
echo

TMP=$(mktemp -d "${TMPDIR:-/tmp}/verify-ksu.XXXXXX") || {
    echo "FATAL: mktemp failed" >&2
    exit 2
}
cleanup() {
    if [ "$KEEP" = 1 ]; then
        echo "temp kept: $TMP"
    else
        rm -rf "$TMP"
    fi
}
trap cleanup EXIT INT TERM

PKG=$TMP/pkg
mkdir -p "$PKG"

# --- B-01: extract the package ----------------------------------------------
extract_ok=0
if command -v unzip >/dev/null 2>&1; then
    if unzip -q -o "$ZIP" -d "$PKG" >"$TMP/unzip.out" 2>&1; then
        extract_ok=1
    fi
fi
if [ "$extract_ok" != 1 ]; then
    if "${PYTHON_BIN[@]}" -m zipfile -e "$ZIP" "$PKG" >>"$TMP/unzip.out" 2>&1; then
        extract_ok=1
    fi
fi

if [ "$extract_ok" != 1 ]; then
    fail B-01 "extract KSU package" "$(cat "$TMP/unzip.out" 2>/dev/null | head -5)"
    echo
    echo "SUMMARY: PASS=$PASS FAIL=$FAIL WARN=$WARN SKIP=$SKIP"
    exit 1
fi

missing=()
for f in service.sh customize.sh uninstall.sh hide_bootloader.sh core/webui.sh; do
    [ -f "$PKG/$f" ] || missing+=("$f")
done
if [ ${#missing[@]} -eq 0 ]; then
    pass B-01 "extracted package contains the 5 scripts"
else
    fail B-01 "extracted package is missing scripts" "${missing[@]}"
fi

# --- B-02..B-06: sh -n -------------------------------------------------------
syn_ids=(B-02 B-03 B-04 B-05 B-06)
syn_files=(service.sh customize.sh uninstall.sh hide_bootloader.sh core/webui.sh)
for i in "${!syn_files[@]}"; do
    f=${syn_files[$i]}
    id=${syn_ids[$i]}
    if [ ! -f "$PKG/$f" ]; then
        fail "$id" "sh -n $f" "file not present"
        continue
    fi
    if sh -n "$PKG/$f" >"$TMP/syn.out" 2>&1; then
        pass "$id" "sh -n $f"
    else
        fail "$id" "sh -n $f" "$(head -5 "$TMP/syn.out")"
    fi
done

# --- fake MODDIR + fake config ----------------------------------------------
FAKE=$TMP/module
CFG=$TMP/config
mkdir -p "$FAKE/core" "$CFG" || {
    echo "FATAL: cannot create fake MODDIR under $TMP" >&2
    exit 2
}
cp "$PKG/core/webui.sh" "$FAKE/core/webui.sh"
cp "$PKG/module.prop" "$FAKE/module.prop" 2>/dev/null || : > "$FAKE/module.prop"
# 6.0.10 moved the runtime to the module root (upstream flat layout); older
# packages kept it under core/. Mirror whichever layout the package uses, so
# webui.sh's CORE detection is exercised with the real file set.
if [ -f "$PKG/keybox.xml" ]; then
    cp "$PKG/keybox.xml" "$FAKE/keybox.xml"
    cp "$PKG/keybox.xml" "$CFG/keybox.xml"
elif [ -f "$PKG/core/keybox.xml" ]; then
    cp "$PKG/core/keybox.xml" "$FAKE/core/keybox.xml"
    cp "$PKG/core/keybox.xml" "$CFG/keybox.xml"
fi
if [ -f "$PKG/classes.dex" ]; then
    printf 'FAKE-CLASSES-DEX (must never be parsed on the host)\n' > "$FAKE/classes.dex"
else
    printf 'FAKE-CLASSES-DEX (must never be parsed on the host)\n' > "$FAKE/core/classes.dex"
fi
printf 'com.example.demo\n!com.example.keep\n' > "$CFG/target.txt"

run_webui() {
    # run_webui <config-dir> <args...>
    local cfg=$1
    shift
    WEBUI_KSU_CONFIG_DIR="$cfg" \
    WEBUI_KSU_LOG="$TMP/webui.log" \
        sh "$FAKE/core/webui.sh" "$@"
}

print_verbose() {
    [ "$VERBOSE" = 1 ] || return 0
    printf '%s\n' "$1" | indent
}

# --- B-07..B-12: read-only commands -----------------------------------------
read_cmds=(
    "B-07|info"
    "B-08|keyboxes"
    "B-09|get soter"
    "B-10|get patch"
    "B-11|get soter_certs"
    "B-12|targets"
)
for spec in "${read_cmds[@]}"; do
    id=${spec%%|*}
    cmd=${spec#*|}
    # shellcheck disable=SC2086
    out=$(run_webui "$CFG" $cmd 2>"$TMP/cmd.err")
    rc=$?
    err=$(cat "$TMP/cmd.err" 2>/dev/null)
    problems=()

    [ "$rc" -eq 0 ] || problems+=("exit code $rc (expected 0)")
    single_line "$out" || problems+=("output is not single-line")
    [ -n "$out" ] || problems+=("output is empty")
    if [ -n "$out" ] && ! json_valid "$out"; then
        problems+=("output is not valid JSON (json.loads failed)")
    fi
    if [ -n "$out" ] && json_ok_false "$out"; then
        emsg=$(json_error "$out")
        case $emsg in
            unsupported:*) problems+=("command unsupported by packaged webui.sh ($emsg)") ;;
            *)             problems+=("backend returned ok:false ($emsg)") ;;
        esac
    fi

    if [ ${#problems[@]} -eq 0 ]; then
        pass "$id" "read '$cmd' -> single-line JSON, rc=0"
        if [ "$VERBOSE" = 1 ]; then
            printf '%s\n' "$out" | indent
        elif [ ${#out} -gt 160 ]; then
            note "output: $(printf '%s' "$out" | cut -c1-160)..."
        else
            note "output: $out"
        fi
    else
        fail "$id" "read '$cmd'" "${problems[@]}" "raw: $out"
        [ -n "$err" ] && note "stderr: $err"
    fi
done

# --- unwritable config simulation -------------------------------------------
RO_DIR=$TMP/config-ro
mkdir -p "$RO_DIR"
chmod 0555 "$RO_DIR" 2>/dev/null || true
if ( : > "$RO_DIR/.probe" ) 2>/dev/null; then
    rm -f "$RO_DIR/.probe" 2>/dev/null
    # chmod does not stop writes on MSYS/git-bash (and as root on Linux):
    # use a regular file as CONFIG_DIR, so mkdir -p and every create fails.
    : > "$TMP/config-not-a-dir"
    RO_CFG=$TMP/config-not-a-dir
    note "NOTE: chmod 0555 is not enforced here; using a regular file as CONFIG_DIR"
    note "      so that create/write is guaranteed to fail (same contract: no write)."
else
    RO_CFG=$RO_DIR
    note "CONFIG_DIR is a real mode-0555 directory ($RO_DIR)"
fi

# --- B-13..B-17: write commands must fail loudly ----------------------------
write_cmds=(
    "B-13|set soter 0|soter_forge_disabled"
    "B-14|set hide_bootloader 0|hide_bootloader_toggle"
    "B-15|set patch prop|security_patch.txt"
    "B-16|keybox_set yurikey66|keybox.xml"
    "B-17|set soter_certs 1|soter_certs"
)
for spec in "${write_cmds[@]}"; do
    id=${spec%%|*}
    rest=${spec#*|}
    cmd=${rest%|*}
    state=${rest##*|}
    # shellcheck disable=SC2086
    out=$(run_webui "$RO_CFG" $cmd 2>"$TMP/cmd.err")
    rc=$?
    err=$(cat "$TMP/cmd.err" 2>/dev/null)
    problems=()

    [ "$rc" -eq 0 ] || problems+=("exit code $rc (expected 0)")
    single_line "$out" || problems+=("output is not single-line")
    [ -n "$out" ] || problems+=("output is empty")
    if [ -n "$out" ] && ! json_valid "$out"; then
        problems+=("output is not valid JSON")
    elif [ -n "$out" ] && ! json_ok_false "$out"; then
        problems+=("output is not {\"ok\":false,...}: $out")
    fi
    emsg=$(json_error "$out" 2>/dev/null)
    if [ "$cmd" = "set soter_certs 1" ]; then
        case $emsg in
            unsupported:set\ soter_certs*)
                # tee13 not delivered yet: the command does not exist, so this
                # specific permission assertion cannot run.
                skip "$id" "write '$cmd' not implemented yet ($emsg); re-run after tee13"
                continue
                ;;
        esac
    fi
    case $emsg in
        unsupported:*) problems+=("command unsupported ($emsg), not a permission failure") ;;
    esac
    if [ -e "$RO_CFG/$state" ] || [ -e "$RO_DIR/$state" ]; then
        problems+=("state file '$state' was created despite the unwritable config")
    fi

    if [ ${#problems[@]} -eq 0 ]; then
        pass "$id" "write '$cmd' -> {\"ok\":false,...}, rc=0 (no silent success)"
        note "output: $out"
    else
        fail "$id" "write '$cmd'" "${problems[@]}" "raw: $out"
        [ -n "$err" ] && note "stderr: $err"
    fi
done

# --- summary ---------------------------------------------------------------
echo
echo "=================================================================="
echo "SUMMARY: PASS=$PASS FAIL=$FAIL WARN=$WARN SKIP=$SKIP"
echo "=================================================================="
[ "$FAIL" -eq 0 ] || exit 1
exit 0
