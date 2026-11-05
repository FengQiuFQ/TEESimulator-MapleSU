# TEESimulator-MapleSU v6.0.35

Bilingual WebUI, plus everything shipped after 6.0.33.

## WebUI

- **Chinese / English**, chosen automatically from the device language
  (`navigator.languages`, any `zh*` → Chinese, otherwise English).
- A **中 / EN capsule** in the brand header switches immediately; the choice is stored in
  `localStorage` and wins over the device language on the next visit.
- Static markup, dynamic status lines, toasts, dialogs, `title`, `aria-label` and
  `placeholder` are all translated in place; switching back restores the original text.
- Narrow screens (≤420 px) tighten the header so the switch never squeezes the title.

## Also included since v6.0.33

- `generateKey` works again: the dex guard in `dex/stage_kt.py` fails the build if a
  `markDeleted` call exists without its method (the 6.0.32 regression).
- Power: target list refresh is triggered by `/data/app` mtime (30-minute safety pass),
  SoterBridge polls every 5 s, SoterInjector 1.5 s with a 90 s fast window.
- resetprop coexistence: second `hide_bootloader` pass 45 s after boot; perf-HAL SELinux
  grants for `ksu` proc entries.
- Experimental WebUI switch: force target apps to regenerate unknown keys.
- Soter: the injector warm-starts `com.tencent.soter.soterserver`.

## Notes

- **This archive contains no keybox.**
- Reboot after installing so `sepolicy.rule` is applied.

## Checksums

See the attached `SHA256SUMS.txt`.
