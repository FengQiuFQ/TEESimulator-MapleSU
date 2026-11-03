.class public La2/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field public final c:[C

.field public final d:Lorg/bouncycastle/crypto/i0;


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/i0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, La2/f;->c:[C

    iput-object p2, p0, La2/f;->d:Lorg/bouncycastle/crypto/i0;

    const/4 p0, 0x0

    array-length p2, p1

    invoke-static {p1, p0, v0, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "PBKDF1"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    iget-object v0, p0, La2/f;->d:Lorg/bouncycastle/crypto/i0;

    iget-object p0, p0, La2/f;->c:[C

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/i0;->a([C)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La2/f;->d:Lorg/bouncycastle/crypto/i0;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/i0;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
