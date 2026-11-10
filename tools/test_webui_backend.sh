#!/usr/bin/env bash
# Runs module/core/webui.sh against a fake device: a temporary config directory and stubs
# for curl, pm and friends. Covers the keybox auto-update rules, the target.txt refresh,
# the target watcher and the boot script's use of them. Needs bash and python3. No device
# or network is involved.
# WEBUI_SHELL picks the shell that runs the script (default: sh).
# WEBUI_SH tests another copy of webui.sh, for example an older one.
set -u
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SH="${WEBUI_SHELL:-sh}"
SCRIPT="${WEBUI_SH:-$ROOT/module/core/webui.sh}"
WORK="$(mktemp -d)"
trap 'rm -rf "$WORK"' EXIT
PASS=0
FAIL=0

check() { # description, then a command that must succeed
    local what="$1"; shift
    if "$@"; then
        PASS=$((PASS + 1))
    else
        FAIL=$((FAIL + 1))
        echo "FAIL: $what"
    fi
}

is() { [ "$1" = "$2" ] || { echo "    got [$1], want [$2]"; return 1; }; }
has() { case "$1" in *"$2"*) return 0 ;; *) echo "    [$1] lacks [$2]"; return 1 ;; esac; }
lacks() { case "$1" in *"$2"*) echo "    [$1] has [$2]"; return 1 ;; *) return 0 ;; esac; }

# A certificate the backend's own checks accept: DER starting with 0x30, over 128 bytes.
CERT=$(python3 -I -c 'import base64; print(base64.b64encode(b"\x30\x82\x01\x00" + b"\x01" * 256).decode())')
keybox() { # DeviceID
    printf '<AndroidAttestation><Keybox DeviceID="%s"><Key algorithm="ecdsa"><PrivateKey format="pem">p</PrivateKey><CertificateChain><Certificate format="pem">\n-----BEGIN CERTIFICATE-----\n%s\n-----END CERTIFICATE-----\n</Certificate></CertificateChain></Key></Keybox></AndroidAttestation>\n' "$1" "$CERT"
}

setup() { # scenario name
    S="$WORK/$1"
    C="$S/cfg"
    mkdir -p "$S/mod/core" "$S/bin" "$S/tmp" "$C"
    cp "$SCRIPT" "$S/mod/core/webui.sh"
    printf 'version=6.0.37_MapleSU\nversionCode=1\n' > "$S/mod/module.prop"
    keybox third_party > "$S/download.xml"
    : > "$S/curl.log"
    : > "$S/pm.log"
    printf '100000.50 200000.00\n' > "$S/uptime"

    cat > "$S/bin/curl" <<'STUB'
#!/bin/sh
echo curl >> "$FAKE/curl.log"
[ -z "${FAKE_CURL_HOOK:-}" ] || sh -c "$FAKE_CURL_HOOK"
[ -z "${FAKE_CURL_FAIL:-}" ] || exit 7
while [ $# -gt 0 ]; do case $1 in -o) shift; out=$1 ;; esac; shift; done
cat "$FAKE/download.xml" > "$out"
STUB
    printf '#!/bin/sh\nexit 1\n' > "$S/bin/wget"
    printf '#!/bin/sh\nexit 1\n' > "$S/bin/toybox"
    cat > "$S/bin/pm" <<'STUB'
#!/bin/sh
echo "$*" >> "$FAKE/pm.log"
case " $* " in
    *" -3 "*)
        [ -z "${FAKE_PM_EMPTY:-}" ] || exit 0
        printf 'package:com.third.app\npackage:com.other.app\n'
        ;;
    *" -u "*)
        [ -z "${FAKE_PM_U_FAIL:-}" ] || exit 1
        printf 'package:com.third.app\npackage:com.other.app\npackage:com.google.android.gms\npackage:android\npackage:com.only.other.user\n'
        ;;
