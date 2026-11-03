#!/usr/bin/env bash
# Scope-only probe run: exercises just the policy cases so the MPL-SOTER decision lines
# (`scope uid=… src=parcel|caller code=… hit=…`) are at the front of the log burst and
# survive logd's rate limiting. Full run evidence comes from run_probe.sh.
set -u
SERIAL="${1:-3B15CC00CMU00000}"
HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="$HERE/out/scope-decisions.log"

adb -s "$SERIAL" logcat -c
adb -s "$SERIAL" logcat -v time -s VERIFYPROBE:* MPL-SOTER:* > "$OUT" 2>&1 &
LOGPID=$!
sleep 2
adb -s "$SERIAL" shell 'rm -f /data/local/tmp/mpl_scope_probe.conf /data/local/tmp/mpl_probe_done.txt; env MPL_PROBE_SCOPE_ONLY=scope MPL_SCOPE_FILE=/data/local/tmp/mpl_scope_probe.conf MPL_SOTER_KEYS_DIR=/data/local/tmp/mpl_soter_keys /system/bin/app_process -Xverify:all -Djava.class.path=/data/local/tmp/probe_x.dex:/data/local/tmp/p16x.dex /data/local/tmp mpl.VerifyProbe; echo "PROBE_EXIT=$?"'
sleep 2
kill "$LOGPID" 2>/dev/null
wait "$LOGPID" 2>/dev/null

echo "--- log: $OUT ($(wc -l < "$OUT") lines) ---"
grep -E "scope (uid|loaded|none)" "$OUT" || true
echo "--- marker ---"
adb -s "$SERIAL" shell 'cat /data/local/tmp/mpl_probe_done.txt'
