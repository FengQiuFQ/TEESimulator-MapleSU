.class public final Lv0/m;
.super Lv0/k;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public t:[I

.field public u:[I

.field public v:[I

.field public w:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv0/m;->t:[I

    iput-object v0, p0, Lv0/m;->u:[I

    iput-object v0, p0, Lv0/m;->v:[I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 12

    iget-object v1, p0, Lv0/m;->t:[I

    if-eqz v1, :cond_56

    add-int/lit8 v2, p1, 0x8

    array-length v4, p3

    if-gt v2, v4, :cond_4e

    add-int/lit8 v2, p2, 0x8

    array-length v4, p4

    if-gt v2, v4, :cond_46

    const/16 v6, 0x8

    new-array v2, v6, [B

    iget-boolean v4, p0, Lv0/m;->w:Z

    if-eqz v4, :cond_2d

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lv0/k;->a([I[BI[BI)V

    move-object v2, v4

    iget-object v1, p0, Lv0/m;->u:[I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lv0/k;->a([I[BI[BI)V

    iget-object v1, p0, Lv0/m;->v:[I

    move v5, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lv0/k;->a([I[BI[BI)V

    return v6

    :cond_2d
    iget-object v1, p0, Lv0/m;->v:[I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lv0/k;->a([I[BI[BI)V

    move-object v2, v4

    iget-object v1, p0, Lv0/m;->u:[I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lv0/k;->a([I[BI[BI)V

    iget-object v1, p0, Lv0/m;->t:[I

    move v5, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lv0/k;->a([I[BI[BI)V

    return v6

    :cond_46
    new-instance v0, Lorg/bouncycastle/crypto/d0;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Lorg/bouncycastle/crypto/q;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()I
    .registers 1

    const/16 p0, 0x8

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "DESede"

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_64

    move-object v0, p2

    check-cast v0, Le1/o0;

    iget-object v0, v0, Le1/o0;->c:[B

    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1c

    array-length v1, v0

    if-ne v1, v2, :cond_14

    goto :goto_1c

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key size must be 16 or 24 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    :goto_1c
    iput-boolean p1, p0, Lv0/m;->w:Z

    const/16 v1, 0x8

    new-array v4, v1, [B

    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v4}, Lv0/k;->d(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lv0/m;->t:[I

    new-array v4, v1, [B

    invoke-static {v0, v1, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    xor-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6, v4}, Lv0/k;->d(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lv0/m;->u:[I

    array-length v4, v0

    if-ne v4, v3, :cond_48

    new-array v3, v1, [B

    invoke-static {v0, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v3}, Lv0/k;->d(Z[B)[I

    move-result-object p1

    iput-object p1, p0, Lv0/m;->v:[I

    goto :goto_4c

    :cond_48
    iget-object p1, p0, Lv0/m;->t:[I

    iput-object p1, p0, Lv0/m;->v:[I

    :goto_4c
    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_5c

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameter passed to DESede init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 1

    return-void
.end method