esac
STUB
    printf '#!/bin/sh\ncase $1 in ro.build.version.security_patch) echo 2025-10-01;; ro.build.version.sdk) echo 36;; esac\n' > "$S/bin/getprop"
    # Records its pid so a test can tell whether it was left behind.
    cat > "$S/bin/sleep" <<STUB
#!/bin/sh
echo \$\$ > "\$FAKE/sleep.pid"
exec $(command -v sleep) "\$@"
STUB
    if ! stat -c %Y / >/dev/null 2>&1; then
        printf '#!/bin/sh\nshift 2\nexec /usr/bin/stat -f %%m "$@"\n' > "$S/bin/stat"
    fi
    # The script expects plain numbers from wc, as toybox and GNU print them for stdin.
    if [ "$(printf x | wc -c)" != 1 ]; then
        printf '#!/bin/sh\n/usr/bin/wc "$@" | tr -d " "\n' > "$S/bin/wc"
    fi
    if ! command -v sha256sum >/dev/null 2>&1; then
        printf '#!/bin/sh\nexec shasum -a 256 "$@"\n' > "$S/bin/sha256sum"
    fi
    printf '#!/bin/sh\nexec %s "$@"\n' "$(command -v "$SH")" > "$S/bin/sh"
    chmod +x "$S"/bin/*
}

W() { # runs one webui.sh command in the current scenario
    FAKE="$S" PATH="$S/bin:$PATH" TMPDIR="$S/tmp" WEBUI_KSU_CONFIG_DIR="$C" WEBUI_KSU_LOG="$S/w.log" \
        WEBUI_KSU_UPTIME_FILE="${FAKE_UPTIME_FILE-$S/uptime}" \
        "$SH" "$S/mod/core/webui.sh" "$@"
}

conf() { # writes keybox_update.conf; a later line overrides an earlier one when it is read
    {
        printf 'enabled=1\nsource=yurikey\ncustom_url=\ninterval_hours=24\n'
        printf '%s\n' "$@"
    } > "$C/keybox_update.conf"
}

device_id() { sed -n 's/.*DeviceID="\([^"]*\)".*/\1/p' "$C/keybox.xml" 2>/dev/null; }
downloads() { wc -l < "$S/curl.log" | tr -d ' '; }
auto_state() { W kbu_status | sed -n 's/.*"autoState":"\([a-z_]*\)".*/\1/p'; }
next_epoch() { W kbu_status | sed -n 's/.*"nextEpoch":\([0-9]*\).*/\1/p'; }
conf_value() { sed -n "s/^$1=//p" "$C/keybox_update.conf"; }
backups() { (cd "$C" && ls keybox.xml.bak.* 2>/dev/null | wc -l | tr -d ' '); }
file_sha() { python3 -I -c 'import hashlib,sys; print(hashlib.sha256(open(sys.argv[1],"rb").read()).hexdigest())' "$1"; }
set_mtime() { python3 -I -c 'import os,sys; os.utime(sys.argv[1], (int(sys.argv[2]), int(sys.argv[2])))' "$1" "$2"; }
NOW=$(date +%s)
OLD=$((NOW - 200000))

# --- keybox: who may replace what ------------------------------------------------------

setup own_keybox_default_config
keybox my_own > "$C/keybox.xml"
check "own keybox reads as kept"                is "$(auto_state)" kept
check "own keybox: tick answers OK"             is "$(W kbu-tick)" OK
check "own keybox survives a tick"              is "$(device_id)" my_own
check "own keybox: nothing downloaded"          is "$(downloads)" 0
check "own keybox: no backup needed"            is "$(backups)" 0
check "own keybox: tick writes no config"       is "$([ -e "$C/keybox_update.conf" ] && echo yes || echo no)" no

setup no_keybox_is_installed
check "no keybox reads as due"                  is "$(auto_state)" due
check "no keybox: tick answers OK"              is "$(W kbu-tick)" OK
check "no keybox: update installs one"          is "$(device_id)" third_party
check "the update records what it installed"    is "$(conf_value installed_sha256)" "$(file_sha "$C/keybox.xml")"
check "an installed update is not due at once"  is "$(auto_state)" not_due

