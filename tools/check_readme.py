#!/usr/bin/env python3
"""Check that the README translations keep the structure of README.md.

README.md is the English source. Translations sit next to it as README.<lang>.md, and
each one names the README.md it was translated from in a comment:

    <!-- translated from README.md sha256:<hex digest of README.md> -->

The check fails (exit 1) when a file
  - has no language switcher line, or the line does not list every README file in the
    order README.md uses, under the same names, with its own entry bold and not a link;
  - has a different number of headings, or a heading of another level;
  - has fenced code blocks that differ in number, language or content;
  - has tables that differ in rows or in cells per row;
  - links to a different set of relative targets (links and images), or to a target
    that does not exist in the repository;
  - has an in-page anchor (#...) that matches no heading in the file, or that leads to
    another heading than the anchor in the same place in README.md;
  - is a translation without the source comment.

A translation whose comment names an older README.md is stale. That is a warning and
the exit code stays 0; --strict makes it a failure. Once a translation is up to date,
--stamp README.xx.md writes the digest of the current README.md into its comment.

Anchors follow GitHub's heading slugs. Targets that leave the repository, such as
../../releases, are GitHub pages: they are compared but not looked up on disk. With
GITHUB_ACTIONS=true, problems are printed as ::error and ::warning annotations.

    python3 tools/check_readme.py [--strict]
    python3 tools/check_readme.py --stamp README.ja.md

Standard library only.
"""

import argparse
import hashlib
import os
import posixpath
import re
import sys
import unicodedata
from urllib.parse import unquote

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SOURCE = "README.md"

README_NAME = re.compile(r"^README(?:\.[A-Za-z0-9][A-Za-z0-9_-]*)?\.md$")
STAMP = re.compile(r"<!--[ \t]*translated from README\.md sha256:([0-9a-f]{64})[ \t]*-->")
STAMP_ANY = re.compile(r"<!--[ \t]*translated from README\.md\b.*?-->")
STAMP_FORMAT = "<!-- translated from README.md sha256:%s -->"

FENCE = re.compile(r"^([ \t]*)(`{3,}|~{3,})(.*)$")
ATX = re.compile(r"^ {0,3}(#{1,6})(?:[ \t]+(.*?))?[ \t]*$")
SETEXT = re.compile(r"^ {0,3}(=+|-+)[ \t]*$")
THEMATIC = re.compile(r"^ {0,3}([-*_])(?:[ \t]*\1){2,}[ \t]*$")
LIST_ITEM = re.compile(r"^[ \t]*(?:[-*+]|\d{1,9}[.)])(?:[ \t]|$)")
DELIMITER = re.compile(r"^[ \t]*\|?[ \t]*:?-+:?[ \t]*(?:\|[ \t]*:?-+:?[ \t]*)*\|?[ \t]*$")
HTML_COMMENT = re.compile(r"^ {0,3}<!--")
HTML_BLOCK = re.compile(
    r"^ {0,3}</?(?:address|article|aside|base|basefont|blockquote|body|caption|center|"
    r"col|colgroup|dd|details|dialog|dir|div|dl|dt|fieldset|figcaption|figure|footer|"
    r"form|frame|frameset|h[1-6]|head|header|hr|html|iframe|legend|li|link|main|menu|"
    r"menuitem|nav|noframes|ol|optgroup|option|p|param|search|section|summary|table|"
    r"tbody|td|tfoot|th|thead|title|tr|track|ul)(?:[ \t]|/?>|$)", re.I)

CODE_SPAN = re.compile(r"(?<!`)(`+)(?!`)(.+?)(?<!`)\1(?!`)")
INLINE_COMMENT = re.compile(r"<!--.*?-->")
LINK = re.compile(r"\]\([ \t]*<?((?:[^()\s<>]|\([^()\s]*\))*)>?"
                  r"(?:[ \t]+(?:\"[^\"]*\"|'[^']*'))?[ \t]*\)")
REFERENCE = re.compile(r"^ {0,3}\[[^\]]+\]:[ \t]*<?([^\s>]+)>?")
HTML_ATTR = re.compile(r"\b(?:href|src)[ \t]*=[ \t]*(?:\"([^\"]*)\"|'([^']*)')", re.I)
SCHEME = re.compile(r"^[A-Za-z][A-Za-z0-9+.-]*:")

