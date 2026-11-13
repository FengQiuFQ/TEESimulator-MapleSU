# TEESimulator-MapleSU v6.0.38

This release merges the install-compatibility and WebUI work from PR #2, plus the
stored-archive packaging fix for devices whose `unzip` rejects deflate streams.

## Install

- `core/compat.sh` runs once during installation and prints a compatibility report
  (informational only; it never blocks the install). The report is also saved as
  `compat_report.json` and included in the WebUI diagnostic export.
- The archive is shipped **uncompressed (ZIP_STORED)** so installation does not depend on
  the device inflate implementation. It is larger (~4.9 MB) but extracts byte-identically.

## WebUI

- Redesigned cards and four maple-themed seasonal palettes (spring/summer/autumn/winter,
  each with light and dark).
- All strings moved to `webroot/locales.js`; the language menu can hold any number of
  languages (Simplified/Traditional Chinese, English, Japanese, Russian ship today).
- New compatibility-check card.
- Removed the Miuix/Material style switch, the falling-leaf animation and the
  non-functional “TEE fix” toggle.
- Fixes: write commands could run twice after a timeout; polling reset unapplied
  selections and stopped after the page was hidden; the verbose-log switch showed the
  wrong state and could not be turned off; the export path was not shown; a read failure
  was reported as “KeyBox not configured”; the target count always showed 1; English mode
  rewrote app names.

## KeyBox auto-update

- Automatic updates no longer replace a `keybox.xml` you placed yourself, never touch the
  network or files on their own, and the WebUI says so. “Update now” performs the
  replacement and first writes a backup `keybox.xml.bak.<time>`.
- Download failures back off for 5 minutes (previously an interval of 0 or a never-successful
  update retried every 30 seconds).
- Interval `0` now means “check once per boot”.
- Settings saved while a download is running are no longer reverted when it finishes.
- `target.txt` auto-refresh keeps hand-written system entries (e.g. `com.google.android.gms!`),
  marked lines and unrecognised lines; it only removes unmarked, uninstalled packages.
- `target-watch` exits immediately on TERM/INT and no longer leaves a stale pid file.

## Docs

- README translations: Simplified/Traditional Chinese, Japanese, Russian, with a language
  switcher; `tools/check_readme.py` validates structure in CI.

## Notes

- **This archive contains no keybox.**
- Reboot after installing so `sepolicy.rule` is applied.
