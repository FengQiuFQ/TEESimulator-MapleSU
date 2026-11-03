.class public final Le1/d;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Le1/g;


# direct methods
.method public constructor <init>(Le1/g;Ljava/security/SecureRandom;)V
    .registers 4

    iget v0, p1, Le1/g;->z1:I

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p1, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :goto_b
    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p1, p0, Le1/d;->i:Le1/g;

    return-void
.end method
