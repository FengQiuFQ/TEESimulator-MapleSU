/* ==========================================================================
   MapleSU TEE 模拟器 · 模块 WebUI 统一后端层
   --------------------------------------------------------------------------
   同一个前端跑在两种运行形态上：
     Ultra（Pro 原生模块）：WebUI 由 module .so 的 HTTP 服务提供 → POST fetch。
     KSU/Lite（脚本模块） ：管理器把 webroot 装进 iframe 并注入 window.ksu，
                            这里用 ksu.exec 跑 `sh $MODDIR/core/webui.sh <cmd…>`。
   两条分支返回同一组 JSON / 文本，main.js 的调用点不区分当前模式。

   KSU 侧契约（core/webui.sh）：
     · 输出单行文本或单行 JSON；失败一律是 {"ok":false,"error":"…"}；
     · 写操作必须回 OK 或 {"ok":true}，否则按失败处理（不静默假装成功）；
     · 明确不支持时返回 {"ok":false,"error":"unsupported:<cmd>"}。
   Ultra 侧端点与返回类型保持不变（与改动前逐字一致）。
   ========================================================================== */

/* ------------------------------- 错误约定 ------------------------------- */

const BACKEND_CODES = {
    ksu_missing: "KSU 桥不可用（window.ksu 未注入）",
    no_moddir: "未找到模块目录",
    no_webui: "webui.sh 不存在",
    no_cli: "未找到 ScopeCli",
    timeout: "命令超时",
    exec: "命令执行失败",
    no_ack: "后端未返回确认",
    unsupported: "功能不可用",
    backend: "后端返回错误",
    empty: "后端没有输出",
    bad_json: "响应不是合法 JSON",
    http: "HTTP 请求失败",
    unknown: "未知错误",
};

/* 统一异常：err.code 给程序判断，err.reason 给用户看（中文，含具体原因）。 */
function backendError(code, detail) {
    const key = Object.prototype.hasOwnProperty.call(BACKEND_CODES, code) ? code : "unknown";
    const base = BACKEND_CODES[key];
    const reason = detail ? base + "（" + detail + "）" : base;
    const err = new Error(reason);
    err.name = "BackendError";
    err.code = key;
    err.reason = reason;
    err.detail = detail === undefined || detail === null ? "" : String(detail);
    return err;
}

function isBackendError(err) {
    return !!(err && err.name === "BackendError" && err.code);
}

/* 把任意异常收敛成带 code 的 BackendError，上层只处理一种错误形态。 */
function asBackendError(err, fallbackCode) {
    if (isBackendError(err)) return err;
    const message = err && err.message ? String(err.message) : String(err);
    if (fallbackCode) return backendError(fallbackCode, message);
    /* 业务侧直接 throw new Error("…") 的情况：原样当原因，不套“未知错误（…）” */
    const wrapped = backendError("unknown", message);
    wrapped.reason = message;
    wrapped.detail = message;
    return wrapped;
}

/* ------------------------------- KSU 执行桥 ------------------------------ */
/* 从「Soter 接管范围」既有实现原样提取：回调式 / 同步返回值 / Promise 三种
   ksu.exec 形态都兼容，回调等不到时（默认 8s）退同步写法。
   回调签名 window[cb](errno, stdout, stderr)（见 modbridge.js）。 */
