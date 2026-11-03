.class public final Le1/k;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Le1/m;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Le1/m;)V
    .registers 4

    iget-object v0, p2, Le1/m;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p2, p0, Le1/k;->i:Le1/m;

    return-void
.end method
