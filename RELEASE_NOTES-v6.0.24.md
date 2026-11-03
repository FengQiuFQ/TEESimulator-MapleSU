# TEESimulator-MapleSU v6.0.24

> 本版本聚焦 **Soter 与可靠性**：签名方案对齐真机、控制通道摆脱 AMS、开机链路不再"装上了却没生效"。

## 亮点

### 1. Soter 签名改为 RSA-PSS
- 算法：RSASSA-PSS / SHA-256 / MGF1-SHA-256 / **salt 20** / emBits 2047
- 与真机 TA 对齐（原先 PKCS#1 v1.5 只能骗过"只解析不验签"的检查）
- 已在设备上自检，并用外部实现（Python cryptography）验签通过

### 2. 不依赖 AMS 的 Soter 控制通道
- saterserver 进程内监听抽象 unix socket `@teesim_soter`（proto=1）
- 命令：`HELLO / REGISTER / TX / REPLY / PING / STATUS`
- `SO_PEERCRED` 强制 uid 0；2 秒超时或未注册一律**转发真实服务**
- 纯 KernelSU / Android 17 上不再出现 `bindService` 被 AMS 拒绝

### 3. 开机链路可靠性
- 注入探测改为 30 秒有界轮询，不再误报 `inject=fail`
- 开机完成后二次刷新 `target.txt`，新装应用自动进入名单
- 旧模块 id `teesimulator-rs` 自动迁移，避免双守护进程互殴

### 4. KeyBox 自动更新
- 默认开启，失败**不替换**现有证书
- 失败后 5 分钟重试（不再等满一个更新周期）

### 5. WebUI 修复
- 模块探测支持扁平布局、跳过已禁用模块
- 修复 `then;` 语法错误导致的整页 `errno=1`
- ScopeCli 不再因厂商图标接口段错误

## 升级说明

- 模块 id 为 `tricky_store`，可直接覆盖上游安装；
- 从 `teesimulator-rs` 升级会自动禁用旧目录；
- **本包不含 keybox**，请自备；
- 证书链默认关闭；需要时在 WebUI 打开。

## 校验

```bash
sha256sum TEESimulator-RS_MapleSU_6.0.24_ksu.zip
# 见附件 SHA256SUMS.txt
```

```bash
su -c 'cat /data/adb/tricky_store/ksu_status'
# core=ok / daemon=<pid> / inject=ok / soter_route=socket
```

## 已知限制

- 无法凭空获得真实 TEE 的厂商证明链；证书链来自你提供的 keybox；
- 证书链开启时，blob 中的 uid/counter 取生成时固化值；
- 需要 SELinux 允许 ptrace 注入（模块自带 sepolicy.rule）；
- 对商业风控不构成通过承诺。

## 致谢

- 上游：[Enginex0/TEESimulator-RS](https://github.com/Enginex0/TEESimulator-RS)、[JingMatrix/TEESimulator](https://github.com/JingMatrix/TEESimulator)
- 特别感谢 [知秋（947409161）](https://github.com/947409161) 在 Soter 语义与检测项回归上的帮助
