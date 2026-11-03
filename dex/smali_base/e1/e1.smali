.class public final Le1/e1;
.super Le1/b;


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v0, 0x38

    new-array v1, v0, [B

    iput-object v1, p0, Le1/e1;->d:[B

    array-length p0, v1

    const-string v2, "k"

    if-ne p0, v0, :cond_2d

    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length p0, v1

    if-ne p0, v0, :cond_27

    const/4 p0, 0x0

    aget-byte p1, v1, p0

    and-int/lit16 p1, p1, 0xfc

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    const/16 p0, 0x37

    aget-byte p1, v1, p0

    or-int/lit16 p1, p1, 0x80

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    return-void

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x38

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    new-array v0, v1, [B

    iput-object v0, p0, Le1/e1;->d:[B

    const/4 p0, 0x0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 56"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Le1/f1;
    .registers 9

    const/16 v0, 0x38

    new-array v0, v0, [B

    const/16 v1, 0x10

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/16 v4, 0x39

    new-array v4, v4, [B

    iget-object p0, p0, Le1/e1;->d:[B

    invoke-static {p0, v4}, Lq2/f;->P([B[B)V

    new-instance p0, Lq2/d;

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lq2/d;-><init>(I)V

    invoke-static {v4, p0}, Lq2/f;->T([BLq2/d;)V

    new-array v4, v1, [I

    new-array v5, v1, [I

    new-array v6, v1, [I

    new-array v1, v1, [I

    iget-object v7, p0, Lq2/d;->a:[I

    invoke-static {v7, v5}, Lp2/a;->M([I[I)V

    iget-object v7, p0, Lq2/d;->b:[I

    invoke-static {v7, v6}, Lp2/a;->M([I[I)V

    iget-object v7, p0, Lq2/d;->c:[I

    invoke-static {v7, v1}, Lp2/a;->M([I[I)V

    invoke-static {v5, v6, v4}, Lp2/a;->D([I[I[I)V

    invoke-static {v5, v6, v5}, Lp2/a;->b([I[I[I)V

    invoke-static {v5, v1, v5}, Lp2/a;->D([I[I[I)V

    invoke-static {v1, v1}, Lp2/a;->M([I[I)V

    const v7, 0x98a9

    invoke-static {v7, v4, v4}, Lp2/a;->A(I[I[I)V

    invoke-static {v4, v1, v4}, Lp2/a;->O([I[I[I)V

    invoke-static {v4, v5, v4}, Lp2/a;->b([I[I[I)V

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lp2/a;->I(I[I)V

    const/4 v7, -0x1

    invoke-static {v7, v4}, Lp2/a;->I(I[I)V

    invoke-static {v5, v6}, Lp2/a;->I(I[I)V

    invoke-static {v7, v6}, Lp2/a;->I(I[I)V

    invoke-static {v5, v1}, Lp2/a;->I(I[I)V

    invoke-static {v7, v1}, Lp2/a;->I(I[I)V

    invoke-static {v4}, Lp2/a;->z([I)I

    move-result v4

    invoke-static {v6}, Lp2/a;->z([I)I

    move-result v6

    not-int v6, v6

    and-int/2addr v4, v6

    invoke-static {v1}, Lp2/a;->z([I)I

    move-result v1

    not-int v1, v1

    and-int/2addr v1, v4

    if-eqz v1, :cond_94

    iget-object v1, p0, Lq2/d;->a:[I

    const/4 v4, 0x0

    invoke-static {v4, v4, v1, v2}, Lp2/a;->i(II[I[I)V

    iget-object p0, p0, Lq2/d;->b:[I

    invoke-static {v4, v4, p0, v3}, Lp2/a;->i(II[I[I)V

    invoke-static {v2, v2}, Lp2/a;->x([I[I)V

    invoke-static {v2, v3, v2}, Lp2/a;->D([I[I[I)V

    invoke-static {v2, v2}, Lp2/a;->M([I[I)V

    invoke-static {v5, v2}, Lp2/a;->I(I[I)V

    invoke-static {v7, v2}, Lp2/a;->I(I[I)V

    invoke-static {v4, v0, v2}, Lp2/a;->q(I[B[I)V

    new-instance p0, Le1/f1;

    invoke-direct {p0, v0, v4}, Le1/f1;-><init>([BI)V

    return-object p0

    :cond_94
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
