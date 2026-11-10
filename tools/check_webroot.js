#!/usr/bin/env node
/*
 * Static checks for module/webroot. Needs only node. Fails when:
 *   - a catalog differs from English in keys, placeholders or plural forms;
 *   - a key used in HTML or JS is missing, or a catalog key is used nowhere;
 *   - a backend error code, webui.sh failure token or compat.sh item has no text;
 *   - user-facing Chinese is hardcoded outside locales.js;
 *   - the file lists in the packaging tools disagree with the files on disk;
 *   - a theme's text falls below WCAG AA contrast, or its accent sits too close to a
 *     status colour.
 * Pass --report to also print the contrast table.
 */
"use strict";

const fs = require("fs");
const path = require("path");
const vm = require("vm");

const ROOT = path.resolve(__dirname, "..");
const WEB = "module/webroot";
const read = (rel) => fs.readFileSync(path.join(ROOT, rel), "utf8");
const problems = [];
const fail = (message) => problems.push(message);

/* ------------------------------- catalogs -------------------------------- */

const sandbox = { console: console };
sandbox.window = sandbox;
vm.createContext(sandbox);
vm.runInContext(read(WEB + "/i18n.js"), sandbox);
vm.runInContext(read(WEB + "/locales.js"), sandbox);
const catalogs = sandbox.TEEI18N.catalogs();
const REFERENCE = "en";
const reference = catalogs[REFERENCE].messages;
const referenceKeys = Object.keys(reference);
const PLURAL_FORMS = ["zero", "one", "two", "few", "many", "other"];

function forms(value) {
    return value && typeof value === "object" ? Object.keys(value).map((k) => value[k]) : [value];
}

function placeholders(value) {
    const found = new Set();
    forms(value).forEach((text) => {
        String(text).replace(/\{([A-Za-z0-9_]+)\}/g, (whole, name) => { found.add(name); return whole; });
    });
    return Array.from(found).sort().join(",");
}

Object.keys(catalogs).forEach((tag) => {
    const messages = catalogs[tag].messages;
    Object.keys(messages).forEach((key) => {
        const value = messages[key];
        if (!(key in reference)) fail(tag + ": key not in " + REFERENCE + ": " + key);
        if (value && typeof value === "object") {
            if (typeof value.other !== "string") fail(tag + ": plural without \"other\": " + key);
            Object.keys(value).forEach((form) => {
                if (PLURAL_FORMS.indexOf(form) < 0) fail(tag + ": unknown plural form " + form + ": " + key);
            });
        }
        forms(value).forEach((text) => {
            if (typeof text !== "string" || !text.length) fail(tag + ": empty text: " + key);
        });
        if (key in reference && placeholders(value) !== placeholders(reference[key])) {
            fail(tag + ": placeholders differ from " + REFERENCE + " in " + key +
                " (" + placeholders(value) + " vs " + placeholders(reference[key]) + ")");
        }
    });
    referenceKeys.forEach((key) => {
        if (!(key in messages)) fail(tag + ": missing key: " + key);
    });
});

/* ------------------------------- key usage ------------------------------- */

const html = read(WEB + "/index.html");
const mainJs = read(WEB + "/main.js");
const i18nJs = read(WEB + "/i18n.js");
const requestJs = read(WEB + "/request.js");
const namespaces = new Set(referenceKeys.map((key) => key.split(".")[0]));
const used = new Set();

html.replace(/data-i18n(?:-[a-z-]+)?="([^"]+)"/g, (whole, key) => { used.add(key); return whole; });
[mainJs, i18nJs].forEach((source) => {
    source.replace(/["']([a-z]+(?:\.[A-Za-z0-9_]+)+)["']/g, (whole, key) => {
        if (namespaces.has(key.split(".")[0])) used.add(key);
        return whole;
    });
});
used.forEach((key) => {
    if (!(key in reference)) fail("used but not in the catalogs: " + key);
});

/* Built at runtime from a code or token, so they are checked against their sources. */
const DYNAMIC = ["err.", "compat.item.", "backend.token.", "kbu.reason."];

const codes = /const BACKEND_CODES = \[([^\]]+)\]/.exec(requestJs);
if (!codes) fail("request.js: BACKEND_CODES not found");
else {
    codes[1].replace(/"([a-z_]+)"/g, (whole, code) => {
        if (!(("err." + code) in reference)) fail("no text for backend error code: " + code);
        return whole;
    });
}