const KsuExec = (() => {
    const CALLBACK_TIMEOUT_MS = 8000;
    let seq = 0;

    function available() {
        return !!(window.ksu && typeof window.ksu.exec === "function");
    }

    /* 单引号包裹 + 内部单引号转义；进入命令的所有值都先过这一层 */
    function shellQuote(value) {
        return "'" + String(value).replace(/'/g, "'\\''") + "'";
    }

    function execText(cmd, options) {
        const timeoutMs = Math.max(1000, Number(options && options.timeout) || CALLBACK_TIMEOUT_MS);
        return new Promise((resolve, reject) => {
            const name = "__mplKsuCb" + (++seq);
            let settled = false;
            let timer = 0;
            const finish = (err, stdout) => {
                if (settled) return;
                settled = true;
                if (timer) clearTimeout(timer);
                try { delete window[name]; } catch (e) { window[name] = undefined; }
                if (err) reject(asBackendError(err, "exec"));
                else resolve(String(stdout === undefined || stdout === null ? "" : stdout));
            };
            window[name] = (errno, stdout, stderr) => {
                const code = Number(errno) || 0;
                const output = String(stdout === undefined || stdout === null ? "" : stdout);
                if (code !== 0 && !output.trim()) {
                    /* 完全没输出 + 非 0：把 stderr（Java 栈/权限提示）带给用户 */
                    finish(backendError("exec", "errno=" + code +
                        (stderr ? "：" + String(stderr).slice(0, 200) : "")));
                    return;
                }
                if (code !== 0 && stderr) {
                    console.warn("[backend] ksu.exec stderr:", String(stderr).slice(0, 200));
                }
                finish(null, output);
            };
            let ret;
            try {
                ret = window.ksu.exec(cmd, "{}", name);
            } catch (e) {
                finish(backendError("exec", (e && e.message) || String(e)));
                return;
            }
            if (ret && typeof ret.then === "function") {
                /* 少数管理器把 exec 做成 Promise */
                ret.then((value) => finish(null, value), (e) => finish(e));
                return;
            }
            if (typeof ret === "string" && ret.length) {
                /* 同步实现忽略了多余参数，已经拿到 stdout */
                finish(null, ret);
                return;
            }
            timer = setTimeout(() => {
                /* 回调没来：退同步写法（会阻塞界面线程，但管理器都支持） */
                try {
                    const out = window.ksu.exec(cmd);
                    if (typeof out === "string" && out.length) {
                        finish(null, out);
                        return;
                    }
                    finish(backendError("timeout", timeoutMs + "ms 内没有回调，同步调用也没有返回"));
                } catch (e) {
                    finish(backendError("timeout", timeoutMs + "ms 内没有回调"));
                }
            }, timeoutMs);
        });
    }

    return { available, shellQuote, execText };
})();

/* ------------------------------ 模块根 $MODDIR ----------------------------- */
/* 探测策略沿用「Soter 接管范围」的既有实现（同一份脚本、同一套降级）：
   1) /data/adb/modules/teesimulator-rs（约定路径）
   2) 扫 /data/adb/modules/<name>/core/classes.dex，取含 mpl/ScopeCli 的那个
   3) 再退一步 /data/adb/modules/<name>/TEESimulatorRS_Core/classes.dex（Ultra 布局）
   本层只多看一个 <dir>/core/webui.sh —— KSU 的脚本后端就放在那里。
   结果同时给出 webui 与 dex 两个命中，供 webui.sh 与 ScopeCli 各自使用。 */
const ModuleRoot = (() => {
    /* 6.0.18: flat layout first (classes.dex at the module root), then the old
       core/ layout, then the Ultra layout. The hint list covers both ids we
       have shipped (tricky_store now, teesimulator-rs before). */
    const MODULE_ROOT_HINTS = ["/data/adb/modules/tricky_store", "/data/adb/modules/trick_store", "/data/adb/modules/teesimulator-rs"];
    const DEX_RELS = ["classes.dex", "core/classes.dex", "TEESimulatorRS_Core/classes.dex"];
    const WEBUI_REL = "core/webui.sh";
    /* dex 字符串表里是类型描述符 Lmpl/ScopeCli;，grep dex 必须用斜杠形式；
       传给 app_process 的类名用点号形式（ScopeCli.CLI_CLASS）。 */
    const CLI_DEX_TOKEN = "mpl/ScopeCli";
    let cache = null;
    let pending = null;

    /* 只用白名单化的绝对路径拼探测脚本，命令里没有任何用户输入。
     * toybox grep 对二进制默认报 "Binary file ... matches"，个别版本没有 -a，两种写法都试。 */
    function probeScript(dirs) {
        const parts = [];
        dirs.forEach((dir) => {
            if (!/^\/data\/adb\/modules\/[A-Za-z0-9._-]+$/.test(dir)) return;
            /* A disabled module keeps its files but must never be probed: it would
               answer with an older webui.sh/classes.dex. */
            parts.push("if [ ! -f " + KsuExec.shellQuote(dir + "/disable") + " ]; then");
            parts.push("if [ -f " + KsuExec.shellQuote(dir + "/" + WEBUI_REL) + " ]; then echo WEBUI " +
                KsuExec.shellQuote(dir) + " " + KsuExec.shellQuote(WEBUI_REL) + "; fi");
            parts.push("if [ -f " + KsuExec.shellQuote(dir + "/webui.sh") + " ]; then echo WEBUI " +
                KsuExec.shellQuote(dir) + " " + KsuExec.shellQuote("webui.sh") + "; fi");
            DEX_RELS.forEach((rel) => {
                const dex = dir + "/" + rel;
                const q = KsuExec.shellQuote(dex);
                const key = KsuExec.shellQuote(CLI_DEX_TOKEN);
                parts.push("if [ -f " + q + " ]; then if grep -aq " + key + " " + q +
                    " 2>/dev/null || grep -q " + key + " " + q +
                    " 2>/dev/null; then echo DEX " + q + "; fi; fi");
            });
            parts.push("fi");
        });
        /* Statements are joined with newlines: `if ...; then` followed by ";" is a
           shell syntax error ("then;" has no command), which made the whole probe
           exit 1 and every panel report errno=1. */
        return parts.join("\n");
    }

    async function probe() {
        const dirs = MODULE_ROOT_HINTS.slice();
        let listing = "";
        try {
            listing = await KsuExec.execText("ls -1 /data/adb/modules 2>/dev/null");
        } catch (e) {
            listing = "";
        }
        String(listing).split("\n").forEach((line) => {
            const name = line.trim();
            if (!/^[A-Za-z0-9._-]+$/.test(name)) return;
            const dir = "/data/adb/modules/" + name;
            if (dirs.indexOf(dir) < 0) dirs.push(dir);
        });

        let webuiDir = "";
        let webuiRel = "";
        let dex = "";
        let output = "";
        try {
            output = await KsuExec.execText(probeScript(dirs));
        } catch (err) {
            throw backendError("exec", "模块根探测失败：" + (err && err.reason ? err.reason : err && err.message));
        }
        String(output).split("\n").forEach((line) => {
            const value = line.trim();
            if (value.indexOf("WEBUI ") === 0 && !webuiDir) {
                const rest = value.slice(6).trim().split(/\s+/);
                webuiDir = rest[0] || "";
                webuiRel = rest[1] || "";
            }
            else if (value.indexOf("DEX ") === 0 && !dex) dex = value.slice(4).trim();
        });

        const dexRoot = dex ? dex.replace(/\/(?:(?:core|TEESimulatorRS_Core)\/)?classes\.dex$/, "") : "";
        return {
            webui: webuiDir ? webuiDir + "/" + (webuiRel || WEBUI_REL) : "",
            webuiRoot: webuiDir,
            webuiRel: webuiRel || WEBUI_REL,
            dex: dex,
            dexRoot: dexRoot,
            root: webuiDir || dexRoot || "",
            scanned: dirs,
        };
    }

    async function resolve() {
        if (cache) return cache;
        if (!pending) {
            pending = probe().then((result) => {
                cache = result;
                pending = null;
                return result;
            }, (err) => {
                pending = null;
                throw err;
            });
        }
        return pending;
    }

    function reset() {
        cache = null;
        pending = null;
    }

    return { resolve, reset, WEBUI_REL };
})();

/* ------------------------------ webui.sh 调用 ----------------------------- */
/* 输出解析：JSON 用“从第一个 { 到最后一个 }”的宽松切法（app_process / ksu 会往
   前后混日志），文本取最后一条非空行。所有 ok:false 都在这里变成带 code 的错误。 */
const Webui = (() => {
    const DEFAULT_TIMEOUT = 15000;

    function parseJsonLoose(raw) {
        const body = String(raw === undefined || raw === null ? "" : raw).replace(/^\uFEFF/, "");
        const begin = body.indexOf("{");
        const end = body.lastIndexOf("}");
        if (begin < 0 || end <= begin) return null;
        const slice = body.slice(begin, end + 1);
        try {
            const data = JSON.parse(slice);
            return data && typeof data === "object" ? data : null;
        } catch (e) {
            return null;
        }
    }

    function lastLine(raw) {
        const lines = String(raw === undefined || raw === null ? "" : raw)
            .replace(/^\uFEFF/, "").split(/\r?\n/);
        for (let i = lines.length - 1; i >= 0; i -= 1) {
            const line = lines[i].trim();
            if (line) return line;
        }
        return "";
    }

    /* webui.sh 的统一失败形态：{"ok":false,"error":"…"}；
       unsupported 前缀归一成“后端明确不支持”，而不是普通报错。 */
    function payloadError(data) {
        const detail = String(data.error || data.detail || data.message || "unknown");
        if (/^unsupported\b/i.test(detail)) {
            return backendError("unsupported", detail.replace(/^unsupported[:：]?\s*/i, "") || "该命令");
        }
        return backendError("backend", detail);
    }

    function checkPayload(raw, options) {
        const data = parseJsonLoose(raw);
        if (!data || data.ok !== false) return data;
        /* kbu_now 的 ok:false 是“这次更新失败”的业务结果（带 reason/status），
           不是调用失败；只有带 error 字段才算调用失败。 */
        if (options && options.allowFail && !data.error) return data;
        throw payloadError(data);
    }

    async function raw(route, extra, options) {
        const mod = await ModuleRoot.resolve();
        if (!mod.webui) {
            if (mod.dex) {
                throw backendError("no_webui", (mod.root || "/data/adb/modules/<id>") + "/" + ModuleRoot.WEBUI_REL);
            }
            throw backendError("no_moddir", "已扫描 " + mod.scanned.slice(0, 3).join("、") +
                (mod.scanned.length > 3 ? " 等" : ""));
        }
        const parts = ["sh", KsuExec.shellQuote(mod.webui)];
        (route.ksu || []).forEach((token) => parts.push(KsuExec.shellQuote(token)));
        (extra || []).forEach((token) => parts.push(KsuExec.shellQuote(token)));
        return KsuExec.execText(parts.join(" "), {
            timeout: (options && options.timeout) || route.timeout || DEFAULT_TIMEOUT,
        });
    }

    async function text(route, extra, options, label) {
        const rawText = await raw(route, extra, options);
        checkPayload(rawText);
        const line = lastLine(rawText);
        if (!line) throw backendError("empty", label);
        return line;
    }

    async function json(route, extra, options, label) {
        const rawText = await raw(route, extra, options);
        checkPayload(rawText, options);
        const data = parseJsonLoose(rawText);
        if (!data) {
            const line = lastLine(rawText);
            throw backendError("bad_json", line ? label + "：" + line.slice(0, 120) : label);
        }
        return data;
    }

    async function ack(route, extra, options, label) {
        const rawText = await raw(route, extra, options);
        const data = checkPayload(rawText, options);
        const line = lastLine(rawText);
        if (/^ok$/i.test(line)) return "OK";
        if (data && data.ok === true) return "OK";
        if (!line) throw backendError("no_ack", label);
        throw backendError("backend", line.slice(0, 120));
    }

    /* 多行文本（targets 这类列表）：原样返回，不做“取最后一行” */
    async function blob(route, extra, options) {
        const rawText = await raw(route, extra, options);
        checkPayload(rawText);
        return String(rawText === undefined || rawText === null ? "" : rawText).replace(/\r\n/g, "\n");
    }

    return { text, json, ack, blob };
})();

/* ------------------------------ Ultra HTTP 客户端 ----------------------------- */
/* 端点清单与改动前逐字一致（tools/check_webui.py 仍然比对 C++ 路由表）。 */

function url(path) {
    return new URL(path, window.location.href).toString();
}

async function post(path, body) {
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), path === "/keyboxUpdateNow" ? 120000 : 15000);
    try {
        const resp = await fetch(url(path), {
            method: "POST",
            body: body === undefined ? "" : String(body),
            cache: "no-store",
            signal: controller.signal,
        });
        const text = await resp.text();
        if (!resp.ok) throw backendError("http", "HTTP " + resp.status + " " + path);
        return text;
    } catch (err) {
        if (isBackendError(err)) throw err;
        if (err && err.name === "AbortError") throw backendError("timeout", path);
        throw backendError("http", (err && err.message) || String(err));
    } finally {
        clearTimeout(timeout);
    }
}

