.class public Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;
.super Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;


# instance fields
.field private final prf:Lorg/bouncycastle/crypto/b0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/b0;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/TLSKDF$TLS12;->prf:Lorg/bouncycastle/crypto/b0;

    return-void
.end method

.method private PRF(Ld2/a0;Lorg/bouncycastle/crypto/b0;)[B
    .registers 3

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .registers 2

    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    const-string p1, "Invalid KeySpec"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
