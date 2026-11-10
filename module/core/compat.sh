#!/system/bin/sh
# Compatibility check for TEESimulator-MapleSU.
#
#   compat.sh --install   readable lines, without the checks that need a booted module
#   compat.sh --text      readable lines, all checks
#   compat.sh --json      one JSON line, all checks (the default)
#
# The check only reports: it never changes the device and it never blocks an
# install. It reads keybox.xml for the leaf certificate dates only; private keys
# are not read, printed or stored. The last result is kept in
# /data/adb/tricky_store/compat_report.json.
#
# How it decides:
#   - No module is special. Every enabled module is judged by what it does: what it
#     injects, which system files it replaces, which properties it changes.
#   - A value the device defines itself is not a change, whoever else also sets it. New
#     devices can ship a high first_api_level or rkp_only on their own.
#   - Symptoms come before causes. keystore2 failing to get a remote key is reported
#     from its own log, whatever caused it.
#
# Every item is "level key a b c":
#   level  ok | info | warn | error
#   key    stable id; text_for() holds its wording
#   a b c  plain values shown inside that text
#
# COMPAT_FS_ROOT points every device path at a fake root for tools/test_compat.sh.

FS_ROOT=${COMPAT_FS_ROOT:-}
MODROOT=$FS_ROOT/data/adb/modules
CONFIG_DIR=${WEBUI_KSU_CONFIG_DIR:-$FS_ROOT/data/adb/tricky_store}
SELF_ID=tricky_store
REPORT=$CONFIG_DIR/compat_report.json
MIN_SDK=29
SOTER_PKG=com.tencent.soter.soterserver
RKP_DEFAULT_HOST=remoteprovisioning.googleapis.com
# One or two failures can be a network blip while the device was coming up.
RKP_STALL_MIN=3

MODE=${1:---json}
HUMAN=0
case $MODE in
    --install|--text) HUMAN=1 ;;
esac
ITEMS=
N_OK=0; N_INFO=0; N_WARN=0; N_ERROR=0
PROP_HITS=0

LANG_ZH=0
case "$(getprop persist.sys.locale 2>/dev/null)$(getprop ro.product.locale 2>/dev/null)" in
    zh*) LANG_ZH=1 ;;
esac

clean() { printf '%s' "$1" | tr -d '"\\\r\n' | cut -c1-120; }