SWITCH_TARGET = re.compile(r"\]\((README(?:\.[A-Za-z0-9][A-Za-z0-9_-]*)?\.md)\)")
SWITCH_LINK = re.compile(r"^\[([^\]]+)\]\((README(?:\.[A-Za-z0-9][A-Za-z0-9_-]*)?\.md)\)$")
SWITCH_BOLD = re.compile(r"^\*\*([^*]+)\*\*$")
SWITCH_SEPARATOR = " · "

# github-slugger, which GitHub uses for heading anchors, keeps letters, marks, decimal
# digits, letter numbers and connector punctuation, turns each space into '-', keeps '-'
# and drops everything else.
SLUG_KEEP = {"Lu", "Ll", "Lt", "Lm", "Lo", "Mn", "Mc", "Me", "Nd", "Nl", "Pc"}


# ---------------------------------------------------------------------------
# reading a README
# ---------------------------------------------------------------------------

def slugify(text):
    out = []
    for ch in text.lower():
        if ch == " ":
            out.append("-")
        elif ch == "-" or unicodedata.category(ch) in SLUG_KEEP:
            out.append(ch)
    return "".join(out)


class Slugger:
    """Repeated slugs get -1, -2, ... like github-slugger."""

    def __init__(self):
        self.seen = {}

    def slug(self, text):
        base = slugify(text)
        result = base
        while result in self.seen:
            self.seen[base] += 1
            result = "%s-%d" % (base, self.seen[base])
        self.seen[result] = 0
        return result


def heading_text(raw):
    """The text GitHub builds a heading's anchor from."""
    text = re.sub(r"[ \t]+#+$", "", raw.strip())
    if re.fullmatch(r"#+", text):
        return ""
    text = CODE_SPAN.sub(lambda m: m.group(2).strip(), text)
    text = re.sub(r"!\[[^\]]*\]\([^)]*\)", "", text)
    text = re.sub(r"\[([^\]]*)\]\([^)]*\)", r"\1", text)
    text = re.sub(r"<[^>]+>", "", text)
    text = re.sub(r"(?<!\w)_+|_+(?!\w)", "", text)
    return text.strip()


def cell_count(line):
    row = line.strip()
    if row.startswith("|"):
        row = row[1:]
    if row.endswith("|") and not row.endswith("\\|"):
        row = row[:-1]
    return len(re.split(r"(?<!\\)\|", row))


def dedent(line, width):
    k = 0
    while k < width and k < len(line) and line[k] == " ":
        k += 1
    return line[k:]


def block_start(line):
    return bool(ATX.match(line) or FENCE.match(line) or HTML_COMMENT.match(line)
                or HTML_BLOCK.match(line) or THEMATIC.match(line)
                or line.lstrip().startswith(">"))