async function postJson(path, body) {
    const text = await post(path, body);
    try {
        return JSON.parse(text);
    } catch (e) {
        throw backendError("bad_json", path);
    }
}

/* ------------------------------ ScopeCli 兜底 ----------------------------- */
/* webui.sh 的 scope 子命令不可用时，直接用 app_process 跑 mpl.ScopeCli ——
   这就是「Soter 接管范围」改动前就在用的实现，命令与解析保持不变。 */
const ScopeCli = (() => {
    const APP_PROCESS = "/system/bin/app_process";
    const CLI_CLASS = "mpl.ScopeCli";

    /* app_process 会往输出里混日志（linker warning 等），先 trim 掉非 JSON 前后缀再 parse */
    function parseCliJson(raw) {
        const body = String(raw === undefined || raw === null ? "" : raw).replace(/^\uFEFF/, "").trim();
        const begin = body.indexOf("{");
        const end = body.lastIndexOf("}");
        if (begin < 0 || end <= begin) {
            throw backendError("bad_json", "ScopeCli 没有返回 JSON" +
                (body ? "：" + body.slice(0, 160) : "（输出为空）"));
        }
        try {
            return JSON.parse(body.slice(begin, end + 1));
        } catch (e) {
            throw backendError("bad_json", "ScopeCli 返回的 JSON 无法解析：" + body.slice(0, 160));
        }
    }

    async function run(args) {
        const mod = await ModuleRoot.resolve();
        if (!mod.dex || !mod.dexRoot) {
            throw backendError("no_cli", "未找到包含 " + CLI_CLASS + " 的 classes.dex");
        }
        const argv = [APP_PROCESS,
            "-Djava.class.path=" + KsuExec.shellQuote(mod.dex),
            KsuExec.shellQuote(mod.dexRoot),
            CLI_CLASS].concat(args.map((value) => KsuExec.shellQuote(value)));
        return parseCliJson(await KsuExec.execText(argv.join(" "), { timeout: 20000 }));
    }

    return {
        list: () => run(["list"]),
        setAll: () => run(["setall"]),
        set: (uids) => run(["set", uids.join(",")]),
    };
})();

