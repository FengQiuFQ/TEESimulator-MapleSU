# 架构

## 组件

| 组件 | 位置 | 作用 |
|---|---|---|
| 注入库 | `native/`（`libTEESimulator.so`） | 在 keystore2 / saterserver 内 hook binder，事务重定向与回填 |
| 守护进程 | `dex/`（`org.matrix.TEESimulator.App`） | 配置、证书生成、Soter forge、socket 服务端 |
| 原生证书生成 | `libcertgen.so`（Rust） | 按 keybox 签发证书链，支持 attestation 扩展 |
| 模块脚本 | `module/service.sh`、`core/webui.sh` | 开机启动、状态记录、WebUI 后端 |
| WebUI | `module/webroot/` | 双后端（HTTP / `ksu.exec`） |

## keystore 路径（Android 12+）

```
App → keystore2 → [hook: ioctl BINDER_WRITE_READ]
                       │
                       ├─ 命中 IKeystoreService 事务 → daemon 处理
                       │      （生成/读取密钥、证书链、参数修补）
                       │
                       └─ 未命中 / 异常 / 超时 → 转发真实 HAL
```

关键点：

- 拦截发生在 **keystore2 进程内**，不替换系统服务；
- daemon 只处理它明确认识的调用，其余原样放行；
- 任何异常都不会让 keystore2 卡死（最坏是"没模拟成功"）。

## Soter 路径

```
App → saterserver → [hook]
                       │
                       ├─ 命中 13 类事务 → 走控制通道 → daemon/SoterForge 生成应答
                       │
                       └─ 未注册 / 超时 2s / reply=-1 → 转发真实服务
```

### 控制通道（proto=1）

| 字段 | 大小 | 说明 |
|---|---|---|
| magic | 4 | `MST1` |
| version | 2 | 1 |
| type | 2 | HELLO/REGISTER/TX/REPLY/PING/STATUS |
| req_id | 4 | 请求关联 |
| body_len | 4 | ≤ 4 MiB |

- 传输：抽象 unix socket `@teesim_soter`；文件兜底
  `/data/user/0/com.tencent.soter.soterserver/files/.teesim_soter.sock`；
- 鉴权：`SO_PEERCRED` 必须 uid 0；
- 方向：库在目标进程内 **listen**，daemon 作为客户端 **connect**；
- 回退：`/data/adb/tricky_store/soter_socket_off` 存在时整体禁用。

### Soter 语义

| 项 | 实现 |
|---|---|
| ASK | 每 uid 一把，持久化 |
| AuthKey | 每 (uid, alias) 一把 |
| 计数器 | 每次生成递增，写入 blob |
| 会话 | one-shot + TTL(30s) + 绑定 (uid, alias, challenge) |
| 错误码 | -200 / -202 / -203 / -204 / -1000 |
| 签名 | RSASSA-PSS，SHA-256 / MGF1-SHA-256 / salt 20 / emBits 2047 |
| blob | `LE32(len) || JSON || signature` |

## 证书生成

1. 读 `/data/adb/tricky_store/keybox.xml`；
2. 优先用 `libcertgen`（Rust）生成；不可用时回退 BouncyCastle；
3. 证书链顺序：leaf → keybox 中间证书 → 根；
4. 证书链开关关闭时，Soter blob 不携带 `certs`。

## 可靠性设计

| 机制 | 解决什么 |
|---|---|
| 注入有界探测（30s） | 开机时注入未完成被误报为失败 |
| 单实例守卫 | 两个 TEE 模块同时注入导致 keystore 卡死 |
| 旧 id 自动迁移 | 升级后新旧目录并存 |
| 开机后二次刷新 target | 首次 `boot-apply` 早于 PMS 就绪 |
| keybox 原子更新 + 失败重试 | 下载失败把证书锁死一个周期 |
| `ksu_status` | 每一步有记录，排障不靠猜 |