text_for() {
    _k=$1; _a=$2; _b=$3; _c=$4
    if [ "$LANG_ZH" = 1 ]; then
        if [ -n "$_a" ]; then _who="模块 $_a"; else _who="未知来源"; fi
        case $_k in
            android_ok) echo "Android API ${_a}，支持" ;;
            android_old) echo "Android API $_a 过低，最低需要 $MIN_SDK" ;;
            arch_ok) echo "架构 ${_a}，支持" ;;
            arch_bad) echo "架构 $_a 不支持，只支持 arm64-v8a" ;;
            root) echo "Root 方案：$_a" ;;
            root_unknown) echo "没有识别出 Root 方案" ;;
            selinux_ok) echo "SELinux：Enforcing" ;;
            selinux_loose) echo "SELinux 不是 Enforcing（当前 ${_a}），模块没有在这种状态下验证过" ;;
            conflict_none) echo "没有发现其他模拟器模块" ;;
            conflict) echo "模块 $_a 也会注入 keystore2，两个同时运行可能出问题，请先停用它" ;;
            leftover) echo "旧模块 $_a 已停用但还留在模块目录，可以删除" ;;
            overlay) echo "模块 $_a 替换了系统文件 ${_b}，可能影响 keystore、KeyMint、Soter 或系统属性" ;;
            shares_config) echo "模块 $_a 也会访问 /data/adb/tricky_store，可能改动 keybox 或 target.txt" ;;
            touches_keystore) echo "模块 $_a 的脚本会操作 keystore2，遇到问题时可以先停用它对比" ;;
            injected_other) echo "keystore2 里还加载了 ${_a}，可能来自其他模块，和本模块同时生效可能出问题" ;;
            props_clean) echo "其他模块没有改动设备的只读属性" ;;
            props_changed)
                if [ "$_c" = 0 ]; then
                    echo "模块 $_a 改了 $_b 个设备自带的只读属性。遇到问题时可以先停用它对比"
                else
                    echo "模块 $_a 改了 $_b 个设备自带的只读属性，还新增了 $_c 个设备没有的。遇到问题时可以先停用它对比"
                fi
                ;;
            first_api) echo "$_who 把 first_api_level 从 $_c 改成了 ${_b}。目前只在一台设备上测到影响：连不上远程证书服务时，每个密钥多等约 10 秒。如果生成密钥变慢，可以先改回 $_c 对比" ;;
            pki_prop) echo "模块 $_a 把 ro.vendor.oplus.provision.pki 设成了 ${_b}（设备自带：${_c:-无}）。OPPO 工程模式的 PKI 项可能因此变红" ;;
            vbmeta_prop) echo "模块 $_a 改了 ${_b}，证书里的启动哈希会跟着变" ;;
            patch_prop) echo "模块 $_a 把 $_b 改成了 ${_c}，证书可能跟随这个日期" ;;
            rkp_prop) echo "模块 $_a 把 $_b 改成了 ${_c}，这会直接改变远程证书服务的行为" ;;
            keybox_missing) echo "还没有 keybox.xml，请放入自己的 keybox 后重启" ;;
            keybox_empty) echo "keybox.xml 是空文件，请换成自己的 keybox" ;;
            keybox_ok) echo "KeyBox 证书还有 $_a 天到期" ;;
            keybox_soon) echo "KeyBox 证书还有 $_a 天到期，请尽快更换" ;;
            keybox_expired) echo "KeyBox 证书已过期（${_b}），依赖它的校验可能失败，请更换" ;;
            keybox_unknown) echo "读不出 KeyBox 证书的有效期" ;;
            keybox_no_rsa) echo "KeyBox 没有 RSA 密钥，只有 EC" ;;
            rkp_ok) echo "可以连接远程证书服务（${_a}）" ;;
            rkp_blocked) echo "连不上远程证书服务（${_a}）。名单应用可在 target.txt 的包名后加 ! 改用模块生成，避免等待" ;;
            rkp_off) echo "系统没有配置远程证书服务地址，不会去连接它" ;;
            rkp_only_blocked) echo "$_a 已打开，连不上远程证书服务时，带证明的硬件密钥会直接生成失败，不只是变慢。名单应用可在包名后加 ! 改用模块生成" ;;
            rkp_stall) echo "最近的日志里，keystore2 有 $_a 次没取到远程证书，每次最多等约 10 秒。名单应用可在包名后加 ! 改用模块生成；如果是装了某个模块后才出现，先停用它对比" ;;
            soter_ok) echo "系统带有 Soter 服务" ;;
            soter_missing) echo "系统没有 Soter 服务，Soter 功能不可用" ;;
            soter_live) echo "Soter 通道已连接，$_a 个接口已注册" ;;
            soter_idle) echo "Soter 通道未连接（soterserver 未运行或还没注入）" ;;
            soter_frozen) echo "soterserver 正被系统冻结，冻结期间 Soter 调用可能失败" ;;
            daemon_ok) echo "模块进程运行中" ;;
            daemon_down) echo "模块进程没有运行" ;;
            inject_ok) echo "已注入 keystore2" ;;
            inject_down) echo "没有注入 keystore2" ;;
            *) echo "$_k $_a $_b $_c" ;;
        esac
    else
        if [ -n "$_a" ]; then _who="Module $_a"; else _who="An unknown source"; fi
        case $_k in
            android_ok) echo "Android API $_a is supported" ;;
            android_old) echo "Android API $_a is too old (minimum $MIN_SDK)" ;;
            arch_ok) echo "Architecture $_a is supported" ;;
            arch_bad) echo "Architecture $_a is not supported (arm64-v8a only)" ;;
            root) echo "Root: $_a" ;;
            root_unknown) echo "Root implementation not recognised" ;;
            selinux_ok) echo "SELinux: Enforcing" ;;
            selinux_loose) echo "SELinux is not Enforcing (now $_a); the module has not been verified in this state" ;;
            conflict_none) echo "No other simulator module found" ;;
            conflict) echo "Module $_a also injects keystore2; running both can cause problems, so disable it first" ;;
            leftover) echo "Old module $_a is disabled but still present; it can be removed" ;;
            overlay) echo "Module $_a replaces the system file $_b, which can affect keystore, KeyMint, Soter or system properties" ;;
            shares_config) echo "Module $_a also uses /data/adb/tricky_store and may change keybox or target.txt" ;;
            touches_keystore) echo "Module $_a has scripts that act on keystore2; if something misbehaves, disable it and compare" ;;
            injected_other) echo "keystore2 also has $_a loaded, possibly from another module; running both can cause problems" ;;
            props_clean) echo "No other module changes the device's read-only properties" ;;
            props_changed)
                if [ "$_c" = 0 ]; then
                    echo "Module $_a changes $_b of the device's own read-only properties. If something misbehaves, disable it and compare"
                else
                    echo "Module $_a changes $_b of the device's own read-only properties and adds $_c it does not have. If something misbehaves, disable it and compare"
                fi
                ;;
            first_api) echo "$_who changes first_api_level from $_c to $_b. The effect has only been measured on one device: each key waited about 10 s longer while remote provisioning was unreachable. If key generation is slow, set it back to $_c and compare" ;;
            pki_prop) echo "Module $_a sets ro.vendor.oplus.provision.pki to $_b (device value: ${_c:-none}). The PKI item in OPPO Engineering Mode may turn red because of it" ;;
            vbmeta_prop) echo "Module $_a changes $_b; the boot hash in certificates follows it" ;;
            patch_prop) echo "Module $_a sets $_b to $_c; certificates may follow that date" ;;
            rkp_prop) echo "Module $_a sets $_b to $_c, which directly changes how remote provisioning behaves" ;;
            keybox_missing) echo "No keybox.xml yet; add your own keybox and reboot" ;;
            keybox_empty) echo "keybox.xml is empty; replace it with your own keybox" ;;
            keybox_ok) echo "KeyBox certificate expires in $_a days" ;;
            keybox_soon) echo "KeyBox certificate expires in $_a days; replace it soon" ;;
            keybox_expired) echo "KeyBox certificate expired ($_b); checks that rely on it may fail, so replace it" ;;
            keybox_unknown) echo "Could not read the KeyBox certificate dates" ;;
            keybox_no_rsa) echo "KeyBox has no RSA key, only EC" ;;
            rkp_ok) echo "Remote provisioning is reachable ($_a)" ;;
            rkp_blocked) echo "Remote provisioning is unreachable ($_a). Add ! after a package name in target.txt to have the module generate its keys and avoid the wait" ;;
            rkp_off) echo "No remote provisioning server is configured, so the system does not try to reach one" ;;
            rkp_only_blocked) echo "$_a is on: while remote provisioning is unreachable, attested hardware keys fail outright instead of only being slow. Add ! after a package name in target.txt to have the module generate them" ;;
            rkp_stall) echo "The recent log shows keystore2 failing to get a remote key $_a times, each waiting up to about 10 s. Add ! after a package name in target.txt to have the module generate its keys; if this began after installing a module, disable it and compare" ;;
            soter_ok) echo "Soter service is present" ;;
            soter_missing) echo "This system has no Soter service" ;;
            soter_live) echo "Soter channel connected, $_a calls registered" ;;
            soter_idle) echo "Soter channel not connected (soterserver is not running or not injected yet)" ;;
            soter_frozen) echo "soterserver is frozen by the system; Soter calls may fail while it stays frozen" ;;
            daemon_ok) echo "Module daemon is running" ;;
            daemon_down) echo "Module daemon is not running" ;;
            inject_ok) echo "keystore2 is injected" ;;
            inject_down) echo "keystore2 is not injected" ;;
            *) echo "$_k $_a $_b $_c" ;;
        esac
    fi
}

