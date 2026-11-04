#!/system/bin/sh
# =============================================================================
# MapleSU TEESimulator-RS -- KSU/Lite WebUI backend (single-file POSIX shell).
#
# Ultra serves the WebUI from the module .so over HTTP (kPostRoutes in
# module_TEESimulatorRS.cpp). KernelSU has no .so: the manager renders webroot/
# in an iframe and injects window.ksu (ksu.exec), so this script is the whole
# backend. Every command prints exactly ONE line and always exits 0; failures
# print {"ok":false,"error":"..."} so the front end never parses stderr or a
# non-zero status.
#
# Contract (front end runs: sh $MODDIR/core/webui.sh <cmd> [args]):
#   info
#   get soter | hide_bootloader | auto_third_app | fix_tee | patch | soter_certs
#   set soter|hide_bootloader|auto_third_app|fix_tee <0|1>
#   set soter_certs <0|1|on|off>
#   set patch <YYYY-MM-DD|auto|prop>
#   keyboxes | keybox_set <id>
#   kbu_status | kbu_config '<flat json>' | kbu_now
#   scope list | scope set <uids> | scope setall
#   boot-apply            (internal: called by service.sh on every boot)
#
# C++ reference (module_TEESimulatorRS.cpp, this checkout):
#   version info ................ get_version_info_json()            1612-1630
#   soter forge ................. get/set_soter_forge_toggle()       193-217
#   soter certs ................. get/set_soter_certs()             223-413 (C++)
#   fix tee ..................... get/set_fix_tee_toggle()           161-169
#   hide bootloader ............. get/set_hide_bootloader_toggle()   171-179
#   auto third app .............. get/set_auto_third_app_toggle()    144-157
#   keybox list ................. list_keyboxes_json()               289-314
#   keybox select ............... set_keybox_selection()             268-287
#   keybox auto-update .......... keybox_update_*()                  400-837
#   security patch .............. get/parse/set_security_patch()     1521-1596
#   soter scope ................. mpl.ScopeCli dispatch              839-1000
#   POST route table ............ kPostRoutes()                      1786-1812
#
# Paths are derived from $MODDIR only: this file lives in $MODDIR/core/, so the
# parent of ${0%/*} is the module root. Nothing here hard-codes the module id.
# =============================================================================