setup empty_keybox_is_replaced
: > "$C/keybox.xml"
W kbu-tick >/dev/null
check "an empty keybox.xml is not protected"    is "$(device_id)" third_party
check "an empty keybox.xml needs no backup"     is "$(backups)" 0

setup update_replaces_its_own
W kbu-tick >/dev/null
sed -i.orig "s/^last_check_epoch=.*/last_check_epoch=$OLD/" "$C/keybox_update.conf"
keybox newer_download > "$S/download.xml"
check "its own install is due after the interval" is "$(auto_state)" due
W kbu-tick >/dev/null
check "an update replaces what it installed"    is "$(device_id)" newer_download
check "replacing its own install keeps no copy" is "$(backups)" 0
check "the record follows the new file"         is "$(conf_value installed_sha256)" "$(file_sha "$C/keybox.xml")"

setup own_keybox_after_an_update
W kbu-tick >/dev/null
keybox my_own > "$C/keybox.xml"
sed -i.orig "s/^last_check_epoch=.*/last_check_epoch=$OLD/" "$C/keybox_update.conf"
check "own keybox over an update reads as kept" is "$(auto_state)" kept
: > "$S/curl.log"
W kbu-tick >/dev/null
check "own keybox over an update survives"      is "$(device_id)" my_own
check "own keybox over an update: no download"  is "$(downloads)" 0

setup packaged_keybox_is_not_protected
keybox packaged > "$S/mod/keybox.xml"
cp "$S/mod/keybox.xml" "$C/keybox.xml"
check "the packaged keybox may be updated"      is "$(auto_state)" due
W kbu-tick >/dev/null
check "the packaged keybox is replaced"         is "$(device_id)" third_party
check "the packaged keybox needs no backup"     is "$(backups)" 0

# --- keybox: upgrading from a version that kept no record ------------------------------

setup upgrade_downloaded_file
keybox from_old_version > "$C/keybox.xml"
conf "last_check_epoch=$OLD" retry_after_epoch=0 last_result=ok
set_mtime "$C/keybox.xml" $((OLD + 40))
check "a file an old version downloaded stays updatable" is "$(auto_state)" due
W kbu-tick >/dev/null
check "a file an old version downloaded is updated"      is "$(device_id)" third_party

setup upgrade_manual_file
keybox my_own > "$C/keybox.xml"
conf "last_check_epoch=$OLD" retry_after_epoch=0 last_result=ok
set_mtime "$C/keybox.xml" $((OLD + 5000))
check "a file placed after the last update is kept"      is "$(auto_state)" kept
W kbu-tick >/dev/null
check "a file placed after the last update survives"     is "$(device_id)" my_own

setup upgrade_file_older_than_last_update
keybox my_own > "$C/keybox.xml"
conf "last_check_epoch=$OLD" retry_after_epoch=0 last_result=ok
set_mtime "$C/keybox.xml" $((OLD - 40))
check "a file older than the last update is kept"        is "$(auto_state)" kept

# --- keybox: "Update now" --------------------------------------------------------------

setup update_now_over_own_keybox
keybox my_own > "$C/keybox.xml"
OWN_SHA=$(file_sha "$C/keybox.xml")
OUT=$(W kbu_now)
check "Update now reports success"              has "$OUT" '"ok":true'
check "Update now replaces an own keybox"       is "$(device_id)" third_party
check "Update now keeps one backup"             is "$(backups)" 1
BK=$(cd "$C" && ls keybox.xml.bak.* 2>/dev/null | head -n 1)
check "the backup holds the old file"           is "$(file_sha "$C/$BK")" "$OWN_SHA"
check "the backup is readable by root only"     is "$(python3 -I -c 'import os,sys; print(oct(os.stat(sys.argv[1]).st_mode & 0o777))' "$C/$BK")" 0o600
check "the reply names the backup"              has "$OUT" "\"backup\":\"$C/$BK\""
check "afterwards updates may replace the file" is "$(auto_state)" not_due
OUT=$(W kbu_now)
check "Update now on its own install: no backup" is "$(backups)" 1
check "and the reply names none"                has "$OUT" '"backup":""'

