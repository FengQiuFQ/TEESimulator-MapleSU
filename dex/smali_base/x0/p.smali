.class public final Lx0/p;
.super Lorg/bouncycastle/crypto/e0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lx0/p;->a:I

    sget v0, Lj1/a;->a:I

    new-instance v0, Ls0/r;

    invoke-direct {v0}, Ls0/r;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lx0/p;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lx0/p;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0/p;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 7

    iget-object v0, p0, Lx0/p;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/e0;->password:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/e0;->salt:[B

    array-length v4, v3

    invoke-interface {v0, v3, v5, v4}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v2, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    const/4 v3, 0x1

    :goto_19
    iget v4, p0, Lorg/bouncycastle/crypto/e0;->iterationCount:I

    if-ge v3, v4, :cond_26

    invoke-interface {v0, v2, v5, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v0, v2, v5}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_26
    return-object v2
.end method

.method public b(I)[B
    .registers 10

    iget-object v0, p0, Lx0/p;->b:Ljava/lang/Object;

    check-cast v0, Ls0/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x10

    new-array v2, v1, [B

    new-array v3, p1, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    iget-object v6, p0, Lorg/bouncycastle/crypto/e0;->password:[B

    array-length v7, v6

    invoke-virtual {v0, v6, v4, v7}, Ls0/j;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/e0;->salt:[B

    array-length v7, v6

    invoke-virtual {v0, v6, v4, v7}, Ls0/j;->update([BII)V

    invoke-virtual {v0, v2, v4}, Ls0/r;->doFinal([BI)I

    if-le p1, v1, :cond_22

    move v6, v1

    goto :goto_23

    :cond_22
    move v6, p1

    :goto_23
    invoke-static {v2, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    sub-int/2addr p1, v6

    if-nez p1, :cond_2b

    return-object v3

    :cond_2b
    invoke-virtual {v0}, Ls0/r;->reset()V

    invoke-virtual {v0, v2, v4, v1}, Ls0/j;->update([BII)V

    goto :goto_f
.end method

.method public c([B[B)V
    .registers 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/e0;->init([B[BI)V

    return-void
.end method

.method public final generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 3

    iget v0, p0, Lx0/p;->a:I

    packed-switch v0, :pswitch_data_10

    invoke-virtual {p0, p1}, Lx0/p;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-virtual {p0, p1}, Lx0/p;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final generateDerivedParameters(I)Lorg/bouncycastle/crypto/g;
    .registers 4

    iget v0, p0, Lx0/p;->a:I

    packed-switch v0, :pswitch_data_36

    div-int/lit8 p1, p1, 0x8

    iget-object v0, p0, Lx0/p;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    if-gt p1, v0, :cond_1a

    invoke-virtual {p0}, Lx0/p;->a()[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t generate a derived key "

    const-string v1, " bytes long."

    invoke-static {v0, v1, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_28
    div-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lx0/p;->b(I)[B

    move-result-object p0

    new-instance v0, Le1/o0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Le1/o0;-><init>([BII)V

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_28
    .end packed-switch
.end method

.method public final generateDerivedParameters(II)Lorg/bouncycastle/crypto/g;
    .registers 6

    iget v0, p0, Lx0/p;->a:I

    packed-switch v0, :pswitch_data_48

    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    iget-object v1, p0, Lx0/p;->b:Ljava/lang/Object;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    if-gt v0, v1, :cond_23

    invoke-virtual {p0}, Lx0/p;->a()[B

    move-result-object p0

    new-instance v0, Le1/s0;

    new-instance v1, Le1/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Le1/o0;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    return-object v0

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t generate a derived key "

    const-string p2, " bytes long."

    invoke-static {p1, p2, v0}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_31
    div-int/lit8 p1, p1, 0x8

    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Lx0/p;->b(I)[B

    move-result-object p0

    new-instance v0, Le1/s0;

    new-instance v1, Le1/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Le1/o0;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    return-object v0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_31
    .end packed-switch
.end method