SELF=$0
# Canonicalise: callers may pass a relative path (e.g. `sh core/webui.sh`), and a
# bare `${SELF%/*}` then yields a relative "core" -> wrong MODDIR -> the dex and
# keybox look "missing". cd+pwd makes the module root absolute in every layout.
case $SELF in
    */*) SCRIPT_DIR=$(cd "$(dirname "$SELF")" 2>/dev/null && pwd) || SCRIPT_DIR=${SELF%/*} ;;
    *)   SCRIPT_DIR=$(pwd) ;;
esac
MODDIR=${SCRIPT_DIR%/*}
[ -n "$MODDIR" ] || MODDIR=/
[ "$MODDIR" = "/" ] && MODDIR=
CORE=$MODDIR/core
# 6.0.10: the runtime is flat (classes.dex/keybox.xml at the module root),
# while this backend still lives in core/ (webroot/main.js contract). Pick the
# directory that actually carries the config instead of assuming one layout.
[ -f "$CORE/keybox.xml" ] || CORE=$MODDIR

# service.sh runs with a minimal environment at boot; make sure the toybox
# applets this script relies on are reachable even when PATH is bare.
PATH=${PATH:-/system/bin}
case :$PATH: in
    *:/system/bin:*) ;;
    *) PATH=$PATH:/system/bin ;;
esac
export PATH

# Contract paths (same config dir as the C++ .so and the module dex).
CONFIG_DIR=${WEBUI_KSU_CONFIG_DIR:-/data/adb/tricky_store}
LOG_FILE=${WEBUI_KSU_LOG:-/data/local/tmp/webui-ksu.log}

TARGET_TXT=$CONFIG_DIR/target.txt
TEE_STATUS=$CONFIG_DIR/tee_status
SECURITY_PATCH_TXT=$CONFIG_DIR/security_patch.txt
KEYBOX_XML_DST=$CONFIG_DIR/keybox.xml
KEYBOX_SELECTION=$CONFIG_DIR/keybox_selection
SOTER_FORGE=$CONFIG_DIR/soter_forge
SOTER_DISABLED=$CONFIG_DIR/soter_forge_disabled
SOTER_FLAG=$CONFIG_DIR/soter_forge_toggle
# Soter 证书链（与 dex mpl.SoterIdentity 的 SWITCH_PATH / ROOT_DIR 一一对应）
SOTER_CERTS_SWITCH=$CONFIG_DIR/soter_certs
SOTER_IDENTITY_DIR=$CONFIG_DIR/soter_identity
HIDE_BOOTLOADER_FLAG=$CONFIG_DIR/hide_bootloader_toggle
HIDE_BOOTLOADER_MARKER=$CONFIG_DIR/hide_bootloader
AUTO_THIRD_FLAG=$CONFIG_DIR/auto_third_app_toggle
KBU_CONF=$CONFIG_DIR/keybox_update.conf
KBU_TMP=$CONFIG_DIR/keybox.xml.download.tmp
KSU_STATUS=$CONFIG_DIR/ksu_status

KEYBOX_XML_SRC=$CORE/keybox.xml
KEYBOX_ID=yurikey66
KEYBOX_NAME=Yurikey66

# get_version_info_json() constants (MOD_VER / MOD_AUTHOR_STR in build_info.h).
MOD_VERSION_FALLBACK=6.0.7_MapleSU
MOD_AUTHOR='JingMatrix, Enginev0, MapleSU'

# k_security_patch_property_keys[] (cpp:57-69), same order.
PATCH_KEYS='ro.build.version.security_patch ro.vendor.build.security_patch ro.system.build.version.security_patch ro.product.build.version.security_patch ro.system_ext.build.version.security_patch ro.odm.build.version.security_patch ro.odm.build.security_patch ro.bootimage.build.version.security_patch ro.vendor_dlkm.build.version.security_patch ro.odm_dlkm.build.version.security_patch ro.system_dlkm.build.version.security_patch'

# kKeyboxUpdateSources[] (cpp:348-351). "custom" is appended dynamically.
KBU_URL_YURIKEY='https://raw.githubusercontent.com/Yurii0307/yurikey/main/key'
KBU_URL_KOWX712='https://raw.githubusercontent.com/KOWX712/Tricky-Addon-Update-Target-List/main/module/common/.default'

# =============================================================================
# small helpers
# =============================================================================

trim() {
    _t=$1
    _t=${_t#"${_t%%[![:space:]]*}"}
    _t=${_t%"${_t##*[![:space:]]}"}
    printf '%s' "$_t"
}

to_lower() {
    printf '%s' "$1" | tr 'A-Z' 'a-z'
}

json_escape() {
    printf '%s' "$1" | tr -d '\r\n\t' | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g'
}

json_bool() {
    if [ "$1" = 1 ]; then printf 'true'; else printf 'false'; fi
}

err_json() {
    printf '{"ok":false,"error":"%s"}\n' "$(json_escape "$1")"
}

log_line() {
    _dir=${LOG_FILE%/*}
    [ -n "$_dir" ] && [ ! -d "$_dir" ] && return 0
    if [ -f "$LOG_FILE" ]; then
        _sz=$(wc -c < "$LOG_FILE" 2>/dev/null)
        case ${_sz:-0} in
            ''|*[!0-9]*) _sz=0 ;;
        esac
        if [ "$_sz" -gt 65536 ] 2>/dev/null; then : > "$LOG_FILE" 2>/dev/null; fi
    fi
    printf '%s pid=%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S' 2>/dev/null)" "$$" "$*" \
        >> "$LOG_FILE" 2>/dev/null
    return 0
}

ensure_config_dir() {
    [ -d "$CONFIG_DIR" ] || mkdir -p "$CONFIG_DIR" 2>/dev/null
    [ -d "$CONFIG_DIR" ]
}

# atomic_write <path> <mode> <exact content>
atomic_write() {
    _f=$1
    _m=$2
    _c=$3
    _d=${_f%/*}
    [ -n "$_d" ] && [ ! -d "$_d" ] && mkdir -p "$_d" 2>/dev/null
    _t="$_f.tmp.$$"
    if printf '%s' "$_c" > "$_t" 2>/dev/null; then
        chmod "$_m" "$_t" 2>/dev/null
        if mv -f "$_t" "$_f" 2>/dev/null; then return 0; fi
    fi
    rm -f "$_t" 2>/dev/null
    return 1
}

# write_flag <path> <value>: value plus a trailing newline (state files).
write_flag() {
    atomic_write "$1" 0644 "$2
"
}

read_trimmed() {
    [ -f "$1" ] || return 1
    _r=$(cat "$1" 2>/dev/null) || return 1
    trim "$_r"
}

# read_flag <path> <default 0|1>
read_flag() {
    _v=$(read_trimmed "$1" 2>/dev/null) || _v=
    case $_v in
        1|true|on|yes)  printf '1\n' ;;
        0|false|off|no) printf '0\n' ;;
        *)              printf '%s\n' "$2" ;;
    esac
}

sha256_file() {
    [ -f "$1" ] || return 1
    _o=
    if command -v sha256sum >/dev/null 2>&1; then
        _o=$(sha256sum "$1" 2>/dev/null)
    elif command -v toybox >/dev/null 2>&1; then
        _o=$(toybox sha256sum "$1" 2>/dev/null)
    fi
    [ -n "$_o" ] || return 1
    printf '%s' "${_o%% *}"
}

short_sha() {
    case $1 in
        ????????*) printf '%s' "$1" | cut -c1-8 ;;
        *)         printf 'unknown' ;;
    esac
}

now_epoch() {
    _n=$(date +%s 2>/dev/null)
    case $_n in
        ''|*[!0-9]*) printf '0' ;;
        *)           printf '%s' "$_n" ;;
    esac
}

# strftime-like text; toybox date has no @epoch support, so fall back to the
# raw epoch exactly like format_epoch_text() does when strftime fails.
fmt_epoch() {
    _e=$1
    case $_e in ''|*[!0-9]*) printf ''; return ;; esac
    [ "$_e" -gt 0 ] 2>/dev/null || { printf ''; return ; }
    _o=$(date -d "@$_e" '+%Y-%m-%d %H:%M' 2>/dev/null)
    case $_o in
        [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]' '[0-9][0-9]:[0-9][0-9])
            printf '%s' "$_o" ;;
        *)  printf '%s' "$_e" ;;
    esac
}

module_prop() {
    [ -f "$MODDIR/module.prop" ] || return 1
    sed -n "s/^$1=//p" "$MODDIR/module.prop" 2>/dev/null | head -n 1
}

module_version() {
    _v=$(module_prop version 2>/dev/null)
    [ -n "$_v" ] || _v=$MOD_VERSION_FALLBACK
    printf '%s' "$_v"
}

module_version_code() {
    _v=$(module_prop versionCode 2>/dev/null)
    [ -n "$_v" ] || _v=unknown
    printf '%s' "$_v"
}

http_get_field() {
    _k=$1
    command -v getprop >/dev/null 2>&1 || { printf ''; return ; }
    _v=$(getprop "$_k" 2>/dev/null)
    printf '%s' "$_v"
}

# =============================================================================
# toggles stored as marker/flag files (no kernel storage under KSU)
# =============================================================================

get_soter() {
    # Dex authority: soter_forge_disabled present -> off; otherwise on (default).
    if [ -f "$SOTER_DISABLED" ]; then printf '0\n'; else printf '1\n'; fi
}

set_soter() {
    ensure_config_dir || { err_json 'config_dir_unavailable'; return ; }
    if [ "$1" = 1 ]; then
        write_flag "$SOTER_FORGE" '1' || { err_json 'write_failed'; return ; }
        rm -f "$SOTER_DISABLED" 2>/dev/null
    else
        rm -f "$SOTER_FORGE" 2>/dev/null
        write_flag "$SOTER_DISABLED" '1' || { err_json 'write_failed'; return ; }
    fi
    write_flag "$SOTER_FLAG" "$1"
    log_line "set soter=$1"
    printf 'OK\n'
}

# =============================================================================
# Soter certificate chain (same JSON as the C++ /getSoterCerts endpoint)
#   get soter_certs -> {"enabled":bool,"identity":"ready|missing|incomplete",
#                       "switch_path":"…","identity_dir":"…","certs":N}
#   set soter_certs <0|1|on|off> -> "OK" | {"ok":false,"error":"…"}
# The switch is absent = off; only the exact word "on" enables it (dex strictness).
# identity material is generated asynchronously by the daemon after enabling, so a
# freshly enabled switch legitimately reports missing/incomplete until it appears.
# =============================================================================

count_pem_certs() {
    [ -f "$1" ] || { printf '0'; return ; }
    _n=$(grep -c "BEGIN CERTIFICATE" "$1" 2>/dev/null)
    case $_n in
        ''|*[!0-9]*) _n=0 ;;
    esac
    printf '%s' "$_n"
}

soter_identity_state() {
    _dir=$SOTER_IDENTITY_DIR
    _ask_certs=$(count_pem_certs "$_dir/ask.crt")
    _auth_certs=$(count_pem_certs "$_dir/auth.crt")
    _ask_ok=0
    _auth_ok=0
    if [ -f "$_dir/ask.key" ] && [ -s "$_dir/ask.key" ] && [ "$_ask_certs" -gt 0 ] 2>/dev/null; then
        _ask_ok=1
    fi
    if [ -f "$_dir/auth.key" ] && [ -s "$_dir/auth.key" ] && [ "$_auth_certs" -gt 0 ] 2>/dev/null; then
        _auth_ok=1
    fi
    if [ "$_ask_ok" = 1 ] && [ "$_auth_ok" = 1 ]; then
        printf 'ready'
        return 0
    fi
    if [ -f "$_dir/ask.key" ] || [ -f "$_dir/ask.crt" ] || \
       [ -f "$_dir/auth.key" ] || [ -f "$_dir/auth.crt" ] || [ -f "$_dir/meta" ]; then
        printf 'incomplete'
    else
        printf 'missing'
    fi
}

get_soter_certs() {
    # 6.0.15: the certificate chain defaults to OFF. A missing switch file means
    # disabled; only an explicit "on" (WebUI) enables it. The Soter compatibility
    # forge (forged AIDL replies 1..13) is independent and stays on.
    _enabled=0
    if [ -f "$SOTER_CERTS_SWITCH" ]; then
        _switch=$(read_trimmed "$SOTER_CERTS_SWITCH" 2>/dev/null) || _switch=
        [ "$(to_lower "$_switch")" = on ] && _enabled=1
    fi
    _certs=$(count_pem_certs "$SOTER_IDENTITY_DIR/ask.crt")
    _identity=$(soter_identity_state)
    printf '{"enabled":%s,"identity":"%s","switch_path":"%s","identity_dir":"%s","certs":%s}\n' \
        "$(json_bool "$_enabled")" "$_identity" \
        "$(json_escape "$SOTER_CERTS_SWITCH")" "$(json_escape "$SOTER_IDENTITY_DIR")" "$_certs"
}

set_soter_certs() {
    _val=$(to_lower "$(trim "${1:-}")")
    case $_val in
        1|on|true|yes|enable|enabled)    _on=1 ;;
        0|off|false|no|disable|disabled) _on=0 ;;
        *) err_json "bad_value:${1:-}"; return ;;
    esac
    ensure_config_dir || { err_json 'config_dir_unavailable'; return ; }
    if [ "$_on" = 1 ]; then
        atomic_write "$SOTER_CERTS_SWITCH" 0644 "on
" || { err_json 'write_failed'; return ; }
    else
        atomic_write "$SOTER_CERTS_SWITCH" 0644 "off
" || { err_json 'write_failed'; return ; }
    fi
    log_line "set soter_certs=$_on"
    printf 'OK\n'
}

get_fix_tee() {
    # Audit 2026-11-02: nothing on the KSU side consumes tee_status, so this is
    # not a working toggle. The endpoint stays reachable but reports unsupported
    # instead of pretending the write took effect (front end disables the card).
    err_json 'unsupported:fix_tee'
}

set_fix_tee() {
    err_json 'unsupported:fix_tee'
}

# hide_bootloader marker: /data/adb/tricky_store/hide_bootloader is the audit's
# preferred name; hide_bootloader_toggle is the C++ storage key mapped to a file.
# Either one wins, with hide_bootloader taking precedence when both exist.
get_hide_bootloader() {
    if [ -f "$HIDE_BOOTLOADER_MARKER" ]; then
        read_flag "$HIDE_BOOTLOADER_MARKER" 1
    else
        read_flag "$HIDE_BOOTLOADER_FLAG" 1
    fi
}

set_hide_bootloader() {
    ensure_config_dir || { err_json 'config_dir_unavailable'; return ; }
    write_flag "$HIDE_BOOTLOADER_FLAG" "$1" || { err_json 'write_failed'; return ; }
    write_flag "$HIDE_BOOTLOADER_MARKER" "$1" || { err_json 'write_failed'; return ; }
    # Applied by `boot-apply` (service.sh) on the next boot, matching the C++
    # module, which only flips the stored bool and runs hide_bootloader.sh from
    # its module-main at boot.
    log_line "set hide_bootloader=$1"
    printf 'OK\n'
}

get_auto_third_app() {
    read_flag "$AUTO_THIRD_FLAG" 1
}

# C++ write_target_txt_applist(): third-party package names, one per line.
# The dex accepts the prefix marker forms !pkg / ?pkg and upstream accepts the
# suffix forms pkg! / pkg?; a refresh keeps every existing marked line whose
# package is still installed and only appends plain names for the rest.
refresh_target_txt() {
    ensure_config_dir || return 1
    _tmp="$TARGET_TXT.tmp.$$"
    _raw="$TARGET_TXT.raw.$$"
    _inst="$TARGET_TXT.inst.$$"
    _kept="$TARGET_TXT.kept.$$"
    _names="$TARGET_TXT.names.$$"
    : > "$_inst" 2>/dev/null
    if command -v pm >/dev/null 2>&1; then
        # `pm` talks to system_server; never let a slow boot block service.sh.
        if command -v timeout >/dev/null 2>&1; then
            timeout 10 pm list packages -3 > "$_raw" 2>/dev/null
        else
            pm list packages -3 > "$_raw" 2>/dev/null
        fi
        _rc=$?
        if [ "$_rc" -eq 0 ] && [ -s "$_raw" ]; then
            sed -n 's/^package://p' "$_raw" | sort -u > "$_inst" 2>/dev/null
        fi
    fi
    rm -f "$_raw" 2>/dev/null
    if [ ! -s "$_inst" ]; then
        rm -f "$_inst" "$_kept" "$_names" "$_tmp" 2>/dev/null
        return 1
    fi

    : > "$_kept" 2>/dev/null
    : > "$_names" 2>/dev/null
    if [ -f "$TARGET_TXT" ]; then
        while IFS= read -r _line || [ -n "$_line" ]; do
            _line=$(trim "$_line")
            [ -n "$_line" ] || continue
            case $_line in \#*) continue ;; esac
            _pkg=$_line
            case $_line in
                '!'*|'?'*) _pkg=${_line#?} ;;
                *'!'|*'?') _pkg=${_line%?} ;;
            esac
            case $_pkg in
                ''|*[!A-Za-z0-9._]*) continue ;;
            esac
            if grep -q -x -F -e "$_pkg" "$_inst" 2>/dev/null; then
                printf '%s\n' "$_line" >> "$_kept" 2>/dev/null
                printf '%s\n' "$_pkg" >> "$_names" 2>/dev/null
            fi
        done < "$TARGET_TXT"
    fi
    while IFS= read -r _pkg || [ -n "$_pkg" ]; do
        [ -n "$_pkg" ] || continue
        if grep -q -x -F -e "$_pkg" "$_names" 2>/dev/null; then continue; fi
        printf '%s\n' "$_pkg" >> "$_tmp" 2>/dev/null
    done < "$_inst"
    _out="$TARGET_TXT.merge.$$"
    cat "$_kept" "$_tmp" > "$_out" 2>/dev/null
    rm -f "$_inst" "$_kept" "$_names" "$_tmp" 2>/dev/null
    if [ -s "$_out" ]; then
        chmod 0644 "$_out" 2>/dev/null
        mv -f "$_out" "$TARGET_TXT" 2>/dev/null && return 0
    fi
    rm -f "$_out" 2>/dev/null
    return 1
}

# Turning auto off must not destroy a hand-maintained list (audit 2026-11-02).
snapshot_target_txt() {
    [ -f "$TARGET_TXT" ] || return 0
    cp -f "$TARGET_TXT" "$TARGET_TXT.autobak" 2>/dev/null && return 0
    return 1
}

set_auto_third_app() {
    ensure_config_dir || { err_json 'config_dir_unavailable'; return ; }
    write_flag "$AUTO_THIRD_FLAG" "$1" || { err_json 'write_failed'; return ; }
    if [ "$1" = 1 ]; then
        refresh_target_txt || log_line 'auto_third_app: target.txt refresh skipped (pm returned nothing)'
    else
        snapshot_target_txt || log_line 'auto_third_app: target.txt snapshot skipped'
    fi
    log_line "set auto_third_app=$1"
    printf 'OK\n'
}

# Optional card helper for the KSU dashboard: how many packages target.txt
# covers (comments and blank lines are not counted).
cmd_targets() {
    _n=0
    if [ -f "$TARGET_TXT" ]; then
        _n=$(grep -v -e '^[[:space:]]*$' -e '^[[:space:]]*#' "$TARGET_TXT" 2>/dev/null | wc -l)
    elif command -v pm >/dev/null 2>&1; then
        _n=$(pm list packages -3 2>/dev/null | wc -l)
    fi
    case $_n in
        ''|*[!0-9]*) _n=0 ;;
    esac
    printf '{"ok":true,"count":%s}\n' "$_n"
}

# =============================================================================
# keybox (single built-in candidate: yurikey66)
# =============================================================================

keybox_current() {
    _v=$(read_trimmed "$KEYBOX_SELECTION" 2>/dev/null) || _v=
    case $_v in
        "$KEYBOX_ID") printf '%s' "$_v" ;;
        *)            printf '%s' "$KEYBOX_ID" ;;
    esac
}

# detect_active_keybox(): the installed keybox.xml is "the built-in one" only
# when its bytes match $MODDIR/core/keybox.xml (sha compare == byte compare).
keybox_active_id() {
    if [ -f "$KEYBOX_XML_SRC" ] && [ -f "$KEYBOX_XML_DST" ]; then
        _a=$(sha256_file "$KEYBOX_XML_SRC" 2>/dev/null) || _a=
        _b=$(sha256_file "$KEYBOX_XML_DST" 2>/dev/null) || _b=
        if [ -n "$_a" ] && [ "$_a" = "$_b" ]; then
            printf '%s' "$KEYBOX_ID"
            return
        fi
    fi
    printf 'custom'
}

keyboxes_json() {
    _cur=$(keybox_current)
    _act=$(keybox_active_id)
    _src_sha=$(sha256_file "$KEYBOX_XML_SRC" 2>/dev/null) || _src_sha=
    if [ -n "$_src_sha" ]; then _item_short=$(short_sha "$_src_sha"); else _item_short='unknown'; fi
    if [ "$_act" = "$KEYBOX_ID" ]; then
        _act_name=$KEYBOX_NAME
        _act_short=$_item_short
        _item_active=true
    else
        _act_name='自定义（非内置）'
        _act_short='unknown'
        _item_active=false
    fi
    printf '{"current":"%s","current_name":"%s","active_id":"%s","active_name":"%s","active_sha_short":"%s","items":[{"id":"%s","name":"%s","sha_short":"%s","active":%s}]}\n' \
        "$(json_escape "$_cur")" "$KEYBOX_NAME" \
        "$(json_escape "$_act")" "$(json_escape "$_act_name")" "$_act_short" \
        "$KEYBOX_ID" "$KEYBOX_NAME" "$_item_short" "$_item_active"
}

keybox_set() {
    _id=$(trim "$1")
    [ "$_id" = "$KEYBOX_ID" ] || { err_json "unknown_keybox:$_id"; return ; }
    [ -f "$KEYBOX_XML_SRC" ] || { err_json 'keybox_source_missing'; return ; }
    ensure_config_dir || { err_json 'config_dir_unavailable'; return ; }
    _tmp="$KEYBOX_XML_DST.tmp.$$"
    if ! cp -f "$KEYBOX_XML_SRC" "$_tmp" 2>/dev/null; then
        rm -f "$_tmp" 2>/dev/null
        err_json 'copy_failed'
        return
    fi
    chmod 0644 "$_tmp" 2>/dev/null
    if ! mv -f "$_tmp" "$KEYBOX_XML_DST" 2>/dev/null; then
        rm -f "$_tmp" 2>/dev/null
        err_json 'replace_failed'
        return
    fi
    write_flag "$KEYBOX_SELECTION" "$KEYBOX_ID" || { err_json 'save_selection_failed'; return ; }
    log_line "keybox_set=$KEYBOX_ID"
    printf 'OK\n'
}

# =============================================================================
# security patch (security_patch.txt + resetprop, mirroring the C++ semantics)
# =============================================================================

# parse_security_patch(): first non-comment line before "[pkg]" wins.
#   bare date / system=DATE -> fixed;  system=prop -> auto
read_security_patch() {
    SP_MODE=auto
    SP_VALUE=prop
    [ -f "$SECURITY_PATCH_TXT" ] || return 0
    while IFS= read -r _line || [ -n "$_line" ]; do
        _line=$(trim "$_line")
        [ -n "$_line" ] || continue
        case $_line in
            \#*) continue ;;
            \[*) break ;;
        esac
        case $_line in
            *=*)
                _k=$(to_lower "$(trim "${_line%%=*}")")
                _v=$(trim "${_line#*=}")
                case $_k in
                    system|all)
                        if [ "$(to_lower "$_v")" = 'prop' ]; then
                            SP_MODE=auto
                            SP_VALUE=prop
                        else
                            SP_MODE=fixed
                            SP_VALUE=$_v
                        fi
                        return 0
                        ;;
                esac
                ;;
            *)
                SP_MODE=fixed
                SP_VALUE=$_line
                return 0
                ;;
        esac
    done < "$SECURITY_PATCH_TXT"
    # No global section: dex side treats it as "follow the device property".
    SP_MODE=auto
    SP_VALUE=prop
    return 0
}

is_valid_patch_date() {
    case $1 in
        [0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]) ;;
        *) return 1 ;;
    esac
    _m=$(printf '%s' "$1" | cut -c6-7)
    _d=$(printf '%s' "$1" | cut -c9-10)
    case $_m in
        01|02|03|04|05|06|07|08|09|10|11|12) ;;
        *) return 1 ;;
    esac
    case $_d in
        01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31) ;;
        *) return 1 ;;
    esac
    return 0
}

# get_android_security_patch_date(): first non-empty property, in table order.
patch_device_value() {
    for _k in $PATCH_KEYS; do
        _v=$(http_get_field "$_k")
        if [ -n "$_v" ]; then printf '%s' "$_v"; return 0; fi
    done
    printf ''
}

apply_patch_props() {
    [ -f "$CORE/resetprop" ] || return 1
    for _k in $PATCH_KEYS; do
        "$CORE/resetprop" -n "$_k" "$1" >/dev/null 2>&1
    done
    return 0
}

patch_json() {
    read_security_patch
    _dev=$(patch_device_value)
    if [ "$SP_MODE" = auto ]; then _eff=$_dev; else _eff=$SP_VALUE; fi
    printf '{"mode":"%s","value":"%s","device":"%s","effective":"%s","path":"%s"}\n' \
        "$(json_escape "$SP_MODE")" "$(json_escape "$SP_VALUE")" \
        "$(json_escape "$_dev")" "$(json_escape "$_eff")" \
        "$SECURITY_PATCH_TXT"
}

set_patch() {
    _low=$(to_lower "$(trim "$1")")
    _fixed=1
    case $_low in
        auto|prop)
            _fixed=0
            _body='# MapleSU TEESimulator: follow device properties (system=prop)
system=prop
'
            ;;
        *)
            is_valid_patch_date "$_low" || { err_json "bad_patch_value:$_low"; return ; }
            _body="# MapleSU TEESimulator: fixed security patch level (all components)
$_low
"
            ;;
    esac
    ensure_config_dir || { err_json 'config_dir_unavailable'; return ; }
    atomic_write "$SECURITY_PATCH_TXT" 0644 "$_body" || { err_json 'write_failed'; return ; }
    # The file is authoritative and the dex re-applies it at boot (boot-apply
    # does the same when the daemon/dex cannot run). Applying the fixed value
    # right now is best effort and never fails the command, exactly like the
    # C++ endpoint which only reports the file write.
    if [ "$_fixed" = 1 ]; then
        apply_patch_props "$_low" || log_line 'set patch: resetprop unavailable, value persisted for boot'
    fi
    log_line "set patch=$_low"
    printf 'OK\n'
}

# =============================================================================
# keybox auto-update (keybox_update.conf, same keys and JSON as the C++ code)
# =============================================================================

norm_uint() {
    case $1 in
        ''|*[!0-9]*) return 1 ;;
    esac
    _v=${1#"${1%%[!0]*}"}
    [ -n "$_v" ] || _v=0
    printf '%s' "$_v"
}

load_kbu_conf() {
    # 6.0.14: auto-update is enabled by default on the KOWX712 channel. A failed
    # download keeps the current keybox (see kbu_perform_update: tmp + validate +
    # atomic rename, never a direct overwrite).
    KBU_ENABLED=1
    KBU_SOURCE=yurikey
    KBU_CUSTOM_URL=
    KBU_INTERVAL=24
    KBU_LAST_EPOCH=0
    KBU_RETRY_AFTER=0
    KBU_LAST_RESULT=
    [ -f "$KBU_CONF" ] || return 0
    while IFS= read -r _line || [ -n "$_line" ]; do
        _line=$(trim "$_line")
        [ -n "$_line" ] || continue
        case $_line in \#*) continue ;; esac
        case $_line in *=*) ;; *) continue ;; esac
        _k=$(to_lower "$(trim "${_line%%=*}")")
        _v=$(trim "${_line#*=}")
        case $_k in
            enabled)
                case $(to_lower "$_v") in
                    1|true|yes|on) KBU_ENABLED=1 ;;
                    *)             KBU_ENABLED=0 ;;
                esac
                ;;
            source)       KBU_SOURCE=$(to_lower "$_v") ;;
            custom_url)   KBU_CUSTOM_URL=$_v ;;
            interval_hours)
                case $_v in
                    -*) KBU_INTERVAL=0 ;;
                    *)  _n=$(norm_uint "$_v") && KBU_INTERVAL=$_n ;;
                esac
                ;;
            last_check_epoch)
                case $_v in
                    -*|'') ;;
                    *) _n=$(norm_uint "$_v") && KBU_LAST_EPOCH=$_n ;;
                esac
                ;;
            retry_after_epoch)
                case $_v in
                    -*|'') ;;
                    *) _n=$(norm_uint "$_v") && KBU_RETRY_AFTER=$_n ;;
                esac
                ;;
            last_result)  KBU_LAST_RESULT=$_v ;;
        esac
    done < "$KBU_CONF"
    case $KBU_SOURCE in
        custom|yurikey|kowx712) ;;
        *) KBU_SOURCE=yurikey ;;
    esac
    case $KBU_INTERVAL in
        ''|*[!0-9]*) KBU_INTERVAL=24 ;;
    esac
    [ "$KBU_INTERVAL" -gt 8760 ] 2>/dev/null && KBU_INTERVAL=8760
    KBU_CUSTOM_URL=$(printf '%s' "$KBU_CUSTOM_URL" | cut -c1-512)
    KBU_LAST_RESULT=$(printf '%s' "$KBU_LAST_RESULT" | cut -c1-128)
    return 0
}

save_kbu_conf() {
    ensure_config_dir || return 1
    _body="# MapleSU TEESimulator: keybox auto-update (key=value)
enabled=$KBU_ENABLED
source=$KBU_SOURCE
custom_url=$KBU_CUSTOM_URL
interval_hours=$KBU_INTERVAL
last_check_epoch=$KBU_LAST_EPOCH
retry_after_epoch=$KBU_RETRY_AFTER
last_result=$KBU_LAST_RESULT
"
    atomic_write "$KBU_CONF" 0600 "$_body"
}

is_safe_http_url() {
    _u=$1
    [ ${#_u} -ge 10 ] && [ ${#_u} -le 512 ] || return 1
    case $_u in
        http://*|https://*) ;;
        *) return 1 ;;
    esac
    case $_u in
        *" "*|*"'"*|*'"'*|*'`'*|*'$'*|*'\'*|*';'*|*'|'*|*'<'*|*'>'*) return 1 ;;
    esac
    # Reject non-printable bytes (control characters, 0x7f) the same way the
    # C++ is_safe_http_url does. tr keeps this portable across toybox/mksh.
    if [ "$(printf '%s' "$_u" | tr -d '[:print:]' | wc -c)" != 0 ]; then
        return 1
    fi
    return 0
}

kbu_effective_url() {
    case $KBU_SOURCE in
        custom)
            if is_safe_http_url "$KBU_CUSTOM_URL"; then printf '%s' "$KBU_CUSTOM_URL"; fi
            ;;
        kowx712) printf '%s' "$KBU_URL_KOWX712" ;;
        *)       printf '%s' "$KBU_URL_YURIKEY" ;;
    esac
}

kbu_status_json() {
    _now=$(now_epoch)
    _url=$(kbu_effective_url)
    _next=0
    if [ "$KBU_ENABLED" = 1 ]; then
        if [ "$KBU_RETRY_AFTER" -gt 0 ] 2>/dev/null && [ "$_now" -lt "$KBU_RETRY_AFTER" ] 2>/dev/null; then
            _next=$KBU_RETRY_AFTER
        elif [ "$KBU_INTERVAL" -le 0 ] 2>/dev/null || [ "$KBU_LAST_EPOCH" -le 0 ] 2>/dev/null; then
            _next=$_now
        else
            _next=$((KBU_LAST_EPOCH + KBU_INTERVAL * 3600))
        fi
    fi
    _lct=$(fmt_epoch "$KBU_LAST_EPOCH")
    _nxt=$(fmt_epoch "$_next")
    _lr=$KBU_LAST_RESULT
    [ -n "$_lr" ] || _lr=never
    case $KBU_SOURCE in
        yurikey) _sname='Yurikey' ;;
        kowx712) _sname='KOWX712' ;;
        *)       _sname='自定义' ;;
    esac
    printf '{"enabled":%s,"source":"%s","sourceName":"%s","customUrl":"%s","effectiveUrl":"%s","intervalHours":%s,"lastCheckEpoch":%s,"lastCheckText":"%s","lastResult":"%s","nextEpoch":%s,"nextText":"%s","now":%s,"confPath":"%s","keyboxPath":"%s","sources":[{"id":"yurikey","name":"Yurikey","url":"%s","builtin":true},{"id":"kowx712","name":"KOWX712","url":"%s","builtin":true},{"id":"custom","name":"自定义 URL","url":"","builtin":false}]}\n' \
        "$(json_bool "$KBU_ENABLED")" "$(json_escape "$KBU_SOURCE")" \
        "$(json_escape "$_sname")" "$(json_escape "$KBU_CUSTOM_URL")" \
        "$(json_escape "$_url")" "$KBU_INTERVAL" "$KBU_LAST_EPOCH" \
        "$(json_escape "$_lct")" "$(json_escape "$_lr")" "$_next" "$(json_escape "$_nxt")" \
        "$_now" "$KBU_CONF" "$KEYBOX_XML_DST" \
        "$KBU_URL_YURIKEY" "$KBU_URL_KOWX712"
}

# Flat-JSON scalar lookup (same scope as the C++ json_find_value): strings are
# unquoted, bare tokens (true/false/numbers) are returned verbatim.
json_raw() {
    _b=$1
    _k=$2
    _needle="\"$_k\""
    _after=${_b#*"$_needle"}
    [ "$_after" = "$_b" ] && return 1
    _val=${_after#*:}
    [ "$_val" = "$_after" ] && return 1
    _val=${_val#"${_val%%[![:space:]]*}"}
    case $_val in
        \"*)
            _val=${_val#\"}
            _val=${_val%%\"*}
            printf '%s' "$_val"
            return 0
            ;;
    esac
    case $_val in *,*) _val=${_val%%,*} ;; esac
    case $_val in *\}*) _val=${_val%%\}*} ;; esac
    _val=${_val%"${_val##*[![:space:]]}"}
    [ -n "$_val" ] || return 1
    printf '%s' "$_val"
}

apply_kbu_config_json() {
    _body=$1
    _raw=
    if _raw=$(json_raw "$_body" enabled); then
        case $(to_lower "$(trim "$_raw")") in
            1|true|yes|on) KBU_ENABLED=1 ;;
            *)             KBU_ENABLED=0 ;;
        esac
    fi
    if _raw=$(json_raw "$_body" source); then
        _src=$(to_lower "$(trim "$_raw")")
        case $_src in
            yurikey|kowx712|custom) KBU_SOURCE=$_src ;;
            *) CFG_ERR=unknown_source; return 1 ;;
        esac
    fi
    if _raw=$(json_raw "$_body" customUrl) || _raw=$(json_raw "$_body" custom_url); then
        KBU_CUSTOM_URL=$(trim "$_raw")
    fi
    if _raw=$(json_raw "$_body" intervalHours) || _raw=$(json_raw "$_body" interval_hours); then
        _iv=$(trim "$_raw")
        _n=$(norm_uint "$_iv") || { CFG_ERR=bad_interval; return 1; }
        [ "$_n" -le 8760 ] 2>/dev/null || { CFG_ERR=bad_interval; return 1; }
        KBU_INTERVAL=$_n
    fi
    if [ "$KBU_SOURCE" = custom ] && ! is_safe_http_url "$KBU_CUSTOM_URL"; then
        CFG_ERR=bad_custom_url
        return 1
    fi
    return 0
}

# --- keybox download/validate (mirrors keybox_unwrap/validate_keybox_xml) ----

is_keybox_xml_file() {
    [ -f "$1" ] || return 1
    grep -q -F -e '<AndroidAttestation' "$1" 2>/dev/null || return 1
    grep -q -F -e '<Keybox' "$1" 2>/dev/null || return 1
    return 0
}

certificate_chain_ok() {
    _f=$1
    if ! command -v base64 >/dev/null 2>&1; then
        return 0  # cannot decode: do not reject on a missing tool
    fi
    _clean="$_f.clean.$$"
    _pem="$_f.pem.$$"
    _der="$_f.der.$$"
    # Only the FIRST certificate block matters (C++ takes the first PEM body).
    # sed start,end ranges would concatenate every block, so locate the first
    # BEGIN/END pair by line number instead.
    tr -d '\r' < "$_f" > "$_clean" 2>/dev/null
    _b=$(grep -n -F -e '-----BEGIN CERTIFICATE-----' "$_clean" 2>/dev/null | head -n 1 | cut -d: -f1)
    _e=$(grep -n -F -e '-----END CERTIFICATE-----' "$_clean" 2>/dev/null | head -n 1 | cut -d: -f1)
    if [ -z "$_b" ] || [ -z "$_e" ] || [ "$_e" -le "$_b" ] 2>/dev/null; then
        rm -f "$_clean" "$_pem" "$_der" 2>/dev/null
        return 1
    fi
    # Keybox XML indents the PEM body; base64 ignores newlines but not spaces.
    sed -n "$((_b + 1)),$((_e - 1))p" "$_clean" 2>/dev/null | tr -d ' \t' > "$_pem" 2>/dev/null
    rm -f "$_clean" 2>/dev/null
    if [ ! -s "$_pem" ]; then
        rm -f "$_pem" "$_der" 2>/dev/null
        return 1
    fi
    if ! base64 -d < "$_pem" > "$_der" 2>/dev/null; then
        rm -f "$_pem" "$_der" 2>/dev/null
        return 1
    fi
    _sz=$(wc -c < "$_der" 2>/dev/null)
    case ${_sz:-0} in ''|*[!0-9]*) _sz=0 ;; esac
    if [ "$_sz" -lt 128 ]; then
        rm -f "$_pem" "$_der" 2>/dev/null
        return 1
    fi
    _b1=
    if command -v od >/dev/null 2>&1; then
        _b1=$(od -An -tx1 -N1 "$_der" 2>/dev/null | tr -d ' \n')
    fi
    rm -f "$_pem" "$_der" 2>/dev/null
    [ -z "$_b1" ] && return 0
    [ "$_b1" = 30 ]
}

validate_keybox_file() {
    _f=$1
    V_ERR=
    if [ ! -s "$_f" ]; then V_ERR=empty; return 1; fi
    _sz=$(wc -c < "$_f" 2>/dev/null)
    case ${_sz:-0} in ''|*[!0-9]*) _sz=0 ;; esac
    if [ "$_sz" -gt 2097152 ]; then V_ERR=too_large; return 1; fi
    grep -q -F -e '<AndroidAttestation' "$_f" 2>/dev/null || { V_ERR=no_attestation; return 1; }
    if ! grep -q -F -e '<Key ' "$_f" 2>/dev/null \
       && ! grep -q -F -e '<Key>' "$_f" 2>/dev/null; then
        V_ERR=no_key
        return 1
    fi
    grep -q -F -e '<PrivateKey' "$_f" 2>/dev/null || { V_ERR=no_private_key; return 1; }
    grep -q -F -e '<CertificateChain' "$_f" 2>/dev/null || { V_ERR=no_cert_chain; return 1; }
    grep -q -F -e '-----BEGIN CERTIFICATE-----' "$_f" 2>/dev/null || { V_ERR=no_pem_cert; return 1; }
    certificate_chain_ok "$_f" || { V_ERR=bad_cert_der; return 1; }
    return 0
}

# keybox_unwrap(): raw XML, hex(base64(xml)) and base64(xml) are accepted.
unwrap_keybox() {
    _in=$1
    _out=$2
    if is_keybox_xml_file "$_in"; then
        cp -f "$_in" "$_out" 2>/dev/null && return 0
        return 1
    fi
    _hex="$_out.hex.$$"
    _b64="$_out.b64.$$"
    if command -v xxd >/dev/null 2>&1; then
        if xxd -r -p "$_in" "$_hex" 2>/dev/null; then
            if is_keybox_xml_file "$_hex"; then
                cp -f "$_hex" "$_out" 2>/dev/null && { rm -f "$_hex" "$_b64" 2>/dev/null; return 0; }
            fi
            if command -v base64 >/dev/null 2>&1; then
                if base64 -d < "$_hex" > "$_b64" 2>/dev/null && is_keybox_xml_file "$_b64"; then
                    cp -f "$_b64" "$_out" 2>/dev/null && { rm -f "$_hex" "$_b64" 2>/dev/null; return 0; }
                fi
            fi
        fi
        rm -f "$_hex" "$_b64" 2>/dev/null
    fi
    if command -v base64 >/dev/null 2>&1; then
        if tr -d ' \t\r\n' < "$_in" 2>/dev/null | base64 -d > "$_b64" 2>/dev/null \
           && is_keybox_xml_file "$_b64"; then
            cp -f "$_b64" "$_out" 2>/dev/null && { rm -f "$_b64" 2>/dev/null; return 0; }
        fi
    fi
    rm -f "$_b64" 2>/dev/null
    return 1
}

# curl -> wget -> toybox wget, exactly the C++ fallback chain. Prints the
# attempt trail on stdout; returns 0 only when a non-empty file was written.
download_to() {
    _u=$1
    _d=$2
    _trail=
    rm -f "$_d" 2>/dev/null
    if command -v curl >/dev/null 2>&1; then
        curl -fsSL --connect-timeout 10 --max-time 25 -o "$_d" "$_u" 2>/dev/null
        _c=$?
        _trail="curl=$_c"
        if [ "$_c" -eq 0 ] && [ -s "$_d" ]; then printf 'curl'; return 0; fi
        [ "$_c" -eq 0 ] && _trail='curl=0(empty)'
    else
        _trail='curl=127'
    fi
    rm -f "$_d" 2>/dev/null
    if command -v wget >/dev/null 2>&1; then
        wget -q -T 25 -O "$_d" "$_u" 2>/dev/null
        _c=$?
        _trail="$_trail,wget=$_c"
        if [ "$_c" -eq 0 ] && [ -s "$_d" ]; then printf '%s' "$_trail"; return 0; fi
    else
        _trail="$_trail,wget=127"
    fi
    rm -f "$_d" 2>/dev/null
    if command -v toybox >/dev/null 2>&1; then
        toybox wget -q -O "$_d" "$_u" 2>/dev/null
        _c=$?
        _trail="$_trail,toybox-wget=$_c"
        if [ "$_c" -eq 0 ] && [ -s "$_d" ]; then printf '%s' "$_trail"; return 0; fi
    else
        _trail="$_trail,toybox-wget=127"
    fi
    rm -f "$_d" 2>/dev/null
    printf '%s' "$_trail"
    return 1
}

# perform_keybox_update(): download -> unwrap -> validate -> atomic replace.
# Sets KBU_RUN_RESULT to "ok" or the failure token; never prints, so both the
# WebUI command and the boot hook can share it.
kbu_perform_update() {
    _now=$(now_epoch)
    _url=$(kbu_effective_url)
    _reason=
    if [ -z "$_url" ]; then
        _reason=bad_url
    else
        if ! ensure_config_dir; then
            KBU_RUN_RESULT=config_dir_unavailable
            return 1
        fi
        _trail=$(download_to "$_url" "$KBU_TMP")
        if [ $? -ne 0 ]; then
            _reason="download_failed($_trail)"
        else
            _xml="$KBU_TMP.xml"
            if ! unwrap_keybox "$KBU_TMP" "$_xml"; then
                _reason='invalid_keybox:not_xml'
            else
                validate_keybox_file "$_xml" || _reason="invalid_keybox:$V_ERR"
            fi
            if [ -z "$_reason" ]; then
                chmod 0644 "$_xml" 2>/dev/null
                if mv -f "$_xml" "$KEYBOX_XML_DST" 2>/dev/null; then
                    chmod 0644 "$KEYBOX_XML_DST" 2>/dev/null
                else
                    _reason=replace_failed
                fi
            fi
            rm -f "$KBU_TMP" "$_xml" 2>/dev/null
        fi
    fi
    if [ -z "$_reason" ]; then
        KBU_LAST_EPOCH=$_now
        KBU_RETRY_AFTER=0
        KBU_LAST_RESULT=ok
        KBU_RUN_RESULT=ok
        save_kbu_conf || log_line 'kbu: save conf failed'
        return 0
    fi
    # A failed attempt must not look like a completed interval: retry in 5 minutes
    # (and again on the next boot) instead of waiting interval_hours.
    KBU_RETRY_AFTER=$((_now + 300))
    KBU_LAST_RESULT="fail:$_reason"
    KBU_RUN_RESULT=$_reason
    save_kbu_conf || log_line 'kbu: save conf failed'
    log_line "kbu update failed: $_reason"
    return 1
}

kbu_now_json() {
    load_kbu_conf
    if kbu_perform_update; then
        printf '{"ok":true,"reason":"ok","status":%s}\n' "$(kbu_status_json)"
    else
        printf '{"ok":false,"reason":"%s","status":%s}\n' \
            "$(json_escape "$KBU_RUN_RESULT")" "$(kbu_status_json)"
    fi
}

# =============================================================================
# Soter scope (mpl.ScopeCli through app_process; output is passed through)
# =============================================================================

cmd_scope() {
    _action=${1:-}
    [ $# -gt 0 ] && shift
    case $_action in
        list|setall)
            [ $# -eq 0 ] || { err_json 'unexpected_extra_args'; return ; }
            ;;
        set)
            [ $# -ge 1 ] || { err_json 'missing_uids'; return ; }
            case $1 in
                ''|*[!0-9,]*) err_json 'bad_uids'; return ;;
            esac
            ;;
        *)
            err_json "unsupported:scope $_action"
            return
            ;;
    esac
    _dex=$CORE/classes.dex
    _app=
    for _candidate in /system/bin/app_process /system/bin/app_process64 /system/bin/app_process32; do
        if [ -x "$_candidate" ]; then _app=$_candidate; break; fi
    done
    [ -n "$_app" ] || _app=/system/bin/app_process
    [ -f "$_dex" ] || { err_json 'classes_dex_missing'; return ; }
    [ -x "$_app" ] || { err_json 'app_process_missing'; return ; }
    # app_process needs these; ksu.exec usually provides them, but the C++ code
    # also falls back to /system and /data when the environment is bare.
    [ -n "${ANDROID_ROOT:-}" ] || ANDROID_ROOT=/system
    [ -n "${ANDROID_DATA:-}" ] || ANDROID_DATA=/data
    export ANDROID_ROOT ANDROID_DATA
    # The CLI emits one huge single-line JSON (package list + icon base64, can be
    # many MB). Capture it in a file and stream it out with cat: holding it in a
    # shell variable and printf-ing it hits ARG_MAX ("Argument list too long",
    # measured on the PLQ110 / Android 16 mksh).
    _tmpd=${TMPDIR:-/data/local/tmp}
    [ -d "$_tmpd" ] || _tmpd=/data/local/tmp
    _scope_out="$_tmpd/webui-scope.$$"
    "$_app" -Djava.class.path="$_dex" "$MODDIR" mpl.ScopeCli "$_action" "$@" \
        > "$_scope_out" 2>/dev/null
    _rc=$?
    if [ -s "$_scope_out" ]; then
        cat "$_scope_out" 2>/dev/null
    else
        err_json "scope_cli_no_output(rc=$_rc)"
    fi
    rm -f "$_scope_out" 2>/dev/null
    log_line "scope $_action rc=$_rc"
}

# =============================================================================
# boot hook (called from service.sh): re-apply persisted WebUI toggles
# =============================================================================

# Exact property list of resources/hide_bootloader.sh (Ultra runs that script
# from the module main). setenforce is intentionally not touched.
hide_check() {
    _cur=$("$_RP" "$1" 2>/dev/null)
    if [ -z "$_cur" ] || [ "$_cur" != "$2" ]; then
        "$_RP" "$1" "$2" >/dev/null 2>&1
    fi
}

hide_contains_ro() {
    _cur=$("$_RP" "$1" 2>/dev/null)
    case $_cur in
        *"$2"*) "$_RP" -n "$1" "$3" >/dev/null 2>&1 ;;
    esac
}

hide_bootloader_apply() {
    [ -f "$CORE/resetprop" ] || { log_line 'hide_bootloader: resetprop missing, skipped'; return 1; }
    _RP=$CORE/resetprop
    hide_check ro.boot.vbmeta.device_state locked
    hide_check ro.boot.verifiedbootstate green
    hide_check ro.boot.flash.locked 1
    hide_check ro.boot.veritymode enforcing
    hide_check ro.boot.warranty_bit 0
    hide_check ro.warranty_bit 0
    hide_check ro.debuggable 0
    hide_check ro.force.debuggable 0
    hide_check ro.secure 1
    hide_check ro.adb.secure 1
    hide_check ro.build.type user
    hide_check ro.build.tags release-keys
    hide_check ro.vendor.boot.warranty_bit 0
    hide_check ro.vendor.warranty_bit 0
    hide_check vendor.boot.vbmeta.device_state locked
    hide_check vendor.boot.verifiedbootstate green
    hide_contains_ro sys.oem_unlock_allowed 1 0
    hide_check ro.secureboot.lockstate locked
    hide_check ro.boot.realmebootstate green
    hide_check ro.boot.realme.lockstate 1
    hide_check ro.boot.asusverifiedstate PASS
    hide_check partition.system.verified 0
    hide_check partition.vendor.verified 0
    hide_check partition.product.verified 0
    hide_check partition.system_ext.verified 0
    hide_check partition.odm.verified 0
    hide_contains_ro ro.oem_unlock_supported 1 0
    hide_check persist.sys.usb.config none
    hide_check service.adb.root 0
    hide_check ro.boot.selinux enforcing
    hide_check ro.boot.avb_version 1.3
    hide_check ro.crypto.state encrypted
    return 0
}

# Merge the two boot-result keys into ksu_status without dropping the other
# keys a boot script may have recorded (keybox=, daemon=, inject=, ...).
# $1 = 1 when this call owns the "kbu=" key, then the key=value pairs to write.
merge_ksu_status() {
    _own_kbu=$1
    [ $# -gt 0 ] && shift
    _tmp="$KSU_STATUS.tmp.$$"
    : > "$_tmp" 2>/dev/null
    if [ -f "$KSU_STATUS" ]; then
        while IFS= read -r _l || [ -n "$_l" ]; do
            case $_l in
                hide_bootloader=*) continue ;;
                kbu=*) [ "$_own_kbu" = 1 ] && continue ;;
            esac
            printf '%s\n' "$_l" >> "$_tmp" 2>/dev/null
        done < "$KSU_STATUS"
    fi
    for _kv in "$@"; do
        printf '%s\n' "$_kv" >> "$_tmp" 2>/dev/null
    done
    chmod 0644 "$_tmp" 2>/dev/null
    if mv -f "$_tmp" "$KSU_STATUS" 2>/dev/null; then return 0; fi
    rm -f "$_tmp" 2>/dev/null
    return 1
}

cmd_boot_apply() {
    _do_hide=1
    _do_kbu=1
    for _arg in "$@"; do
        case $_arg in
            --no-hide) _do_hide=0 ;;
            --no-kbu)  _do_kbu=0 ;;
        esac
    done

    ensure_config_dir || { log_line 'boot-apply: config dir unavailable'; return 0 ; }

    # Soter forge: same default-on marker sync as sync_soter_forge_marker().
    _soter=$(read_flag "$SOTER_FLAG" 1)
    if [ ! -f "$SOTER_FLAG" ] && [ -f "$SOTER_DISABLED" ]; then _soter=0; fi
    if [ "$_soter" = 1 ]; then
        rm -f "$SOTER_DISABLED" 2>/dev/null
        [ -f "$SOTER_FORGE" ] || write_flag "$SOTER_FORGE" '1'
    else
        rm -f "$SOTER_FORGE" 2>/dev/null
        [ -f "$SOTER_DISABLED" ] || write_flag "$SOTER_DISABLED" '1'
    fi

    # 1) hide_bootloader props (marker: hide_bootloader, else hide_bootloader_toggle)
    _hide_state=skipped
    if [ "$_do_hide" = 1 ] && [ "$(get_hide_bootloader)" = 1 ]; then
        if hide_bootloader_apply; then _hide_state=done; fi
    fi

    # 2) auto third-party target list (never clear a manual list when off)
    if [ "$(read_flag "$AUTO_THIRD_FLAG" 1)" = 1 ]; then
        refresh_target_txt || log_line 'boot-apply: target.txt refresh skipped'
    fi

    # 3) fixed security patch -> resetprop (best effort)
    read_security_patch
    if [ "$SP_MODE" = fixed ]; then
        apply_patch_props "$SP_VALUE" || log_line 'boot-apply: resetprop unavailable for security patch'
    fi

    # 4) keybox auto-update due check (interval_hours + last_check_epoch).
    # A boot script that already runs the update itself passes --no-kbu so the
    # download is not attempted twice (and the boot stage is not blocked here).
    _kbu_state=skipped
    if [ "$_do_kbu" = 1 ]; then
        load_kbu_conf
        _now=$(now_epoch)
        _due=0
        if [ "$KBU_ENABLED" = 1 ]; then
            if [ "$KBU_RETRY_AFTER" -gt 0 ] 2>/dev/null && [ "$_now" -ge "$KBU_RETRY_AFTER" ] 2>/dev/null; then
                _due=1
            elif [ "$KBU_INTERVAL" -le 0 ] 2>/dev/null || [ "$KBU_LAST_EPOCH" -le 0 ] 2>/dev/null; then
                _due=1
            elif [ "$_now" -lt "$KBU_LAST_EPOCH" ] 2>/dev/null; then
                _due=1
            elif [ $((_now - KBU_LAST_EPOCH)) -ge $((KBU_INTERVAL * 3600)) ] 2>/dev/null; then
                _due=1
            fi
        fi
        if [ "$_due" = 1 ]; then
            if kbu_perform_update; then
                _kbu_state=ran
            else
                _kbu_state="fail:$KBU_RUN_RESULT"
            fi
        fi
    fi

    # 5) machine-readable boot record; merge, never truncate the other keys.
    if [ "$_do_kbu" = 1 ]; then
        merge_ksu_status 1 "hide_bootloader=$_hide_state" "kbu=$_kbu_state" \
            || log_line 'boot-apply: ksu_status write failed'
    else
        merge_ksu_status 0 "hide_bootloader=$_hide_state" \
            || log_line 'boot-apply: ksu_status write failed'
    fi
    log_line "boot-apply done hide=$_hide_state kbu=$_kbu_state own_kbu=$_do_kbu"
    return 0
}

# =============================================================================
# version info (same field set as get_version_info_json(), cpp:1612-1630;
# mode/backend are the two KSU-only additions and are always "ksu" here)
# =============================================================================


# --- diagnostics (verbose logging + log export) -----------------------------

DEBUG_FLAG="$CONFIG_DIR/debug-on"

get_debug() {
    if [ -f "$DEBUG_FLAG" ]; then _on=true; else _on=false; fi
    printf '{"ok":true,"enabled":%s,"path":"%s"}\n' "$_on" "$(json_escape "$DEBUG_FLAG")"
}

set_debug() {
    case ${1:-} in
        1|on|true)
            ensure_config_dir || { err_json "config_unavailable"; return; }
            : > "$DEBUG_FLAG" 2>/dev/null || { err_json "write_failed"; return; }
            chmod 0644 "$DEBUG_FLAG" 2>/dev/null
            ;;
        0|off|false)
            rm -f "$DEBUG_FLAG" 2>/dev/null
            ;;
        *)
            err_json "bad_value:${1:-}"
            return
            ;;
    esac
    get_debug
}

# Collect a trimmed, redacted diagnostic bundle. Returns the path plus a short
# preview so the WebUI can show something even when it cannot open files.
cmd_logs() {
    _dir=/sdcard/Download
    [ -d "$_dir" ] || _dir=/data/local/tmp
    _stamp=$(date +%Y%m%d-%H%M%S 2>/dev/null)
    _out="$_dir/teesim-diag-$_stamp.txt"
    if ! : > "$_out" 2>/dev/null; then
        _dir=/data/local/tmp
        _out="$_dir/teesim-diag-$_stamp.txt"
        : > "$_out" 2>/dev/null || { err_json "write_failed"; return; }
    fi

    {
        printf 'generated: %s\n' "$_stamp"
        printf 'module: %s\n' "$(sed -n 's/^version=//p' "$MODDIR/module.prop" 2>/dev/null)"
        printf '\n[device]\n'
        getprop ro.product.model; getprop ro.build.version.release
        getprop ro.build.version.sdk; getprop ro.product.cpu.abi
        printf '\n[ksu_status]\n'; cat "$CONFIG_DIR/ksu_status" 2>/dev/null
        printf '\n[soter_route]\n'; cat "$CONFIG_DIR/soter_route" 2>/dev/null
        printf '\n[targets]\n'; grep -vc '^#' "$CONFIG_DIR/target.txt" 2>/dev/null
        printf '\n[injection]\n'
        _ks=$(pidof keystore2 2>/dev/null)
        printf 'keystore2=%s maps=%s\n' "$_ks" \
            "$([ -n "$_ks" ] && grep -c libTEESimulator "/proc/$_ks/maps" 2>/dev/null)"
        _ss=$(pidof com.tencent.soter.soterserver 2>/dev/null)
        printf 'soterserver=%s maps=%s\n' "${_ss:-not-running}" \
            "$([ -n "$_ss" ] && grep -c libTEESimulator "/proc/$_ss/maps" 2>/dev/null)"
        printf '\n[logcat TEESimulator]\n'
        logcat -d -s TEESimulator:V 2>/dev/null | tail -n 200
        printf '\n[logcat MPL-SOTER]\n'
        logcat -d -s MPL-SOTER:V 2>/dev/null | tail -n 120
        printf '\n[avc denials]\n'
        logcat -d 2>/dev/null | grep -i 'avc:.*denied' | tail -n 40
    } >> "$_out" 2>&1

    sed -i -E 's/([Ss]erial(Number)?[=: ]+)[A-Za-z0-9._-]+/\1<redacted>/g' "$_out" 2>/dev/null
    sed -i -E 's/(android_id[=: ]+)[0-9a-fA-F]+/\1<redacted>/g' "$_out" 2>/dev/null

    _bytes=$(wc -c < "$_out" 2>/dev/null | tr -d ' ')
    _prev=$(head -c 400 "$_out" 2>/dev/null)
    printf '{"ok":true,"path":"%s","bytes":%s,"preview":"%s"}\n' \
        "$(json_escape "$_out")" "${_bytes:-0}" "$(json_escape "$_prev")"
}

cmd_info() {
    _ver=$(module_version)
    _vcode=$(module_version_code)
    _dex_sha=$(sha256_file "$CORE/classes.dex" 2>/dev/null) || _dex_sha=
    if [ -n "$_dex_sha" ]; then _dex_short=$(short_sha "$_dex_sha"); else _dex_short=unknown; fi
    _cur=$(keybox_current)
    _act=$(keybox_active_id)
    if [ "$_act" = "$KEYBOX_ID" ]; then
        _src_sha=$(sha256_file "$KEYBOX_XML_SRC" 2>/dev/null) || _src_sha=
        if [ -n "$_src_sha" ]; then _kb_short=$(short_sha "$_src_sha"); else _kb_short=unknown; fi
    else
        _kb_short=unknown
    fi
    _soter=$(get_soter)
    printf '{"module":"TEESimulator-RS","version":"%s","author":"%s","dex_sha256":"%s","dex_short":"%s","keybox_short":"%s","keybox_current":"%s","keybox_active":"%s","soter_forge":%s,"build":"%s","mode":"ksu","backend":"ksu","features":["info","get soter","set soter","get soter_certs","set soter_certs","get hide_bootloader","set hide_bootloader","get auto_third_app","set auto_third_app","get patch","set patch","keyboxes","keybox_set","kbu_status","kbu_config","kbu_now","scope list","scope set","scope setall","targets","get debug","set debug","logs"],"unsupported":["get fix_tee","set fix_tee"],"features_note":"target.txt accepts both prefix (!pkg/?pkg, dex) and suffix (pkg!/pkg?, upstream) markers"}\n' \
        "$(json_escape "$_ver")" "$(json_escape "$MOD_AUTHOR")" \
        "$_dex_sha" "$_dex_short" "$_kb_short" \
        "$(json_escape "$_cur")" "$(json_escape "$_act")" \
        "$(json_bool "$_soter")" "$(json_escape "MapleSU-ksu-${_vcode}")"
}

# =============================================================================
# dispatch
# =============================================================================

CMD=${1:-}
[ $# -gt 0 ] && shift

case $CMD in
    info)
        cmd_info
        ;;
    get)
        SUB=${1:-}
        [ $# -gt 0 ] && shift
        case $SUB in
            soter)           get_soter ;;
            soter_certs)     get_soter_certs ;;
            hide_bootloader) get_hide_bootloader ;;
            auto_third_app)  get_auto_third_app ;;
            fix_tee)         get_fix_tee ;;
            patch)           patch_json ;;
            debug)           get_debug ;;
            *)               err_json "unsupported:get $SUB" ;;
        esac
        ;;
    set)
        SUB=${1:-}
        [ $# -gt 0 ] && shift
        VAL=${1:-}
        case $SUB in
            soter|hide_bootloader|auto_third_app|fix_tee)
                case $VAL in
                    0|1) ;;
                    *) err_json "bad_value:$VAL"; VAL= ;;
                esac
                if [ -n "$VAL" ]; then
                    case $SUB in
                        soter)           set_soter "$VAL" ;;
                        hide_bootloader) set_hide_bootloader "$VAL" ;;
                        auto_third_app)  set_auto_third_app "$VAL" ;;
                        fix_tee)         set_fix_tee "$VAL" ;;
                    esac
                fi
                ;;
            patch) set_patch "$VAL" ;;
            debug) set_debug "$VAL" ;;
            soter_certs) set_soter_certs "$VAL" ;;
            *)     err_json "unsupported:set $SUB" ;;
        esac
        ;;
    keyboxes)
        keyboxes_json
        ;;
    keybox_set)
        keybox_set "${1:-}"
        ;;
    kbu_status)
        load_kbu_conf
        kbu_status_json
        ;;
    logs)
        cmd_logs
        ;;
    targets)
        cmd_targets
        ;;
    kbu_config)
        load_kbu_conf
        CFG_ERR=
        if apply_kbu_config_json "${1:-}"; then
            if save_kbu_conf; then
                log_line 'kbu_config saved'
                printf 'OK\n'
            else
                printf 'FAILED:save_failed\n'
            fi
        else
            printf 'FAILED:%s\n' "${CFG_ERR:-unknown}"
        fi
        ;;
    kbu_now)
        kbu_now_json
        ;;
    scope)
        cmd_scope "$@"
        ;;
    boot-apply)
        cmd_boot_apply "$@"
        ;;
    '')
        err_json 'unsupported:'
        ;;
    *)
        err_json "unsupported:$CMD"
        ;;
esac

exit 0
