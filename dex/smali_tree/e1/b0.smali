.class public final Le1/b0;
.super Le1/b;


# instance fields
.field public final d:Lq2/e;


# direct methods
.method public constructor <init>(Lq2/e;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    iput-object p1, p0, Le1/b0;->d:Lq2/e;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le1/b0;-><init>([BI)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 57"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BI)V
    .registers 12

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v1, 0x39

    new-array v2, v1, [B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object p1, Lq2/f;->p:[I

    const/16 p2, 0x38

    aget-byte p2, v2, p2

    and-int/lit8 p2, p2, 0x7f

    const/4 v1, 0x0

    if-eqz p2, :cond_17

    goto :goto_79

    :cond_17
    const/16 p2, 0x34

    invoke-static {p2, v2}, Lq2/f;->f(I[B)I

    move-result p2

    const/16 v3, 0xd

    aget v3, p1, v3

    xor-int/2addr v3, p2

    const/16 v4, 0xc

    :goto_24
    const/high16 v5, -0x80000000

    if-lez v4, :cond_40

    mul-int/lit8 v6, v4, 0x4

    invoke-static {v6, v2}, Lq2/f;->f(I[B)I

    move-result v6

    if-nez v3, :cond_38

    add-int v7, v6, v5

    aget v8, p1, v4

    add-int/2addr v8, v5

    if-le v7, v8, :cond_38

    goto :goto_79

    :cond_38
    or-int/2addr p2, v6

    aget v5, p1, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    :cond_40
    invoke-static {v0, v2}, Lq2/f;->f(I[B)I

    move-result v4

    const v6, -0x7fffffff

    if-nez p2, :cond_4e

    add-int p2, v4, v5

    if-gt p2, v6, :cond_4e

    goto :goto_79

    :cond_4e
    if-nez v3, :cond_57

    add-int/2addr v4, v5

    aget p1, p1, v0

    sub-int/2addr p1, v6

    if-lt v4, p1, :cond_57

    goto :goto_79

    :cond_57
    new-instance p1, Lq2/b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lq2/b;-><init>(I)V

    invoke-static {v2, v0, p1}, Lq2/f;->i([BZLq2/b;)Z

    move-result p2

    if-nez p2, :cond_64

    goto :goto_79

    :cond_64
    const/16 p2, 0x20

    new-array p2, p2, [I

    iget-object v1, p1, Lq2/b;->a:[I

    invoke-static {v0, v0, v1, p2}, Lp2/a;->i(II[I[I)V

    iget-object p1, p1, Lq2/b;->b:[I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1, p2}, Lp2/a;->i(II[I[I)V

    new-instance v1, Lq2/e;

    invoke-direct {v1, p2}, Lq2/e;-><init>([I)V

    :goto_79
    if-eqz v1, :cond_7e

    iput-object v1, p0, Le1/b0;->d:Lq2/e;

    return-void

    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
