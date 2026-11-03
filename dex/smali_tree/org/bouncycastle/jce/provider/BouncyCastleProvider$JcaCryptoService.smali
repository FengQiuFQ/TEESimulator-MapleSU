.class Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/i;


# instance fields
.field private final bitsOfSecurity:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    return-void
.end method


# virtual methods
.method public bitsOfSecurity()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->bitsOfSecurity:I

    return p0
.end method

.method public getParams()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPurpose()Lorg/bouncycastle/crypto/j;
    .registers 1

    sget-object p0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;->name:Ljava/lang/String;

    return-object p0
.end method
