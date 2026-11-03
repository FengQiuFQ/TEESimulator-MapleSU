.class public abstract synthetic Lorg/bouncycastle/jcajce/provider/symmetric/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static a(IIII)I
    .registers 4

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    invoke-static {p0, p3}, Ls0/q;->l(II)I

    move-result p0

    return p0
.end method

.method public static b(IIIII)I
    .registers 5

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    shl-int p1, p0, p3

    rsub-int/lit8 p2, p3, 0x20

    ushr-int/2addr p0, p2

    or-int/2addr p0, p1

    add-int/2addr p0, p4

    return p0
.end method

.method public static c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lm/x;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;
    .registers 5

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p1, p3, p0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    return-object p0
.end method

.method public static f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;
    .registers 5

    invoke-interface {p0, p1, p4, p2}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public static g(IILm/q;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 6

    new-instance v0, Lv3/o;

    invoke-direct {v0, p0, p1, p2}, Lv3/o;-><init>(IILm/q;)V

    invoke-virtual {p3, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static h(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lv3/d;

    invoke-direct {v0, p0, p1}, Lv3/d;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic i(Ljava/lang/Object;)V
    .registers 1

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public static j(Ljava/util/HashMap;Lm/q;)V
    .registers 4

    new-instance v0, Lu3/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lu3/a;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V
    .registers 5

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V
    .registers 4

    new-instance v0, Lh4/c;

    sget-object v1, Lh4/c;->a:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Lk4/a;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method

.method public static m(IIII)I
    .registers 4

    add-int/2addr p0, p1

    invoke-static {p0, p2}, Ls0/w;->i(II)I

    move-result p0

    add-int/2addr p0, p3

    return p0
.end method

.method public static n(IIIII)I
    .registers 5

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    invoke-static {p0, p3}, Ls0/w;->i(II)I

    move-result p0

    add-int/2addr p0, p4

    return p0
.end method

.method public static o(Ljava/util/HashMap;Lm/q;)V
    .registers 4

    new-instance v0, Lu3/a;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lu3/a;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V
    .registers 4

    new-instance v0, Lc4/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method

.method public static q(IIII)I
    .registers 4

    add-int/2addr p0, p1

    invoke-static {p0, p2}, Ls0/y;->i(II)I

    move-result p0

    add-int/2addr p0, p3

    return p0
.end method

.method public static r(IIIII)I
    .registers 5

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    invoke-static {p0, p3}, Ls0/y;->i(II)I

    move-result p0

    add-int/2addr p0, p4

    return p0
.end method

.method public static s(Ljava/util/HashMap;Lm/q;)V
    .registers 4

    new-instance v0, Lu3/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lu3/a;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static t(IIII)I
    .registers 4

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    add-int/2addr p0, p3

    return p0
.end method
