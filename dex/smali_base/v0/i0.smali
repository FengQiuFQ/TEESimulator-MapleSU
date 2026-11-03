.class public final Lv0/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# static fields
.field public static final n:[I

.field public static final o:[I

.field public static final p:[I

.field public static final q:[I


# instance fields
.field public final g:I

.field public final h:I

.field public final i:[J

.field public final j:[J

.field public final k:[J

.field public final l:Ld2/l;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x50

    new-array v0, v0, [I

    sput-object v0, Lv0/i0;->n:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, Lv0/i0;->o:[I

    array-length v1, v0

    new-array v1, v1, [I

    sput-object v1, Lv0/i0;->p:[I

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lv0/i0;->q:[I

    const/4 v0, 0x0

    :goto_16
    sget-object v1, Lv0/i0;->n:[I

    array-length v2, v1

    if-ge v0, v2, :cond_34

    sget-object v2, Lv0/i0;->o:[I

    rem-int/lit8 v3, v0, 0x11

    aput v3, v2, v0

    rem-int/lit8 v2, v0, 0x9

    aput v2, v1, v0

    sget-object v1, Lv0/i0;->p:[I

    rem-int/lit8 v2, v0, 0x5

    aput v2, v1, v0

    sget-object v1, Lv0/i0;->q:[I

    rem-int/lit8 v2, v0, 0x3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_34
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lv0/i0;->j:[J

    div-int/lit8 v1, p1, 0x8

    iput v1, p0, Lv0/i0;->g:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lv0/i0;->h:I

    new-array v2, v1, [J

    iput-object v2, p0, Lv0/i0;->i:[J

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [J

    iput-object v1, p0, Lv0/i0;->k:[J

    const/16 v2, 0x100

    if-eq p1, v2, :cond_40

    const/16 v2, 0x200

    if-eq p1, v2, :cond_39

    const/16 v2, 0x400

    if-ne p1, v2, :cond_31

    new-instance p1, Lv0/h0;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1, v0}, Lv0/h0;-><init>(I[J[J)V

    :goto_2e
    iput-object p1, p0, Lv0/i0;->l:Ld2/l;

    return-void

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid blocksize - Threefish is defined with block size of 256, 512, or 1024 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p1, Lv0/h0;

    const/4 v2, 0x2

    invoke-direct {p1, v2, v1, v0}, Lv0/h0;-><init>(I[J[J)V

    goto :goto_2e

    :cond_40
    new-instance p1, Lv0/h0;

    const/4 v2, 0x1

    invoke-direct {p1, v2, v1, v0}, Lv0/h0;-><init>(I[J[J)V

    goto :goto_2e
.end method

.method public static e(IJJ)J
    .registers 7

    shl-long v0, p1, p0

    neg-int p0, p0

    ushr-long p0, p1, p0

    or-long/2addr p0, v0

    xor-long/2addr p0, p3

    return-wide p0
.end method

.method public static f(IJJ)J
    .registers 5

    xor-long/2addr p1, p3

    ushr-long p3, p1, p0

    neg-int p0, p0

    shl-long p0, p1, p0

    or-long/2addr p0, p3

    return-wide p0
.end method


# virtual methods
.method public final a(Z[J[J)V
    .registers 11

    iput-boolean p1, p0, Lv0/i0;->m:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_32

    array-length v0, p2

    iget v1, p0, Lv0/i0;->h:I

    if-ne v0, v1, :cond_24

    const-wide v2, 0x1bd11bdaa9fc1a22L    # 1.080841987832705E-174

    move v0, p1

    :goto_10
    iget-object v4, p0, Lv0/i0;->k:[J

    if-ge v0, v1, :cond_1c

    aget-wide v5, p2, v0

    aput-wide v5, v4, v0

    xor-long/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1c
    aput-wide v2, v4, v1

    add-int/lit8 p2, v1, 0x1

    invoke-static {v4, p1, v4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_32

    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Threefish key must be same size as block ("

    const-string p2, " words)"

    invoke-static {p1, p2, v1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    if-eqz p3, :cond_56

    array-length p2, p3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4e

    aget-wide v1, p3, p1

    iget-object p0, p0, Lv0/i0;->j:[J

    aput-wide v1, p0, p1

    const/4 p1, 0x1

    aget-wide p2, p3, p1

    aput-wide p2, p0, p1

    xor-long v3, v1, p2

    aput-wide v3, p0, v0

    const/4 p1, 0x3

    aput-wide v1, p0, p1

    const/4 p1, 0x4

    aput-wide p2, p0, p1

    return-void

    :cond_4e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tweak must be 2 words."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    return-void
.end method

.method public final b(II[B[B)I
    .registers 8

    iget v0, p0, Lv0/i0;->g:I

    add-int v1, p1, v0

    array-length v2, p3

    if-gt v1, v2, :cond_20

    add-int v1, p2, v0

    array-length v2, p4

    if-gt v1, v2, :cond_18

    iget-object v1, p0, Lv0/i0;->i:[J

    invoke-static {p1, p3, v1}, Lm4/d;->D(I[B[J)V

    invoke-virtual {p0, v1, v1}, Lv0/i0;->d([J[J)V

    invoke-static {p2, p4, v1}, Lm4/d;->G(I[B[J)V

    return v0

    :cond_18
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()I
    .registers 1

    iget p0, p0, Lv0/i0;->g:I

    return p0
.end method

.method public final d([J[J)V
    .registers 9

    iget-object v0, p0, Lv0/i0;->k:[J

    iget v1, p0, Lv0/i0;->h:I

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_30

    array-length v0, p1

    if-ne v0, v1, :cond_28

    array-length v0, p2

    if-ne v0, v1, :cond_20

    iget-boolean v0, p0, Lv0/i0;->m:Z

    iget-object p0, p0, Lv0/i0;->l:Ld2/l;

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1, p2}, Ld2/l;->b([J[J)V

    return-void

    :cond_1c
    invoke-virtual {p0, p1, p2}, Ld2/l;->a([J[J)V

    return-void

    :cond_20
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Threefish engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Threefish-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lv0/i0;->g:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 7

    instance-of v0, p2, Le1/o0;

    if-eqz v0, :cond_47

    move-object v0, p2

    check-cast v0, Le1/o0;

    iget-object v0, v0, Le1/o0;->c:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    array-length v2, v0

    iget v3, p0, Lv0/i0;->g:I

    if-ne v2, v3, :cond_1a

    iget v2, p0, Lv0/i0;->h:I

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v3, v0, v2}, Lm4/d;->D(I[B[J)V

    goto :goto_29

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Threefish key must be same size as block ("

    const-string p2, " bytes)"

    invoke-static {p1, p2, v3}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    move-object v2, v1

    :goto_29
    invoke-virtual {p0, p1, v2, v1}, Lv0/i0;->a(Z[J[J)V

    invoke-virtual {p0}, Lv0/i0;->getAlgorithmName()Ljava/lang/String;

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_3f

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid parameter passed to Threefish init - "

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reset()V
    .registers 1

    return-void
.end method