add() {
    _l=$1; _k=$2; _a=$(clean "${3:-}"); _b=$(clean "${4:-}"); _c=$(clean "${5:-}")
    case $_l in
        ok) N_OK=$((N_OK + 1)) ;;
        info) N_INFO=$((N_INFO + 1)) ;;
        warn) N_WARN=$((N_WARN + 1)) ;;
        error) N_ERROR=$((N_ERROR + 1)) ;;
    esac
    ITEMS="$ITEMS${ITEMS:+,}{\"level\":\"$_l\",\"key\":\"$_k\",\"a\":\"$_a\",\"b\":\"$_b\",\"c\":\"$_c\"}"
    if [ "$HUMAN" = 1 ]; then
        case $_l in
            ok) _mark='  [OK]' ;;
            info) _mark='  [i]' ;;
            warn) _mark='  [!]' ;;
            *) _mark='  [X]' ;;
        esac
        echo "$_mark $(text_for "$_k" "$_a" "$_b" "$_c")"
    fi
}

# --- what the device defines itself ------------------------------------------

# Every property file on the device's own partitions. init's list is fixed, but vendors
# import more from their own partitions (my_*, mi_ext, per-SKU files), so this globs
# them instead of naming them. Reading a file init skips only makes a value look native,
# which errs on the side of not blaming a module.
native_prop_files() {
    for _f in "$FS_ROOT"/*.prop "$FS_ROOT"/*/*.prop "$FS_ROOT"/*/etc/*.prop \
              "$FS_ROOT"/vendor/odm/*.prop "$FS_ROOT"/vendor/odm/etc/*.prop \
              "$FS_ROOT"/system/system_ext/etc/*.prop "$FS_ROOT"/system/product/etc/*.prop; do
        [ -r "$_f" ] || continue
        case ${_f#"$FS_ROOT"} in
            /data/*|/data_mirror/*|/sdcard/*|/storage/*|/mnt/*|/cache/*|/metadata/*|/debug_ramdisk/*|/proc/*|/sys/*|/dev/*) continue ;;
        esac
        printf '%s\n' "$_f"
    done
}

# ro.boot.* comes from the kernel command line or bootconfig, not from a partition.
kernel_props() {
    cat "$FS_ROOT/proc/cmdline" "$FS_ROOT/proc/bootconfig" 2>/dev/null \
        | sed -e 's/ = /=/g' -e 's/"//g' | tr ' ' '\n' | sed -n 's/^androidboot\./ro.boot./p'
}

NATIVE_FILES=$(native_prop_files)
KERNEL_PROPS=$(kernel_props)

native_lines() {
    printf '%s\n' "$KERNEL_PROPS"
    # shellcheck disable=SC2086
    cat $NATIVE_FILES </dev/null 2>/dev/null
}

native_value() { native_lines | tr -d '\r' | sed -n "s/^$1=//p" | tail -n 1; }

# True when any of the device's own files sets exactly this value. Several files can
# define one property (one per SKU, for example), so this is not the same as comparing
# with native_value.
native_has() { native_lines | tr -d '\r' | grep -qxF "$1=$2"; }

# Set by the device's init scripts at boot, where the value cannot be read in advance.
set_by_init() {
    grep -qF "$1" "$FS_ROOT"/*/etc/init/*.rc "$FS_ROOT"/*/etc/init/hw/*.rc \
        "$FS_ROOT"/vendor/bin/*.sh "$FS_ROOT"/odm/bin/*.sh </dev/null 2>/dev/null
}

# --- what other modules do ----------------------------------------------------

module_enabled() {
    [ -e "$1/disable" ] && return 1
    [ -e "$1/remove" ] && return 1
    return 0
}

# Whether a module's own scripts mention a fixed string.
module_mentions() {
    for _s in "$1"/*.sh "$1"/*/*.sh; do
        [ -f "$_s" ] || continue
        grep -qF "$2" "$_s" 2>/dev/null && return 0
    done
    return 1
}