class Doc:
    """The parts of a README the check compares, each with its line number."""

    def __init__(self, name, text):
        self.name = name
        self.headings = []   # (line, level, text, slug)
        self.codes = []      # (line, info string, content lines)
        self.tables = []     # (line, [(line, cells)]), header row first
        self.targets = []    # (line, target): relative links and images
        self.anchors = []    # (line, fragment): in-page links
        self.switchers = []  # (line, text): lines that link README files
        self.stamps = STAMP.findall(text)
        self.slugger = Slugger()
        self.parse(text.replace("\r\n", "\n").replace("\r", "\n").split("\n"))

    def parse(self, lines):
        fence = None      # the open code fence
        html = None       # "comment" or "block" inside an HTML block
        context = None    # "para", "container" or "table": the block being read
        para = []         # (line, text) of the paragraph being read
        i = 0
        while i < len(lines):
            line = lines[i]
            number = i + 1
            i += 1

            if fence is not None:
                m = FENCE.match(line)
                if (m and m.group(2)[0] == fence["char"] and len(m.group(2)) >= fence["size"]
                        and not m.group(3).strip()):
                    self.codes.append((fence["line"], fence["info"], fence["body"]))
                    fence = None
                else:
                    fence["body"].append(dedent(line, fence["indent"]))
                continue

            if html is not None:
                self.html_targets(line, number)
                if (html == "comment" and "-->" in line) or (html == "block" and not line.strip()):
                    html = None
                continue

            if not line.strip():
                context = None
                continue

            if context == "table":
                if not block_start(line):
                    self.tables[-1][1].append((number, cell_count(line)))
                    self.inline(line, number)
                    continue
                context = None

            m = FENCE.match(line)
            if m and not (m.group(2)[0] == "`" and "`" in m.group(3)):
                fence = {"line": number, "indent": len(m.group(1)), "char": m.group(2)[0],
                         "size": len(m.group(2)), "info": m.group(3).strip(), "body": []}
                context = None
                continue

            if HTML_COMMENT.match(line) or HTML_BLOCK.match(line):
                self.html_targets(line, number)
                if HTML_COMMENT.match(line):
                    if "-->" not in line.split("<!--", 1)[1]:
                        html = "comment"
                else:
                    html = "block"
                context = None
                continue

            m = ATX.match(line)
            if m:
                self.heading(number, len(m.group(1)), m.group(2) or "")
                self.inline(line, number)
                context = None
                continue

            m = SETEXT.match(line)
            if m and context == "para":
                # A paragraph directly above === or --- is a heading on GitHub.
                level = 1 if m.group(1)[0] == "=" else 2
                self.heading(para[0][0], level, " ".join(text.strip() for _, text in para))
                context = None
                continue

            if THEMATIC.match(line):
                context = None
                continue

            if ("|" in line and i < len(lines) and "|" in lines[i] and DELIMITER.match(lines[i])
                    and cell_count(line) == cell_count(lines[i])):
                self.tables.append((number, [(number, cell_count(line))]))
                self.inline(line, number)
                i += 1
                context = "table"
                continue

            if LIST_ITEM.match(line) or line.lstrip().startswith(">"):
                context = "container"
            elif line[:1] in (" ", "\t"):
                if context is None:
                    context = "container"
                elif context == "para":
                    para.append((number, line))
            elif context is None:
                context = "para"
                para = [(number, line)]
            elif context == "para":
                para.append((number, line))
            self.inline(line, number)

        if fence is not None:
            self.codes.append((fence["line"], fence["info"], fence["body"]))

    def heading(self, number, level, raw):
        text = heading_text(raw)
        self.headings.append((number, level, text, self.slugger.slug(text)))

    def inline(self, line, number):
        clean = INLINE_COMMENT.sub("", CODE_SPAN.sub("", line))
        if SWITCH_TARGET.search(clean):
            self.switchers.append((number, clean.strip()))
            return
        targets = [m.group(1) for m in LINK.finditer(clean)]
        m = REFERENCE.match(clean)
        if m:
            targets.append(m.group(1))
        targets.extend(a or b for a, b in HTML_ATTR.findall(clean))
        for target in targets:
            self.target(number, target)

    def html_targets(self, line, number):
        for a, b in HTML_ATTR.findall(INLINE_COMMENT.sub("", line)):
            self.target(number, a or b)

    def target(self, number, target):
        target = target.strip()
        if not target or target.startswith("//") or SCHEME.match(target):
            return
        if target.startswith("#"):
            self.anchors.append((number, unquote(target[1:])))
        else:
            self.targets.append((number, target))


# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

def discover(root):
    names = sorted(name for name in os.listdir(root)
                   if README_NAME.match(name) and os.path.isfile(os.path.join(root, name)))
    if SOURCE in names:
        names.remove(SOURCE)
        names.insert(0, SOURCE)
    return names


def digest_of(path):
    with open(path, "rb") as handle:
        return hashlib.sha256(handle.read()).hexdigest()


def normalize(target):
    rest, hash_mark, fragment = target.partition("#")
    path, question, query = rest.partition("?")
    path = unquote(path)
    if path:
        path = posixpath.normpath(path)
    return path + question + query + hash_mark + fragment


