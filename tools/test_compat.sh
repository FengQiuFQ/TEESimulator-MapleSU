#!/usr/bin/env bash
# Runs module/core/compat.sh against a fake device: partitions, modules, logs and system
# tools under a temporary root. Each scenario checks what must and must not be reported.
# Needs bash and python3. No device is involved.
# COMPAT_SHELL picks the shell that runs compat.sh (default: sh).
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT
PASS=0
FAIL=0

make_cert() { # days from now until notAfter (negative = already expired)
    python3 -I - "$1" <<'PY'
import base64, datetime, sys
end = datetime.datetime.now(datetime.timezone.utc) + datetime.timedelta(days=int(sys.argv[1]))
der = b"\x30\x1e" + b"\x17\x0d200101000000Z" + b"\x17\x0d" + end.strftime("%y%m%d%H%M%SZ").encode()
print("-----BEGIN CERTIFICATE-----")
print(base64.b64encode(der).decode())
print("-----END CERTIFICATE-----")
PY
}

setup() { # name, days left on the KeyBox certificate
    S="$WORK/$1"
    R="$S/root"
    mkdir -p "$S/bin" "$S/run" "$R/data/adb/modules" "$R/data/adb/ksu" "$R/data/adb/tricky_store" \
             "$R/vendor" "$R/system" "$R/proc/20"
    cat > "$S/run/props" <<'P'
ro.build.version.sdk=36
ro.product.cpu.abi=arm64-v8a
persist.sys.locale=en-US
remote_provisioning.hostname=remoteprovisioning.googleapis.com
P
    cat > "$S/bin/getprop" <<'STUB'
#!/bin/sh
sed -n "s/^$1=//p" "$FAKE_RUN/props" | tail -n 1
STUB
    printf '#!/bin/sh\necho Enforcing\n' > "$S/bin/getenforce"
    printf '#!/bin/sh\necho package:/x.apk\n' > "$S/bin/pm"
    cat > "$S/bin/pidof" <<'STUB'
#!/bin/sh
case "$1" in
  TEESimulator) echo 10 ;;
  keystore2) echo 20 ;;
  com.tencent.soter.soterserver) [ -z "${FAKE_SOTER_PID:-}" ] || echo "$FAKE_SOTER_PID" ;;
esac
STUB
    # Records where it was asked to connect.
    printf '#!/bin/sh\necho "$*" > "$FAKE_RUN/nc.args"\nexit "${FAKE_NC_RC:-1}"\n' > "$S/bin/nc"
    # Runs the command, or exits the way a run that ran out of time does.
    cat > "$S/bin/timeout" <<'STUB'
