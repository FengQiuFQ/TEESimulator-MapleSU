.class public final Le1/c0;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Le1/e0;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Le1/e0;)V
    .registers 4

    iget v0, p2, Le1/e0;->q:I

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p2, Le1/e0;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :goto_b
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p2, p0, Le1/c0;->i:Le1/e0;

    return-void
.end method