# Sets P_VAL to the value a property has or will have after the next boot, and P_WHO to
# the module behind it when one can be named: its system.prop, or else a script of its
# that mentions the property while the live value differs from the device's own.
prop_state() {
    P_WHO=; P_VAL=
    for _d in "$MODROOT"/*; do
        [ -f "$_d/system.prop" ] || continue
        _id=${_d##*/}
        [ "$_id" = "$SELF_ID" ] && continue
        module_enabled "$_d" || continue
        _v=$(tr -d '\r' < "$_d/system.prop" 2>/dev/null | sed -n "s/^$1=//p" | tail -n 1)
        if [ -n "$_v" ]; then
            P_WHO=$_id; P_VAL=$_v
            return 0
        fi
    done
    P_VAL=$(getprop "$1" 2>/dev/null)
    [ -n "$P_VAL" ] || return 0
    native_has "$1" "$P_VAL" && return 0
    for _d in "$MODROOT"/*; do
        [ -d "$_d" ] || continue
        _id=${_d##*/}
        [ "$_id" = "$SELF_ID" ] && continue
        module_enabled "$_d" || continue
        if module_mentions "$_d" "$1"; then
            P_WHO=$_id
            return 0
        fi
    done
    return 0
}

# Another keystore2 simulator. Matched on the simulators' own ids and names, because
# helpers such as Tricky Addon carry a similar name but only edit target.txt.
is_simulator() {
    [ -e "$1/libTEESimulator.so" ] && return 0
    case $(printf '%s' "$2" | tr 'A-Z' 'a-z') in
        tee_simulator*|teesimulator*|tricky_store*|trickystore*|trick_store*) return 0 ;;
    esac
    case $(printf '%s' "$3" | tr 'A-Z' 'a-z') in
        "tee simulator"*|teesimulator*|"tricky store"*|trickystore*) return 0 ;;
    esac
    return 1
}