setup update_now_failed_download
keybox my_own > "$C/keybox.xml"
OUT=$(FAKE_CURL_FAIL=1 W kbu_now)
check "a failed Update now reports the failure" has "$OUT" '"ok":false'
check "a failed Update now keeps the keybox"    is "$(device_id)" my_own
check "a failed Update now leaves no backup"    is "$(backups)" 0
check "no temporary files are left"             is "$(cd "$C" && ls | grep -c 'download')" 0

setup update_now_invalid_download
keybox my_own > "$C/keybox.xml"
printf '<html>not a keybox</html>\n' > "$S/download.xml"
OUT=$(W kbu_now)
check "invalid content is reported"             has "$OUT" 'not_xml'
check "invalid content keeps the keybox"        is "$(device_id)" my_own
check "invalid content leaves no backup"        is "$(backups)" 0

setup update_now_backup_fails
keybox my_own > "$C/keybox.xml"
cat > "$S/bin/cp" <<STUB
#!/bin/sh
case "\$*" in *.bak.*) exit 1 ;; esac
exec $(command -v cp) "\$@"
STUB
chmod +x "$S/bin/cp"
OUT=$(W kbu_now)
check "a failed backup stops the update"        has "$OUT" 'backup_failed'
check "a failed backup keeps the keybox"        is "$(device_id)" my_own

# --- keybox: things that change during a download --------------------------------------

setup own_keybox_placed_during_download
export FAKE_CURL_HOOK="printf '<AndroidAttestation><Keybox DeviceID=\"my_own\"></Keybox></AndroidAttestation>\n' > '$C/keybox.xml'"
W kbu-tick >/dev/null
unset FAKE_CURL_HOOK
check "a keybox placed during a download survives" is "$(device_id)" my_own
check "the discarded download leaves no files"     is "$(cd "$C" && ls | grep -c 'download')" 0

setup disabled_during_automatic_download
conf "last_check_epoch=0"
export FAKE_CURL_HOOK="sed -i.orig 's/^enabled=.*/enabled=0/' '$C/keybox_update.conf'"
W kbu-tick >/dev/null
unset FAKE_CURL_HOOK
check "disabling during a download stays disabled" is "$(conf_value enabled)" 0
check "disabling during a download stops the install" is "$([ -e "$C/keybox.xml" ] && echo yes || echo no)" no

setup settings_saved_during_manual_download
conf "last_check_epoch=0"
export FAKE_CURL_HOOK="sed -i.orig 's/^enabled=.*/enabled=0/' '$C/keybox_update.conf'"
W kbu_now >/dev/null
unset FAKE_CURL_HOOK
check "Update now keeps a setting saved meanwhile" is "$(conf_value enabled)" 0
check "and still installs"                         is "$(device_id)" third_party

setup settings_saved_during_failed_download
conf "last_check_epoch=0"
export FAKE_CURL_HOOK="sed -i.orig 's/^interval_hours=.*/interval_hours=7/' '$C/keybox_update.conf'"
FAKE_CURL_FAIL=1 W kbu_now >/dev/null
unset FAKE_CURL_HOOK
check "a failed download keeps a setting saved meanwhile" is "$(conf_value interval_hours)" 7

# --- schedule and backoff --------------------------------------------------------------

setup interval_zero_once_per_boot
keybox old_update > "$C/keybox.xml"
conf interval_hours=0 "last_check_epoch=0" "installed_sha256=$(file_sha "$C/keybox.xml")"
for i in 1 2 3; do W kbu-tick >/dev/null; done
check "interval 0: three ticks, one download"   is "$(downloads)" 1
check "interval 0: not due again this boot"     is "$(auto_state)" not_due
check "interval 0: the next run is the next boot" is "$(next_epoch)" 0

