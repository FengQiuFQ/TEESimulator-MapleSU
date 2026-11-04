#!/system/bin/sh
# Collect a trimmed diagnostic bundle for issue reports.
#
# Run as root:
#   su -c 'sh /data/adb/modules/tricky_store/collect_logs.sh'
# or copy this file anywhere and run it with root.
#
# Output: /sdcard/Download/teesim-diag-<timestamp>.txt
# The bundle never contains a keybox, account identifiers or the device serial.

OUT_DIR="/sdcard/Download"
STAMP=$(date +%Y%m%d-%H%M%S)
OUT="$OUT_DIR/teesim-diag-$STAMP.txt"
CONF="/data/adb/tricky_store"
MOD="/data/adb/modules/tricky_store"

if [ "$(id -u)" != "0" ]; then
    echo "run as root: su -c 'sh $0'"
    exit 1
fi

emit() {
    printf '\n===== %s =====\n' "$1" >> "$OUT"
    shift
    "$@" >> "$OUT" 2>&1
}

: > "$OUT" 2>/dev/null || {
    OUT="/data/local/tmp/teesim-diag-$STAMP.txt"
    : > "$OUT"
}

{
    echo "generated: $STAMP"
    echo "module.prop:"
    sed -n '1,20p' "$MOD/module.prop" 2>/dev/null
} >> "$OUT"

emit "device" sh -c 'getprop ro.product.model; getprop ro.build.version.release; getprop ro.build.version.sdk; getprop ro.product.cpu.abi'
emit "ksu_status" cat "$CONF/ksu_status"
emit "soter_route" cat "$CONF/soter_route"
emit "target_count" sh -c "grep -vc '^#' '$CONF/target.txt' 2>/dev/null || echo unknown"
emit "keystore2" sh -c 'pid=$(pidof keystore2); echo "pid=$pid"; [ -n "$pid" ] && grep -c libTEESimulator /proc/$pid/maps'
emit "soterserver" sh -c 'pid=$(pidof com.tencent.soter.soterserver); echo "pid=${pid:-not-running}"; [ -n "$pid" ] && grep -c libTEESimulator /proc/$pid/maps'
emit "files" sh -c "ls -l '$CONF' 2>/dev/null | head -40"

{
    printf '\n===== logcat: TEESimulator =====\n'
    logcat -d -s TEESimulator:V 2>/dev/null | tail -n 200
    printf '\n===== logcat: MPL-SOTER =====\n'
    logcat -d -s MPL-SOTER:V 2>/dev/null | tail -n 120
    printf '\n===== logcat: avc denials =====\n'
    logcat -d 2>/dev/null | grep -i 'avc:.*denied' | tail -n 40
} >> "$OUT" 2>&1

# Scrub anything that looks like a device serial or an account id.
sed -i -E 's/([Ss]erial(Number)?[=: ]+)[A-Za-z0-9._-]+/\1<redacted>/g' "$OUT" 2>/dev/null
sed -i -E 's/(android_id[=: ]+)[0-9a-fA-F]+/\1<redacted>/g' "$OUT" 2>/dev/null

echo "written: $OUT"
echo "review it before posting: it should contain no keybox and no personal data."