# First file a module mounts over the system that this module depends on.
replaced_system_file() {
    [ -e "$1/skip_mount" ] && return 0
    for _part in system vendor product system_ext odm; do
        [ -d "$1/$_part" ] || continue
        _hit=$(find "$1/$_part" -type f \( -iname '*keystore*' -o -iname '*keymint*' \
            -o -iname '*keymaster*' -o -iname '*rkpd*' -o -iname '*remoteprovisioning*' \
            -o -iname '*soter*' -o -name 'build.prop' \) 2>/dev/null | head -n 1)
        if [ -n "$_hit" ]; then
            printf '%s' "${_hit#"$1"/}"
            return 0
        fi
    done
}

# "<changed> <added>" for the ro.* lines of a module's system.prop, against the device's
# own values. A line with the device's own value counts as neither. init derives the
# ro.product.* names below from ro.product.<partition>.*, so no file defines them even
# though the device has them.
prop_delta() {
    # shellcheck disable=SC2086
    printf '%s\n' "$KERNEL_PROPS" | awk -v mod="$1" '
        { sub(/\r$/, "") }
        /^[ \t]*(#|$)/ { next }
        {
            i = index($0, "=")
            if (i < 2) next
            k = substr($0, 1, i - 1)
            v = substr($0, i + 1)
        }
        FILENAME != mod { have[k, v] = 1; known[k] = 1; next }
        k !~ /^ro\./ { next }
        (k, v) in have { next }
        k in known || k ~ /^ro\.product\.(brand|device|manufacturer|model|name)$/ { changed++; next }
        { added++ }
        END { printf "%d %d\n", changed, added }
    ' $NATIVE_FILES - "$1" 2>/dev/null
}

scan_modules() {
    _found=0
    for _d in "$MODROOT"/*; do
        [ -d "$_d" ] || continue
        _id=${_d##*/}
        [ "$_id" = "$SELF_ID" ] && continue
        _name=$(sed -n 's/^name=//p' "$_d/module.prop" 2>/dev/null | head -n 1)
        if is_simulator "$_d" "$_id" "$_name"; then
            _found=1
            if module_enabled "$_d"; then
                add error conflict "$_id"
            else
                add info leftover "$_id"
            fi
            continue
        fi
        module_enabled "$_d" || continue
        _file=$(replaced_system_file "$_d")
        [ -n "$_file" ] && add warn overlay "$_id" "$_file"
        module_mentions "$_d" tricky_store && add info shares_config "$_id"
        module_mentions "$_d" keystore2 && add info touches_keystore "$_id"
        if [ -f "$_d/system.prop" ] && [ -n "$NATIVE_FILES" ]; then
            _delta=$(prop_delta "$_d/system.prop")
            _chg=${_delta%% *}; _new=${_delta##* }
            if [ "${_chg:-0}" -gt 0 ] || [ "${_new:-0}" -gt 0 ]; then
                add info props_changed "$_id" "${_chg:-0}" "${_new:-0}"
                PROP_HITS=1
            fi
        fi
    done
    [ "$_found" = 0 ] && add ok conflict_none
}

# Properties with a known effect, whichever module or script set them. Each one is
# silent when the value is the device's own.
check_props() {
    # Measured on one device only (Pad 3 Pro, provisioning server unreachable): 36 instead
    # of its real 34 took every attested key from about 1.3 s to about 11 s. keystore2 and
    # RKPD do not read this property themselves, so the cause is further down and may be
    # vendor specific. That is why this says "measured", and why a device whose own value
    # is high gets no report here: rkp_stall covers it from the log.
    prop_state ro.product.first_api_level
    _native=$(native_value ro.product.first_api_level)
    [ -n "$_native" ] || _native=$(native_value ro.board.first_api_level)
    if [ -n "$P_VAL" ] && [ -n "$_native" ] && ! native_has ro.product.first_api_level "$P_VAL" \
        && [ "$P_VAL" -gt "$_native" ] 2>/dev/null; then
        case $RKP_STATE in
            reachable|off) _lvl=info ;;
            *) _lvl=warn ;;
        esac
        add "$_lvl" first_api "$P_WHO" "$P_VAL" "$_native"
        PROP_HITS=1
    fi

    # These are what keystore2 and RKPD read directly.
    for _rp in remote_provisioning.tee.rkp_only remote_provisioning.strongbox.rkp_only \
               remote_provisioning.hostname remote_provisioning.connect_timeout_millis; do
        prop_state "$_rp"
        if [ -n "$P_WHO" ] && ! native_has "$_rp" "$P_VAL"; then
            add info rkp_prop "$P_WHO" "$_rp" "$P_VAL"
            PROP_HITS=1
        fi
    done

    # Native on OPPO devices with PKI support. Removing it from a device without that
    # support has not been confirmed to clear the red item, so the wording stays "may".
    prop_state ro.vendor.oplus.provision.pki
    if [ -n "$P_WHO" ] && ! native_has ro.vendor.oplus.provision.pki "$P_VAL" \
        && ! set_by_init ro.vendor.oplus.provision.pki; then
        add info pki_prop "$P_WHO" "$P_VAL" "$(native_value ro.vendor.oplus.provision.pki)"
        PROP_HITS=1
    fi

    for _vb in ro.boot.vbmeta.digest ro.boot.vbmeta.public_key_digest; do
        prop_state "$_vb"
        if [ -n "$P_WHO" ] && ! native_has "$_vb" "$P_VAL"; then
            add info vbmeta_prop "$P_WHO" "$_vb"
            PROP_HITS=1
            break
        fi
    done

    for _sp in ro.build.version.security_patch ro.vendor.build.security_patch; do
        prop_state "$_sp"
        if [ -n "$P_WHO" ] && ! native_has "$_sp" "$P_VAL"; then
            add info patch_prop "$P_WHO" "$_sp" "$P_VAL"
            PROP_HITS=1
        fi
    done

    [ "$PROP_HITS" = 0 ] && add ok props_clean
}

