/*
 * MapleSU TEE WebUI: message lookup, locale selection and formatting.
 *
 * Catalogs live in locales.js. Markup asks for text with data-i18n,
 * data-i18n-title, data-i18n-aria-label and data-i18n-placeholder; scripts call t().
 * Adding a language is one TEEI18N.define() call, see docs/TRANSLATING.md.
 *
 * Lookup falls back from the active locale to its base language, then to English,
 * then to the key itself, so a missing string can never blank a label.
 */
(function (global) {
    "use strict";

    var STORAGE_KEY = "maplesu-tee-lang";
    var FALLBACK = "en";
    var AUTO = "auto";

    var catalogs = {};
    var order = [];
    var preference = AUTO;
    var current = FALLBACK;
    var listeners = [];

    function define(tag, pack) {
        if (!catalogs[tag]) order.push(tag);
        catalogs[tag] = {
            tag: tag,
            name: pack.name || tag,
            dir: pack.dir === "rtl" ? "rtl" : "ltr",
            messages: pack.messages || {}
        };
    }

    function baseOf(tag) {
        return String(tag).split("-")[0].toLowerCase();
    }

    /* The registered locale for a requested tag: exact match first, then the same
       base language, so zh-TW and zh-Hant resolve to zh-CN until they have their own. */
    function match(tag) {
        var wanted = String(tag || "").toLowerCase();
        var i;
        if (!wanted) return null;
        for (i = 0; i < order.length; i++) {
            if (order[i].toLowerCase() === wanted) return order[i];
        }
        for (i = 0; i < order.length; i++) {
            if (baseOf(order[i]) === baseOf(wanted)) return order[i];
        }
        return null;
    }

    function systemLocale() {
        var list = global.navigator && global.navigator.languages && global.navigator.languages.length
            ? global.navigator.languages
            : [global.navigator ? global.navigator.language : ""];
        for (var i = 0; i < list.length; i++) {
            var found = match(list[i]);
            if (found) return found;
        }
        return catalogs[FALLBACK] ? FALLBACK : order[0];
    }

    function readPreference() {
        var saved = null;
        try { saved = global.localStorage.getItem(STORAGE_KEY); } catch (e) { saved = null; }
        /* Earlier versions stored the two-state capsule value. */
        if (saved === "zh") return "zh-CN";
        return saved || AUTO;
    }

    function resolve() {
        current = (preference !== AUTO && match(preference)) || systemLocale();
    }

    function chain() {
        var tags = [current];
        var i;
        for (i = 0; i < order.length; i++) {
            if (baseOf(order[i]) === baseOf(current) && tags.indexOf(order[i]) < 0) tags.push(order[i]);
        }
        if (catalogs[FALLBACK] && tags.indexOf(FALLBACK) < 0) tags.push(FALLBACK);
        return tags;
    }

    function lookup(key) {
        var tags = chain();
        for (var i = 0; i < tags.length; i++) {
            var pack = catalogs[tags[i]];
            if (pack && Object.prototype.hasOwnProperty.call(pack.messages, key)) {
                return { value: pack.messages[key], tag: tags[i] };
            }
        }
        return null;
    }

    function has(key) {
        return lookup(key) !== null;
    }

    function pluralCategory(tag, count) {
        try {
            return new Intl.PluralRules(tag).select(Number(count));
        } catch (e) {
            return Number(count) === 1 ? "one" : "other";
        }
    }

    function number(value) {
        var n = Number(value);
        if (!isFinite(n)) return String(value);
        try {
            return new Intl.NumberFormat(current).format(n);
        } catch (e) {
            return String(n);
        }
    }

    /* Local date and time for an epoch in seconds; empty when there is no date. */
    function date(seconds) {
        var n = Number(seconds);
        if (!n || n <= 0) return "";
        var when = new Date(n * 1000);
        try {
            return new Intl.DateTimeFormat(current, {
                year: "numeric", month: "2-digit", day: "2-digit",
                hour: "2-digit", minute: "2-digit"
            }).format(when);
        } catch (e) {
            var pad = function (v) { return (v < 10 ? "0" : "") + v; };
            return when.getFullYear() + "-" + pad(when.getMonth() + 1) + "-" + pad(when.getDate()) +
                " " + pad(when.getHours()) + ":" + pad(when.getMinutes());
        }
    }

    function interpolate(text, params) {
        if (!params) return text;
        return text.replace(/\{([A-Za-z0-9_]+)\}/g, function (whole, name) {
            if (!Object.prototype.hasOwnProperty.call(params, name)) return whole;
            var value = params[name];
            if (value === undefined || value === null) return "";
            return typeof value === "number" ? number(value) : String(value);
        });
    }

    function t(key, params) {
        var hit = lookup(key);
        if (!hit) return key;
        var value = hit.value;
        if (value && typeof value === "object") {
            var count = params && params.count !== undefined ? params.count : 0;
            value = value[pluralCategory(hit.tag, count)];
            if (value === undefined) value = hit.value.other;
        }
        return interpolate(String(value), params);
    }

    var ATTRIBUTES = [
        ["data-i18n-title", "title"],
        ["data-i18n-aria-label", "aria-label"],
        ["data-i18n-placeholder", "placeholder"]
    ];

    function applyTree(root) {
        var scope = root || global.document;
        var nodes = scope.querySelectorAll("[data-i18n]");
        var i;
        for (i = 0; i < nodes.length; i++) {
            nodes[i].textContent = t(nodes[i].getAttribute("data-i18n"));
        }
        ATTRIBUTES.forEach(function (pair) {
            var marked = scope.querySelectorAll("[" + pair[0] + "]");
            for (var j = 0; j < marked.length; j++) {
                marked[j].setAttribute(pair[1], t(marked[j].getAttribute(pair[0])));
            }
        });
    }

    function applyDocument() {
        var doc = global.document;
        var pack = catalogs[current];
        doc.documentElement.setAttribute("lang", current);
        doc.documentElement.setAttribute("dir", pack ? pack.dir : "ltr");
        doc.title = t("app.docTitle");
        applyTree(doc);
    }

    function start() {
        var saved = readPreference();
        /* A language that is no longer shipped goes back to following the system. */
        preference = saved === AUTO ? AUTO : (match(saved) || AUTO);
        resolve();
        applyDocument();
    }

    function setLocale(next) {
        preference = next === AUTO ? AUTO : (match(next) || AUTO);
        try {
            if (preference === AUTO) global.localStorage.removeItem(STORAGE_KEY);
            else global.localStorage.setItem(STORAGE_KEY, preference);
        } catch (e) { /* The choice then lasts for this page only. */ }
        resolve();
        applyDocument();
        listeners.slice().forEach(function (fn) { fn(current); });
    }

    function onChange(fn) {
        listeners.push(fn);
    }

    global.TEEI18N = {
        AUTO: AUTO,
        define: define,
        start: start,
        t: t,
        has: has,
        number: number,
        date: date,
        applyTree: applyTree,
        setLocale: setLocale,
        onChange: onChange,
        locale: function () { return current; },
        preference: function () { return preference; },
        available: function () {
            return order.map(function (tag) { return { tag: tag, name: catalogs[tag].name }; });
        },
        catalogs: function () { return catalogs; }
    };
})(window);
