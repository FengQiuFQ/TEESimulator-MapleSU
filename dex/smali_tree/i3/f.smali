.class public final Li3/f;
.super La3/a;


# instance fields
.field public final A1:[B

.field public final B1:[B

.field public final C1:[B

.field public final D1:[B

.field public final E1:I

.field public final q:[B

.field public final x:[B

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(Li3/e;[BLi3/g;)V
    .registers 16

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Li3/e;->a(Ljava/security/SecureRandom;)Li3/b;

    move-result-object v8

    iget p1, v8, Li3/b;->f:I

    iget v2, v8, Li3/b;->e:I

    array-length v3, p2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3e

    invoke-virtual {v8, p2}, Li3/b;->b([B)[[B

    move-result-object p1

    aget-object p2, p1, v10

    iput-object p2, p0, Li3/f;->q:[B

    aget-object p2, p1, v0

    iput-object p2, p0, Li3/f;->x:[B

    aget-object p2, p1, v9

    iput-object p2, p0, Li3/f;->y:[B

    const/4 p2, 0x3

    aget-object p2, p1, p2

    iput-object p2, p0, Li3/f;->z1:[B

    const/4 p2, 0x4

    aget-object p2, p1, p2

    iput-object p2, p0, Li3/f;->A1:[B

    const/4 p2, 0x5

    aget-object p2, p1, p2

    iput-object p2, p0, Li3/f;->B1:[B

    const/4 p2, 0x6

    aget-object p2, p1, p2

    iput-object p2, p0, Li3/f;->C1:[B

    const/4 p2, 0x7

    aget-object p1, p1, p2

    iput-object p1, p0, Li3/f;->D1:[B

    goto :goto_b8

    :cond_3e
    invoke-static {p2, v10, v4}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Li3/f;->q:[B

    const/16 v3, 0x40

    invoke-static {p2, v4, v3}, Lm4/d;->q([BII)[B

    move-result-object v4

    iput-object v4, p0, Li3/f;->x:[B

    const/16 v4, 0x80

    invoke-static {p2, v3, v4}, Lm4/d;->q([BII)[B

    move-result-object v3

    iput-object v3, p0, Li3/f;->y:[B

    iget v3, v8, Li3/b;->g:I

    mul-int/2addr v3, v2

    add-int/2addr v3, v4

    invoke-static {p2, v4, v3}, Lm4/d;->q([BII)[B

    move-result-object v6

    iput-object v6, p0, Li3/f;->z1:[B

    mul-int/2addr v2, p1

    add-int/2addr v2, v3

    invoke-static {p2, v3, v2}, Lm4/d;->q([BII)[B

    move-result-object v7

    iput-object v7, p0, Li3/f;->A1:[B

    mul-int/lit16 p1, p1, 0x1a0

    add-int/2addr p1, v2

    invoke-static {p2, v2, p1}, Lm4/d;->q([BII)[B

    move-result-object v5

    iput-object v5, p0, Li3/f;->B1:[B

    new-instance p1, Lb1/a;

    invoke-direct {p1, v8}, Lb1/a;-><init>(Li3/b;)V

    new-instance v3, Li3/j;

    const/4 p2, 0x1

    invoke-direct {v3, v8, p2}, Li3/j;-><init>(Li3/b;I)V

    new-instance v4, Li3/j;

    const/4 p2, 0x0

    invoke-direct {v4, v8, p2}, Li3/j;-><init>(Li3/b;I)V

    new-instance p2, Li3/j;

    const/4 v2, 0x0

    invoke-direct {p2, v8, v2}, Li3/j;-><init>(Li3/b;I)V

    new-instance v2, Li3/j;

    const/4 v11, 0x0

    invoke-direct {v2, v8, v11}, Li3/j;-><init>(Li3/b;I)V

    invoke-static/range {v2 .. v8}, Li3/i;->d(Li3/j;Li3/j;Li3/j;[B[B[BLi3/b;)V

    invoke-virtual {p1, v0}, Lb1/a;->n([B)V

    new-instance v0, Li3/j;

    const/4 v5, 0x1

    invoke-direct {v0, v8, v5}, Li3/j;-><init>(Li3/b;I)V

    invoke-virtual {v3, v0}, Li3/j;->c(Li3/j;)V

    invoke-virtual {v0}, Li3/j;->g()V

    invoke-virtual {p1, p2, v0}, Lb1/a;->u(Li3/j;Li3/j;)V

    invoke-virtual {p2}, Li3/j;->i()V

    invoke-virtual {p2}, Li3/j;->d()V

    invoke-virtual {p2, v4}, Li3/j;->a(Li3/j;)V

    invoke-virtual {p2}, Li3/j;->b()V

    invoke-virtual {p2, v2}, Li3/j;->h(Li3/j;)V

    invoke-static {p2, v8}, Li3/i;->c(Li3/j;Li3/b;)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->C1:[B

    iput-object v1, p0, Li3/f;->D1:[B

    :goto_b8
    if-eqz p3, :cond_d1

    iget-object p1, p0, Li3/f;->C1:[B

    iget-object p2, p3, Li3/g;->x:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    invoke-static {p1, p2}, Lm4/d;->o([B[B)Z

    move-result p1

    if-eqz p1, :cond_c9

    goto :goto_d1

    :cond_c9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passed in public key does not match private values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d1
    :goto_d1
    iget-object p1, p0, Li3/f;->D1:[B

    if-eqz p1, :cond_d6

    move v9, v10

    :cond_d6
    iput v9, p0, Li3/f;->E1:I

    return-void
.end method

.method public constructor <init>(Li3/e;[B[B[B[B[B[B[B[B)V
    .registers 11

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->x:[B

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->y:[B

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->z1:[B

    invoke-static {p6}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->A1:[B

    invoke-static {p7}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->B1:[B

    invoke-static {p8}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->C1:[B

    invoke-static {p9}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/f;->D1:[B

    if-eqz p9, :cond_38

    const/4 p1, 0x0

    goto :goto_39

    :cond_38
    const/4 p1, 0x2

    :goto_39
    iput p1, p0, Li3/f;->E1:I

    return-void
.end method

.method public constructor <init>(Li3/f;I)V
    .registers 5

    iget-object v0, p1, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Li3/e;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, La3/a;-><init>(ZLjava/lang/Object;)V

    iget-object v0, p1, Li3/f;->q:[B

    iput-object v0, p0, Li3/f;->q:[B

    iget-object v0, p1, Li3/f;->x:[B

    iput-object v0, p0, Li3/f;->x:[B

    iget-object v0, p1, Li3/f;->y:[B

    iput-object v0, p0, Li3/f;->y:[B

    iget-object v0, p1, Li3/f;->z1:[B

    iput-object v0, p0, Li3/f;->z1:[B

    iget-object v0, p1, Li3/f;->A1:[B

    iput-object v0, p0, Li3/f;->A1:[B

    iget-object v0, p1, Li3/f;->B1:[B

    iput-object v0, p0, Li3/f;->B1:[B

    iget-object v0, p1, Li3/f;->C1:[B

    iput-object v0, p0, Li3/f;->C1:[B

    iget-object p1, p1, Li3/f;->D1:[B

    iput-object p1, p0, Li3/f;->D1:[B

    iput p2, p0, Li3/f;->E1:I

    return-void
.end method


# virtual methods
.method public final d(I)Li3/f;
    .registers 3

    iget v0, p0, Li3/f;->E1:I

    if-ne v0, p1, :cond_5

    return-object p0

    :cond_5
    if-eqz p1, :cond_16

    const/4 v0, 0x1

    if-eq p1, v0, :cond_16

    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    goto :goto_1a

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    iget-object v0, p0, Li3/f;->D1:[B

    if-eqz v0, :cond_20

    :goto_1a
    new-instance v0, Li3/f;

    invoke-direct {v0, p0, p1}, Li3/f;-><init>(Li3/f;I)V

    return-object v0

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no seed available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getEncoded()[B
    .registers 7

    iget-object v4, p0, Li3/f;->A1:[B

    iget-object v5, p0, Li3/f;->B1:[B

    iget-object v0, p0, Li3/f;->q:[B

    iget-object v1, p0, Li3/f;->x:[B

    iget-object v2, p0, Li3/f;->y:[B

    iget-object v3, p0, Li3/f;->z1:[B

    filled-new-array/range {v0 .. v5}, [[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->m([[B)[B

    move-result-object p0

    return-object p0
.end method