# --- the device itself --------------------------------------------------------

check_platform() {
    _api=$(getprop ro.build.version.sdk)
    if [ "${_api:-0}" -ge "$MIN_SDK" ] 2>/dev/null; then
        add ok android_ok "$_api"
    else
        add error android_old "$_api"
    fi
    _abi=$(getprop ro.product.cpu.abi)
    case $_abi in
        arm64-v8a) add ok arch_ok "$_abi" ;;
        *) add error arch_bad "$_abi" ;;
    esac
    if [ -d "$FS_ROOT/data/adb/ksu" ]; then
        add info root "KernelSU"
    elif [ -d "$FS_ROOT/data/adb/ap" ]; then
        add info root "APatch"
    elif [ -d "$FS_ROOT/data/adb/magisk" ]; then
        add info root "Magisk"
    else
        add info root_unknown
    fi
    _se=$(getenforce 2>/dev/null)
    if [ "$_se" = Enforcing ]; then
        add ok selinux_ok
    else
        add warn selinux_loose "${_se:-unknown}"
    fi
}

# Days since 1970-01-01 for a civil date (Howard Hinnant's algorithm).
civil_days() {
    _y=$1; _m=$2; _dd=$3
    [ "$_m" -le 2 ] && _y=$((_y - 1))
    _era=$((_y / 400))
    _yoe=$((_y - _era * 400))
    if [ "$_m" -gt 2 ]; then _mp=$((_m - 3)); else _mp=$((_m + 9)); fi
    _doy=$(((153 * _mp + 2) / 5 + _dd - 1))
    _doe=$((_yoe * 365 + _yoe / 4 - _yoe / 100 + _doy))
    echo $((_era * 146097 + _doe - 719468))
}

