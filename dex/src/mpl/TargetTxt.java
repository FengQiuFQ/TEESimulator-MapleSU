package mpl;

/**
 * target.txt 标记兼容层（P1：让 MapleSU 的解析同时接受前缀与后缀标记）。
 *
 * <p><b>方向是实测出来的，不是照抄审计文字</b>：本 dex 的 {@code u4/g.i(File)} 用的是
 * Kotlin {@code endsWith} 判定（smali 里 {@code Ll/q;->g1(...)} + {@code m1(...)}，
 * 对应 {@code l/q.java:78 g1(str, str2, z)} = {@code str.endsWith(str2)}、
 * {@code l/q.java:192 m1} = {@code removeSuffix}），因此产品 dex 原生认的是
 * <b>后缀</b>写法（与上游 TEESimulator 的 {@code ConfigurationManager} / README:79-83
 * 的 "A suffix sets how each app is handled" 一致）：
 * <ul>
 *   <li>{@code pkg!} → 强制 GENERATE（软件密钥）</li>
 *   <li>{@code pkg?} → 强制 PATCH（保留硬件密钥，只改证书）</li>
 *   <li>无标记 → AUTO</li>
 * </ul>
 * 但 MapleSU 自己的 WebUI/文档口径（以及 KSU 侧 {@code webui.sh} 的 features_note：
 * "target.txt accepts both prefix (!pkg/?pkg) and suffix (pkg!/pkg?, upstream) markers"）
 * 宣称前缀写法也可用。前缀行在原实现里会被整行当成包名（例如 {@code !com.foo} 变成
 * 包名 {@code "!com.foo"}）→ 该行静默失效。
 *
 * <p>所以这里做一次纯字符串归一化：<b>前缀就地转成后缀</b>（原生格式），后缀与无标记行
 * 原样返回。判定顺序、GENERATE/PATCH/AUTO 语义都不变；包名合法字符集不含 {@code !}/{@code ?}，
 * 不会与真实包名冲突；{@code [x.xml]} 上下文行在调用点之前已被分派掉。
 */
public final class TargetTxt {

    private TargetTxt() {
    }

    /** 把一行 target.txt 归一化成 dex 原生的"后缀标记"形式；后缀/无标记行原样返回。 */
    public static String normalize(String line) {
        if (line == null) {
            return null;
        }
        final int n = line.length();
        if (n < 2) {
            return line;
        }
        final char first = line.charAt(0);
        if (first != '!' && first != '?') {
            /* 后缀写法（原生）或没有标记：交给后面的 endsWith 分支，行为与改动前一致 */
            return line;
        }
        final String rest = line.substring(1);
        if (rest.isEmpty()) {
            return line;
        }
        final char last = rest.charAt(rest.length() - 1);
        if (last == '!' || last == '?') {
            /* 两侧都写了标记（不该出现）：前缀只是冗余，保留后缀这一侧 */
            return rest;
        }
        /* !pkg -> pkg! ; ?pkg -> pkg? （后缀是原生格式，转换后由原分支处理） */
        return rest + first;
    }
}
