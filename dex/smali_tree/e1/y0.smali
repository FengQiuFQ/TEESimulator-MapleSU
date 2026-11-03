.class public final Le1/y0;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Ljava/math/BigInteger;

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/security/SecureRandom;II)V
    .registers 5

    invoke-direct {p0, p3, p2}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    const/16 p2, 0xc

    if-lt p3, p2, :cond_1b

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p2

    if-eqz p2, :cond_13

    iput-object p1, p0, Le1/y0;->i:Ljava/math/BigInteger;

    iput p4, p0, Le1/y0;->j:I

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public exponent cannot be even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key strength too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