const compatSh = read("module/core/compat.sh");
const compatKeys = new Set();
compatSh.replace(/\badd\s+(?:ok|info|warn|error|"\$_lvl")\s+([a-z_0-9]+)/g, (whole, key) => { compatKeys.add(key); return whole; });
if (compatKeys.size < 20) fail("compat.sh: found only " + compatKeys.size + " item keys, the pattern is out of date");
compatKeys.forEach((key) => {
    if (!(("compat.item." + key) in reference)) fail("no text for compat.sh item: " + key);
});

const webuiSh = read("module/core/webui.sh");
const tokens = new Set();
[
    /err_json\s+['"]([a-z_]+)/g,
    /(?:CFG_ERR|V_ERR|KBU_RUN_RESULT)=['"]?([a-z_]+)/g,
    /_reason=['"]?([a-z_]+)/g,
    /_reason=['"]?invalid_keybox:([a-z_]+)/g,
].forEach((pattern) => {
    webuiSh.replace(pattern, (whole, token) => { tokens.add(token); return whole; });
});
tokens.delete("unsupported");
tokens.delete("ok");
if (tokens.size < 15) fail("webui.sh: found only " + tokens.size + " failure tokens, the patterns are out of date");
tokens.forEach((token) => {
    if (!(("backend.token." + token) in reference) && !(("kbu.reason." + token) in reference)) {
        fail("no text for webui.sh failure token: " + token);
    }
});

referenceKeys.forEach((key) => {
    if (used.has(key) || DYNAMIC.some((prefix) => key.indexOf(prefix) === 0)) return;
    fail("in the catalogs but used nowhere: " + key);
});

/* ------------------------------ hardcoded text --------------------------- */

const CJK = /[㐀-鿿＀-￯　-〿]/;

function stripComments(source) {
    return source.replace(/\/\*[\s\S]*?\*\//g, "").replace(/^\s*\/\/.*$/gm, "").replace(/<!--[\s\S]*?-->/g, "");
}

[["index.html", html], ["main.js", mainJs], ["request.js", requestJs], ["i18n.js", i18nJs]].forEach((entry) => {
    stripComments(entry[1]).split("\n").forEach((line) => {
        if (CJK.test(line)) fail(entry[0] + ": hardcoded text: " + line.trim().slice(0, 80));
    });
});

/* ------------------------------- file lists ------------------------------ */

const onDisk = fs.readdirSync(path.join(ROOT, WEB)).filter((name) => !name.startsWith(".")).sort();
const packager = read("tools/package_teesimulator_bundle.py");
const listMatch = /WEBROOT_FILES = \[([^\]]+)\]/.exec(packager);
const packaged = listMatch ? (listMatch[1].match(/"([^"]+)"/g) || []).map((s) => s.slice(1, -1)).sort() : [];
if (packaged.join() !== onDisk.join()) {
    fail("WEBROOT_FILES differs from " + WEB + ": " + packaged.join(" ") + " vs " + onDisk.join(" "));
}
const installed = Array.from(new Set(packager.match(/webroot\/[A-Za-z0-9_.-]+\.(?:html|js|css)\b/g) || []))
    .map((s) => s.slice("webroot/".length))
    .sort();
if (installed.join() !== onDisk.join()) {
    fail("the installer's file list differs from " + WEB + ": " + installed.join(" ") + " vs " + onDisk.join(" "));
}
const verifier = /ULTRA_WEBROOT_EXPECTED = \[([\s\S]*?)\]/.exec(read("tools/verify_packages.py"));
const expected = verifier ? (verifier[1].match(/webroot\/[A-Za-z0-9_.-]+/g) || []).map((s) => s.slice(8)).sort() : [];
if (expected.join() !== onDisk.join()) {
    fail("ULTRA_WEBROOT_EXPECTED differs from " + WEB + ": " + expected.join(" ") + " vs " + onDisk.join(" "));
}

/* ----------------------------- theme contrast ---------------------------- */

function rgb(hex) {
    const body = hex.replace("#", "");
    return [0, 2, 4].map((i) => parseInt(body.slice(i, i + 2), 16));
}

function luminance(hex) {
    const c = rgb(hex).map((v) => {
        const s = v / 255;
        return s <= 0.03928 ? s / 12.92 : Math.pow((s + 0.055) / 1.055, 2.4);
    });
    return 0.2126 * c[0] + 0.7152 * c[1] + 0.0722 * c[2];
}

function contrast(a, b) {
    const hi = Math.max(luminance(a), luminance(b));
    const lo = Math.min(luminance(a), luminance(b));
    return (hi + 0.05) / (lo + 0.05);
}

function lab(hex) {
    const c = rgb(hex).map((v) => {
        const s = v / 255;
        return s <= 0.04045 ? s / 12.92 : Math.pow((s + 0.055) / 1.055, 2.4);
    });
    const xyz = [
        (0.4124 * c[0] + 0.3576 * c[1] + 0.1805 * c[2]) / 0.95047,
        0.2126 * c[0] + 0.7152 * c[1] + 0.0722 * c[2],
        (0.0193 * c[0] + 0.1192 * c[1] + 0.9505 * c[2]) / 1.08883,
    ].map((v) => (v > 0.008856 ? Math.cbrt(v) : 7.787 * v + 16 / 116));
    return [116 * xyz[1] - 16, 500 * (xyz[0] - xyz[1]), 200 * (xyz[1] - xyz[2])];
}

function deltaE(a, b) {
    const x = lab(a);
    const y = lab(b);
    return Math.sqrt(Math.pow(x[0] - y[0], 2) + Math.pow(x[1] - y[1], 2) + Math.pow(x[2] - y[2], 2));
}

const TEXT_PAIRS = [
    ["text", "bg"], ["text", "card"], ["text", "card-2"],
    ["text-2", "bg"], ["text-2", "card"], ["text-2", "card-2"],
    ["muted", "bg"], ["muted", "card"], ["muted", "card-2"],
    ["accent", "card"], ["accent", "card-2"], ["accent", "accent-bg"], ["accent-fg", "accent"],
    ["ok", "card"], ["ok", "ok-bg"], ["warn", "card"], ["warn", "warn-bg"],
    ["err", "bg"], ["err", "card"], ["err", "err-bg"], ["bg", "text"],
];
const AA = 4.5;
const MIN_DELTA_E = 20;
const report = [];

const css = read(WEB + "/style.css");
const blocks = [];
css.replace(/\[data-theme="(\w+)"\](\[data-scheme="dark"\])?\s*\{([^}]*)\}/g, (whole, theme, dark, body) => {
    const tokensInBlock = {};
    body.replace(/--([a-z0-9-]+):\s*(#[0-9a-fA-F]{6})/g, (w, name, value) => { tokensInBlock[name] = value; return w; });
    blocks.push({ name: theme + (dark ? " dark" : " light"), tokens: tokensInBlock });
    return whole;
});
if (blocks.length < 8) fail("style.css: expected at least 8 theme blocks, found " + blocks.length);

blocks.forEach((block) => {
    let lowest = Infinity;
    let lowestPair = "";
    TEXT_PAIRS.forEach((pair) => {
        const fg = block.tokens[pair[0]];
        const bg = block.tokens[pair[1]];
        if (!fg || !bg) {
            fail(block.name + ": missing token " + (fg ? pair[1] : pair[0]));
            return;
        }
        const ratio = contrast(fg, bg);
        if (ratio < lowest) {
            lowest = ratio;
            lowestPair = pair[0] + " on " + pair[1];
        }
        if (ratio < AA) fail(block.name + ": " + pair[0] + " on " + pair[1] + " is " + ratio.toFixed(2) + ":1, below " + AA);
    });
    let closest = Infinity;
    let closestName = "";
    ["ok", "warn", "err"].forEach((status) => {
        if (!block.tokens[status] || !block.tokens.accent) return;
        const distance = deltaE(block.tokens.accent, block.tokens[status]);
        if (distance < closest) {
            closest = distance;
            closestName = status;
        }
        if (distance < MIN_DELTA_E) {
            fail(block.name + ": accent is too close to " + status + " (delta E " + distance.toFixed(1) + ")");
        }
    });
    report.push(block.name.padEnd(14) + " lowest " + lowest.toFixed(2).padStart(5) + ":1 (" + lowestPair + ")" +
        "  accent vs " + closestName + " dE " + closest.toFixed(1));
});

/* --------------------------------- result -------------------------------- */

if (process.argv.indexOf("--report") >= 0) console.log(report.join("\n"));
console.log("catalogs: " + Object.keys(catalogs).join(", ") + " · " + referenceKeys.length + " keys · " +
    used.size + " used directly · " + compatKeys.size + " compat items · " + tokens.size + " backend tokens · " +
    blocks.length + " theme blocks");
if (problems.length) {
    problems.forEach((message) => console.error("FAIL: " + message));
    console.error(problems.length + " problem(s)");
    process.exit(1);
}
console.log("webroot checks passed");
