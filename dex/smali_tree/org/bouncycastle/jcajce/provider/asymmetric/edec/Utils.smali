.class Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateKeyFingerprint([B)Ljava/lang/String;
    .registers 5

    const/16 v0, 0xa0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_48

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ls0/n;->f([BII)V

    const/16 p0, 0xa0

    div-int/lit8 p0, p0, 0x8

    new-array v1, p0, [B

    invoke-virtual {v0, v1, v2, p0}, Ls0/g0;->b([BII)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_20
    array-length v0, v1

    if-eq v2, v0, :cond_43

    if-lez v2, :cond_2a

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    aget-byte v0, v1, v2

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    sget-object v3, Lm4/d;->a:[C

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v2

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v3, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength must be a multiple of 8"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isValidPrefix([B[B)Z
    .registers 8

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x1

    if-ge v0, v1, :cond_b

    invoke-static {p0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->isValidPrefix([B[B)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_b
    const/4 v0, 0x0

    move v1, v0

    move v3, v1

    :goto_e
    array-length v4, p0

    if-eq v1, v4, :cond_1a

    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    if-nez v3, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public static keyToString(Ljava/lang/String;Ljava/lang/String;Le1/b;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    instance-of v2, p2, Le1/f1;

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    check-cast p2, Le1/f1;

    iget-object p2, p2, Le1/f1;->d:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    goto :goto_39

    :cond_15
    instance-of v2, p2, Le1/b0;

    if-eqz v2, :cond_26

    check-cast p2, Le1/b0;

    const/16 v2, 0x39

    new-array v2, v2, [B

    iget-object p2, p2, Le1/b0;->d:Lq2/e;

    invoke-static {p2, v2, v3}, Lq2/f;->o(Lq2/e;[BI)V

    move-object p2, v2

    goto :goto_39

    :cond_26
    instance-of v2, p2, Le1/d1;

    if-eqz v2, :cond_33

    check-cast p2, Le1/d1;

    iget-object p2, p2, Le1/d1;->d:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    goto :goto_39

    :cond_33
    check-cast p2, Le1/z;

    invoke-virtual {p2}, Le1/z;->getEncoded()[B

    move-result-object p2

    :goto_39
    const-string v2, " "

    const-string v4, " ["

    invoke-static {v0, p1, v2, p0, v4}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/Utils;->generateKeyFingerprint([B)Ljava/lang/String;

    move-result-object p0

    const-string p1, "]"

    const-string v2, "    public data: "

    invoke-static {v0, p0, p1, v1, v2}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln4/c;->a:Ln4/b;

    array-length p0, p2

    invoke-static {p2, v3, p0}, Ln4/c;->e([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
