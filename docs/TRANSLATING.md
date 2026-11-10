# 翻译 WebUI

文案都在 `module/webroot/locales.js`，界面只通过 key 取文案。

## 增加一种语言

1. 复制 `locales.js` 里的 `TEEI18N.define("en", { ... })` 整段，粘贴到文件末尾；
2. 改语言标签和名称，例如 `TEEI18N.define("ja", { name: "日本語", messages: { ... } })`，
   从右到左的语言再加一行 `dir: "rtl"`；
3. 翻译所有值，key 不要改；
4. 运行 `node tools/check_webroot.js`。

语言菜单会自动列出新语言，不需要改打包清单。用户的系统语言和某个语言包的基础语言相同时（如
`zh-TW` 对应 `zh-CN`）会自动匹配。缺的 key 依次回退到同基础语言、英语、key 本身，但校验脚本要求语言包
和英语完全一致，所以缺 key 过不了 CI。

## 写法

- `{name}` 是运行时替换的值，翻译时必须保留，位置可以调整；
- 复数写成 `{ one: "{count} item", other: "{count} items" }`，`other` 必填。其他语言按
  [CLDR 复数类别](https://cldr.unicode.org/index/cldr-spec/plural-rules) 写，中文、日语只要 `other`；
- 路径、属性名、`KEY_NOT_FOUND` 这类技术词不要翻译。

## 新增界面文案

HTML 用 `data-i18n`、`data-i18n-title`、`data-i18n-aria-label`、`data-i18n-placeholder`，脚本用 `t()`。
所有语言包都要加同一个 key。`compat.sh` 新增检查项、`webui.sh` 新增错误 token 时，也要在语言包里加
`compat.item.<key>` 或 `backend.token.<token>`，校验脚本会对照脚本查漏。