# notAfter of the first certificate in keybox.xml as YYYYMMDD. A certificate has two
# time values in a row: notBefore, then notAfter. They are the only DER strings of
# this shape, read straight from the hex dump (UTCTime 17 0d, GeneralizedTime 18 0f).
leaf_not_after() {
    _hex=$(sed -n '/BEGIN CERTIFICATE/,/END CERTIFICATE/p' "$1" 2>/dev/null \
        | awk '/END CERTIFICATE/{exit} !/BEGIN CERTIFICATE/{print}' \
        | tr -d ' \t\r\n' | base64 -d 2>/dev/null | od -An -tx1 -v | tr -d ' \n')
    [ -n "$_hex" ] || return 1
    _t=$(printf '%s' "$_hex" | grep -oE '170d(3[0-9]){12}5a|180f(3[0-9]){14}5a' | sed -n 2p)
    [ -n "$_t" ] || return 1
    _digits=$(printf '%s' "$_t" | sed -e 's/^....//' -e 's/5a$//' -e 's/3\(.\)/\1/g')
    case $_t in
        170d*)
            _yy=$(printf '%s' "$_digits" | cut -c1-2)
            if [ "$_yy" -ge 50 ] 2>/dev/null; then _cc=19; else _cc=20; fi
            printf '%s%s' "$_cc" "$(printf '%s' "$_digits" | cut -c1-6)"
            ;;
        *)
            printf '%s' "$_digits" | cut -c1-8
            ;;
    esac
}

check_keybox() {
    _kb=$CONFIG_DIR/keybox.xml
    if [ ! -e "$_kb" ]; then
        add warn keybox_missing
        return
    fi
    if [ ! -s "$_kb" ]; then
        add warn keybox_empty
        return
    fi
    _end=$(leaf_not_after "$_kb")
    case $_end in
        [0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9])
            _ey=$(printf '%s' "$_end" | cut -c1-4)
            _em=$(printf '%s' "$_end" | cut -c5-6 | sed 's/^0//')
            _ed=$(printf '%s' "$_end" | cut -c7-8 | sed 's/^0//')
            _ny=$(date -u +%Y)
            _nm=$(date -u +%m | sed 's/^0//')
            _nd=$(date -u +%d | sed 's/^0//')
            _left=$(($(civil_days "$_ey" "$_em" "$_ed") - $(civil_days "$_ny" "$_nm" "$_nd")))
            _date="$_ey-$(printf '%s' "$_end" | cut -c5-6)-$(printf '%s' "$_end" | cut -c7-8)"
            if [ "$_left" -lt 0 ]; then
                add error keybox_expired "$_left" "$_date"
            elif [ "$_left" -le 7 ]; then
                add warn keybox_soon "$_left" "$_date"
            else
                add ok keybox_ok "$_left" "$_date"
            fi
            ;;
        *)
            add warn keybox_unknown
            ;;
    esac
    grep -qi 'algorithm="rsa"' "$_kb" 2>/dev/null || add info keybox_no_rsa
}

# Sets RKP_STATE to reachable | blocked | off | unknown. Since Android 14, RKPD refuses to
# run when remote_provisioning.hostname is empty, so such a device never waits on a
# server. Older versions have the address built in.
#
# A plain TCP connect, not `nc -z`: toybox only gained -z in 2024, so on older Android
# every host would look unreachable. With no input, nc keeps waiting once it has
# connected, so running out of time counts as reachable; -w makes a failed connect
# exit with an error first.
probe_rkp() {
    RKP_STATE=unknown
    RKP_HOST=$(getprop remote_provisioning.hostname 2>/dev/null)
    if [ -z "$RKP_HOST" ]; then
        if [ "$(getprop ro.build.version.sdk 2>/dev/null)" -ge 34 ] 2>/dev/null; then
            RKP_STATE=off
            return 0
        fi
        RKP_HOST=$RKP_DEFAULT_HOST
    fi
    command -v nc >/dev/null 2>&1 || return 0
    command -v timeout >/dev/null 2>&1 || return 0
    timeout 4 nc -w 2 "$RKP_HOST" 443 </dev/null >/dev/null 2>&1
    case $? in
        0|124|143) RKP_STATE=reachable ;;
        *) RKP_STATE=blocked ;;
    esac
}

