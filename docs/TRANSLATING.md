# 翻译

WebUI 和 README 都可以翻译，两者各有一个校验脚本，CI 里都会运行。

## WebUI

文案都在 `module/webroot/locales.js`，界面只通过 key 取文案。

### 增加一种语言

1. 复制 `locales.js` 里的 `TEEI18N.define("en", { ... })` 整段，粘贴到文件末尾；
2. 改语言标签和名称，例如 `TEEI18N.define("ja", { name: "日本語", messages: { ... } })`，
   从右到左的语言再加一行 `dir: "rtl"`；
3. 翻译所有值，key 不要改；
4. 运行 `node tools/check_webroot.js`。

语言菜单会自动列出新语言，不需要改打包清单。用户的系统语言和某个语言包的基础语言相同时（如
`zh-TW` 对应 `zh-CN`）会自动匹配。缺的 key 依次回退到同基础语言、英语、key 本身，但校验脚本要求语言包
和英语完全一致，所以缺 key 过不了 CI。

### 写法

- `{name}` 是运行时替换的值，翻译时必须保留，位置可以调整；
- 复数写成 `{ one: "{count} item", other: "{count} items" }`，`other` 必填。其他语言按
  [CLDR 复数类别](https://cldr.unicode.org/index/cldr-spec/plural-rules) 写，中文、日语只要 `other`；
- 路径、属性名、`KEY_NOT_FOUND` 这类技术词不要翻译。

### 新增界面文案

HTML 用 `data-i18n`、`data-i18n-title`、`data-i18n-aria-label`、`data-i18n-placeholder`，脚本用 `t()`。
所有语言包都要加同一个 key。`compat.sh` 新增检查项、`webui.sh` 新增错误 token 时，也要在语言包里加
`compat.item.<key>` 或 `backend.token.<token>`，校验脚本会对照脚本查漏。

## README

`README.md` 是英文原文，以它为准。译文放在仓库根目录，命名为 `README.<语言标签>.md`，如 `README.ja.md`。

### 增加一种语言

1. 复制 `README.md`，改名为 `README.<语言标签>.md`；
2. 在每个 README 的语言切换行末尾加上新文件，名称用该语言的自称，如 `[日本語](README.ja.md)`。
   所有文件里的顺序一致，当前文件那一项加粗、不加链接；
3. 翻译正文。代码块、行内代码、命令、路径、链接目标和项目名不要改；页内锚点（`#...`）改成译文标题的锚点。
   `docs/` 只有中文，链接保持原样；
4. 运行 `python3 tools/check_readme.py`。新文件会报缺少来源注释，先把其他问题改完；
5. 运行 `python3 tools/check_readme.py --stamp README.<语言标签>.md`，在文件开头写入来源注释，再检查一次。
   `README.md` 的切换行也改了，所以其他译文会显示过期；它们只差切换行，对它们也运行一次 `--stamp`。

### README.md 改动后

译文第一行的 `<!-- translated from README.md sha256:... -->` 记录了翻译时 `README.md` 的哈希。
哈希对不上，检查会指出哪些译文过期：默认只警告，CI 不会失败；加 `--strict` 才失败。

1. 看上次 stamp 之后 `README.md` 改了什么（以日语为例）：

   ```bash
   git diff "$(git log -1 --format=%H -G'translated from README' -- README.ja.md)" -- README.md
   ```

2. 把改动同步到译文，运行检查；
3. 对这个文件运行 `--stamp`。没同步完不要 stamp，否则过期提示就没了。

### 检查什么

CI 每次都会运行 `tools/check_readme.py`，以下情况会失败：

- 语言切换行没有按 `README.md` 的顺序列出全部 README，名称和 `README.md` 里的不一致，或当前文件那一项不是加粗的纯文本；
- 标题数量或级别和 `README.md` 不同；
- 代码块的数量、语言或内容不同，代码必须一字不差；
- 表格的数量、行数或每行的单元格数不同；
- 相对链接和图片的目标集合和 `README.md` 不同，或目标在仓库里不存在。`../../releases` 这类指向仓库外 GitHub 页面的链接只比较，不检查；
- 页内锚点找不到对应的标题，或指向的不是 `README.md` 同一位置的锚点对应的标题；
- 译文缺少来源注释。
