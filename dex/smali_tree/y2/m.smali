.class public final Ly2/m;
.super Lm/n;


# instance fields
.field public final A1:I

.field public final B1:[B

.field public final c:I

.field public final d:I

.field public final q:[B

.field public final x:[B

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(I[B[B[B[B[B)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ly2/m;->c:I

    iput p1, p0, Ly2/m;->d:I

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->x:[B

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->y:[B

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->z1:[B

    invoke-static {p6}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->B1:[B

    const/4 p1, -0x1

    iput p1, p0, Ly2/m;->A1:I

    return-void
.end method

.method public constructor <init>(I[B[B[B[B[BI)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ly2/m;->c:I

    iput p1, p0, Ly2/m;->d:I

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->x:[B

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->y:[B

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->z1:[B

    invoke-static {p6}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->B1:[B

    iput p7, p0, Ly2/m;->A1:I

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/l;->u(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_22

    invoke-virtual {v1, v3}, Lm/l;->u(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_22

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown version of sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    invoke-virtual {v1}, Lm/l;->y()I

    move-result v1

    iput v1, p0, Ly2/m;->c:I

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3f

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    if-ne v1, v2, :cond_37

    goto :goto_3f

    :cond_37
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key sequence wrong size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    :goto_3f
    invoke-virtual {p1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v5

    invoke-virtual {v5}, Lm/l;->y()I

    move-result v5

    iput v5, p0, Ly2/m;->d:I

    invoke-virtual {v1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v5

    iget-object v5, v5, Lm/r;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Ly2/m;->q:[B

    invoke-virtual {v1, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v5

    iget-object v5, v5, Lm/r;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Ly2/m;->x:[B

    invoke-virtual {v1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v5

    iget-object v5, v5, Lm/r;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Ly2/m;->y:[B

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v5

    iget-object v5, v5, Lm/r;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    iput-object v5, p0, Ly2/m;->z1:[B

    invoke-virtual {v1}, Lm/x;->size()I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-ne v5, v6, :cond_c7

    invoke-virtual {v1, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v1

    iget v5, v1, Lm/a0;->q:I

    if-nez v5, :cond_bf

    invoke-static {v1}, Lq4/k;->v(Lm/a0;)V

    sget-object v5, Lm/l;->q:Lm/a;

    invoke-virtual {v1, v0, v5}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v0

    invoke-virtual {v5, v0}, Lm/a;->a(Lm/u;)V

    check-cast v0, Lm/l;

    invoke-virtual {v0}, Lm/l;->y()I

    move-result v0

    :goto_bc
    iput v0, p0, Ly2/m;->A1:I

    goto :goto_cf

    :cond_bf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown tag in XMSSPrivateKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c7
    invoke-virtual {v1}, Lm/x;->size()I

    move-result v0

    if-ne v0, v7, :cond_f2

    const/4 v0, -0x1

    goto :goto_bc

    :goto_cf
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    if-ne v0, v2, :cond_ee

    invoke-virtual {p1, v4}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object p1

    sget-object v0, Lm/r;->d:Lm/a;

    invoke-virtual {v0, p1, v3}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p1

    check-cast p1, Lm/r;

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ly2/m;->B1:[B

    return-void

    :cond_ee
    const/4 p1, 0x0

    iput-object p1, p0, Ly2/m;->B1:[B

    return-void

    :cond_f2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keySeq should be 5 or 6 in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 9

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iget v1, p0, Ly2/m;->A1:I

    new-instance v2, Lm/l;

    if-ltz v1, :cond_14

    const-wide/16 v3, 0x1

    invoke-direct {v2, v3, v4}, Lm/l;-><init>(J)V

    :goto_10
    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    goto :goto_1a

    :cond_14
    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lm/l;-><init>(J)V

    goto :goto_10

    :goto_1a
    new-instance v2, Lm/g;

    invoke-direct {v2}, Lm/g;-><init>()V

    new-instance v3, Lm/l;

    iget v4, p0, Ly2/m;->d:I

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lm/l;-><init>(J)V

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/x0;

    iget-object v4, p0, Ly2/m;->q:[B

    invoke-direct {v3, v4}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/x0;

    iget-object v4, p0, Ly2/m;->x:[B

    invoke-direct {v3, v4}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/x0;

    iget-object v4, p0, Ly2/m;->y:[B

    invoke-direct {v3, v4}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/x0;

    iget-object v4, p0, Ly2/m;->z1:[B

    invoke-direct {v3, v4}, Lm/r;-><init>([B)V

    invoke-virtual {v2, v3}, Lm/g;->a(Lm/f;)V

    const/4 v3, 0x0

    if-ltz v1, :cond_63

    new-instance v4, Lm/d1;

    new-instance v5, Lm/l;

    int-to-long v6, v1

    invoke-direct {v5, v6, v7}, Lm/l;-><init>(J)V

    invoke-direct {v4, v3, v3, v5}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v4}, Lm/g;->a(Lm/f;)V

    :cond_63
    new-instance v1, Lm/a1;

    invoke-direct {v1, v2}, Lm/x;-><init>(Lm/g;)V

    const/4 v2, -0x1

    iput v2, v1, Lm/a1;->q:I

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/d1;

    new-instance v4, Lm/x0;

    iget-object p0, p0, Ly2/m;->B1:[B

    invoke-direct {v4, p0}, Lm/r;-><init>([B)V

    const/4 p0, 0x1

    invoke-direct {v1, p0, v3, v4}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    iput v2, p0, Lm/a1;->q:I

    return-object p0
.end method