check_rkp() {
    case $RKP_STATE in
        reachable) add ok rkp_ok "$RKP_HOST" ;;
        blocked) add info rkp_blocked "$RKP_HOST" ;;
        off) add info rkp_off ;;
    esac

    # keystore2 treats a remote key failure as fatal instead of falling back. Devices
    # that launch on newer Android can ship this on their own.
    if [ "$RKP_STATE" = blocked ]; then
        for _ro in remote_provisioning.tee.rkp_only remote_provisioning.strongbox.rkp_only; do
            prop_state "$_ro"
            case $P_VAL in
                1|y|yes|on|true)
                    add warn rkp_only_blocked "$_ro"
                    break
                    ;;
            esac
        done
    fi

    # The symptom itself: keystore2 logs this once per failed key, after waiting up to
    # RKPD_TIMEOUT (10 s). It says nothing about the cause, so it needs no guess about
    # which property or module is behind it.
    _limit=
    command -v timeout >/dev/null 2>&1 && _limit="timeout 5"
    _fails=$($_limit logcat -d -s keystore2:V 2>/dev/null | grep -c 'remote_provisioning.*Error occurred')
    if [ "${_fails:-0}" -ge "$RKP_STALL_MIN" ] 2>/dev/null; then
        add warn rkp_stall "$_fails"
    fi
}

check_soter() {
    if pm path "$SOTER_PKG" >/dev/null 2>&1; then
        add ok soter_ok
    else
        add info soter_missing
    fi
}

# Whether the kernel has frozen this process's cgroup (Android's cached-app freezer).
is_frozen() {
    _cg=$(sed -n 's/^0:://p' "$FS_ROOT/proc/$1/cgroup" 2>/dev/null)
    [ -n "$_cg" ] && grep -q '^frozen 1' "$FS_ROOT/sys/fs/cgroup$_cg/cgroup.events" 2>/dev/null
}

# Only meaningful once the module has booted, so the installer skips these.
check_runtime() {
    if [ -n "$(pidof TEESimulator 2>/dev/null)" ]; then
        add ok daemon_ok
    else
        add error daemon_down
    fi
    _ks=$(pidof keystore2 2>/dev/null)
    if [ -n "$_ks" ] && grep -q libTEESimulator "$FS_ROOT/proc/$_ks/maps" 2>/dev/null; then
        add ok inject_ok
    else
        add error inject_down
    fi
    # Anything else loaded into keystore2 from outside the system, whichever module it
    # came from and whatever that module is called.
    if [ -n "$_ks" ]; then
        _other=$(grep -E ' /(data/adb|data/local|debug_ramdisk|sbin)/' "$FS_ROOT/proc/$_ks/maps" 2>/dev/null \
            | grep -v libTEESimulator | awk '{print $6}' | sed 's#.*/##' | sort -u | head -n 1)
        [ -n "$_other" ] && add warn injected_other "$_other"
    fi
    pm path "$SOTER_PKG" >/dev/null 2>&1 || return 0
    _sp=$(pidof "$SOTER_PKG" 2>/dev/null | cut -d' ' -f1)
    _reg=$(sed -n 's/.*registered=\([0-9]*\).*/\1/p' "$CONFIG_DIR/soter_route" 2>/dev/null | head -n 1)
    if [ -z "$_sp" ]; then
        add info soter_idle
    elif is_frozen "$_sp"; then
        add warn soter_frozen
    elif [ "${_reg:-0}" -gt 0 ] 2>/dev/null; then
        add ok soter_live "$_reg"
    else
        add info soter_idle
    fi
}

probe_rkp
check_platform
scan_modules
check_props
check_keybox
check_rkp
check_soter
[ "$MODE" = --install ] || check_runtime

_now=$(date +%s 2>/dev/null)
JSON="{\"ok\":true,\"time\":${_now:-0},\"counts\":{\"ok\":$N_OK,\"info\":$N_INFO,\"warn\":$N_WARN,\"error\":$N_ERROR},\"items\":[$ITEMS]}"

if [ -d "$CONFIG_DIR" ]; then
    printf '%s\n' "$JSON" > "$REPORT" 2>/dev/null
    chmod 0644 "$REPORT" 2>/dev/null
fi

if [ "$HUMAN" = 1 ]; then
    if [ "$LANG_ZH" = 1 ]; then
        _sum="结果：$N_OK 项正常，$N_WARN 项注意，$N_ERROR 项错误"
        _note="（只提示，不影响安装）"
    else
        _sum="Result: $N_OK ok, $N_WARN warnings, $N_ERROR errors"
        _note=" (report only, install continues)"
    fi
    [ "$MODE" = --install ] || _note=
    echo "  $_sum$_note"
else
    printf '%s\n' "$JSON"
fi
exit 0