/* -------------------------------- 后端层 -------------------------------- */
/* Backend.call(name, …args) 是唯一入口：
     name 是 webui.sh 的子命令（也是这里的逻辑命令名），Ultra 侧映射到 HTTP 端点。
     返回类型与改动前一致（get* 返回文本/JSON，set* 返回 "OK" 或抛错）。 */
const Backend = (() => {
    let capabilities = null;   /* null = 后端没声明能力清单 */

    const one = (args) => [String(args[0] === undefined ? "" : args[0])];

    const ROUTES = {
        /* ---- 版本 / 补丁信息 ---- */
        info: {
            ksu: ["info"], mode: "json",
            http: () => postJson("/getVersionInfo"),
        },
        version: {
            ksu: ["info"], mode: "json", pick: "version",
            http: () => post("/getVersion"),
        },

        /* ---- SOTER 兼容开关 ---- */
        "get soter": {
            ksu: ["get", "soter"], mode: "text",
            http: () => post("/getSoterToggle"),
        },
        "set soter": {
            ksu: ["set", "soter"], mode: "ack", arg: one,
            http: (args) => post("/setSoterToggle", String(args[0])),
        },
        /* ---- SOTER 证书链（默认关闭；打开后 daemon 异步生成身份） ---- */
        "get soter_certs": {
            ksu: ["get", "soter_certs"], mode: "json",
            http: () => postJson("/getSoterCerts"),
        },
        "set soter_certs": {
            ksu: ["set", "soter_certs"], mode: "ack", arg: one,
            http: (args) => post("/setSoterCerts", String(args[0])),
        },

        /* ---- KeyBox ---- */
        keyboxes: {
            ksu: ["keyboxes"], mode: "json",
            http: () => postJson("/listKeyboxes"),
        },
        keybox_set: {
            ksu: ["keybox_set"], mode: "ack", arg: one,
            http: (args) => post("/setKeybox", String(args[0])),
        },

        /* ---- 系统伪装 ---- */
        "get hide_bootloader": {
            ksu: ["get", "hide_bootloader"], mode: "text",
            http: () => post("/getHideBootloaderToggle"),
        },
        "set hide_bootloader": {
            ksu: ["set", "hide_bootloader"], mode: "ack", arg: one,
            http: (args) => post("/setHideBootloaderToggle", String(args[0])),
        },
        "get auto_third_app": {
            ksu: ["get", "auto_third_app"], mode: "text",
            http: () => post("/getAutoThirdAppToggle"),
        },
        "set auto_third_app": {
            ksu: ["set", "auto_third_app"], mode: "ack", arg: one,
            http: (args) => post("/setAutoThirdAppToggle", String(args[0])),
        },
        "get fix_tee": {
            ksu: ["get", "fix_tee"], mode: "text",
            http: () => post("/getFixTeeToggle"),
        },
        "set fix_tee": {
            ksu: ["set", "fix_tee"], mode: "ack", arg: one,
            http: (args) => post("/setFixTeeToggle", String(args[0])),
        },

        /* ---- 安全补丁日期 ---- */
        "get patch": {
            ksu: ["get", "patch"], mode: "json",
            http: () => postJson("/getSecurityPatch"),
        },
        "set patch": {
            ksu: ["set", "patch"], mode: "ack", arg: one,
            http: (args) => post("/setSecurityPatch", String(args[0])),
        },

        /* ---- 证书（keybox）自动更新 ---- */
        kbu_status: {
            ksu: ["kbu_status"], mode: "json",
            http: () => postJson("/keyboxUpdateStatus"),
        },
        kbu_config: {
            ksu: ["kbu_config"], mode: "ack",
            arg: (args) => [JSON.stringify(args[0] === undefined ? {} : args[0])],
            http: (args) => post("/keyboxUpdateConfig", JSON.stringify(args[0] === undefined ? {} : args[0])),
        },
        kbu_now: {
            ksu: ["kbu_now"], mode: "json", allowFail: true, timeout: 120000,
            http: () => postJson("/keyboxUpdateNow"),
        },

        /* ---- Soter 接管范围 ---- */
        "scope list": {
            /* 列表带图标（base64），几百个应用时比其它命令慢，给 30s */
            ksu: ["scope", "list"], mode: "json", timeout: 30000,
            http: () => postJson("/soterScope"),
        },
        "scope set": {
            ksu: ["scope", "set"], mode: "ack",
            arg: (args) => [(((args[0] || {}).uids) || []).join(",")],
            http: (args) => postJson("/soterScopeSet",
                JSON.stringify({ uids: ((args[0] || {}).uids) || [] })),
        },
        "scope setall": {
            ksu: ["scope", "setall"], mode: "ack", arg: () => [],
            http: () => postJson("/soterScopeSet", JSON.stringify({ all: true })),
        },

        /* ---- 只读信息 ---- */
        targets: {
            /* 列表类：保留换行，UI 才能数出条目 */
            ksu: ["targets"], mode: "blob",
            http: () => post("/getTargetTxt"),
        },
        /* ---- 诊断 ---- */
        "get debug": {
            ksu: ["get", "debug"],
            http: () => getJson("/debug"),
        },
        "set debug": {
            ksu: ["set", "debug"], mode: "ack",
            arg: (args) => [args[0] ? "1" : "0"],
            http: (args) => postJson("/debug", JSON.stringify({ enabled: !!args[0] })),
        },
        logs: {
            ksu: ["logs"], timeout: 30000,
            http: () => post("/logs"),
        },
    };

    function isKsu() {
        return KsuExec.available();
    }

    function mode() {
        return isKsu() ? "ksu" : "ultra";
    }

    function noteCapabilities(info) {
        const listOf = (value) => (Array.isArray(value) ? value.map((item) => String(item)) : null);
        if (!info || typeof info !== "object") return;
        const unsupported = listOf(info.unsupported) || listOf(info.unsupported_commands) ||
            listOf(info.unsupportedCommands);
        const supported = listOf(info.supported) || listOf(info.features) || listOf(info.capabilities);
        capabilities = {
            unsupported: unsupported ? new Set(unsupported) : null,
            supported: supported ? new Set(supported) : null,
        };
    }

    /* true / false / null（未声明）。声明不支持的命令不再发出去。 */
    function supports(name) {
        if (!isKsu() || !capabilities) return null;
        if (capabilities.unsupported && capabilities.unsupported.has(name)) return false;
        if (capabilities.supported) return capabilities.supported.has(name);
        return null;
    }

    /* 单行原因（给 toast / 日志用）：完整句子，含具体细节 */
    function reason(err) {
        return asBackendError(err, "unknown").reason;
    }

    /* 给 UI 的三态：failed（重试可能有用）/ unsupported（KSU 明确不支持）/ unavailable（后端缺失）。 */
    function describe(err) {
        const normalized = asBackendError(err, "unknown");
        const code = normalized.code;
        const detail = normalized.detail || normalized.reason || normalized.message;
        if (code === "unsupported") {
            return {
                level: "unsupported", code: code,
                text: "KSU 模式暂不支持（" + (detail ? detail + " · " : "") + "只读）",
            };
        }
        if (code === "no_moddir" || code === "no_webui" || code === "no_cli" || code === "ksu_missing") {
            return { level: "unavailable", code: code, text: "KSU 下不可用：" + normalized.reason };
        }
        return { level: "failed", code: code, text: "读取失败：" + normalized.reason };
    }

    async function call(name, ...args) {
        const route = ROUTES[name];
        if (!route) throw backendError("unsupported", name);
        if (!isKsu()) {
            try {
                return await route.http(args);
            } catch (err) {
                throw asBackendError(err, "http");
            }
        }
        if (supports(name) === false) throw backendError("unsupported", name);
        const extra = route.arg ? route.arg(args) : args.map((value) => String(value));
        const options = { timeout: route.timeout, allowFail: !!route.allowFail };
        if (route.mode === "json") {
            const data = await Webui.json(route, extra, options, name);
            if (route.pick) return data[route.pick] === undefined || data[route.pick] === null
                ? "" : String(data[route.pick]);
            return data;
        }
        if (route.mode === "ack") return Webui.ack(route, extra, options, name);
        if (route.mode === "blob") return Webui.blob(route, extra, options);
        return Webui.text(route, extra, options, name);
    }

    function reset() {
        ModuleRoot.reset();
        capabilities = null;
    }

    return { call, isKsu, mode, supports, noteCapabilities, reason, describe, reset };
})();

