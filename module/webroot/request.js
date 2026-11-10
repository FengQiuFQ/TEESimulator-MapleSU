/* ==========================================================================
   MapleSU TEE WebUI: backend layer. No user-facing text lives here: errors carry a
   code and a technical detail, and main.js turns them into words through i18n.

   The same front end runs on two backends:
     Ultra (native module): the module .so serves the WebUI over HTTP, so POST fetch.
     KSU/Lite (script module): the manager loads webroot and injects window.ksu, so
       this runs `sh $MODDIR/core/webui.sh <cmd...>` through ksu.exec.
   Both return the same JSON or text, and main.js does not care which one it talks to.

   core/webui.sh contract:
     - prints one line of text or JSON; every failure is {"ok":false,"error":"..."};
     - a write must answer OK or {"ok":true}, anything else counts as a failure;
     - an unsupported command answers {"ok":false,"error":"unsupported:<cmd>"}.
   ========================================================================== */

/* ------------------------------ error shape ------------------------------- */

const BACKEND_CODES = ["ksu_missing", "no_moddir", "no_webui", "no_cli", "timeout", "exec", "no_ack",
    "unsupported", "backend", "empty", "bad_json", "http", "no_selection", "unknown"];

function backendError(code, detail) {
    const key = BACKEND_CODES.indexOf(code) >= 0 ? code : "unknown";
    const text = detail === undefined || detail === null ? "" : String(detail);
    const err = new Error(text ? key + ": " + text : key);
    err.name = "BackendError";
    err.code = key;
    err.detail = text;
    return err;
}

function isBackendError(err) {
    return !!(err && err.name === "BackendError" && err.code);
}

function asBackendError(err, fallbackCode) {
    if (isBackendError(err)) return err;
    const message = err && err.message ? String(err.message) : String(err);
    return backendError(fallbackCode || "unknown", message);
}

/* ------------------------------ ksu.exec bridge --------------------------- */
/* Handles the callback, synchronous and Promise forms of ksu.exec. The callback is
   window[name](errno, stdout, stderr). */
