.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/e0;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0

    :cond_c
    const/4 v0, 0x5

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_13

    goto :goto_1c

    :cond_13
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/e0;->PKCS5PasswordToBytes([C)[B

    move-result-object p0

    return-object p0

    :cond_1c
    :goto_1c
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEKeySpec;->getPassword()[C

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/crypto/e0;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method private static makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;
    .registers 5

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eqz p0, :cond_186

    const/4 v2, 0x4

    if-ne p0, v2, :cond_9

    goto/16 :goto_186

    :cond_9
    sget-object v2, Lorg/bouncycastle/crypto/j;->c:Lorg/bouncycastle/crypto/j;

    if-eq p0, v1, :cond_9f

    if-ne p0, v0, :cond_11

    goto/16 :goto_9f

    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_99

    packed-switch p1, :pswitch_data_1ba

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1f
    new-instance p0, Lx0/q;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/e0;

    invoke-direct {p1, v2}, Ls0/e0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_2c
    new-instance p0, Lx0/q;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/c0;

    invoke-direct {p1, v2}, Ls0/c0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_39
    new-instance p0, Lx0/q;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/a0;

    invoke-direct {p1, v2}, Ls0/a0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_46
    new-instance p0, Lx0/q;

    new-instance p1, Ls0/f;

    invoke-direct {p1, v2}, Ls0/f;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_51
    new-instance p0, Lx0/q;

    new-instance p1, Ls0/p;

    invoke-direct {p1, v2}, Ls0/p;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_5c
    new-instance p0, Lx0/q;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/b0;

    invoke-direct {p1, v2}, Ls0/b0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_69
    new-instance p0, Lx0/q;

    new-instance p1, Ls0/m0;

    invoke-direct {p1, v2}, Ls0/m0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_74
    new-instance p0, Lx0/q;

    new-instance p1, Ls0/w;

    invoke-direct {p1, v2}, Ls0/w;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_7f
    new-instance p0, Lx0/q;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/z;

    invoke-direct {p1, v2}, Ls0/z;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_8c
    new-instance p0, Lx0/q;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/r;

    invoke-direct {p1}, Ls0/r;-><init>()V

    invoke-direct {p0, p1}, Lx0/q;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_99
    new-instance p0, Lx0/p;

    invoke-direct {p0}, Lx0/p;-><init>()V

    return-object p0

    :cond_9f
    :goto_9f
    const/4 p0, 0x0

    const/16 v0, 0xe0

    const/16 v1, 0x100

    packed-switch p1, :pswitch_data_1d2

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unknown digest scheme for PBE PKCS5S2 encryption."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_af
    new-instance p1, Lx0/r;

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/f0;

    invoke-direct {v0, v1, p0}, Ls0/f0;-><init>(II)V

    invoke-direct {p1, v0}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p1

    :pswitch_bc
    new-instance p1, Lx0/r;

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/f0;

    invoke-direct {v1, v0, p0}, Ls0/f0;-><init>(II)V

    invoke-direct {p1, v1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p1

    :pswitch_c9
    new-instance p0, Lx0/r;

    new-instance p1, Ls0/h0;

    invoke-direct {p1, v2}, Ls0/h0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_d4
    new-instance p1, Lx0/r;

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/d0;

    const/16 v1, 0x200

    invoke-direct {v0, v1, p0}, Ls0/d0;-><init>(II)V

    invoke-direct {p1, v0}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p1

    :pswitch_e3
    new-instance p1, Lx0/r;

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/d0;

    const/16 v1, 0x180

    invoke-direct {v0, v1, p0}, Ls0/d0;-><init>(II)V

    invoke-direct {p1, v0}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p1

    :pswitch_f2
    new-instance p1, Lx0/r;

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/d0;

    invoke-direct {v0, v1, p0}, Ls0/d0;-><init>(II)V

    invoke-direct {p1, v0}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p1

    :pswitch_ff
    new-instance p1, Lx0/r;

    sget v1, Lj1/a;->a:I

    new-instance v1, Ls0/d0;

    invoke-direct {v1, v0, p0}, Ls0/d0;-><init>(II)V

    invoke-direct {p1, v1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p1

    :pswitch_10c
    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/e0;

    invoke-direct {p1, v2}, Ls0/e0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_119
    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/c0;

    invoke-direct {p1, v2}, Ls0/c0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_126
    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/a0;

    invoke-direct {p1, v2}, Ls0/a0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_133
    new-instance p0, Lx0/r;

    new-instance p1, Ls0/f;

    invoke-direct {p1, v2}, Ls0/f;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_13e
    new-instance p0, Lx0/r;

    new-instance p1, Ls0/p;

    invoke-direct {p1, v2}, Ls0/p;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_149
    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/b0;

    invoke-direct {p1, v2}, Ls0/b0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_156
    new-instance p0, Lx0/r;

    new-instance p1, Ls0/m0;

    invoke-direct {p1, v2}, Ls0/m0;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_161
    new-instance p0, Lx0/r;

    new-instance p1, Ls0/w;

    invoke-direct {p1, v2}, Ls0/w;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_16c
    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/z;

    invoke-direct {p1, v2}, Ls0/z;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :pswitch_179
    new-instance p0, Lx0/r;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/r;

    invoke-direct {p1}, Ls0/r;-><init>()V

    invoke-direct {p0, p1}, Lx0/r;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_186
    :goto_186
    if-eqz p1, :cond_1ac

    if-eq p1, v1, :cond_19f

    if-ne p1, v0, :cond_197

    new-instance p0, Lx0/p;

    new-instance p1, Ls0/p;

    invoke-direct {p1}, Ls0/p;-><init>()V

    invoke-direct {p0, p1}, Lx0/p;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_197
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "PKCS5 scheme 1 only supports MD2, MD5 and SHA1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19f
    new-instance p0, Lx0/p;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/z;

    invoke-direct {p1}, Ls0/z;-><init>()V

    invoke-direct {p0, p1}, Lx0/p;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    :cond_1ac
    new-instance p0, Lx0/p;

    sget p1, Lj1/a;->a:I

    new-instance p1, Ls0/r;

    invoke-direct {p1}, Ls0/r;-><init>()V

    invoke-direct {p0, p1}, Lx0/p;-><init>(Lorg/bouncycastle/crypto/v;)V

    return-object p0

    nop

    :pswitch_data_1ba
    .packed-switch 0x0
        :pswitch_8c
        :pswitch_7f
        :pswitch_74
        :pswitch_69
        :pswitch_5c
        :pswitch_51
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
    .end packed-switch

    :pswitch_data_1d2
    .packed-switch 0x0
        :pswitch_179
        :pswitch_16c
        :pswitch_161
        :pswitch_156
        :pswitch_149
        :pswitch_13e
        :pswitch_133
        :pswitch_126
        :pswitch_119
        :pswitch_10c
        :pswitch_ff
        :pswitch_f2
        :pswitch_e3
        :pswitch_d4
        :pswitch_c9
        :pswitch_bc
        :pswitch_af
    .end packed-switch
.end method

.method public static makePBEMacParameters(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)Lorg/bouncycastle/crypto/g;
    .registers 6

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object p1

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p4}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p4

    invoke-virtual {p1, p0, v0, p4}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    invoke-virtual {p1, p3}, Lorg/bouncycastle/crypto/e0;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    const/4 p1, 0x0

    move p3, p1

    :goto_1d
    array-length p4, p2

    if-eq p3, p4, :cond_25

    aput-byte p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_25
    return-object p0
.end method

.method public static makePBEMacParameters(Ljavax/crypto/spec/PBEKeySpec;III)Lorg/bouncycastle/crypto/g;
    .registers 5

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/e0;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    const/4 p2, 0x0

    move p3, p2

    :goto_19
    array-length v0, p1

    if-eq p3, v0, :cond_21

    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    :cond_21
    return-object p0
.end method

.method public static makePBEMacParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/crypto/g;
    .registers 5

    if-eqz p1, :cond_2c

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_2c

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/e0;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    return-object p0

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makePBEParameters(Ljavax/crypto/spec/PBEKeySpec;IIII)Lorg/bouncycastle/crypto/g;
    .registers 6

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object p2

    invoke-static {p1, p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->convertPassword(ILjavax/crypto/spec/PBEKeySpec;)[B

    move-result-object p1

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object v0

    invoke-virtual {p0}, Ljavax/crypto/spec/PBEKeySpec;->getIterationCount()I

    move-result p0

    invoke-virtual {p2, p1, v0, p0}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    if-eqz p4, :cond_1a

    invoke-virtual {p2, p3, p4}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    goto :goto_1e

    :cond_1a
    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    :goto_1e
    const/4 p2, 0x0

    move p3, p2

    :goto_20
    array-length p4, p1

    if-eq p3, p4, :cond_28

    aput-byte p2, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    :cond_28
    return-object p0
.end method

.method public static makePBEParameters(Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/g;
    .registers 6

    if-eqz p1, :cond_69

    instance-of v0, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_69

    check-cast p1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getType()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getDigest()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->shouldTryWrongPKCS12()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v1, 0x2

    new-array v1, v1, [B

    :cond_21
    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result p1

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIvSize()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    goto :goto_47

    :cond_3f
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BCPBEKey;->getKeySize()I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    :goto_47
    const-string p1, "DES"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    instance-of p1, p0, Le1/s0;

    if-eqz p1, :cond_60

    move-object p1, p0

    check-cast p1, Le1/s0;

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    invoke-static {p1}, Le1/c;->c([B)V

    return-object p0

    :cond_60
    move-object p1, p0

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    invoke-static {p1}, Le1/c;->c([B)V

    :cond_68
    return-object p0

    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makePBEParameters([BIIIILjava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/bouncycastle/crypto/g;
    .registers 8

    if-eqz p5, :cond_44

    instance-of v0, p5, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v0, :cond_44

    check-cast p5, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEGenerator(II)Lorg/bouncycastle/crypto/e0;

    move-result-object p1

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object p2

    invoke-virtual {p5}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result p5

    invoke-virtual {p1, p0, p2, p5}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    if-eqz p4, :cond_1e

    invoke-virtual {p1, p3, p4}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    goto :goto_22

    :cond_1e
    invoke-virtual {p1, p3}, Lorg/bouncycastle/crypto/e0;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    :goto_22
    const-string p1, "DES"

    invoke-virtual {p6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_43

    instance-of p1, p0, Le1/s0;

    if-eqz p1, :cond_3b

    move-object p1, p0

    check-cast p1, Le1/s0;

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    invoke-static {p1}, Le1/c;->c([B)V

    return-object p0

    :cond_3b
    move-object p1, p0

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    invoke-static {p1}, Le1/c;->c([B)V

    :cond_43
    return-object p0

    :cond_44
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "Need a PBEParameter spec with a PBE key."

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
