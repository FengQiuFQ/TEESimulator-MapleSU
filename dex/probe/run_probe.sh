#!/usr/bin/env bash
# Run the on-device probe while capturing its log in real time.
#   The main log buffer rotates fast on this device (sensor spam), so `logcat -d` after
#   the fact can lose the tail. This streams the two probe tags to a file instead.
set -u
SERIAL="${1:-3B15CC00CMU00000}"
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/out/probe-p16q-live.log"

adb -s "$SERIAL" logcat -c
adb -s "$SERIAL" logcat -v time -s VERIFYPROBE:* MPL-SOTER:* MPL-USAGE:* > "$OUT" 2>&1 &
LOGPID=$!
sleep 2
adb -s "$SERIAL" shell 'rm -f /data/local/tmp/mpl_probe_done.txt /data/local/tmp/mpl_scope_probe.conf;
    MPL_SCOPE_FILE=/data/local/tmp/mpl_scope_probe.conf MPL_SOTER_KEYS_DIR=/data/local/tmp/mpl_soter_keys /system/bin/app_process -Xverify:all \
    -Djava.class.path=/data/local/tmp/probe_x.dex:/data/local/tmp/p16x.dex \
    /data/local/tmp mpl.VerifyProbe; echo "PROBE_EXIT=$?"'
sleep 2
kill "$LOGPID" 2>/dev/null
wait "$LOGPID" 2>/dev/null

echo "--- marker ---"
adb -s "$SERIAL" shell 'cat /data/local/tmp/mpl_probe_done.txt'
echo "--- log lines: $(wc -l < "$OUT") ---"
grep -c "VERIFY FAIL" "$OUT" || true
