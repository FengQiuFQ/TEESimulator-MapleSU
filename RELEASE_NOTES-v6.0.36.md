# TEESimulator-MapleSU v6.0.36

WebUI fixes on top of 6.0.35.

- Multi-line hints now translate: matching ignores whitespace, so the experimental
  key-takeover paragraph is fully English instead of a mixed sentence.
- The SOTER scope search placeholder and its aria-label are translated.
- Composed status like `已开启 · 当前 N 个目标应用` renders as
  `On · Current N target app(s)`; the selected counter no longer repeats "Selected".
- Keybox auto-update no longer offers the KOWX712 target list as a keybox source. That
  URL returns a target list, so validation failed with
  `Content is not a valid keybox (not_xml)`. Yurikey (or a custom URL) remains.

No keybox is shipped in this archive.