setup interval_zero_next_boot
keybox old_update > "$C/keybox.xml"
conf interval_hours=0 "last_check_epoch=$(($(date +%s) - 100000 - 60))" "installed_sha256=$(file_sha "$C/keybox.xml")"
check "interval 0: a check before this boot is due again" is "$(auto_state)" due
W kbu-tick >/dev/null
check "interval 0: and one download happens"    is "$(downloads)" 1

setup interval_zero_this_boot
keybox old_update > "$C/keybox.xml"
conf interval_hours=0 "last_check_epoch=$(($(date +%s) - 100000 + 60))" "installed_sha256=$(file_sha "$C/keybox.xml")"
check "interval 0: a check during this boot is not due" is "$(auto_state)" not_due

setup interval_zero_unreadable_uptime
keybox old_update > "$C/keybox.xml"
conf interval_hours=0 "last_check_epoch=$OLD" "installed_sha256=$(file_sha "$C/keybox.xml")"
FAKE_UPTIME_FILE="$S/missing" W kbu-tick >/dev/null
check "interval 0: without an uptime it does not loop" is "$(downloads)" 0

setup interval_zero_failure_backs_off
keybox old_update > "$C/keybox.xml"
conf interval_hours=0 "last_check_epoch=0" "installed_sha256=$(file_sha "$C/keybox.xml")"
for i in 1 2 3; do FAKE_CURL_FAIL=1 W kbu-tick >/dev/null; done
check "interval 0: three failing ticks, one download" is "$(downloads)" 1

setup first_update_failure_backs_off
BEFORE=$(date +%s)
for i in 1 2 3; do FAKE_CURL_FAIL=1 W kbu-tick >/dev/null; done
check "default config, no network: three ticks, one download" is "$(downloads)" 1
RETRY=$(conf_value retry_after_epoch)
check "a failure sets the retry about 5 minutes out" is "$([ "$RETRY" -gt "$BEFORE" ] && [ "$RETRY" -le $(($(date +%s) + 300)) ] && echo yes)" yes
check "a failure shows the retry as the next run" is "$(next_epoch)" "$RETRY"
check "a failure reads as not due"              is "$(auto_state)" not_due
sed -i.orig "s/^retry_after_epoch=.*/retry_after_epoch=$((NOW - 1))/" "$C/keybox_update.conf"
FAKE_CURL_FAIL=1 W kbu-tick >/dev/null
check "after the backoff it tries once more"    is "$(downloads)" 2
sed -i.orig "s/^retry_after_epoch=.*/retry_after_epoch=$((NOW - 1))/" "$C/keybox_update.conf"
W kbu-tick >/dev/null
check "a later success clears the retry"        is "$(conf_value retry_after_epoch)" 0
check "and installs"                            is "$(device_id)" third_party

setup retry_time_after_clock_change
keybox old_update > "$C/keybox.xml"
conf "last_check_epoch=$((NOW - 100))" "retry_after_epoch=$((NOW + 90000))" "installed_sha256=$(file_sha "$C/keybox.xml")"
check "a retry time far in the future does not block updates" is "$(auto_state)" due

setup interval_schedule
W kbu-tick >/dev/null; W kbu-tick >/dev/null; W kbu-tick >/dev/null
check "interval 24: three ticks, one download"  is "$(downloads)" 1
LAST=$(conf_value last_check_epoch)
check "interval 24: the next run is a day later" is "$(next_epoch)" $((LAST + 86400))
sed -i.orig "s/^last_check_epoch=.*/last_check_epoch=$OLD/" "$C/keybox_update.conf"
W kbu-tick >/dev/null
check "interval 24: an overdue check downloads" is "$(downloads)" 2
sed -i.orig "s/^last_check_epoch=.*/last_check_epoch=$((NOW + 90000))/" "$C/keybox_update.conf"
W kbu-tick >/dev/null
check "a last check in the future counts as due" is "$(downloads)" 3

