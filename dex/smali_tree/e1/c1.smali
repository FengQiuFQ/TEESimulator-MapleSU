.class public final Le1/c1;
.super Le1/b;


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v0, 0x20

    new-array v1, v0, [B

    iput-object v1, p0, Le1/c1;->d:[B

    array-length p0, v1

    const-string v2, "k"

    if-ne p0, v0, :cond_32

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length p0, v1

    if-ne p0, v0, :cond_2c

    const/4 p0, 0x0

    aget-byte p1, v1, p0

    and-int/lit16 p1, p1, 0xf8

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    const/16 p0, 0x1f

    aget-byte p1, v1, p0

    and-int/lit8 p1, p1, 0x7f

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    return-void

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    new-array v0, v1, [B

    iput-object v0, p0, Le1/c1;->d:[B

    const/4 p0, 0x0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Le1/d1;
    .registers 9

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v2, 0xa

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v0, v0, [B

    iget-object p0, p0, Le1/c1;->d:[B

    invoke-static {p0, v0}, Lq2/f;->O([B[B)V

    new-instance p0, Lq2/a;

    invoke-direct {p0}, Lq2/a;-><init>()V

    invoke-static {v0, p0}, Lq2/f;->S([BLq2/a;)V

    new-array v0, v2, [I

    new-array v5, v2, [I

    new-array v6, v2, [I

    new-array v2, v2, [I

    iget-object v7, p0, Lq2/a;->a:Ljava/lang/Object;

    check-cast v7, [I

    invoke-static {v7, v5}, Lp2/a;->K([I[I)V

    iget-object v7, p0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v7, [I

    invoke-static {v7, v6}, Lp2/a;->K([I[I)V

    iget-object v7, p0, Lq2/a;->c:Ljava/lang/Object;

    check-cast v7, [I

    invoke-static {v7, v2}, Lp2/a;->K([I[I)V

    invoke-static {v5, v6, v0}, Lp2/a;->C([I[I[I)V

    invoke-static {v5, v6, v5}, Lp2/a;->N([I[I[I)V

    invoke-static {v5, v2, v5}, Lp2/a;->C([I[I[I)V

    invoke-static {v2, v2}, Lp2/a;->K([I[I)V

    sget-object v7, Lq2/f;->h:[I

    invoke-static {v0, v7, v0}, Lp2/a;->C([I[I[I)V

    invoke-static {v0, v2, v0}, Lp2/a;->a([I[I[I)V

    invoke-static {v0, v5, v0}, Lp2/a;->a([I[I[I)V

    invoke-static {v0}, Lp2/a;->F([I)V

    invoke-static {v6}, Lp2/a;->F([I)V

    invoke-static {v2}, Lp2/a;->F([I)V

    invoke-static {v0}, Lp2/a;->y([I)I

    move-result v0

    invoke-static {v6}, Lp2/a;->y([I)I

    move-result v5

    not-int v5, v5

    and-int/2addr v0, v5

    invoke-static {v2}, Lp2/a;->y([I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_92

    iget-object v0, p0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v3}, Lp2/a;->h(II[I[I)V

    iget-object p0, p0, Lq2/a;->c:Ljava/lang/Object;

    check-cast p0, [I

    invoke-static {v2, v2, p0, v4}, Lp2/a;->h(II[I[I)V

    invoke-static {v4, v3, v3, v4}, Lp2/a;->c([I[I[I[I)V

    invoke-static {v4, v4}, Lp2/a;->w([I[I)V

    invoke-static {v3, v4, v3}, Lp2/a;->C([I[I[I)V

    invoke-static {v3}, Lp2/a;->F([I)V

    invoke-static {v2, v2, v1, v3}, Lp2/a;->r(II[B[I)V

    const/4 p0, 0x5

    const/16 v0, 0x10

    invoke-static {p0, v0, v1, v3}, Lp2/a;->r(II[B[I)V

    new-instance p0, Le1/d1;

    invoke-direct {p0, v1, v2}, Le1/d1;-><init>([BI)V

    return-object p0

    :cond_92
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