#!/bin/sh
[ -z "${FAKE_TIMEOUT_RC:-}" ] || exit "$FAKE_TIMEOUT_RC"
shift
exec "$@"
STUB
    printf '#!/bin/sh\ncat "$FAKE_RUN/logcat" 2>/dev/null\nexit 0\n' > "$S/bin/logcat"
    chmod +x "$S"/bin/*
    printf 'ro.product.first_api_level=34\nro.product.vendor.model=OPD2401\n' > "$R/vendor/build.prop"
    printf 'ro.build.version.security_patch=2025-10-01\n' > "$R/system/build.prop"
    {
        echo '<AndroidAttestation><Key algorithm="ecdsa"><CertificateChain><Certificate format="pem">'
        make_cert "$2"
        echo '</Certificate></CertificateChain></Key></AndroidAttestation>'
    } > "$R/data/adb/tricky_store/keybox.xml"
    echo '7f00-7f01 r-xp 00000000 fd:01 12 /data/adb/modules/tricky_store/libTEESimulator.so' > "$R/proc/20/maps"
}

run() {
    PATH="$S/bin:$PATH" FAKE_RUN="$S/run" COMPAT_FS_ROOT="$R" \
        "${COMPAT_SHELL:-sh}" "$ROOT/module/core/compat.sh" "$@"
}

live() { printf '%s=%s\n' "$1" "$2" >> "$S/run/props"; } # the running value of a property

module() { # id, [name]; leaves the module's directory in M
    M="$R/data/adb/modules/$1"
    mkdir -p "$M"
    printf 'id=%s\nname=%s\n' "$1" "${2:-$1}" > "$M/module.prop"
}

native() { # relative path under the fake root, property line
    mkdir -p "$(dirname "$R/$1")"
    printf '%s\n' "$2" >> "$R/$1"
}

check() { # description, result (0 = pass)
    if [ "$2" = 0 ]; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1)); echo "FAIL: $1"; echo "  $OUT"
    fi
}
has() { # description, level, key
    grep -q "\"level\":\"$2\",\"key\":\"$3\"" <<<"$OUT"
    check "$1 (wanted $2 $3)" $?
}
hasnt() { # description, key
    if grep -q "\"key\":\"$2\"" <<<"$OUT"; then r=1; else r=0; fi
    check "$1 (did not want $2)" "$r"
}
says() { # description, text
    grep -qF -- "$2" <<<"$OUT"
    check "$1 (wanted: $2)" $?
}
valid_json() { # description
    python3 -I -m json.tool >/dev/null 2>&1 <<<"$OUT"
    check "$1 (output is not JSON)" $?
}

# ---------------------------------------------------------------------------
# A clean device.
# ---------------------------------------------------------------------------
setup clean 200
OUT=$(run --json)
valid_json "clean"
has "clean: android" ok android_ok
has "clean: no other simulator" ok conflict_none
has "clean: no props touched" ok props_clean
has "clean: keybox valid" ok keybox_ok
has "clean: EC-only keybox noted" info keybox_no_rsa
has "clean: daemon up" ok daemon_ok
has "clean: injected" ok inject_ok
for k in first_api pki_prop overlay shares_config touches_keystore injected_other props_changed rkp_stall; do
    hasnt "clean" "$k"
done

# ---------------------------------------------------------------------------
# The case from the 2026-11-05 investigation. The module id is arbitrary on purpose:
# nothing may depend on which module this is.
# ---------------------------------------------------------------------------
setup spoofed 200
module random_spoof "Hello World"
cat > "$M/system.prop" <<'P'
ro.product.first_api_level=36
ro.vendor.oplus.provision.pki=11
ro.boot.vbmeta.digest=5c5e01e0
ro.build.version.security_patch=2026-07-01
ro.product.model=PLP110
persist.sys.tweak=1
P
SPOOF=$M/system.prop
module teesimulator-rs TEESimulator-RS_MapleSU
touch "$M/disable"
OUT=$(run --json)
says "spoofed: first_api names module and both values" '"level":"warn","key":"first_api","a":"random_spoof","b":"36","c":"34"'
says "spoofed: pki" '"level":"info","key":"pki_prop","a":"random_spoof","b":"11","c":""'
says "spoofed: vbmeta" '"level":"info","key":"vbmeta_prop","a":"random_spoof","b":"ro.boot.vbmeta.digest"'
says "spoofed: patch" '"level":"info","key":"patch_prop","a":"random_spoof","b":"ro.build.version.security_patch","c":"2026-07-01"'
# Changed: first_api, patch, and model (derived by init, so no file defines it).
# Added: pki, vbmeta digest. persist.* is not read-only, so it is not counted.
says "spoofed: counts changed and added" '"key":"props_changed","a":"random_spoof","b":"3","c":"2"'
has "spoofed: old module is a leftover" info leftover
hasnt "spoofed: leftover is not a conflict" conflict
hasnt "spoofed" props_clean

sed -i.bak 's/first_api_level=36/first_api_level=34/' "$SPOOF"
OUT=$(run --json)
hasnt "first_api back at the device's value" first_api
sed -i.bak 's/first_api_level=34/first_api_level=33/' "$SPOOF"
OUT=$(run --json)
hasnt "first_api below the device's value" first_api
touch "$(dirname "$SPOOF")/disable"
OUT=$(run --json)
hasnt "disabled module: pki not blamed" pki_prop
hasnt "disabled module: not counted" props_changed

# A system.prop saved with CRLF line endings.
setup crlf 200
module some_mod
printf 'ro.product.first_api_level=36\r\n' > "$M/system.prop"
OUT=$(run --json)
has "crlf: first_api still found" warn first_api
hasnt "crlf: same line is not also added" pki_prop

# ---------------------------------------------------------------------------
# Values the device ships itself are not reported, whoever else also sets them.
# ---------------------------------------------------------------------------
# A device launched with API 36, and a module writing the same value.
setup native_api 200
: > "$R/vendor/build.prop"
native vendor/build.prop ro.product.first_api_level=36
module some_mod
printf 'ro.product.first_api_level=36\n' > "$M/system.prop"
live ro.product.first_api_level 36
OUT=$(run --json)
hasnt "native 36, module 36" first_api
hasnt "native 36, module 36: nothing changed" props_changed
has "native 36, module 36: clean" ok props_clean

# The same device with no module at all.
setup native_api2 200
: > "$R/vendor/build.prop"
native vendor/build.prop ro.product.first_api_level=36
live ro.product.first_api_level 36
OUT=$(run --json)
hasnt "native 36, no module" first_api

# The device's own PKI value, wherever the vendor keeps it.
for f in my_product/build.prop my_manifest/build.prop odm/build.prop odm/etc/build.prop \
         odm/etc/build_sku1.prop vendor/odm/etc/build.prop vendor/default.prop product/etc/build.prop \
         mi_ext/etc/build.prop; do
    setup "native_pki_$(echo "$f" | tr '/.' '__')" 200
    native "$f" ro.vendor.oplus.provision.pki=11
    module some_mod
    printf 'ro.vendor.oplus.provision.pki=11\n' > "$M/system.prop"
    OUT=$(run --json)
    hasnt "native pki in $f" pki_prop
    hasnt "native pki in $f: nothing changed" props_changed
done

# One property, a different value per SKU: the module's value is one of the device's own.
setup native_sku 200
: > "$R/vendor/build.prop"
native odm/etc/build_a.prop ro.product.first_api_level=36
native odm/etc/build_b.prop ro.product.first_api_level=34
module some_mod
printf 'ro.product.first_api_level=36\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "per-SKU value" first_api

# Set by the device's own init script, so no file holds a value to compare with.
setup native_rc 200
native vendor/etc/init/hw/init.vendor.rc '    setprop ro.vendor.oplus.provision.pki 11'
module some_mod
printf 'ro.vendor.oplus.provision.pki=11\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "pki set by init" pki_prop

# The device has the property, but a module changes it.
setup native_diff 200
native vendor/build.prop ro.vendor.oplus.provision.pki=1
module some_mod
printf 'ro.vendor.oplus.provision.pki=11\n' > "$M/system.prop"
OUT=$(run --json)
says "pki differs from the device's" '"key":"pki_prop","a":"some_mod","b":"11","c":"1"'
says "pki differs: counted as changed, not added" '"key":"props_changed","a":"some_mod","b":"1","c":"0"'

# ro.boot.* comes from the kernel, in either format.
setup native_cmdline 200
printf 'console=null androidboot.vbmeta.digest=abc androidboot.slot_suffix=_a\n' > "$R/proc/cmdline"
module some_mod
printf 'ro.boot.vbmeta.digest=abc\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "vbmeta equals cmdline" vbmeta_prop
hasnt "vbmeta equals cmdline: nothing changed" props_changed
printf 'ro.boot.vbmeta.digest=zzz\n' > "$M/system.prop"
OUT=$(run --json)
has "vbmeta differs from cmdline" info vbmeta_prop
says "vbmeta differs: counted as changed" '"key":"props_changed","a":"some_mod","b":"1","c":"0"'
setup native_bootconfig 200
printf 'androidboot.vbmeta.digest = "abc"\nandroidboot.slot_suffix = "_a"\n' > "$R/proc/bootconfig"
module some_mod
printf 'ro.boot.vbmeta.digest=abc\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "vbmeta equals bootconfig" vbmeta_prop

# A module repeating the device's security patch.
setup native_patch 200
module some_mod
printf 'ro.build.version.security_patch=2025-10-01\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "patch equals the device's" patch_prop

# Tweaks outside ro.* say nothing about the device's identity.
setup tweaks 200
module tweak_mod
printf 'persist.sys.foo=1\ndebug.sf.bar=2\n# ro.product.first_api_level=36\n\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "non-ro tweaks" props_changed
hasnt "commented line" first_api
has "non-ro tweaks: clean" ok props_clean

# A property file on user storage is not something the device ships.
for f in sdcard/pif.prop data/local.prop storage/x.prop mnt/x.prop; do
    setup "not_native_$(echo "$f" | tr '/.' '__')" 200
    native "$f" ro.vendor.oplus.provision.pki=11
    module some_mod
    printf 'ro.vendor.oplus.provision.pki=11\n' > "$M/system.prop"
    OUT=$(run --json)
    has "$f is not the device's own" info pki_prop
done

# No first_api_level in any partition: the board's value stands in, unless it is in the
# YYYYMM form newer vendor images use, which cannot be compared with an API level.
setup board_api 200
: > "$R/vendor/build.prop"
native vendor/build.prop ro.board.first_api_level=34
module some_mod
printf 'ro.product.first_api_level=36\n' > "$M/system.prop"
OUT=$(run --json)
says "board level stands in" '"key":"first_api","a":"some_mod","b":"36","c":"34"'
setup board_api_new 200
: > "$R/vendor/build.prop"
native vendor/build.prop ro.board.first_api_level=202404
module some_mod
printf 'ro.product.first_api_level=36\n' > "$M/system.prop"
OUT=$(run --json)
hasnt "board level in YYYYMM form" first_api

# ---------------------------------------------------------------------------
# This module itself is never reported as another module.
# ---------------------------------------------------------------------------
setup self 200
module tricky_store "TEESimulator-RS_MapleSU"
touch "$M/libTEESimulator.so"
printf 'ro.product.first_api_level=36\n' > "$M/system.prop"
printf 'pidof keystore2\ncat /data/adb/tricky_store/target.txt\nresetprop ro.vendor.oplus.provision.pki 11\n' > "$M/service.sh"
mkdir -p "$M/system/bin"
: > "$M/system/bin/keystore2"
live ro.vendor.oplus.provision.pki 11
OUT=$(run --json)
has "self: not a conflict" ok conflict_none
for k in conflict first_api overlay shares_config touches_keystore props_changed pki_prop; do
    hasnt "self" "$k"
done

# ---------------------------------------------------------------------------
# A property can be changed in other ways than system.prop.
# ---------------------------------------------------------------------------
setup via_script 200
live ro.product.first_api_level 36
module script_mod
printf 'resetprop ro.product.first_api_level 36\n' > "$M/service.sh"
OUT=$(run --json)
says "script at module root" '"level":"warn","key":"first_api","a":"script_mod","b":"36","c":"34"'
rm "$M/service.sh"
mkdir -p "$M/common"
printf 'resetprop ro.product.first_api_level 36\n' > "$M/common/props.sh"
OUT=$(run --json)
says "script in a subdirectory" '"key":"first_api","a":"script_mod"'
touch "$M/disable"
OUT=$(run --json)
says "disabled module is not named" '"key":"first_api","a":"","b":"36","c":"34"'

setup unknown_source 200
live ro.product.first_api_level 36
OUT=$(run --json)
says "no source found: still reported" '"level":"warn","key":"first_api","a":"","b":"36","c":"34"'
OUT=$(run --text)
says "no source found: wording" "An unknown source changes first_api_level from 34 to 36"

# With the server reachable, or with none configured, no wait is expected.
setup api_reachable 200
live ro.product.first_api_level 36
OUT=$(FAKE_NC_RC=0 run --json)
has "first_api while reachable" info first_api
sed -i.bak '/remote_provisioning.hostname/d' "$S/run/props"
OUT=$(run --json)
has "first_api with RKP off" info first_api

# ---------------------------------------------------------------------------
# Other modules, judged by what they do and not by what they are called.
# ---------------------------------------------------------------------------
setup conflict_name 200
module old_tee "Tricky Store"
OUT=$(run --json)
has "simulator by name" error conflict
hasnt "simulator by name" conflict_none
setup conflict_id 200
module TEESimulator_Fork "Something Else"
OUT=$(run --json)
has "simulator by id" error conflict
setup conflict_payload 200
module unassuming "Unassuming Module"
touch "$M/libTEESimulator.so"
OUT=$(run --json)
has "simulator by payload" error conflict

# A helper with a similar name only edits target.txt, so it is not a simulator.
setup helper 200
module TA_utl "Tricky Addon - Update Target List"
mkdir -p "$M/common"
printf 'cp list /data/adb/tricky_store/target.txt\n' > "$M/common/update.sh"
OUT=$(run --json)
has "helper: not a conflict" ok conflict_none
hasnt "helper" conflict
says "helper: shares the config directory" '"level":"info","key":"shares_config","a":"TA_utl"'

setup restarts 200
module restarter
printf 'killall keystore2\n' > "$M/service.sh"
OUT=$(run --json)
says "script acts on keystore2" '"level":"info","key":"touches_keystore","a":"restarter"'

# System files this module depends on, whatever the module is called.
for f in system/bin/keystore2 system/lib64/libkeystore-engine.so \
         vendor/lib64/android.hardware.security.keymint-V3.so vendor/bin/hw/android.hardware.keymaster@4.1-service \
         system_ext/app/SoterService/SoterService.apk system/apex/com.android.rkpd.apex \
         system/build.prop vendor/build.prop; do
    setup "overlay_$(echo "$f" | tr '/.@-' '____')" 200
    module any_name
    mkdir -p "$(dirname "$M/$f")"
    : > "$M/$f"
    OUT=$(run --json)
    says "replaces $f" "\"level\":\"warn\",\"key\":\"overlay\",\"a\":\"any_name\",\"b\":\"$f\""
done
setup overlay_none 200
module any_name
mkdir -p "$M/system/bin" "$M/system/fonts"
: > "$M/system/bin/ls"
: > "$M/system/fonts/Roboto.ttf"
OUT=$(run --json)
hasnt "unrelated system files" overlay
setup overlay_skip 200
module any_name
mkdir -p "$M/system/bin"
: > "$M/system/bin/keystore2"
touch "$M/skip_mount"
OUT=$(run --json)
hasnt "skip_mount: nothing is mounted" overlay
setup overlay_disabled 200
module any_name
mkdir -p "$M/system/bin"
: > "$M/system/bin/keystore2"
touch "$M/disable"
OUT=$(run --json)
hasnt "disabled module: nothing is mounted" overlay

# What is actually loaded into keystore2.
setup injected 200
cat >> "$R/proc/20/maps" <<'M'
7f10-7f11 r-xp 00000000 fd:01 13 /system/lib64/libkeystore2.so
7f12-7f13 r-xp 00000000 fd:01 14 /apex/com.android.runtime/lib64/bionic/libc.so
7f14-7f15 rw-s 00000000 fd:01 15 /data/misc/keystore/persistent.sqlite-shm
M
OUT=$(run --json)
hasnt "system libraries and keystore's own database" injected_other
echo '7f16-7f17 r-xp 00000000 fd:01 16 /data/adb/modules/x/libhook.so' >> "$R/proc/20/maps"
OUT=$(run --json)
says "another library in keystore2" '"level":"warn","key":"injected_other","a":"libhook.so"'
OUT=$(run --install)
if grep -q 'libhook' <<<"$OUT"; then r=1; else r=0; fi
check "--install skips what is loaded right now" "$r"

# Awkward characters in a module id must not break the JSON.
setup quoted 200
mkdir -p "$R/data/adb/modules/tricky_store\"bad"
OUT=$(run --json)
valid_json "quoted id"
has "quoted id: reported" error conflict
setup spaced 200
module "a module" "Spaced"
printf 'killall keystore2\n' > "$M/service.sh"
printf 'ro.product.first_api_level=36\n' > "$M/system.prop"
OUT=$(run --json)
valid_json "spaced id"
says "spaced id: scripts read" '"key":"touches_keystore","a":"a module"'
says "spaced id: props read" '"key":"first_api","a":"a module"'

# ---------------------------------------------------------------------------
# Remote provisioning.
# ---------------------------------------------------------------------------
# Connect failed, connected and closed, connected and waiting.
setup network 200
OUT=$(FAKE_NC_RC=1 run --json)
says "connect failed" '"level":"info","key":"rkp_blocked","a":"remoteprovisioning.googleapis.com"'
OUT=$(FAKE_NC_RC=0 run --json)
has "connected" ok rkp_ok
OUT=$(FAKE_TIMEOUT_RC=124 run --json)
has "connected, toybox timeout" ok rkp_ok
OUT=$(FAKE_TIMEOUT_RC=143 run --json)
has "connected, busybox timeout" ok rkp_ok

# The address the device is configured with, not a built-in one.
setup rkp_host 200
live remote_provisioning.hostname rkp.example.test
OUT=$(run --json)
says "configured host is reported" '"key":"rkp_blocked","a":"rkp.example.test"'
grep -qF 'rkp.example.test 443' "$S/run/nc.args"
check "configured host is what gets probed" $?

# No address: Android 14+ does not use the service at all, older versions have one built in.
setup rkp_unset 200
sed -i.bak '/remote_provisioning.hostname/d' "$S/run/props"
OUT=$(run --json)
has "no address on API 36" info rkp_off
hasnt "no address on API 36" rkp_blocked
if [ -e "$S/run/nc.args" ]; then r=1; else r=0; fi
check "no address on API 36: nothing to probe" "$r"
live ro.build.version.sdk 33
OUT=$(run --json)
says "no address on API 33" '"key":"rkp_blocked","a":"remoteprovisioning.googleapis.com"'

# rkp_only, shipped by the device itself: no module to blame, and keys fail outright.
setup rkp_only 200
native vendor/build.prop remote_provisioning.tee.rkp_only=1
live remote_provisioning.tee.rkp_only 1
OUT=$(run --json)
says "rkp_only while blocked" '"level":"warn","key":"rkp_only_blocked","a":"remote_provisioning.tee.rkp_only"'
hasnt "rkp_only from the device is no module's doing" rkp_prop
has "rkp_only from the device: props clean" ok props_clean
OUT=$(FAKE_NC_RC=0 run --json)
hasnt "rkp_only while reachable" rkp_only_blocked
for v in true on yes y; do
    live remote_provisioning.tee.rkp_only "$v"
    native vendor/build.prop "remote_provisioning.tee.rkp_only=$v"
    OUT=$(run --json)
    has "rkp_only=$v" warn rkp_only_blocked
done
setup rkp_only_off 200
native vendor/build.prop remote_provisioning.tee.rkp_only=0
live remote_provisioning.tee.rkp_only 0
OUT=$(run --json)
hasnt "rkp_only=0" rkp_only_blocked
setup rkp_only_strongbox 200
native vendor/build.prop remote_provisioning.strongbox.rkp_only=1
live remote_provisioning.strongbox.rkp_only 1
OUT=$(run --json)
says "strongbox rkp_only" '"key":"rkp_only_blocked","a":"remote_provisioning.strongbox.rkp_only"'

# The same properties set by a module.
setup rkp_only_module 200
module some_mod
printf 'remote_provisioning.tee.rkp_only=1\n' > "$M/system.prop"
OUT=$(run --json)
says "rkp_only from a module is named" '"level":"info","key":"rkp_prop","a":"some_mod","b":"remote_provisioning.tee.rkp_only","c":"1"'
has "rkp_only from a module: same failure" warn rkp_only_blocked
hasnt "rkp_prop is not an ro.* count" props_changed
setup rkp_host_module 200
module some_mod
printf 'remote_provisioning.hostname=rkp.example.test\n' > "$M/system.prop"
OUT=$(run --json)
says "address from a module is named" '"key":"rkp_prop","a":"some_mod","b":"remote_provisioning.hostname","c":"rkp.example.test"'

# The symptom from keystore2's own log, with no module or property involved.
LOGLINE='11-05 15:05:32.317  1378 27550 W keystore2: system/security/keystore2/src/remote_provisioning.rs:97 - Error occurred: system/security/keystore2/rkpd_client/src/lib.rs:221: Waiting for RKPD key timed out'
setup stall 200
for i in 1 2 3 4; do echo "$LOGLINE" >> "$S/run/logcat"; done
echo '11-05 15:05:33.000  1378 27550 I keystore2: unrelated line' >> "$S/run/logcat"
OUT=$(run --json)
says "stall in the log" '"level":"warn","key":"rkp_stall","a":"4"'
has "stall with nothing changed" ok props_clean
hasnt "stall blames no module" first_api
setup stall_blip 200
for i in 1 2; do echo "$LOGLINE" >> "$S/run/logcat"; done
OUT=$(run --json)
hasnt "a couple of failures" rkp_stall
setup stall_rkponly 200
echo '11-05 15:05:32.317  1378 27550 E keystore2: keystore2::remote_provisioning: Error occurred: failed' > "$S/run/logcat"
echo '11-05 15:05:32.317  1378 27550 E keystore2: keystore2::remote_provisioning: Error occurred: failed' >> "$S/run/logcat"
echo '11-05 15:05:32.317  1378 27550 E keystore2: keystore2::remote_provisioning: Error occurred: failed' >> "$S/run/logcat"
OUT=$(run --json)
has "other log format" warn rkp_stall

# ---------------------------------------------------------------------------
# KeyBox dates and absence.
# ---------------------------------------------------------------------------
setup soon 3
OUT=$(run --json)
has "keybox: about to expire" warn keybox_soon
setup expired -2
OUT=$(run --json)
has "keybox: expired" error keybox_expired
setup missing 200
rm "$R/data/adb/tricky_store/keybox.xml"
OUT=$(run --json)
has "keybox: missing" warn keybox_missing
setup empty 200
: > "$R/data/adb/tricky_store/keybox.xml"
OUT=$(run --json)
has "keybox: empty" warn keybox_empty
setup garbled 200
echo 'not a keybox' > "$R/data/adb/tricky_store/keybox.xml"
OUT=$(run --json)
has "keybox: unreadable dates" warn keybox_unknown

# ---------------------------------------------------------------------------
# Soter: not running, registered, frozen, never registered.
# ---------------------------------------------------------------------------
setup soter 200
OUT=$(run --json)
has "soter: not running" info soter_idle
echo 'route=socket registered=13 proto=1 socket=@teesim_soter at=1' > "$R/data/adb/tricky_store/soter_route"
mkdir -p "$R/proc/30" "$R/sys/fs/cgroup/apps/uid_1/pid_30"
printf '0::/apps/uid_1/pid_30\n' > "$R/proc/30/cgroup"
printf 'populated 1\nfrozen 0\n' > "$R/sys/fs/cgroup/apps/uid_1/pid_30/cgroup.events"
OUT=$(FAKE_SOTER_PID=30 run --json)
has "soter: registered" ok soter_live
printf 'populated 1\nfrozen 1\n' > "$R/sys/fs/cgroup/apps/uid_1/pid_30/cgroup.events"
OUT=$(FAKE_SOTER_PID=30 run --json)
has "soter: frozen" warn soter_frozen
hasnt "soter: frozen is not reported as live" soter_live
printf 'populated 1\nfrozen 0\n' > "$R/sys/fs/cgroup/apps/uid_1/pid_30/cgroup.events"
echo 'route=none registered=0' > "$R/data/adb/tricky_store/soter_route"
OUT=$(FAKE_SOTER_PID=30 run --json)
has "soter: running, nothing registered" info soter_idle

# ---------------------------------------------------------------------------
# Output modes. The installer skips runtime state; --text does not; the report is JSON.
# ---------------------------------------------------------------------------
setup modes 200
OUT=$(run --install)
if grep -q 'daemon' <<<"$OUT"; then r=1; else r=0; fi
check "--install ran runtime checks" "$r"
says "--install: result line" "report only, install continues"
OUT=$(python3 -I -m json.tool "$R/data/adb/tricky_store/compat_report.json" 2>&1)
check "report is not JSON" $?
OUT=$(run --text)
says "--text: runtime checks" "Module daemon is running"
says "--text: result line" "Result:"
if grep -qF 'install continues' <<<"$OUT"; then r=1; else r=0; fi
check "--text mentions the install" "$r"
live persist.sys.locale zh-CN
live ro.product.first_api_level 36
OUT=$(run --install)
says "zh locale" "结果"
says "zh locale: unknown source" "未知来源"

# Shells disagree on where a variable name ends when a multibyte character follows it: bash
# 3.2 and ksh93 drop the value in a UTF-8 locale. The wording has to use ${name} there.
UTF8=$(locale -a 2>/dev/null | grep -iE '^(C|en_US)\.utf-?8$' | head -n 1)
setup zh_values 200
live persist.sys.locale zh-CN
OUT=$(LC_ALL=${UTF8:-C} run --install)
says "zh: value before a multibyte character" "Android API 36，支持"
says "zh: value before a multibyte character" "架构 arm64-v8a，支持"
python3 -I - "$ROOT/module/core/compat.sh" <<'PY'
import re, sys
sys.exit(1 if re.search(r"\$[A-Za-z_][A-Za-z0-9_]*[^\x00-\x7f]", open(sys.argv[1], encoding="utf-8").read()) else 0)
PY
check "a variable sits directly before a multibyte character in compat.sh" $?

setup config_override 200
OUT=$(WEBUI_KSU_CONFIG_DIR="$S/run/cfg" run --json)
valid_json "config override, directory absent"
mkdir -p "$S/run/cfg"
OUT=$(WEBUI_KSU_CONFIG_DIR="$S/run/cfg" run --json)
[ -f "$S/run/cfg/compat_report.json" ]
check "report follows the config override" $?

echo "compat tests: $PASS passed, $FAIL failed"
[ "$FAIL" = 0 ]
