.class Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/y;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/dh/IESCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Le1/b;)[B
    .registers 7

    move-object p0, p1

    check-cast p0, Le1/e;

    iget-object p0, p0, Le1/e;->d:Le1/g;

    iget-object p0, p0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    new-array v0, p0, [B

    check-cast p1, Le1/i;

    iget-object p1, p1, Le1/i;->q:Ljava/math/BigInteger;

    sget-object v1, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    if-nez v2, :cond_2c

    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2c

    array-length v2, p1

    sub-int/2addr v2, v3

    new-array v4, v2, [B

    invoke-static {p1, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v4

    :cond_2c
    array-length v2, p1

    if-gt v2, p0, :cond_36

    array-length v2, p1

    sub-int/2addr p0, v2

    array-length v2, p1

    invoke-static {p1, v1, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Senders\'s public key longer than expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