/* -------------------------------- 数据归一 -------------------------------- */
/* webui.sh 由 shell 拼 JSON，字段风格可能是 snake_case，这里统一成 main.js 认识
   的 camelCase 形状；Ultra 的返回字段本来就对，原样通过。
   错误一律抛：{ok:false,…} 视为失败（除非调用点明确允许业务失败）。 */

function unwrapPayload(raw) {
    let data = raw && typeof raw === "object" && !Array.isArray(raw) ? raw : {};
    for (let depth = 0; depth < 2; depth += 1) {
        if (data.data && typeof data.data === "object" && !Array.isArray(data.data)) data = data.data;
        else if (data.result && typeof data.result === "object" && !Array.isArray(data.result)) data = data.result;
        else break;
    }
    return data;
}

function pickField(data, keys, fallback) {
    for (let i = 0; i < keys.length; i += 1) {
        const value = data ? data[keys[i]] : undefined;
        if (value !== undefined && value !== null && value !== "") return value;
    }
    return fallback;
}

function asBool(value, fallback) {
    if (value === undefined || value === null || value === "") return !!fallback;
    if (typeof value === "boolean") return value;
    const text = String(value).trim().toLowerCase();
    if (["1", "true", "yes", "on", "enabled"].indexOf(text) >= 0) return true;
    if (["0", "false", "no", "off", "disabled"].indexOf(text) >= 0) return false;
    return !!fallback;
}