def target_exists(root, target):
    """True or False, or None for a target outside the repository (a GitHub page)."""
    path = unquote(target.partition("#")[0].partition("?")[0])
    if not path:
        return True
    rel = posixpath.normpath(path.lstrip("/"))
    if rel == ".." or rel.startswith("../"):
        return None
    current = root
    for part in rel.split("/"):
        if part in ("", "."):
            continue
        try:
            entries = os.listdir(current)
        except OSError:
            return False
        if part not in entries:   # exact case, as on GitHub
            return False
        current = os.path.join(current, part)
    return True


def parse_switcher(text):
    """(entries, None) with entries (target, name), target None for a bold entry;
    (None, item) when an item is neither **Name** nor [Name](README.xx.md)."""
    entries = []
    for item in text.split("·"):
        item = item.strip()
        m = SWITCH_BOLD.match(item)
        if m:
            entries.append((None, m.group(1).strip()))
            continue
        m = SWITCH_LINK.match(item)
        if m:
            entries.append((m.group(2), m.group(1).strip()))
            continue
        return None, item
    return entries, None


def render_switcher(name, order, labels):
    parts = []
    for entry in order:
        if entry == name:
            parts.append("**%s**" % labels[entry])
        else:
            parts.append("[%s](%s)" % (labels[entry], entry))
    return SWITCH_SEPARATOR.join(parts)


class Report:
    def __init__(self):
        self.github = os.environ.get("GITHUB_ACTIONS") == "true"
        self.errors = 0
        self.warnings = 0

    def error(self, name, message):
        self.errors += 1
        self.emit("error", "FAIL", name, message)

    def warn(self, name, message):
        self.warnings += 1
        self.emit("warning", "WARN", name, message)

    def emit(self, kind, word, name, message):
        if self.github:
            text = ("%s: %s" % (name, message)).replace("%", "%25").replace("\r", "%0D").replace("\n", "%0A")
            prop = name.replace("%", "%25").replace(":", "%3A").replace(",", "%2C")
            print("::%s file=%s::%s" % (kind, prop, text))
        else:
            print("%s: %s: %s" % (word, name, message), file=sys.stderr)


# ---------------------------------------------------------------------------
# checks
# ---------------------------------------------------------------------------

def switcher_order(source, names):
    """The order and names README.md's switcher uses; the file names sorted otherwise."""
    fallback = (list(names), {})
    if len(source.switchers) != 1:
        return fallback
    entries, _ = parse_switcher(source.switchers[0][1])
    if entries is None:
        return fallback
    order, labels = [], {}
    for target, label in entries:
        entry = target or SOURCE
        if entry not in labels:
            order.append(entry)
            labels[entry] = label
    return order, labels


def check_switcher(report, doc, names, order, labels):
    if not doc.switchers:
        if len(names) > 1:
            report.error(doc.name, "no language switcher line, a line of entries such as "
                         "**English** · [日本語](README.ja.md) listing every README file")
        return
    if len(doc.switchers) > 1:
        report.error(doc.name, "lines %s link README files; keep a single language switcher line"
                     % ", ".join(str(number) for number, _ in doc.switchers))
        return
    number, text = doc.switchers[0]
    entries, bad = parse_switcher(text)
    if doc.name == SOURCE:
        missing = [name for name in names if name not in order]
        unknown = [name for name in order if name not in names]
        if missing:
            report.error(doc.name, "line %d: the language switcher leaves out %s"
                         % (number, ", ".join(missing)))
        if unknown:
            report.error(doc.name, "line %d: the language switcher lists files that do not exist: %s"
                         % (number, ", ".join(unknown)))
    if labels and doc.name not in labels:
        if doc.name != SOURCE:
            report.error(doc.name, "line %d: README.md's language switcher does not list this file; "
                         "add it there first" % number)
        return
    expected = render_switcher(doc.name, order, labels) if labels else None
    if entries is None:
        report.error(doc.name, "line %d: switcher entry %r is neither **Name** nor "
                     "[Name](README.xx.md)%s" % (number, bad, "; it should read: " + expected
                                                  if expected else ""))
    elif expected and SWITCH_SEPARATOR.join(
            "**%s**" % label if target is None else "[%s](%s)" % (label, target)
            for target, label in entries) != expected:
        report.error(doc.name, "line %d: the language switcher should list every README in "
                     "README.md's order, this file in bold: %s" % (number, expected))


