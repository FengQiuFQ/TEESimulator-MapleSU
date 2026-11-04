# TEESimulator-MapleSU v6.0.30

Update delivery plus a more reliable KeyBox status in the WebUI.

## Update checks

- `module.prop` carries `updateJson=https://raw.githubusercontent.com/FengQiuFQ/TEESimulator-MapleSU/main/update.json`,
  so KernelSU/Magisk can check for new versions from their module lists.
- `update.json` is published at the repository root and points at the current asset.

## KeyBox status is now diagnosable and truthful

- The `keyboxes` payload adds `probe {path, exists, size, uid}`.
- The WebUI distinguishes the three failure states instead of showing one message:
  - absent → “未安装 KeyBox”;
  - present but 0 bytes → “文件存在但为空”;
  - present but unreadable → “文件存在但无法读取”.
- When a keybox **is** configured:
  - the banner disappears;
  - a custom keybox shows its real short SHA (previously “unknown”);
  - with no built-in source, the panel says “已使用自定义 KeyBox（内置源不可用，切换已禁用）”
    instead of looking like an error.
- The KeyBox tag shows **未配置** when nothing is installed (previously 当前生效).

## Also in this build

- Soter injector polls every 400 ms with one retry (from v6.0.29 sources).
- Default target list: 14 entries, including `com.basicas.u52`, `com.chunqiunativecheck`,
  `com.maple.detect`.
- Keybox auto-update defaults to the Yurikey channel; a failed attempt never overwrites
  the live file and retries after five minutes.

## Notes

- **This archive contains no keybox.** Place your own at
  `/data/adb/tricky_store/keybox.xml`; until then the interceptor is a no-op by design.
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
