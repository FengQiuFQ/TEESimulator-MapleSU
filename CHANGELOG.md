# Changelog

所有显著变更都会记录在这里。版本号与 Release tag 对应（`vX.Y.Z`）。

## v6.0.24 — 2026-11-03

### 新增
- **Soter 签名改为 RSA-PSS**：SHA-256 / MGF1-SHA-256 / **salt 20** / emBits 2047，
  与真机 TA 对齐（原先为 PKCS#1 v1.5）；外部验签已通过。
- **Soter 无 AMS 控制通道**：soterserver 进程内抽象 unix socket `@teesim_soter`
  （proto=1，HELLO/REGISTER/TX/REPLY/PING/STATUS），binder 优先、socket 兜底。
- PSS 自检工具（`mpl.PssSelfTest`）与外部验签脚本。

### 修复
- **KeyBox 自动更新失败重试**：失败不再推进 `last_check_epoch`，改为 5 分钟后重试，
  首次安装无网络时不会卡满一个更新周期。
- **注入探测**改为 30s 有界轮询，避免开机误报 `inject=fail`。
- **target.txt 开机后二次刷新**：首次 `boot-apply` 早于 PMS 就绪时不再漏掉新装应用。
- **ScopeCli 段错误**：不再调用 `PackageManager.getApplicationIcon`（ColorOS 会崩在
  `libhwui`），只接受 bitmap 图标。
- **WebUI 探测**：支持扁平布局、跳过已禁用模块、修复 `then;` 语法错误导致的 `errno=1`。
- 旧模块 id `teesimulator-rs` 自动迁移（禁用旧目录并停其守护进程）。

## v6.0.23 — 2026-11-03

- Soter 导出签名从 PKCS#1 v1.5 切换到 RSA-PSS(salt=20)。
- 自检工具与验签流程。

## v6.0.22 — 2026-11-03

- 合并 socket 控制通道与开机可靠性修复。
- 模块 id 统一为 `tricky_store`。

## v6.0.21 — 2026-11-03

- 注入探测有界轮询；开机完成后刷新 `target.txt`。

## v6.0.20 — 2026-11-03

- Soter socket 通道首个可用版本（route=socket，registered=13）。

## v6.0.17 — 2026-11-03

- WebUI 模块探测修复（扁平布局 / 禁用模块 / 语法错误）。

## v6.0.15 — 2026-11-03

- 证书链默认关闭；自动更新默认开启（KOWX712）；`unzip` 回退 busybox。

## v6.0.13 — 2026-11-03

- KSU 配置根统一为 `/data/adb/tricky_store`；`boot-apply` 接入开机流程；
  `ksu_status` 可观测。

## v6.0.9 — 2026-11-02

- 证书链开关进入 WebUI（双后端）。
