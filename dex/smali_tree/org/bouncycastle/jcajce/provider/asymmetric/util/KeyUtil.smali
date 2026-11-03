.class public Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncodedPrivateKeyInfo(Ld0/t;)[B
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEncodedPrivateKeyInfo(Ll0/b;Lm/f;)[B
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ld0/t;

    invoke-interface {p1}, Lm/f;->d()Lm/u;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedPrivateKeyInfo(Ld0/t;)[B

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    return-object v0
.end method

.method public static getEncodedSubjectPublicKeyInfo(Ll0/b;Lm/f;)[B
    .registers 3

    :try_start_0
    new-instance v0, Ll0/p0;

    invoke-direct {v0, p0, p1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEncodedSubjectPublicKeyInfo(Ll0/b;[B)[B
    .registers 3

    :try_start_0
    new-instance v0, Ll0/p0;

    invoke-direct {v0, p0, p1}, Ll0/p0;-><init>(Ll0/b;[B)V

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/KeyUtil;->getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEncodedSubjectPublicKeyInfo(Ll0/p0;)[B
    .registers 1

    :try_start_0
    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method