def check_headings(report, doc, source):
    if len(doc.headings) != len(source.headings):
        report.error(doc.name, "%d headings, README.md has %d"
                     % (len(doc.headings), len(source.headings)))
        return
    for mine, theirs in zip(doc.headings, source.headings):
        if mine[1] != theirs[1]:
            report.error(doc.name, "line %d: heading %r is level %d; README.md line %d (%r) is level %d"
                         % (mine[0], mine[2], mine[1], theirs[0], theirs[2], theirs[1]))


def check_code(report, doc, source):
    if len(doc.codes) != len(source.codes):
        report.error(doc.name, "%d fenced code blocks, README.md has %d"
                     % (len(doc.codes), len(source.codes)))
        return
    for k, (mine, theirs) in enumerate(zip(doc.codes, source.codes), 1):
        if mine[1] != theirs[1]:
            report.error(doc.name, "line %d: code block %d is marked %r, README.md line %d has %r"
                         % (mine[0], k, mine[1], theirs[0], theirs[1]))
            continue
        if mine[2] == theirs[2]:
            continue
        j = 0
        while j < len(mine[2]) and j < len(theirs[2]) and mine[2][j] == theirs[2][j]:
            j += 1
        here = mine[2][j] if j < len(mine[2]) else "(end of block)"
        there = theirs[2][j] if j < len(theirs[2]) else "(end of block)"
        report.error(doc.name, "line %d: code block %d differs from README.md line %d: %r here, %r there"
                     % (mine[0] + 1 + j, k, theirs[0] + 1 + j, here, there))


def check_tables(report, doc, source):
    if len(doc.tables) != len(source.tables):
        report.error(doc.name, "%d tables, README.md has %d" % (len(doc.tables), len(source.tables)))
        return
    for k, (mine, theirs) in enumerate(zip(doc.tables, source.tables), 1):
        if len(mine[1]) != len(theirs[1]):
            report.error(doc.name, "line %d: table %d has %d rows, README.md line %d has %d"
                         % (mine[0], k, len(mine[1]) - 1, theirs[0], len(theirs[1]) - 1))
            continue
        for (line, cells), (their_line, their_cells) in zip(mine[1], theirs[1]):
            if cells != their_cells:
                report.error(doc.name, "line %d: table %d row has %d cells, README.md line %d has %d"
                             % (line, k, cells, their_line, their_cells))
                break


def check_targets(report, root, doc, source):
    for number, target in doc.targets:
        if target_exists(root, target) is False:
            report.error(doc.name, "line %d: %s does not exist in the repository" % (number, target))
    if doc is source:
        return
    first = {}
    for number, target in doc.targets:
        first.setdefault(normalize(target), number)
    wanted = set(normalize(target) for _, target in source.targets)
    missing = sorted(wanted - set(first))
    extra = sorted(set(first) - wanted)
    if missing:
        report.error(doc.name, "does not link %s, which README.md links" % ", ".join(missing))
    if extra:
        report.error(doc.name, "links %s, which README.md does not"
                     % ", ".join("%s (line %d)" % (target, first[target]) for target in extra))


def check_anchors(report, doc, source):
    slugs = [heading[3] for heading in doc.headings]
    source_slugs = [heading[3] for heading in source.headings]
    paired = False
    if doc is not source:
        if len(doc.anchors) != len(source.anchors):
            report.error(doc.name, "%d in-page anchor links, README.md has %d"
                         % (len(doc.anchors), len(source.anchors)))
        else:
            paired = len(doc.headings) == len(source.headings)
    for k, (number, fragment) in enumerate(doc.anchors):
        if paired and source.anchors[k][1] in source_slugs:
            their_line, their_fragment = source.anchors[k]
            heading = doc.headings[source_slugs.index(their_fragment)]
            if fragment != heading[3]:
                report.error(doc.name, "line %d: #%s should be #%s, the anchor of the heading %r on "
                             "line %d (README.md line %d links #%s)"
                             % (number, fragment, heading[3], heading[2], heading[0],
                                their_line, their_fragment))
        elif fragment not in slugs:
            report.error(doc.name, "line %d: #%s matches no heading in this file" % (number, fragment))


