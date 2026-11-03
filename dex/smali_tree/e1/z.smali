.class public final Le1/z;
.super Le1/b;


# instance fields
.field public final d:Lq2/e;


# direct methods
.method public constructor <init>(Lq2/e;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    iput-object p1, p0, Le1/z;->d:Lq2/e;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le1/z;-><init>([BI)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 32"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BI)V
    .registers 13

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v1, 0x20

    new-array v2, v1, [B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x1c

    invoke-static {p1, v2}, Lq2/f;->f(I[B)I

    move-result p1

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    sget-object p2, Lq2/f;->a:[I

    const/4 v1, 0x7

    aget v3, p2, v1

    xor-int/2addr v3, p1

    sget-object v4, Lq2/f;->b:[I

    aget v5, v4, v1

    xor-int/2addr v5, p1

    sget-object v6, Lq2/f;->c:[I

    aget v1, v6, v1

    xor-int/2addr v1, p1

    const/4 v7, 0x6

    :goto_26
    if-lez v7, :cond_3e

    mul-int/lit8 v8, v7, 0x4

    invoke-static {v8, v2}, Lq2/f;->f(I[B)I

    move-result v8

    or-int/2addr p1, v8

    aget v9, p2, v7

    xor-int/2addr v9, v8

    or-int/2addr v3, v9

    aget v9, v4, v7

    xor-int/2addr v9, v8

    or-int/2addr v5, v9

    aget v9, v6, v7

    xor-int/2addr v8, v9

    or-int/2addr v1, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_26

    :cond_3e
    invoke-static {v0, v2}, Lq2/f;->f(I[B)I

    move-result v7

    const v8, -0x7fffffff

    const/high16 v9, -0x80000000

    if-nez p1, :cond_4f

    add-int p1, v7, v9

    if-gt p1, v8, :cond_4f

    :goto_4d
    move p1, v0

    goto :goto_6b

    :cond_4f
    if-nez v3, :cond_58

    add-int/2addr v9, v7

    aget p1, p2, v0

    sub-int/2addr p1, v8

    if-lt v9, p1, :cond_58

    goto :goto_4d

    :cond_58
    aget p1, v4, v0

    xor-int/2addr p1, v7

    or-int/2addr p1, v5

    aget p2, v6, v0

    xor-int/2addr p2, v7

    or-int/2addr p2, v1

    const/4 v1, 0x1

    if-eqz p1, :cond_65

    move p1, v1

    goto :goto_66

    :cond_65
    move p1, v0

    :goto_66
    if-eqz p2, :cond_69

    goto :goto_6a

    :cond_69
    move v1, v0

    :goto_6a
    and-int/2addr p1, v1

    :goto_6b
    const/4 p2, 0x0

    if-nez p1, :cond_6f

    goto :goto_92

    :cond_6f
    new-instance p1, Lq2/b;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lq2/b;-><init>(I)V

    invoke-static {v2, v0, p1}, Lq2/f;->h([BZLq2/b;)Z

    move-result v1

    if-nez v1, :cond_7c

    goto :goto_92

    :cond_7c
    const/16 p2, 0x14

    new-array p2, p2, [I

    iget-object v1, p1, Lq2/b;->a:[I

    invoke-static {v0, v0, v1, p2}, Lp2/a;->h(II[I[I)V

    iget-object p1, p1, Lq2/b;->b:[I

    const/16 v1, 0xa

    invoke-static {v0, v1, p1, p2}, Lp2/a;->h(II[I[I)V

    new-instance p1, Lq2/e;

    invoke-direct {p1, p2}, Lq2/e;-><init>([I)V

    move-object p2, p1

    :goto_92
    if-eqz p2, :cond_97

    iput-object p2, p0, Le1/z;->d:Lq2/e;

    return-void

    :cond_97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-object p0, p0, Le1/z;->d:Lq2/e;

    invoke-static {p0, v0, v1}, Lq2/f;->n(Lq2/e;[BI)V

    return-object v0
.end method