function asNumber(value, fallback) {
    const number = Number(value);
    return Number.isFinite(number) ? number : fallback;
}

function normalizeInfo(raw) {
    const data = unwrapPayload(raw);
    Backend.noteCapabilities(data);
    return {
        module: String(pickField(data, ["module", "id", "name"], "")),
        version: String(pickField(data, ["version", "module_version", "ver"], "")),
        author: String(pickField(data, ["author", "module_author"], "")),
        dex_short: String(pickField(data, ["dex_short", "dex", "dex_sha_short", "dexShaShort"], "")),
        keybox_short: String(pickField(data, ["keybox_short", "keybox", "keybox_sha_short", "keyboxShaShort"], "")),
        build: String(pickField(data, ["build", "build_stamp", "date"], "")),
        soter_forge: data.soter_forge,
        raw: data,
    };
}

/* SOTER 证书链：Ultra 与 KSU 返回同一形状；identity 只接受三个枚举值，
   其它（旧 webui.sh 没有该命令、字段异常）按 missing 处理，UI 会显示"身份生成中…"
   而不是假装 ready。 */
function normalizeSoterCerts(raw) {
    const data = unwrapPayload(raw);
    const identityRaw = String(pickField(data, ["identity", "state"], "missing")).toLowerCase();
    const identity = ["ready", "missing", "incomplete"].indexOf(identityRaw) >= 0
        ? identityRaw : "missing";
    return {
        enabled: asBool(pickField(data, ["enabled", "on", "switch"], false), false),
        identity: identity,
        certs: asNumber(pickField(data, ["certs", "cert_count", "certificates"], 0), 0),
        switch_path: String(pickField(data, ["switch_path", "switch"], "")),
        identity_dir: String(pickField(data, ["identity_dir", "identity_path"], "")),
    };
}

