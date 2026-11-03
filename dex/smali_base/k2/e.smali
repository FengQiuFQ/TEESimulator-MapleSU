.class public final Lk2/e;
.super Lk2/b0;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:[J

.field public final synthetic o:[I

.field public final synthetic p:Lk2/f;


# direct methods
.method public constructor <init>(Lk2/f;II[J[I)V
    .registers 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lk2/b0;-><init>(I)V

    iput p2, p0, Lk2/e;->l:I

    iput p3, p0, Lk2/e;->m:I

    iput-object p4, p0, Lk2/e;->n:[J

    iput-object p5, p0, Lk2/e;->o:[I

    iput-object p1, p0, Lk2/e;->p:Lk2/f;

    return-void
.end method


# virtual methods
.method public final M([J[J)Lk2/n;
    .registers 7

    new-instance v0, Lk2/k;

    iget-object v1, p0, Lk2/e;->p:Lk2/f;

    iget v2, v1, Lk2/f;->j:I

    new-instance v3, Lk2/t;

    invoke-direct {v3, p1}, Lk2/t;-><init>([J)V

    iget-object p0, p0, Lk2/e;->o:[I

    invoke-direct {v0, v2, p0, v3}, Lk2/k;-><init>(I[ILk2/t;)V

    new-instance p1, Lk2/k;

    new-instance v3, Lk2/t;

    invoke-direct {v3, p2}, Lk2/t;-><init>([J)V

    invoke-direct {p1, v2, p0, v3}, Lk2/k;-><init>(I[ILk2/t;)V

    new-instance p0, Lk2/n;

    const/4 p2, 0x0

    invoke-direct {p0, v1, v0, p1, p2}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object p0
.end method

.method public final m()I
    .registers 1

    iget p0, p0, Lk2/e;->l:I

    return p0
.end method

.method public final u(I)Lk2/p;
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lk2/e;->m:I

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_b
    iget v7, v0, Lk2/e;->l:I

    if-ge v5, v7, :cond_39

    xor-int v7, v5, p1

    add-int/lit8 v7, v7, -0x1

    shr-int/lit8 v7, v7, 0x1f

    int-to-long v7, v7

    move v9, v4

    :goto_17
    if-ge v9, v1, :cond_33

    aget-wide v10, v2, v9

    add-int v12, v6, v9

    iget-object v13, v0, Lk2/e;->n:[J

    aget-wide v14, v13, v12

    and-long/2addr v14, v7

    xor-long/2addr v10, v14

    aput-wide v10, v2, v9

    aget-wide v10, v3, v9

    add-int v12, v6, v1

    add-int/2addr v12, v9

    aget-wide v12, v13, v12

    and-long/2addr v12, v7

    xor-long/2addr v10, v12

    aput-wide v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_33
    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_39
    invoke-virtual {v0, v2, v3}, Lk2/e;->M([J[J)Lk2/n;

    move-result-object v0

    return-object v0
.end method

.method public final v(I)Lk2/p;
    .registers 10

    iget v0, p0, Lk2/e;->m:I

    new-array v1, v0, [J

    new-array v2, v0, [J

    mul-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_1e

    add-int v4, p1, v3

    iget-object v5, p0, Lk2/e;->n:[J

    aget-wide v6, v5, v4

    aput-wide v6, v1, v3

    add-int v4, p1, v0

    add-int/2addr v4, v3

    aget-wide v4, v5, v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1e
    invoke-virtual {p0, v1, v2}, Lk2/e;->M([J[J)Lk2/n;

    move-result-object p0

    return-object p0
.end method