setup disabled_never_downloads
conf enabled=0
check "switched off reads as disabled"          is "$(auto_state)" disabled
W kbu-tick >/dev/null
check "switched off: no download"               is "$(downloads)" 0
check "switched off: no next run"               is "$(next_epoch)" 0

setup boot_apply_follows_the_same_rules
keybox my_own > "$C/keybox.xml"
W boot-apply >/dev/null 2>&1
check "boot-apply leaves an own keybox alone"   is "$(device_id)" my_own
check "boot-apply: no download"                 is "$(downloads)" 0
check "boot-apply records it"                   has "$(cat "$C/ksu_status" 2>/dev/null)" kbu=kept

setup tick_reports_the_reason
OUT=$(FAKE_CURL_FAIL=1 W kbu-tick)
check "a failed tick says why"                  has "$OUT" download_failed

# --- target.txt ------------------------------------------------------------------------

setup target_keeps_hand_written_lines
printf '# my note\ncom.google.android.gms!\n?android\ncom.google.android.gms.plain\ncom.third.app?\n[other_keybox.xml]\ncom.gone!\ncom.gone.plain\ncom.only.other.user\n' > "$C/target.txt"
W set auto_third_app 1 >/dev/null
T=$(tr '\n' '|' < "$C/target.txt")
check "a comment stays"                         has "$T" '# my note|'
check "a marked system app stays"               has "$T" 'com.google.android.gms!|'
check "a prefix-marked system app stays"        has "$T" '?android|'
check "a marked third-party app keeps its mark" has "$T" 'com.third.app?|'
check "a line in an unknown form stays"         has "$T" '[other_keybox.xml]|'
check "a marked app that is not installed stays" has "$T" 'com.gone!|'
check "an app of another user stays"            has "$T" 'com.only.other.user|'
check "a plain line for a removed app goes"     lacks "$T" 'com.gone.plain'
check "a plain line for an unknown app goes"    lacks "$T" 'com.google.android.gms.plain'
check "a new third-party app is added"          has "$T" 'com.other.app|'
check "a marked app is not added twice"         lacks "$T" '|com.third.app|'

setup target_plain_system_app
printf 'com.google.android.gms\n' > "$C/target.txt"
W set auto_third_app 1 >/dev/null
check "a plain system app stays"                has "$(tr '\n' '|' < "$C/target.txt")" 'com.google.android.gms|'

setup target_query_failure_drops_nothing
printf 'com.gone.plain\ncom.third.app\n' > "$C/target.txt"
FAKE_PM_U_FAIL=1 W set auto_third_app 1 >/dev/null
T=$(tr '\n' '|' < "$C/target.txt")
check "if the full list fails nothing is dropped" has "$T" 'com.gone.plain|'
check "and new apps are still added"              has "$T" 'com.other.app|'

setup target_pm_empty_changes_nothing
printf 'com.google.android.gms!\n' > "$C/target.txt"
FAKE_PM_EMPTY=1 W set auto_third_app 1 >/dev/null
check "an empty pm answer leaves the file alone" is "$(cat "$C/target.txt")" 'com.google.android.gms!'
check "and is recorded"                          is "$(cat "$C/target_refresh")" fail:pm_empty

setup target_full_list_only_when_needed
printf 'com.third.app\ncom.other.app\n' > "$C/target.txt"
W set auto_third_app 1 >/dev/null
check "no extra pm call when every line is third-party" is "$(grep -c -e '-u' "$S/pm.log")" 0
check "an unchanged list is not rewritten"              has "$(cat "$C/target_refresh")" unchanged

