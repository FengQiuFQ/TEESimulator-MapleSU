.class public final Le1/t;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Le1/r;


# direct methods
.method public constructor <init>(Le1/r;Ljava/security/SecureRandom;)V
    .registers 4

    iget-object v0, p1, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p1, p0, Le1/t;->i:Le1/r;

    return-void
.end method
