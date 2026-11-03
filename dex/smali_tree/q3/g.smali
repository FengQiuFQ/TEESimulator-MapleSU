.class public final Lq3/g;
.super Lq3/h;


# instance fields
.field public final k:Ls0/g0;


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lq3/h;-><init>(IIIII)V

    new-instance p1, Ls0/g0;

    const/16 p2, 0x100

    invoke-direct {p1, p2}, Ls0/g0;-><init>(I)V

    iput-object p1, p0, Lq3/g;->k:Ls0/g0;

    new-instance p0, Ls0/g0;

    invoke-direct {p0, p2}, Ls0/g0;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lb1/a;[B[B)[B
    .registers 8

    iget v0, p0, Lq3/h;->a:I

    new-array v1, v0, [B

    array-length v2, p2

    iget-object p0, p0, Lq3/g;->k:Ls0/g0;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, v2}, Ls0/n;->f([BII)V

    iget-object p1, p1, Lb1/a;->h:Ljava/lang/Object;

    check-cast p1, [B

    array-length p2, p1

    invoke-virtual {p0, p1, v3, p2}, Ls0/n;->f([BII)V

    array-length p1, p3

    invoke-virtual {p0, p3, v3, p1}, Ls0/n;->f([BII)V

    invoke-virtual {p0, v1, v3, v0}, Ls0/g0;->b([BII)I

    return-object v1
.end method

.method public final b(Lb1/a;[B[B[B)[B
    .registers 9

    iget v0, p0, Lq3/h;->a:I

    new-array v1, v0, [B

    array-length v2, p2

    iget-object p0, p0, Lq3/g;->k:Ls0/g0;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, v2}, Ls0/n;->f([BII)V

    iget-object p1, p1, Lb1/a;->h:Ljava/lang/Object;

    check-cast p1, [B

    array-length p2, p1

    invoke-virtual {p0, p1, v3, p2}, Ls0/n;->f([BII)V

    array-length p1, p3

    invoke-virtual {p0, p3, v3, p1}, Ls0/n;->f([BII)V

    array-length p1, p4

    invoke-virtual {p0, p4, v3, p1}, Ls0/n;->f([BII)V

    invoke-virtual {p0, v1, v3, v0}, Ls0/g0;->b([BII)I

    return-object v1
.end method

.method public final c([B[B[B[B[B)Lq3/c;
    .registers 16

    iget v0, p0, Lq3/h;->g:I

    iget v1, p0, Lq3/h;->h:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    const/16 v1, 0x8

    div-int/2addr v0, v1

    iget v2, p0, Lq3/h;->f:I

    iget v3, p0, Lq3/h;->i:I

    div-int v2, v3, v2

    sub-int/2addr v3, v2

    add-int/lit8 v4, v2, 0x7

    div-int/2addr v4, v1

    add-int/lit8 v5, v3, 0x7

    div-int/2addr v5, v1

    add-int v6, v0, v4

    add-int/2addr v6, v5

    new-array v7, v6, [B

    array-length v8, p1

    iget-object p0, p0, Lq3/g;->k:Ls0/g0;

    const/4 v9, 0x0

    invoke-virtual {p0, p1, v9, v8}, Ls0/n;->f([BII)V

    array-length p1, p2

    invoke-virtual {p0, p2, v9, p1}, Ls0/n;->f([BII)V

    array-length p1, p3

    invoke-virtual {p0, p3, v9, p1}, Ls0/n;->f([BII)V

    if-eqz p4, :cond_31

    array-length p1, p4

    invoke-virtual {p0, p4, v9, p1}, Ls0/n;->f([BII)V

    :cond_31
    array-length p1, p5

    invoke-virtual {p0, p5, v9, p1}, Ls0/n;->f([BII)V

    invoke-virtual {p0, v7, v9, v6}, Ls0/g0;->b([BII)I

    new-array p0, v1, [B

    rsub-int/lit8 p1, v5, 0x8

    invoke-static {v7, v0, p0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, p0}, Lm4/d;->c(I[B)J

    move-result-wide p0

    rsub-int/lit8 p2, v3, 0x40

    const-wide/16 p3, -0x1

    ushr-long p2, p3, p2

    and-long/2addr p0, p2

    const/4 p2, 0x4

    new-array p2, p2, [B

    add-int/2addr v5, v0

    rsub-int/lit8 p3, v4, 0x4

    invoke-static {v7, v5, p2, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, p2}, Lm4/d;->b(I[B)I

    move-result p2

    rsub-int/lit8 p3, v2, 0x20

    const/4 p4, -0x1

    ushr-int p3, p4, p3

    and-int/2addr p2, p3

    new-instance p3, Lq3/c;

    invoke-static {v7, v9, v0}, Lm4/d;->q([BII)[B

    move-result-object p4

    invoke-direct {p3, p2, p0, p1, p4}, Lq3/c;-><init>(IJ[B)V

    return-object p3
.end method

.method public final d(Lb1/a;[B[B)[B
    .registers 7

    array-length v0, p2

    iget-object v1, p0, Lq3/g;->k:Ls0/g0;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Ls0/n;->f([BII)V

    iget-object p1, p1, Lb1/a;->h:Ljava/lang/Object;

    check-cast p1, [B

    array-length p2, p1

    invoke-virtual {v1, p1, v2, p2}, Ls0/n;->f([BII)V

    array-length p1, p3

    invoke-virtual {v1, p3, v2, p1}, Ls0/n;->f([BII)V

    iget p0, p0, Lq3/h;->a:I

    new-array p1, p0, [B

    invoke-virtual {v1, p1, v2, p0}, Ls0/g0;->b([BII)I

    return-object p1
.end method

.method public final e([B[B[B[B)[B
    .registers 8

    array-length v0, p1

    iget-object v1, p0, Lq3/g;->k:Ls0/g0;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ls0/n;->f([BII)V

    array-length p1, p2

    invoke-virtual {v1, p2, v2, p1}, Ls0/n;->f([BII)V

    if-eqz p3, :cond_11

    array-length p1, p3

    invoke-virtual {v1, p3, v2, p1}, Ls0/n;->f([BII)V

    :cond_11
    array-length p1, p4

    invoke-virtual {v1, p4, v2, p1}, Ls0/n;->f([BII)V

    iget p0, p0, Lq3/h;->a:I

    new-array p1, p0, [B

    invoke-virtual {v1, p1, v2, p0}, Ls0/g0;->b([BII)I

    return-object p1
.end method

.method public final f(Lb1/a;[B[B)[B
    .registers 8

    iget v0, p0, Lq3/h;->a:I

    new-array v1, v0, [B

    array-length v2, p2

    iget-object p0, p0, Lq3/g;->k:Ls0/g0;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3, v2}, Ls0/n;->f([BII)V

    iget-object p1, p1, Lb1/a;->h:Ljava/lang/Object;

    check-cast p1, [B

    array-length p2, p1

    invoke-virtual {p0, p1, v3, p2}, Ls0/n;->f([BII)V

    array-length p1, p3

    invoke-virtual {p0, p3, v3, p1}, Ls0/n;->f([BII)V

    invoke-virtual {p0, v1, v3, v0}, Ls0/g0;->b([BII)I

    return-object v1
.end method

.method public final g([B)V
    .registers 2

    return-void
.end method
