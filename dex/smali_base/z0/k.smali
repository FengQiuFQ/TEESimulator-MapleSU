.class public final Lz0/k;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:Lv0/q0;

.field public final h:I

.field public final i:[I

.field public final j:[I

.field public k:Lv0/p0;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv0/q0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv0/q0;-><init>(I)V

    const/16 v1, 0x20

    if-eq p1, v1, :cond_2b

    const/16 v2, 0x40

    if-eq p1, v2, :cond_26

    const/16 v2, 0x80

    if-ne p1, v2, :cond_1a

    sget-object v2, Lv0/p0;->u:[B

    iput-object v2, v0, Lv0/p0;->q:[B

    goto :goto_2f

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported length: "

    invoke-static {p1, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    sget-object v2, Lv0/p0;->t:[B

    iput-object v2, v0, Lv0/p0;->q:[B

    goto :goto_2f

    :cond_2b
    sget-object v2, Lv0/p0;->s:[B

    iput-object v2, v0, Lv0/p0;->q:[B

    :goto_2f
    iput-object v0, p0, Lz0/k;->g:Lv0/q0;

    iput p1, p0, Lz0/k;->h:I

    div-int/2addr p1, v1

    new-array v0, p1, [I

    iput-object v0, p0, Lz0/k;->i:[I

    add-int/lit8 p1, p1, 0x1

    new-array p1, p1, [I

    iput-object p1, p0, Lz0/k;->j:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lz0/k;->i:[I

    array-length v3, v2

    iget-object v4, p0, Lz0/k;->g:Lv0/q0;

    if-ge v1, v3, :cond_12

    invoke-virtual {v4}, Lv0/n0;->m()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    :goto_12
    iget-object v1, p0, Lz0/k;->j:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_22

    invoke-virtual {v4}, Lv0/n0;->m()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_22
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz0/k;->l:I

    const/4 v0, 0x3

    iput v0, p0, Lz0/k;->m:I

    return-void
.end method

.method public final b(I)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lz0/k;->i:[I

    array-length v2, v1

    if-ge v0, v2, :cond_28

    aget v2, v1, v0

    iget v3, p0, Lz0/k;->l:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lz0/k;->j:[I

    array-length v5, v4

    rem-int v5, v3, v5

    aget v5, v4, v5

    if-nez p1, :cond_15

    goto :goto_22

    :cond_15
    add-int/lit8 v3, v3, 0x1

    array-length v6, v4

    rem-int/2addr v3, v6

    aget v3, v4, v3

    shl-int v4, v5, p1

    rsub-int/lit8 v5, p1, 0x20

    ushr-int/2addr v3, v5

    or-int v5, v4, v3

    :goto_22
    xor-int/2addr v2, v5

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_28
    return-void
.end method

.method public final doFinal([BI)I
    .registers 5

    iget p2, p0, Lz0/k;->m:I

    add-int/lit8 p2, p2, 0x1

    rem-int/lit8 p2, p2, 0x4

    iput p2, p0, Lz0/k;->m:I

    if-nez p2, :cond_14

    iget v0, p0, Lz0/k;->l:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lz0/k;->j:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lz0/k;->l:I

    :cond_14
    mul-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, p2}, Lz0/k;->b(I)V

    const/4 p2, 0x0

    :goto_1a
    iget-object v0, p0, Lz0/k;->i:[I

    array-length v1, v0

    if-ge p2, v1, :cond_29

    aget v0, v0, p2

    mul-int/lit8 v1, p2, 0x4

    invoke-static {p1, v0, v1}, Lv0/n0;->k([BII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    :cond_29
    invoke-virtual {p0}, Lz0/k;->reset()V

    invoke-virtual {p0}, Lz0/k;->getMacSize()I

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Zuc256Mac-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lz0/k;->h:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    iget p0, p0, Lz0/k;->h:I

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lz0/k;->g:Lv0/q0;

    invoke-virtual {v1, v0, p1}, Lv0/n0;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lv0/p0;

    invoke-direct {p1, v1}, Lv0/n0;-><init>(Lv0/n0;)V

    iput-object p1, p0, Lz0/k;->k:Lv0/p0;

    invoke-virtual {p0}, Lz0/k;->a()V

    return-void
.end method

.method public final reset()V
    .registers 3

    iget-object v0, p0, Lz0/k;->k:Lv0/p0;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lz0/k;->g:Lv0/q0;

    invoke-virtual {v1, v0}, Lv0/p0;->c(Lm4/e;)V

    :cond_9
    invoke-virtual {p0}, Lz0/k;->a()V

    return-void
.end method

.method public final update(B)V
    .registers 6

    iget v0, p0, Lz0/k;->m:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lz0/k;->m:I

    if-nez v0, :cond_1e

    iget v0, p0, Lz0/k;->l:I

    iget-object v1, p0, Lz0/k;->g:Lv0/q0;

    invoke-virtual {v1}, Lv0/n0;->m()I

    move-result v1

    iget-object v2, p0, Lz0/k;->j:[I

    aput v1, v2, v0

    iget v0, p0, Lz0/k;->l:I

    add-int/lit8 v0, v0, 0x1

    array-length v1, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lz0/k;->l:I

    :cond_1e
    iget v0, p0, Lz0/k;->m:I

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x80

    const/4 v2, 0x0

    :goto_25
    if-lez v1, :cond_35

    and-int v3, p1, v1

    if-eqz v3, :cond_30

    add-int v3, v0, v2

    invoke-virtual {p0, v3}, Lz0/k;->b(I)V

    :cond_30
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method public final update([BII)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lz0/k;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method