setup target_ignores_a_stale_list
printf 'com.gone.plain\n' > "$C/target.txt"
# What an interrupted refresh would leave, under the name the next one in the same process
# uses: this shell writes it and then becomes webui.sh, which keeps its pid.
FAKE="$S" PATH="$S/bin:$PATH" TMPDIR="$S/tmp" WEBUI_KSU_CONFIG_DIR="$C" WEBUI_KSU_LOG="$S/w.log" \
    /bin/sh -c 'printf "com.gone.plain\n" > "$TMPDIR/tee-target.$$.known"; exec "$0" "$1" set auto_third_app 1' \
    "$SH" "$S/mod/core/webui.sh" >/dev/null
check "a list left by an interrupted refresh is not used" lacks "$(tr '\n' '|' < "$C/target.txt")" 'com.gone.plain'

setup target_no_temp_files_left
printf 'com.google.android.gms!\ncom.gone.plain\n' > "$C/target.txt"
W set auto_third_app 1 >/dev/null
check "a refresh leaves no temporary files"     is "$(ls "$S/tmp" | wc -l | tr -d ' ')" 0

# --- target-watch ----------------------------------------------------------------------

start_watcher() { # sets WATCH_PID; exec makes it the shell itself, not a wrapper around it
    conf enabled=0
    printf '0\n' > "$C/auto_third_app_toggle"
    (
        export FAKE="$S" PATH="$S/bin:$PATH" TMPDIR="$S/tmp" WEBUI_KSU_CONFIG_DIR="$C" WEBUI_KSU_LOG="$S/w.log"
        # A job started with & ignores SIGINT, and a shell cannot trap a signal that was
        # ignored when it started, so python restores it before it becomes the shell.
        exec python3 -I -c 'import os, signal, sys
signal.signal(signal.SIGINT, signal.SIG_DFL)
os.execvp(sys.argv[1], sys.argv[1:])' "$SH" "$S/mod/core/webui.sh" target-watch 30
    ) > "$S/watch.out" 2>&1 &
    WATCH_PID=$!
    local i=0
    while [ $i -lt 50 ] && [ ! -s "$S/sleep.pid" ]; do
        command sleep 0.1
        i=$((i + 1))
    done
}
alive() { kill -0 "$1" 2>/dev/null; }
wait_gone() { # pid, up to about two seconds
    local i=0
    while [ $i -lt 20 ] && alive "$1"; do
        command sleep 0.1
        i=$((i + 1))
    done
    alive "$1" && echo alive || echo gone
}
PIDFILE_NAME=.target_watch.pid

watch_signal() { # scenario, signal
    setup "$1"
    start_watcher
    check "$2: the watcher runs"                is "$(alive "$WATCH_PID" && echo alive)" alive
    check "$2: its pid is the recorded one"     is "$(cat "$C/$PIDFILE_NAME" 2>/dev/null)" "$WATCH_PID"
    local sleeper
    sleeper=$(cat "$S/sleep.pid" 2>/dev/null)
    kill "-$2" "$WATCH_PID"
    check "$2: the watcher ends"                is "$(wait_gone "$WATCH_PID")" gone
    check "$2: the pid file is gone"            is "$([ -e "$C/$PIDFILE_NAME" ] && echo present || echo gone)" gone
    check "$2: no sleep is left behind"         is "$(wait_gone "$sleeper")" gone
    kill -9 "$WATCH_PID" "$sleeper" 2>/dev/null
    wait "$WATCH_PID" 2>/dev/null
}
watch_signal watcher_term TERM
watch_signal watcher_int INT

setup watcher_single_instance
start_watcher
FIRST=$WATCH_PID
# The script recognises a running watcher through /proc. Without it a second start would
# simply run, so this part needs a system that has /proc.
if [ -d "/proc/$FIRST" ]; then
    OUT=$(W target-watch 30)
    check "a second start reports the running watcher" has "$OUT" "\"pid\":$FIRST"
    check "the first watcher is still recorded"        is "$(cat "$C/$PIDFILE_NAME")" "$FIRST"