const KsuExec = (() => {
    const CALLBACK_TIMEOUT_MS = 8000;
    let seq = 0;
    /* null until the bridge shows which form works: true once any callback arrived,
       false once only the synchronous form answered. */
    let callbacks = null;

    function available() {
        return !!(window.ksu && typeof window.ksu.exec === "function");
    }

    /* Every value that enters a command goes through this. */
    function shellQuote(value) {
        return "'" + String(value).replace(/'/g, "'\\''") + "'";
    }

    function execText(cmd, options) {
        const timeoutMs = Math.max(1000, Number(options && options.timeout) || CALLBACK_TIMEOUT_MS);
        return new Promise((resolve, reject) => {
            if (callbacks === false) {
                try {
                    const out = window.ksu.exec(cmd);
                    resolve(String(out === undefined || out === null ? "" : out));
                } catch (e) {
                    reject(backendError("exec", (e && e.message) || String(e)));
                }
                return;
            }
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
                callbacks = true;
                const code = Number(errno) || 0;
                const output = String(stdout === undefined || stdout === null ? "" : stdout);
                if (code !== 0 && !output.trim()) {
                    /* Nothing on stdout and a failure status: stderr is all there is. */
                    finish(backendError("exec", "errno=" + code +
                        (stderr ? ": " + String(stderr).slice(0, 200) : "")));
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
                ret.then((value) => finish(null, value), (e) => finish(e));
                return;
            }
            if (typeof ret === "string" && ret.length) {
                /* A synchronous bridge that ignored the extra arguments. */
                finish(null, ret);
                return;
            }
            timer = setTimeout(() => {
                /* On a bridge known to call back, this command is just slow. Running it
                   again would repeat a write and freeze the page for as long as it takes,
                   so it stays a timeout. */
                if (callbacks === true) {
                    finish(backendError("timeout", timeoutMs + " ms"));
                    return;
                }
                /* No callback has ever arrived. The first command is always the read-only
                   module probe, so it is safe to retry it synchronously and find out. */
                try {
                    const out = window.ksu.exec(cmd);
                    if (typeof out === "string" && out.length) {
                        callbacks = false;
                        finish(null, out);
                        return;
                    }
                    finish(backendError("timeout", timeoutMs + " ms, no callback, empty synchronous result"));
                } catch (e) {
                    finish(backendError("timeout", timeoutMs + " ms, no callback"));
                }
            }, timeoutMs);
        });
    }

    return { available, shellQuote, execText };
})();

/* ------------------------------ module root ------------------------------- */
/* Finds the module directory: the known ids first, then every module whose dex holds
   mpl/ScopeCli. Reports both the webui.sh hit and the dex hit, for webui.sh and
   ScopeCli respectively. */
const ModuleRoot = (() => {
    /* 6.0.18: flat layout first (classes.dex at the module root), then the old
       core/ layout, then the Ultra layout. The hint list covers both ids we
       have shipped (tricky_store now, teesimulator-rs before). */
    const MODULE_ROOT_HINTS = ["/data/adb/modules/tricky_store", "/data/adb/modules/trick_store", "/data/adb/modules/teesimulator-rs"];
    const DEX_RELS = ["classes.dex", "core/classes.dex", "TEESimulatorRS_Core/classes.dex"];
    const WEBUI_REL = "core/webui.sh";
    /* The dex string table holds the type descriptor Lmpl/ScopeCli;, so grep needs the
       slash form; app_process takes the dotted class name (ScopeCli.CLI_CLASS). */
    const CLI_DEX_TOKEN = "mpl/ScopeCli";
    let cache = null;
    let pending = null;

    /* Built only from whitelisted absolute paths, with no user input. toybox grep says
       "Binary file ... matches" by default and some versions lack -a, so both are tried. */
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

        const webuis = [];
        let dex = "";
        let output = "";
        try {
            output = await KsuExec.execText(probeScript(dirs));
        } catch (err) {
            throw backendError("exec", "module probe: " + (err && err.message));
        }
        String(output).split("\n").forEach((line) => {
            const value = line.trim();
            if (value.indexOf("WEBUI ") === 0) {
                const rest = value.slice(6).trim().split(/\s+/);
                if (rest[0]) webuis.push({ dir: rest[0], rel: rest[1] || WEBUI_REL });
            } else if (value.indexOf("DEX ") === 0 && !dex) {
                dex = value.slice(4).trim();
            }
        });

        const dexRoot = dex ? dex.replace(/\/(?:(?:core|TEESimulatorRS_Core)\/)?classes\.dex$/, "") : "";
        /* Every installed module is scanned, and another one may ship a webui.sh of its
           own. Prefer the one beside our dex, or this page would drive that script. */
        const chosen = webuis.filter((item) => item.dir === dexRoot)[0] || webuis[0] || { dir: "", rel: "" };
        return {
            webui: chosen.dir ? chosen.dir + "/" + (chosen.rel || WEBUI_REL) : "",
            webuiRoot: chosen.dir,
            webuiRel: chosen.rel || WEBUI_REL,
            dex: dex,
            dexRoot: dexRoot,
            root: chosen.dir || dexRoot || "",
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

/* ---------------------------- webui.sh calls ------------------------------ */
/* app_process and ksu can mix log lines into the output, so JSON is cut from the first
   { to the last }, and text is the last non-empty line. Every ok:false becomes an
   error with a code here. */
function parseJsonLoose(raw) {
    const body = String(raw === undefined || raw === null ? "" : raw).replace(/^\uFEFF/, "");
    const begin = body.indexOf("{");
    const end = body.lastIndexOf("}");
    if (begin < 0 || end <= begin) return null;
    try {
        const data = JSON.parse(body.slice(begin, end + 1));
        return data && typeof data === "object" ? data : null;
    } catch (e) {
        return null;
    }
}

const Webui = (() => {
    const DEFAULT_TIMEOUT = 15000;

    function lastLine(raw) {
        const lines = String(raw === undefined || raw === null ? "" : raw)
            .replace(/^\uFEFF/, "").split(/\r?\n/);
        for (let i = lines.length - 1; i >= 0; i -= 1) {
            const line = lines[i].trim();
            if (line) return line;
        }
        return "";
    }

    /* An "unsupported" answer means the backend knows it cannot do this, which is
       different from a failure. */
    function payloadError(data) {
        const detail = String(data.error || data.detail || data.message || "unknown");
        if (/^unsupported\b/i.test(detail)) {
            return backendError("unsupported", detail.replace(/^unsupported:?\s*/i, ""));
        }
        return backendError("backend", detail);
    }

    function checkPayload(raw, options) {
        const data = parseJsonLoose(raw);
        if (!data || data.ok !== false) return data;
        /* kbu_now answers ok:false with reason and status when an update failed, which
           is a result rather than a failed call; only an error field is a failed call. */
        if (options && options.allowFail && !data.error) return data;
        throw payloadError(data);
    }

    async function raw(route, extra, options) {
        const mod = await ModuleRoot.resolve();
        if (!mod.webui) {
            if (mod.dex) {
                throw backendError("no_webui", (mod.root || "/data/adb/modules/<id>") + "/" + ModuleRoot.WEBUI_REL);
            }
            throw backendError("no_moddir", mod.scanned.slice(0, 3).join(", ") +
                (mod.scanned.length > 3 ? ", ..." : ""));
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
            throw backendError("bad_json", line ? label + ": " + line.slice(0, 120) : label);
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

    /* Multi-line text, returned as it is rather than as its last line. */
    async function blob(route, extra, options) {
        const rawText = await raw(route, extra, options);
        checkPayload(rawText);
        return String(rawText === undefined || rawText === null ? "" : rawText).replace(/\r\n/g, "\n");
    }

    return { text, json, ack, blob };
})();

/* -------------------------------- Ultra HTTP ------------------------------ */

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

/* ---------------------------- ScopeCli fallback --------------------------- */
/* When webui.sh has no scope command, run mpl.ScopeCli through app_process directly. */
const ScopeCli = (() => {
    const APP_PROCESS = "/system/bin/app_process";
    const CLI_CLASS = "mpl.ScopeCli";

    /* app_process mixes log lines (linker warnings and so on) into its output. */
    function parseCliJson(raw) {
        const body = String(raw === undefined || raw === null ? "" : raw).replace(/^\uFEFF/, "").trim();
        const begin = body.indexOf("{");
        const end = body.lastIndexOf("}");
        if (begin < 0 || end <= begin) {
            throw backendError("bad_json", "ScopeCli: " + (body ? body.slice(0, 160) : "no output"));
        }
        try {
            return JSON.parse(body.slice(begin, end + 1));
        } catch (e) {
            throw backendError("bad_json", "ScopeCli: " + body.slice(0, 160));
        }
    }

    async function run(args) {
        const mod = await ModuleRoot.resolve();
        if (!mod.dex || !mod.dexRoot) {
            throw backendError("no_cli", "no classes.dex with " + CLI_CLASS);
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

/* ------------------------------ backend table ----------------------------- */
/* Backend.call(name, ...args) is the only entry point. name is the webui.sh command,
   mapped to an HTTP endpoint on Ultra. get* returns text or JSON; set* returns "OK"
   or throws. */
const Backend = (() => {
    let capabilities = null;   /* null: the backend declared no capability list */

    const one = (args) => [String(args[0] === undefined ? "" : args[0])];
    const flagOn = (value) => value === true || value === 1 || value === "1" || value === "on" || value === "true";

    const ROUTES = {
        info: {
            ksu: ["info"], mode: "json",
            http: () => postJson("/getVersionInfo"),
        },
        version: {
            ksu: ["info"], mode: "json", pick: "version",
            http: () => post("/getVersion"),
        },

        "get soter": {
            ksu: ["get", "soter"], mode: "text",
            http: () => post("/getSoterToggle"),
        },
        "set soter": {
            ksu: ["set", "soter"], mode: "ack", arg: one,
            http: (args) => post("/setSoterToggle", String(args[0])),
        },
        /* Off by default; once on, the daemon generates the identity in the background. */
        "get soter_certs": {
            ksu: ["get", "soter_certs"], mode: "json",
            http: () => postJson("/getSoterCerts"),
        },
        "set soter_certs": {
            ksu: ["set", "soter_certs"], mode: "ack", arg: one,
            http: (args) => post("/setSoterCerts", String(args[0])),
        },

        keyboxes: {
            ksu: ["keyboxes"], mode: "json",
            http: () => postJson("/listKeyboxes"),
        },
        keybox_set: {
            ksu: ["keybox_set"], mode: "ack", arg: one,
            http: (args) => post("/setKeybox", String(args[0])),
        },

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

        "get key_takeover": {
            ksu: ["get", "key_takeover"], mode: "text",
            http: () => post("/getKeyTakeover"),
        },
        "set key_takeover": {
            ksu: ["set", "key_takeover"], mode: "ack", arg: one,
            http: (args) => post("/setKeyTakeover", String(args[0])),
        },

        "get patch": {
            ksu: ["get", "patch"], mode: "json",
            http: () => postJson("/getSecurityPatch"),
        },
        "set patch": {
            ksu: ["set", "patch"], mode: "ack", arg: one,
            http: (args) => post("/setSecurityPatch", String(args[0])),
        },

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

        "scope list": {
            /* Carries base64 icons, so hundreds of apps take longer than other commands. */
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

        targets: {
            /* webui.sh answers {"count":N}, Ultra answers the file itself: see getTargetCount. */
            ksu: ["targets"], mode: "blob",
            http: () => post("/getTargetTxt"),
        },
        "get debug": {
            ksu: ["get", "debug"], mode: "json",
            http: () => postJson("/debug"),
        },
        "set debug": {
            ksu: ["set", "debug"], mode: "ack",
            arg: (args) => [flagOn(args[0]) ? "1" : "0"],
            http: (args) => postJson("/debug", JSON.stringify({ enabled: flagOn(args[0]) })),
        },
        logs: {
            /* The bundle includes a full compatibility check. */
            ksu: ["logs"], mode: "json", timeout: 45000,
            http: () => postJson("/logs"),
        },

        /* Only the KSU script backend has this. */
        compat: {
            ksu: ["compat"], mode: "json", timeout: 20000,
            http: () => { throw backendError("unsupported", "compat"); },
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

    /* true, false, or null when undeclared. A command declared unsupported is not sent. */
    function supports(name) {
        if (!isKsu() || !capabilities) return null;
        if (capabilities.unsupported && capabilities.unsupported.has(name)) return false;
        if (capabilities.supported) return capabilities.supported.has(name);
        return null;
    }

    /* unsupported: the backend says it cannot; unavailable: the backend itself is
       missing; failed: anything else, where trying again can help. */
    function describe(err) {
        const normalized = asBackendError(err, "unknown");
        const code = normalized.code;
        let level = "failed";
        if (code === "unsupported") level = "unsupported";
        else if (["no_moddir", "no_webui", "no_cli", "ksu_missing"].indexOf(code) >= 0) level = "unavailable";
        return { level: level, code: code, detail: normalized.detail };
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

    return { call, isKsu, mode, supports, noteCapabilities, describe, reset };
})();

/* ------------------------------ normalisers ------------------------------- */
/* webui.sh builds its JSON in shell and field styles vary, so everything is brought to
   the shape main.js expects here. */

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

/* identity takes three values; anything else counts as missing, so the UI says the
   identity is still being generated rather than pretending it is ready. */
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
    const probe = (data.probe && typeof data.probe === "object") ? data.probe : {};
    return {
        installed: installed,
        probe: {
            path: String(probe.path || ""),
            exists: asBool(probe.exists, false),
            size: Number(probe.size || 0),
            uid: String(probe.uid === undefined ? "" : probe.uid),
        },
        current: current,
        current_name: String(pickField(data, ["current_name", "current_label"], current)),
        active_id: activeId,
        active_name: String(pickField(data, ["active_name", "active_label"],
            activeItem ? activeItem.name : "")),
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
    /* A backend may not compute the next run; 0 hours means on every boot. */
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

/* Without a usable scope command in webui.sh, fall back to app_process + mpl.ScopeCli.
   Any other error is passed on. */
function canFallBackToCli(err) {
    const normalized = asBackendError(err, "unknown");
    if (normalized.code === "unsupported" || normalized.code === "no_webui" || normalized.code === "no_cli") {
        return true;
    }
    return normalized.code === "backend" &&
        /unknown|unsupported|not\s*found|no\s*such/i.test(normalized.detail || "");
}

function normalizeCompat(raw) {
    const data = unwrapPayload(raw);
    const levels = ["ok", "info", "warn", "error"];
    const items = (Array.isArray(data.items) ? data.items : []).map((item) => ({
        level: levels.indexOf(String(item && item.level)) >= 0 ? String(item.level) : "info",
        key: String((item && item.key) || ""),
        a: String((item && item.a) || ""),
        b: String((item && item.b) || ""),
        c: String((item && item.c) || ""),
    })).filter((item) => item.key.length > 0);
    return { time: asNumber(data.time, 0), items: items };
}

/* --------------------------------- API ------------------------------------ */
/* main.js calls these and does not care whether it is on Ultra or KSU. */
const RequestApi = (() => {
    const getVersion = () => Backend.call("version");
    const getVersionInfo = async () => normalizeInfo(await Backend.call("info"));

    const getSoterToggle = () => Backend.call("get soter");
    const setSoterToggle = (on) => Backend.call("set soter", on ? "1" : "0");

    const getSoterCerts = async () => normalizeSoterCerts(await Backend.call("get soter_certs"));
    const setSoterCerts = (on) => Backend.call("set soter_certs", on ? "1" : "0");

    const listKeyboxes = async () => normalizeKeyboxes(await Backend.call("keyboxes"));
    const setKeybox = (id) => Backend.call("keybox_set", id);

    const getHideBootloaderToggle = () => Backend.call("get hide_bootloader");
    const setHideBootloaderToggle = (on) => Backend.call("set hide_bootloader", on ? "1" : "0");
    const getAutoThirdAppToggle = () => Backend.call("get auto_third_app");
    const setAutoThirdAppToggle = (on) => Backend.call("set auto_third_app", on ? "1" : "0");
    const getFixTeeToggle = () => Backend.call("get fix_tee");
    const setFixTeeToggle = (on) => Backend.call("set fix_tee", on ? "1" : "0");

    const getSecurityPatch = async () => normalizePatch(await Backend.call("get patch"));
    const setSecurityPatch = (value) => Backend.call("set patch", value);

    const keyboxUpdateStatus = async () => normalizeKeyboxUpdate(await Backend.call("kbu_status"));
    const keyboxUpdateConfig = (payload) => Backend.call("kbu_config", payload);
    const keyboxUpdateNow = async () => normalizeKeyboxUpdateNow(await Backend.call("kbu_now"));

    async function soterScope() {
        if (!Backend.isKsu()) return normalizeScope(await Backend.call("scope list"));
        if (Backend.supports("scope list") === false) return normalizeScope(await ScopeCli.list());
        try {
            return normalizeScope(await Backend.call("scope list"));
        } catch (err) {
            if (!canFallBackToCli(err)) throw err;
            console.warn("[scope] falling back to ScopeCli:", err && err.message);
            return normalizeScope(await ScopeCli.list());
        }
    }

    async function soterScopeSet(payload) {
        const body = payload && typeof payload === "object" ? payload : {};
        const all = !!body.all;
        const uids = (Array.isArray(body.uids) ? body.uids : [])
            .map((value) => Number(value))
            .filter((value) => Number.isInteger(value) && value > 0 && value <= 2147483647);
        if (!all && !uids.length) throw backendError("no_selection");
        if (!Backend.isKsu()) return Backend.call(all ? "scope setall" : "scope set", { all: all, uids: uids });
        if (Backend.supports(all ? "scope setall" : "scope set") === false) {
            return all ? ScopeCli.setAll() : ScopeCli.set(uids);
        }
        try {
            const result = await Backend.call(all ? "scope setall" : "scope set", { all: all, uids: uids });
            return result && typeof result === "object" ? result : { ok: true, count: all ? undefined : uids.length };
        } catch (err) {
            if (!canFallBackToCli(err)) throw err;
            console.warn("[scope] falling back to ScopeCli:", err && err.message);
            return all ? ScopeCli.setAll() : ScopeCli.set(uids);
        }
    }

    const getTargetTxt = () => Backend.call("targets");

    async function getTargetCount() {
        const raw = String(await getTargetTxt());
        const data = parseJsonLoose(raw);
        if (data && typeof data.count === "number") return data.count;
        return raw.split("\n").filter((line) => {
            const body = line.trim();
            return body.length > 0 && body.charAt(0) !== "#";
        }).length;
    }

    const getDebug = async () => asBool(unwrapPayload(await Backend.call("get debug")).enabled, false);
    const setDebug = (on) => Backend.call("set debug", !!on);
    const exportLogs = async () => {
        const data = unwrapPayload(await Backend.call("logs"));
        return { path: String(data.path || ""), bytes: asNumber(data.bytes, 0) };
    };

    const getKeyTakeover = async () => asBool(String(await Backend.call("get key_takeover")).trim(), false);
    const setKeyTakeover = (on) => Backend.call("set key_takeover", on ? "1" : "0");

    const compatCheck = async () => normalizeCompat(await Backend.call("compat"));

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
        getTargetCount,
        getDebug,
        setDebug,
        exportLogs,
        getKeyTakeover,
        setKeyTakeover,
        compatCheck,
        keyboxUpdateStatus,
        keyboxUpdateConfig,
        keyboxUpdateNow,
        soterScope,
        soterScopeSet,
    };
})();