def check_stamp(report, doc, digest, strict):
    if not doc.stamps:
        report.error(doc.name, "no source comment %s; once the translation is done, run "
                     "tools/check_readme.py --stamp %s" % (STAMP_FORMAT % "<hex>", doc.name))
        return
    if len(doc.stamps) > 1:
        report.error(doc.name, "%d source comments; keep one" % len(doc.stamps))
        return
    if doc.stamps[0] != digest:
        message = ("stale: translated from README.md sha256:%s, README.md is now sha256:%s; "
                   "bring it up to date, then run tools/check_readme.py --stamp %s"
                   % (doc.stamps[0][:12], digest[:12], doc.name))
        if strict:
            report.error(doc.name, message)
        else:
            report.warn(doc.name, message)


def check(root, strict):
    report = Report()
    names = discover(root)
    if not names or names[0] != SOURCE:
        report.error(SOURCE, "not found in %s" % root)
        return 1
    docs = []
    for name in names:
        try:
            with open(os.path.join(root, name), encoding="utf-8-sig") as handle:
                docs.append(Doc(name, handle.read()))
        except UnicodeDecodeError as exc:
            report.error(name, "not valid UTF-8 (%s)" % exc)
    if not docs or docs[0].name != SOURCE:
        print("%d problem(s)" % report.errors, file=sys.stderr)
        return 1
    source = docs[0]
    digest = digest_of(os.path.join(root, SOURCE))
    order, labels = switcher_order(source, names)

    for doc in docs:
        check_switcher(report, doc, names, order, labels)
        if doc is not source:
            check_headings(report, doc, source)
            check_code(report, doc, source)
            check_tables(report, doc, source)
        check_targets(report, root, doc, source)
        check_anchors(report, doc, source)
        if doc is not source:
            check_stamp(report, doc, digest, strict)

    print("README files: %s · %d headings · %d code blocks · %d tables · %d relative targets"
          % (", ".join(names), len(source.headings), len(source.codes), len(source.tables),
             len(set(normalize(target) for _, target in source.targets))))
    sys.stdout.flush()
    if report.errors:
        print("%d problem(s)" % report.errors, file=sys.stderr)
        return 1
    if report.warnings:
        print("readme checks passed with %d warning(s)" % report.warnings)
    else:
        print("readme checks passed")
    return 0


def stamp(parser, root, argument):
    path = argument if os.path.dirname(argument) else os.path.join(root, argument)
    path = os.path.realpath(path)
    name = os.path.basename(path)
    if (os.path.dirname(path) != os.path.realpath(root) or not README_NAME.match(name)
            or name == SOURCE):
        parser.error("--stamp takes a translation at the repository root, such as README.ja.md: %s"
                     % argument)
    if not os.path.isfile(path):
        parser.error("--stamp: %s does not exist" % argument)
    digest = digest_of(os.path.join(root, SOURCE))
    with open(path, encoding="utf-8-sig", newline="") as handle:
        text = handle.read()
    comment = STAMP_FORMAT % digest
    if STAMP_ANY.search(text):
        updated = STAMP_ANY.sub(lambda _: comment, text, count=1)
    else:
        updated = comment + ("\r\n" if "\r\n" in text else "\n") + text
    if updated != text:
        with open(path, "w", encoding="utf-8", newline="") as handle:
            handle.write(updated)
    print("%s: translated from README.md sha256:%s" % (name, digest))


def main():
    parser = argparse.ArgumentParser(
        description="Check the README translations against README.md.")
    parser.add_argument("--strict", action="store_true",
                        help="fail instead of warning when a translation is stale")
    parser.add_argument("--stamp", nargs="+", metavar="README.xx.md",
                        help="record the current README.md in these translations, "
                             "once they are up to date")
    args = parser.parse_args()
    if args.stamp:
        for argument in args.stamp:
            stamp(parser, ROOT, argument)
        return 0
    return check(ROOT, args.strict)


if __name__ == "__main__":
    sys.exit(main())