function normalizeKeyboxes(raw) {
    const data = unwrapPayload(raw);
    const items = Array.isArray(data.items) ? data.items
        : (Array.isArray(data.keyboxes) ? data.keyboxes : []);
    const current = String(pickField(data, ["current", "current_id", "keybox_current"], ""));
    const activeId = String(pickField(data, ["active_id", "active", "active_keybox"], "custom"));
    const normalizedItems = items.map((item) => ({
        id: String(pickField(item, ["id", "key", "name"], "")),
        name: String(pickField(item, ["name", "label", "title"], "")),
        sha_short: String(pickField(item, ["sha_short", "sha", "sha256_short", "sha256"], "unknown")),
        active: asBool(item && item.active, false),
        /* Whether the built-in source file exists; absent means "assume yes" so an
           older backend does not disable the selector. */
        available: !(item && item.available === false),
    })).filter((item) => item.id.length > 0);
    const activeItem = normalizedItems.filter((item) => item.active)[0] || null;
    /* A keybox is "configured" only when the backend says the file exists. Without
       this field the banner logic saw undefined and warned even with a keybox in
       place. */
    const installed = asBool(pickField(data, ["installed", "has_keybox"], false), false);
    return {
        installed: installed,
        current: current,
        current_name: String(pickField(data, ["current_name", "current_label"], current)),
        active_id: activeId,
        active_name: String(pickField(data, ["active_name", "active_label"],
            activeItem ? activeItem.name : "自定义（非内置）")),
        active_sha_short: String(pickField(data, ["active_sha_short", "active_sha"],
            activeItem ? activeItem.sha_short : "unknown")),
        items: normalizedItems,
    };
}

function normalizePatch(raw) {
    const data = unwrapPayload(raw);
    const mode = String(pickField(data, ["mode", "patch_mode"], "auto")).toLowerCase() === "fixed"
        ? "fixed" : "auto";
    const value = String(pickField(data, ["value", "patch", "fixed", "date"], ""));
    const device = String(pickField(data, ["device", "device_patch", "android_security_patch", "patch_device"], ""));
    return {
        mode: mode,
        value: value,
        device: device,
        effective: String(pickField(data, ["effective", "current", "effective_patch"],
            mode === "auto" ? device : value)),
    };
}

function normalizeKeyboxUpdate(raw) {
    const data = unwrapPayload(raw);
    const sources = Array.isArray(data.sources) ? data.sources : [];
    const normalizedSources = sources.map((source) => ({
        id: String(pickField(source, ["id", "key"], "")),
        name: String(pickField(source, ["name", "label"], "")),
        url: String(pickField(source, ["url"], "")),
        builtin: asBool(source && source.builtin, true),
    })).filter((source) => source.id.length > 0);

    const intervalHours = asNumber(pickField(data, ["intervalHours", "interval_hours", "interval"], 0), 0);
    const lastCheckEpoch = asNumber(pickField(data, ["lastCheckEpoch", "last_check_epoch", "lastCheck"], 0), 0);
    const enabled = asBool(pickField(data, ["enabled", "enable", "auto"], false), false);
    let nextEpoch = asNumber(pickField(data, ["nextEpoch", "next_epoch"], 0), 0);
    /* shell 侧可能不算下次时间：按官方语义补一次（0 小时 = 每次开机检查） */
    if (!nextEpoch && enabled && intervalHours > 0 && lastCheckEpoch > 0) {
        nextEpoch = lastCheckEpoch + intervalHours * 3600;
    }
    const source = String(pickField(data, ["source", "current_source"], ""));
    return {
        enabled: enabled,
        source: source,
        sourceName: String(pickField(data, ["sourceName", "source_name"], source)),
        customUrl: String(pickField(data, ["customUrl", "custom_url"], "")),
        effectiveUrl: String(pickField(data, ["effectiveUrl", "effective_url", "url"], "")),
        intervalHours: intervalHours,
        lastCheckEpoch: lastCheckEpoch,
        lastResult: String(pickField(data, ["lastResult", "last_result"], "never")),
        nextEpoch: nextEpoch,
        sources: normalizedSources,
    };
}

function normalizeKeyboxUpdateNow(raw) {
    const data = unwrapPayload(raw);
    const statusRaw = pickField(data, ["status"], null);
    const reason = String(pickField(data, ["reason", "error"], ""));
    const hasOk = data.ok !== undefined && data.ok !== null;
    return {
        ok: hasOk ? asBool(data.ok, false) : !reason,
        reason: reason,
        status: statusRaw && typeof statusRaw === "object" ? normalizeKeyboxUpdate(statusRaw) : null,
    };
}

function normalizeScope(raw) {
    if (Array.isArray(raw)) return { packages: raw, selected: [], defaultAll: false };
    const data = unwrapPayload(raw);
    return {
        packages: Array.isArray(data.packages) ? data.packages
            : (Array.isArray(data.apps) ? data.apps : []),
        selected: Array.isArray(data.selected) ? data.selected : [],
        defaultAll: asBool(pickField(data, ["defaultAll", "default_all", "all"], false), false),
    };
}

/* webui.sh 的 scope 子命令不可用（缺 webui.sh / 明确 unsupported / 未知子命令）时，
   回退到改动前就在用的 app_process + mpl.ScopeCli。其它错误照原样抛出。 */