fi
kill -TERM "$FIRST"
wait_gone "$FIRST" >/dev/null
: > "$S/sleep.pid"
start_watcher
check "a start after TERM runs one new watcher"    is "$(cat "$C/$PIDFILE_NAME")" "$WATCH_PID"
check "and the old one has not come back"          is "$(alive "$FIRST" && echo alive || echo gone)" gone
kill -TERM "$WATCH_PID"
wait_gone "$WATCH_PID" >/dev/null
kill -9 "$FIRST" "$WATCH_PID" 2>/dev/null
wait 2>/dev/null

# --- the boot script -------------------------------------------------------------------

# Cuts step 3e out of the service.sh text in the packager and runs it on its own.
python3 -I - "$ROOT/tools/package_teesimulator_bundle.py" "$WORK/step3e.sh" <<'PY'
import re, sys
src = open(sys.argv[1], encoding="utf8").read()
service = re.search(r'^SERVICE = r"""(.*?)^"""', src, re.S | re.M).group(1)
step = re.search(r'^ *# 3e\. .*?(?=^ *# 3f\. )', service, re.S | re.M).group(0)
open(sys.argv[2], "w", encoding="utf8").write(step)
PY

cat > "$WORK/boot_runner.sh" <<'RUNNER'
log_msg() { printf '%s\n' "$*" >> "$BOOT_LOG"; }
set_status() { printf '%s=%s\n' "$1" "$2" >> "$FAKE/status"; }
. "$STEP_FILE"
RUNNER

boot_step() { # runs step 3e in the current scenario, prints the recorded state
    FAKE="$S" PATH="$S/bin:$PATH" TMPDIR="$S/tmp" WEBUI_KSU_CONFIG_DIR="$C" WEBUI_KSU_LOG="$S/w.log" \
        WEBUI_KSU_UPTIME_FILE="$S/uptime" MODDIR="$S/mod" CONFIG_DIR="$C" BOOT_LOG="$S/boot.log" \
        STEP_FILE="$WORK/step3e.sh" "$SH" "$WORK/boot_runner.sh"
    sed -n 's/^kbu=//p' "$S/status" | tail -n 1
}

setup boot_own_keybox
keybox my_own > "$C/keybox.xml"
check "boot: an own keybox is recorded as kept" is "$(boot_step)" kept
check "boot: an own keybox survives"            is "$(device_id)" my_own
check "boot: an own keybox means no download"   is "$(downloads)" 0

setup boot_no_keybox
check "boot: a missing keybox is installed"     is "$(boot_step)" ok
check "boot: the install happened"              is "$(device_id)" third_party
check "boot: the result files are cleaned up"   is "$(ls "$C" | grep -c kbu_boot)" 0

setup boot_failure
export FAKE_CURL_FAIL=1
check "boot: a failed download is recorded"     is "$(boot_step)" fail
unset FAKE_CURL_FAIL
check "boot: the log says why"                  has "$(cat "$S/boot.log")" download_failed

setup boot_not_due
keybox old_update > "$C/keybox.xml"
conf "last_check_epoch=$NOW" "installed_sha256=$(file_sha "$C/keybox.xml")"
check "boot: not due is recorded"               is "$(boot_step)" not_due
check "boot: not due means no download"         is "$(downloads)" 0

setup boot_disabled
conf enabled=0
check "boot: switched off is recorded"          is "$(boot_step)" disabled

setup boot_interval_zero
keybox old_update > "$C/keybox.xml"
conf interval_hours=0 "last_check_epoch=$OLD" "installed_sha256=$(file_sha "$C/keybox.xml")"
check "boot: interval 0 checks on boot"         is "$(boot_step)" ok
check "boot: and the watcher does not repeat it" is "$(W kbu-tick >/dev/null; downloads)" 1

echo "webui backend tests: $PASS passed, $FAIL failed"
[ "$FAIL" -eq 0 ]
