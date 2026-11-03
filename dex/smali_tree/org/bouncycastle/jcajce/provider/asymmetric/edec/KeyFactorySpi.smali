.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# static fields
.field static final Ed25519Prefix:[B

.field private static final Ed25519_type:B = 0x70t

.field static final Ed448Prefix:[B

.field private static final Ed448_type:B = 0x71t

.field static final x25519Prefix:[B

.field private static final x25519_type:B = 0x6et

.field static final x448Prefix:[B

.field private static final x448_type:B = 0x6ft


# instance fields
.field algorithm:Ljava/lang/String;

.field private final isXdh:Z

.field private final specificBase:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "3042300506032b656f033900"

    invoke-static {v0}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    const-string v0, "302a300506032b656e032100"

    invoke-static {v0}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    const-string v0, "3043300506032b6571033a00"

    invoke-static {v0}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed448Prefix:[B

    const-string v0, "302a300506032b6570032100"

    invoke-static {v0}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .registers 4

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->algorithm:Ljava/lang/String;

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->isXdh:Z

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    return-void
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 3

    instance-of v0, p1, Ld2/u;

    if-eqz v0, :cond_22

    check-cast p1, Ld2/u;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lj1/b;->b([B)Le1/b;

    move-result-object p0

    instance-of p1, p0, Le1/y;

    if-eqz p1, :cond_1a

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    check-cast p0, Le1/y;

    invoke-direct {p1, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Le1/b;)V

    return-object p1

    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "openssh private key not Ed25519 private key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 8

    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    const/4 v1, 0x0

    if-eqz v0, :cond_8b

    move-object v0, p1

    check-cast v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    const/16 v3, 0x8

    if-eqz v2, :cond_16

    aget-byte v4, v0, v3

    if-ne v2, v4, :cond_f6

    :cond_16
    const/16 v2, 0x9

    aget-byte v2, v0, v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_61

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    if-nez v2, :cond_61

    invoke-static {v0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v0

    new-instance v2, Ll0/b;

    iget-object v4, v0, Ll0/p0;->c:Ll0/b;

    iget-object v4, v4, Ll0/b;->c:Lm/q;

    invoke-direct {v2, v4}, Ll0/b;-><init>(Lm/q;)V

    iget-object v0, v0, Ll0/p0;->d:Lm/b;

    invoke-virtual {v0}, Lm/b;->s()[B

    move-result-object v0

    new-instance v4, Lm/p0;

    invoke-direct {v4, v0, v1}, Lm/b;-><init>([BI)V

    :try_start_3b
    const-string v0, "DER"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lm/a1;

    invoke-direct {v5, v2, v4}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    invoke-virtual {v5, v1, v0}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4e} :catch_4f

    goto :goto_61

    :catch_4f
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "attempt to reconstruct key failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    :goto_61
    aget-byte v1, v0, v3

    packed-switch v1, :pswitch_data_fc

    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_6b
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed448Prefix:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>([B[B)V

    return-object p0

    :pswitch_73
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>([B[B)V

    return-object p0

    :pswitch_7b
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x448Prefix:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>([B[B)V

    return-object p0

    :pswitch_83
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->x25519Prefix:[B

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>([B[B)V

    return-object p0

    :cond_8b
    instance-of v0, p1, Ld2/x;

    if-eqz v0, :cond_ce

    check-cast p1, Ld2/x;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p1

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    packed-switch p0, :pswitch_data_108

    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "factory not a specific type, cannot recognise raw encoding"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a2
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    new-instance v0, Le1/b0;

    invoke-direct {v0, p1}, Le1/b0;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Le1/b;)V

    return-object p0

    :pswitch_ad
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    new-instance v0, Le1/z;

    invoke-direct {v0, p1}, Le1/z;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Le1/b;)V

    return-object p0

    :pswitch_b8
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    new-instance v0, Le1/f1;

    invoke-direct {v0, p1}, Le1/f1;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Le1/b;)V

    return-object p0

    :pswitch_c3
    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    new-instance v0, Le1/d1;

    invoke-direct {v0, p1}, Le1/d1;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Le1/b;)V

    return-object p0

    :cond_ce
    instance-of v0, p1, Ld2/v;

    if-eqz v0, :cond_f6

    check-cast p1, Ld2/v;

    invoke-virtual {p1}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lt4/d;->A0([B)Le1/b;

    move-result-object p0

    instance-of p1, p0, Le1/z;

    if-eqz p1, :cond_ee

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    new-array v0, v1, [B

    check-cast p0, Le1/z;

    invoke-virtual {p0}, Le1/z;->getEncoded()[B

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>([B[B)V

    return-object p1

    :cond_ee
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "openssh public key not Ed25519 public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f6
    invoke-super {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_fc
    .packed-switch 0x6e
        :pswitch_83
        :pswitch_7b
        :pswitch_73
        :pswitch_6b
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x6e
        :pswitch_c3
        :pswitch_b8
        :pswitch_ad
        :pswitch_a2
    .end packed-switch
.end method

.method public engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 7

    const-class v0, Ld2/u;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_47

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    if-eqz v0, :cond_47

    :try_start_c
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    new-instance p1, Ld2/u;

    new-instance p2, Le1/y;

    invoke-direct {p2, p0}, Le1/y;-><init>([B)V

    invoke-static {p2}, Lj1/b;->a(Le1/b;)[B

    move-result-object p0

    invoke-direct {p1, p0}, Ld2/u;-><init>([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_37} :catch_38

    return-object p1

    :catch_38
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_47
    const-class v0, Ld2/v;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_98

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    if-eqz v0, :cond_98

    :try_start_53
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    sget-object p1, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->Ed25519Prefix:[B

    array-length p2, p1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x20

    const/4 v1, 0x0

    if-eq p2, v0, :cond_61

    goto :goto_6f

    :cond_61
    move v0, v1

    :goto_62
    if-ge v0, p2, :cond_6e

    aget-byte v2, p1, v0

    aget-byte v3, p0, v0

    if-eq v2, v3, :cond_6b

    goto :goto_6f

    :cond_6b
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_6e
    const/4 v1, 0x1

    :goto_6f
    if-eqz v1, :cond_81

    new-instance p2, Le1/z;

    array-length p1, p1

    invoke-direct {p2, p0, p1}, Le1/z;-><init>([BI)V

    new-instance p0, Ld2/v;

    invoke-static {p2}, Lt4/d;->J(Le1/b;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ld2/v;-><init>([B)V

    return-object p0

    :cond_81
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid Ed25519 public key encoding"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_89} :catch_89

    :catch_89
    move-exception p0

    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_98
    const-class v0, Ld2/x;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c0

    instance-of v0, p1, Lb2/j;

    if-eqz v0, :cond_b0

    new-instance p0, Ld2/x;

    check-cast p1, Lb2/j;

    invoke-interface {p1}, Lb2/j;->getUEncoding()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_b0
    instance-of v0, p1, Lb2/c;

    if-eqz v0, :cond_c0

    new-instance p0, Ld2/x;

    check-cast p1, Lb2/c;

    invoke-interface {p1}, Lb2/c;->getPointEncoding()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_c0
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;->engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object p0

    return-object p0
.end method

.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 2

    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "key type unknown"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 6

    iget-object v0, p1, Ld0/t;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->isXdh:Z

    if-eqz v1, :cond_34

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz v1, :cond_10

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_1e

    :cond_10
    sget-object v1, Lo1/a;->b:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Ld0/t;)V

    return-object p0

    :cond_1e
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz p0, :cond_26

    const/16 v1, 0x6e

    if-ne p0, v1, :cond_6e

    :cond_26
    sget-object p0, Lo1/a;->a:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_6e

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPrivateKey;-><init>(Ld0/t;)V

    return-object p0

    :cond_34
    sget-object v1, Lo1/a;->d:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lo1/a;->c:Lm/q;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_44
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz v2, :cond_4c

    const/16 v3, 0x71

    if-ne v2, v3, :cond_58

    :cond_4c
    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Ld0/t;)V

    return-object p0

    :cond_58
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz p0, :cond_60

    const/16 v1, 0x70

    if-ne p0, v1, :cond_6e

    :cond_60
    sget-object p0, Lo1/a;->c:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_6e

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPrivateKey;-><init>(Ld0/t;)V

    return-object p0

    :cond_6e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "algorithm identifier "

    const-string v1, " in key not recognized"

    invoke-static {p1, v0, v1}, Lb/b;->k(Ljava/lang/String;Lm/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 6

    iget-object v0, p1, Ll0/p0;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    iget-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->isXdh:Z

    if-eqz v1, :cond_34

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz v1, :cond_10

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_1e

    :cond_10
    sget-object v1, Lo1/a;->b:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Ll0/p0;)V

    return-object p0

    :cond_1e
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz p0, :cond_26

    const/16 v1, 0x6e

    if-ne p0, v1, :cond_6e

    :cond_26
    sget-object p0, Lo1/a;->a:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_6e

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCXDHPublicKey;-><init>(Ll0/p0;)V

    return-object p0

    :cond_34
    sget-object v1, Lo1/a;->d:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lo1/a;->c:Lm/q;

    invoke-virtual {v0, v2}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_6e

    :cond_44
    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz v2, :cond_4c

    const/16 v3, 0x71

    if-ne v2, v3, :cond_58

    :cond_4c
    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_58

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Ll0/p0;)V

    return-object p0

    :cond_58
    iget p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/KeyFactorySpi;->specificBase:I

    if-eqz p0, :cond_60

    const/16 v1, 0x70

    if-ne p0, v1, :cond_6e

    :cond_60
    sget-object p0, Lo1/a;->c:Lm/q;

    invoke-virtual {v0, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_6e

    new-instance p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/BCEdDSAPublicKey;-><init>(Ll0/p0;)V

    return-object p0

    :cond_6e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "algorithm identifier "

    const-string v1, " in key not recognized"

    invoke-static {p1, v0, v1}, Lb/b;->k(Ljava/lang/String;Lm/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