function canFallBackToCli(err) {
    const normalized = asBackendError(err, "unknown");
    if (normalized.code === "unsupported" || normalized.code === "no_webui" || normalized.code === "no_cli") {
        return true;
    }
    return normalized.code === "backend" &&
        /unknown|unsupported|not\s*found|no\s*such|未实现|不支持|未知/i.test(normalized.detail || "");
}

/* -------------------------------- 接口层 -------------------------------- */
/* 方法名与返回类型保持不变，main.js 的调用点不关心当前是 Ultra 还是 KSU。 */
const RequestApi = (() => {
    /* ---- 版本 / 补丁信息 ---- */
    const getVersion = () => Backend.call("version");
    const getVersionInfo = async () => normalizeInfo(await Backend.call("info"));

    /* ---- SOTER 兼容开关 ---- */
    const getSoterToggle = () => Backend.call("get soter");
    const setSoterToggle = (on) => Backend.call("set soter", on ? "1" : "0");

    /* ---- SOTER 证书链 ---- */
    const getSoterCerts = async () => normalizeSoterCerts(await Backend.call("get soter_certs"));
    const setSoterCerts = (on) => Backend.call("set soter_certs", on ? "1" : "0");

    /* ---- KeyBox ---- */
    const listKeyboxes = async () => normalizeKeyboxes(await Backend.call("keyboxes"));
    const setKeybox = (id) => Backend.call("keybox_set", id);

    /* ---- 系统伪装 ---- */
    const getHideBootloaderToggle = () => Backend.call("get hide_bootloader");
    const setHideBootloaderToggle = (on) => Backend.call("set hide_bootloader", on ? "1" : "0");
    const getAutoThirdAppToggle = () => Backend.call("get auto_third_app");
    const setAutoThirdAppToggle = (on) => Backend.call("set auto_third_app", on ? "1" : "0");
    const getFixTeeToggle = () => Backend.call("get fix_tee");
    const setFixTeeToggle = (on) => Backend.call("set fix_tee", on ? "1" : "0");

    /* ---- 安全补丁日期 ---- */
    const getSecurityPatch = async () => normalizePatch(await Backend.call("get patch"));
    const setSecurityPatch = (value) => Backend.call("set patch", value);

    /* ---- 证书（keybox）自动更新 ---- */
    const keyboxUpdateStatus = async () => normalizeKeyboxUpdate(await Backend.call("kbu_status"));
    const keyboxUpdateConfig = (payload) => Backend.call("kbu_config", payload);
    const keyboxUpdateNow = async () => normalizeKeyboxUpdateNow(await Backend.call("kbu_now"));

    /* ---- Soter 接管范围 ---- */
    async function soterScope() {
        if (!Backend.isKsu()) return normalizeScope(await Backend.call("scope list"));
        if (Backend.supports("scope list") === false) return normalizeScope(await ScopeCli.list());
        try {
            return normalizeScope(await Backend.call("scope list"));
        } catch (err) {
            if (!canFallBackToCli(err)) throw err;
            console.warn("[scope] webui.sh scope list 不可用，回退 ScopeCli：", Backend.reason(err));
            return normalizeScope(await ScopeCli.list());
        }
    }

    async function soterScopeSet(payload) {
        const body = payload && typeof payload === "object" ? payload : {};
        const all = !!body.all;
        const uids = (Array.isArray(body.uids) ? body.uids : [])
            .map((value) => Number(value))
            .filter((value) => Number.isInteger(value) && value > 0 && value <= 2147483647);
        if (!all && !uids.length) throw new Error("没有选择任何应用");
        if (!Backend.isKsu()) return Backend.call(all ? "scope setall" : "scope set", { all: all, uids: uids });
        if (Backend.supports(all ? "scope setall" : "scope set") === false) {
            return all ? ScopeCli.setAll() : ScopeCli.set(uids);
        }
        try {
            const result = await Backend.call(all ? "scope setall" : "scope set", { all: all, uids: uids });
            return result && typeof result === "object" ? result : { ok: true, count: all ? undefined : uids.length };
        } catch (err) {
            if (!canFallBackToCli(err)) throw err;
            console.warn("[scope] webui.sh scope set 不可用，回退 ScopeCli：", Backend.reason(err));
            return all ? ScopeCli.setAll() : ScopeCli.set(uids);
        }
    }

    /* ---- 只读信息（保留端点） ---- */
    const getTargetTxt = () => Backend.call("targets");

    return {
        getVersion,
        getVersionInfo,
        getSoterToggle,
        setSoterToggle,
        getSoterCerts,
        setSoterCerts,
        listKeyboxes,
        setKeybox,
        getHideBootloaderToggle,
        setHideBootloaderToggle,
        getAutoThirdAppToggle,
        setAutoThirdAppToggle,
        getFixTeeToggle,
        setFixTeeToggle,
        getSecurityPatch,
        setSecurityPatch,
        getTargetTxt,
        keyboxUpdateStatus,
        keyboxUpdateConfig,
        keyboxUpdateNow,
        soterScope,
        soterScopeSet,
    };
})();
