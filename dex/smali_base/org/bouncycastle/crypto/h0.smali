.class public final enum Lorg/bouncycastle/crypto/h0;
.super Lorg/bouncycastle/crypto/i0;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "PKCS12"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a([C)[B
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/crypto/e0;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS12"

    return-object p0
.end method
