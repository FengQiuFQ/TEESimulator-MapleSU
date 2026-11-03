.class public final Lz0/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final g:Lv0/o0;

.field public h:I

.field public final i:[I

.field public j:Lv0/n0;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv0/o0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lv0/o0;-><init>(I)V

    iput-object v0, p0, Lz0/j;->g:Lv0/o0;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lz0/j;->i:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lz0/j;->h:I

    :goto_3
    iget-object v1, p0, Lz0/j;->i:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_15

    iget-object v2, p0, Lz0/j;->g:Lv0/o0;

    invoke-virtual {v2}, Lv0/n0;->m()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz0/j;->k:I

    const/4 v0, 0x3

    iput v0, p0, Lz0/j;->l:I

    return-void
.end method

.method public final b()V
    .registers 4

    iget v0, p0, Lz0/j;->l:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x4

    iput v0, p0, Lz0/j;->l:I

    if-nez v0, :cond_1e

    iget v0, p0, Lz0/j;->k:I

    iget-object v1, p0, Lz0/j;->g:Lv0/o0;

    invoke-virtual {v1}, Lv0/n0;->m()I

    move-result v1

    iget-object v2, p0, Lz0/j;->i:[I

    aput v1, v2, v0

    iget v0, p0, Lz0/j;->k:I

    add-int/lit8 v0, v0, 0x1

    array-length v1, v2

    rem-int/2addr v0, v1

    iput v0, p0, Lz0/j;->k:I

    :cond_1e
    return-void
.end method

.method public final doFinal([BI)I
    .registers 10

    invoke-virtual {p0}, Lz0/j;->b()V

    iget p2, p0, Lz0/j;->h:I

    iget v0, p0, Lz0/j;->l:I

    mul-int/lit8 v1, v0, 0x8

    iget v2, p0, Lz0/j;->k:I

    iget-object v3, p0, Lz0/j;->i:[I

    aget v4, v3, v2

    if-nez v1, :cond_12

    goto :goto_1e

    :cond_12
    add-int/lit8 v5, v2, 0x1

    array-length v6, v3

    rem-int/2addr v5, v6

    aget v5, v3, v5

    shl-int/2addr v4, v1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v5, v1

    or-int/2addr v4, v1

    :goto_1e
    xor-int/2addr p2, v4

    iput p2, p0, Lz0/j;->h:I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lz0/j;->g:Lv0/o0;

    invoke-virtual {v0}, Lv0/n0;->m()I

    move-result v0

    goto :goto_32

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    array-length v0, v3

    rem-int/2addr v2, v0

    iput v2, p0, Lz0/j;->k:I

    aget v0, v3, v2

    :goto_32
    xor-int/2addr p2, v0

    iput p2, p0, Lz0/j;->h:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lv0/n0;->k([BII)V

    invoke-virtual {p0}, Lz0/j;->reset()V

    const/4 p0, 0x4

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "Zuc128Mac"

    return-object p0
.end method

.method public final getMacSize()I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lz0/j;->g:Lv0/o0;

    invoke-virtual {v1, v0, p1}, Lv0/n0;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lv0/n0;

    invoke-direct {p1, v1}, Lv0/n0;-><init>(Lv0/n0;)V

    iput-object p1, p0, Lz0/j;->j:Lv0/n0;

    invoke-virtual {p0}, Lz0/j;->a()V

    return-void
.end method

.method public final reset()V
    .registers 3

    iget-object v0, p0, Lz0/j;->j:Lv0/n0;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lz0/j;->g:Lv0/o0;

    invoke-virtual {v1, v0}, Lv0/n0;->c(Lm4/e;)V

    :cond_9
    invoke-virtual {p0}, Lz0/j;->a()V

    return-void
.end method

.method public final update(B)V
    .registers 11

    invoke-virtual {p0}, Lz0/j;->b()V

    iget v0, p0, Lz0/j;->l:I

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x80

    const/4 v2, 0x0

    :goto_a
    if-lez v1, :cond_34

    and-int v3, p1, v1

    if-eqz v3, :cond_2f

    add-int v3, v0, v2

    iget v4, p0, Lz0/j;->h:I

    iget v5, p0, Lz0/j;->k:I

    iget-object v6, p0, Lz0/j;->i:[I

    aget v7, v6, v5

    if-nez v3, :cond_1d

    goto :goto_2b

    :cond_1d
    add-int/lit8 v5, v5, 0x1

    array-length v8, v6

    rem-int/2addr v5, v8

    aget v5, v6, v5

    shl-int v6, v7, v3

    rsub-int/lit8 v3, v3, 0x20

    ushr-int v3, v5, v3

    or-int v7, v6, v3

    :goto_2b
    xor-int v3, v4, v7

    iput v3, p0, Lz0/j;->h:I

    :cond_2f
    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_34
    return-void
.end method

.method public final update([BII)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_d

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lz0/j;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return-void
.end method
