# Changelog

所有显著变更都会记录在这里。版本号与 Release tag 对应（`vX.Y.Z`）。

## v6.0.36 — 2026-11-05

- 多行提示改为忽略空白匹配，实验功能说明不再中英混排。
- 补全 SOTER 范围搜索框 placeholder / aria-label 的英文。
- `已开启 · 当前 N 个目标应用` 组合文案可完整翻译；已选计数不再重复 “Selected”。
- KeyBox 自动更新移除 KOWX712 目标列表源（其 URL 返回目标列表，校验报 `not_xml`），保留 Yurikey 与自定义 URL。

## v6.0.35 — 2026-11-05

### WebUI 中英双语
- 进入时按设备语言自动选择（`zh*` → 中文，其余 → English），品牌头新增「中 / EN」胶囊可手动切换并持久化。
- 静态文本、动态状态、Toast、对话框、`title`/`aria-label`/`placeholder` 全部就地翻译；切回中文恢复原文。
- 窄屏（≤420px）收紧头部，避免语言切换挤压标题。
- 解包脚本与 `WEBROOT_FILES` 同步加入 `webroot/i18n.js`。

### 其他
- 6.0.33 的 `generateKey` 修复与构建期断言；
- 功耗、resetprop 共存、Soter 预热、实验性强制重建开关。

## v6.0.33 — 2026-11-05

### 修复
- 6.0.32 的 `stage_kt.py` 在写入前重新读取 `Keystore2Interceptor.smali`，把刚插入的 `markDeleted` 方法与 `contains` 改动丢掉；H03 调用还在，导致每次 `generateKey` 抛 `NoSuchMethodError: markDeleted`，模块表现为“用一段时间后失效”。
- 现在只保留一份内存文本、单次写入；删除键回复改用 `v1` 显式传 `KEY_NOT_FOUND(7)`。
- `stage_kt` 末尾新增构建期断言：存在调用但缺方法时直接让 dex 构建失败。

## v6.0.32 — 2026-11-05

### 功耗
- target watcher 不再每 30 秒执行 `pm list packages`：改为 `stat /data/app` 触发，另加 30 分钟兜底。
- SoterBridge 轮询 1s → 5s（注入后 `kick()` 同步注册）；SoterInjector 400ms → 1.5s，启动后 90 秒内保持 500ms。

### 与 resetprop 改机模块共存
- `service.sh` 在开机后 45 秒再执行一次 `hide_bootloader.sh`，保证 `ro.boot.*` 最后写入者是我们。
- 新增 perf HAL 读取 `ksu` 进程目录的 SELinux 规则（仅 search/read/getattr）。

### 实验功能
- WebUI 新增「强制重建目标应用密钥（实验）」开关；开启后 target.txt 内应用访问未知 KeyId 返回 `KEY_NOT_FOUND`，强制重新生成密钥。
- 后端命令 `get/set key_takeover`，诊断导出含 `[key_takeover]`。

### 构建
- 新增 `dex/stage_kt.py` 并由 `make_p16.py` 调用，修复“每次构建重置 smali_tree 导致 H03/G02/接管补丁丢失”的问题。
- 修正删除键 `getKeyEntry` 回复使用了被复用的 `v6` 寄存器的问题，改为显式 `KEY_NOT_FOUND(7)`。

## v6.0.31 — 2026-11-04

### 修复
- **G02（标签 g）**：`USAGE_COUNT_LIMIT` 用尽后写入持久墓碑，`getKeyEntry` 判定改为非消费式 `contains`，仅在同名重新生成时清除；`containsAlias=false`、下一次操作稳定返回 `KEY_NOT_FOUND`。
- **H03（标签 c）**：`doSoftwareKeyGen` 执行期间把 alias 标记为不存在，关闭“生成中被转发到真实 keystore2”的窗口；成功路径在缓存写入后立即清除标记。

### Soter
- injector 自身每分钟尝试拉起 `com.tencent.soter.soterserver`（不再只等客户端绑定）；`webui.sh soter-warm` 保留。
- 诊断导出新增 `[soter package]`、`[soter process]`。

### 可观测
- 新增 `MPL-KEY serve … leaf=<sha8>` 与 `MPL-USAGE adjust … limit/remaining`。
- `ksu_status` 的 `keybox=` 行改为实时刷新；导出新增 `[keybox live]`。

## v6.0.30 — 2026-11-04

### 修订（6.0.30 最终构建）
- `keyboxes` 增加 `probe{path,exists,size,uid}`；WebUI 区分「不存在 / 0 字节 / 不可读」三种状态。
- 已配置自定义 KeyBox 时显示真实短 SHA，并在无内置源时提示「已使用自定义 KeyBox」。
- KeyBox 标签在未安装时显示「未配置」。

### 新增
- **`module.prop` 增加 `updateJson`**，指向仓库根目录的 `update.json`；
  KernelSU / Magisk 可直接在模块列表里检查更新。
- 仓库根发布 `update.json`（version / versionCode / zipUrl / changelog）。

### 其它
- `module.prop` 的 `author` 去掉私有构建名称，改为 `TEESimulator-RS / MapleSU`。
- Soter 注入轮询 1000ms → 400ms，并增加一次 300ms 重试（进程刚起、linker 未就绪时）。

## v6.0.29 — 2026-11-04

### 新增
- **默认接管名单加入 3 个检测器**：`com.basicas.u52`（Demo 1.7）、`com.chunqiunativecheck`（春秋）、`com.maple.detect`；默认项 11 → 14。
- **target.txt 常驻刷新**：`service.sh` 以 `setsid` 启动 `webui.sh target-watch 30`，每 30 秒合并三方应用；开机早期 `pm` 未就绪自动重试。
- **KeyBox 到期检查同节拍**：`kbu_tick` 每 30 秒轻量检查，只有到期才联网。
- **缺失 KeyBox 显著提示**：WebUI 顶部横幅“内置 Keybox 密钥未配置 / TEE 模块不生效”。

### 修复
- target 刷新健壮性：`
`/前导空格解析、保留注释行、内容未变不重写（避免反复热加载）。
- 刷新临时文件移出配置目录，解决日志被 `.diag.*`/`ksu_boot.log` 刷屏。
- `ksu_status` 新增 `target_refresh=ok:N` / `fail:原因`。
- 诊断导出补全 target_refresh、auto_third_app、现场 `pm` 计数、`target.txt` 前 20 行、`soter_scope` 行数。
- 空 KeyBox 显示“未安装”并禁用切换，不再误显示 Yurikey66 后报 `keybox_source_missing`。

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
