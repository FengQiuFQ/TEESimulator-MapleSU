# FAQ

## 安装后没有任何效果

按顺序检查：

```bash
su -c 'cat /data/adb/tricky_store/ksu_status'
su -c 'pid=$(pidof keystore2); grep -c libTEESimulator /proc/$pid/maps'
```

| 结果 | 处理 |
|---|---|
| `/data/adb/modules/tricky_store` 不存在或 `module.prop` 缺失 | 模块没装上；检查是否被元模块拦截，或目录是否为悬空符号链接 |
| `core=incomplete` | 模块文件缺失，重新安装 |
| `daemon=missing` | 看 `logcat -s TEESimulator`，多为 SELinux 或脚本错误 |
| `inject=fail` 且 maps=0 | 等 30 秒；仍失败看 `dmesg | grep avc` |
| `conflict=...` | 有其它 TEE 模块，卸载其一 |

## 检测器说"设备 TEE 不可信"

1. 确认 keybox 已放入且合法；
2. 确认目标包在 `target.txt`（或 WebUI 的接管范围内）；
3. `logcat -s TEESimulator | grep TX_ID` 应能看到事务；
4. 证书链开关关闭时，Soter 相关项可能仍显示"无证书链"，属预期。

## 为什么 Soter 有时不生效

- `soter_scope.conf` 是白名单时，新应用必须加入名单；
- saterserver 是按需启动的，没有应用调用时进程不存在，属正常；
- 检查 `soter_route`：`socket` 表示走兜底通道，`binder` 表示走注册通道。

## 证书链开启后检测反而变差

开启后 blob 里的 uid/counter 是生成时固化的值，部分检测会认为"与请求 uid 不一致"。
默认关闭就是为此；需要更"完整"的链时再打开。

## 能过 Play Integrity 吗

本项目解决的是**硬件密钥证明与 Soter 的接口一致性**，不涉及 Play Integrity 的设备认证
（那依赖 Google 服务端与设备指纹）。请不要把两者混为一谈。

## 支持哪些设备

arm64-v8a、Android 10+、KernelSU / Magisk / APatch。
32 位设备不支持（安装脚本会明确 abort）。

## 更新会覆盖我的配置吗

不会。keybox、`target.txt`、`security_patch.txt` 只在缺失时创建，升级不覆盖。

## 如何彻底回滚

卸载模块 → 重启。系统会回到没有任何拦截的状态；keystore 不会残留 hook。

## 检测项

开发机上回归过的公开项（Duck Detector / 春秋 / Demo 1.7）：

- TEE 证书链：正常出链；
- 启动状态：`verified boot` / `device locked` 与配置一致；
- Soter：ASK/AuthKey 可生成、会话可用、签名可验。

这些都是**公开检测器的公开项**，不代表任何商业风控的结论，也不承诺持续通过。

## How do I capture logs for an issue report?

There is no separate "debug build": the release module already logs the events that
matter (transaction IDs, Soter routing, injection results) at info level. What differs
is **who can read the log**, because Android does not let ordinary apps read `logcat`.

Three ways, in order of convenience:

1. **From a PC (recommended)** — no root needed on the phone, just USB debugging:

   ```bash
   adb logcat -s TEESimulator:V MPL-SOTER:V > teesim.log
   ```

2. **On the device as root** — collect a trimmed bundle:

   ```bash
   su -c 'sh /data/local/tmp/collect_logs.sh'
   # -> /sdcard/Download/teesim-diag-<timestamp>.txt
   ```

   The script ships in `tools/collect_logs.sh`; it gathers the module version,
   `ksu_status`, the Soter route, injection counts, the last log lines and AVC denials,
   and redacts serial-like values.

3. **Without root or a PC** — the WebUI and `/data/adb/tricky_store/ksu_status` still
   show whether the daemon started, whether injection succeeded and which Soter channel
   is in use. A screenshot of those panels is often enough.

Before posting: remove the keybox path/contents if you edited it, device serials, account
IDs and anything else personal. `collect_logs.sh` already redacts the common cases, but
review the file yourself.
