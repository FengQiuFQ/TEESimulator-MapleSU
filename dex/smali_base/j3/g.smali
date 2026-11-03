.class public final Lj3/g;
.super La3/a;


# instance fields
.field public final A1:[B

.field public final B1:[B

.field public final C1:I

.field public final q:[B

.field public final x:[B

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(Lj3/f;[BLj3/h;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lj3/f;->a()Lj3/a;

    move-result-object p1

    iget v1, p1, Lj3/a;->h:I

    iget v2, p1, Lj3/a;->i:I

    array-length v3, p2

    const/16 v4, 0x40

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v7, 0x20

    if-ne v3, v4, :cond_3e

    invoke-static {p2, v6, v7}, Lm4/d;->q([BII)[B

    move-result-object v1

    array-length v2, p2

    invoke-static {p2, v7, v2}, Lm4/d;->q([BII)[B

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lj3/a;->b([B[B)[[B

    move-result-object p1

    aget-object p2, p1, v5

    iput-object p2, p0, Lj3/g;->q:[B

    const/4 p2, 0x3

    aget-object p2, p1, p2

    iput-object p2, p0, Lj3/g;->x:[B

    const/4 p2, 0x4

    aget-object p2, p1, p2

    iput-object p2, p0, Lj3/g;->y:[B

    aget-object p2, p1, v6

    iput-object p2, p0, Lj3/g;->z1:[B

    aget-object p2, p1, v0

    iput-object p2, p0, Lj3/g;->A1:[B

    const/4 p2, 0x5

    aget-object p1, p1, p2

    iput-object p1, p0, Lj3/g;->B1:[B

    goto :goto_6a

    :cond_3e
    invoke-static {p2, v6, v2}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->q:[B

    add-int p1, v2, v1

    sub-int/2addr p1, v7

    invoke-static {p2, v2, p1}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->z1:[B

    sub-int/2addr v1, v7

    add-int/2addr v1, v2

    add-int/lit8 p1, v1, 0x20

    invoke-static {p2, v1, p1}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lj3/g;->A1:[B

    add-int/lit8 v0, v1, 0x40

    invoke-static {p2, p1, v0}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->x:[B

    add-int/lit8 v1, v1, 0x60

    invoke-static {p2, v0, v1}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->y:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lj3/g;->B1:[B

    :goto_6a
    if-eqz p3, :cond_89

    iget-object p1, p0, Lj3/g;->z1:[B

    iget-object p2, p3, Lj3/h;->q:[B

    invoke-static {p1, p2}, Lm4/d;->o([B[B)Z

    move-result p1

    if-eqz p1, :cond_81

    iget-object p1, p0, Lj3/g;->A1:[B

    iget-object p2, p3, Lj3/h;->x:[B

    invoke-static {p1, p2}, Lm4/d;->o([B[B)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_89

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "passed in public key does not match private values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_89
    :goto_89
    iget-object p1, p0, Lj3/g;->B1:[B

    if-nez p1, :cond_8e

    goto :goto_8f

    :cond_8e
    move v5, v6

    :goto_8f
    iput v5, p0, Lj3/g;->C1:I

    return-void
.end method

.method public constructor <init>(Lj3/f;[B[B[B[B[B[B)V
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->x:[B

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->y:[B

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->z1:[B

    invoke-static {p6}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->A1:[B

    invoke-static {p7}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lj3/g;->B1:[B

    const/4 p1, 0x0

    iput p1, p0, Lj3/g;->C1:I

    return-void
.end method

.method public constructor <init>(Lj3/g;I)V
    .registers 5

    iget-object v0, p1, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lj3/f;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, La3/a;-><init>(ZLjava/lang/Object;)V

    iget-object v0, p1, Lj3/g;->q:[B

    iput-object v0, p0, Lj3/g;->q:[B

    iget-object v0, p1, Lj3/g;->z1:[B

    iput-object v0, p0, Lj3/g;->z1:[B

    iget-object v0, p1, Lj3/g;->A1:[B

    iput-object v0, p0, Lj3/g;->A1:[B

    iget-object v0, p1, Lj3/g;->x:[B

    iput-object v0, p0, Lj3/g;->x:[B

    iget-object v0, p1, Lj3/g;->y:[B

    iput-object v0, p0, Lj3/g;->y:[B

    iget-object p1, p1, Lj3/g;->B1:[B

    iput-object p1, p0, Lj3/g;->B1:[B

    iput p2, p0, Lj3/g;->C1:I

    return-void
.end method


# virtual methods
.method public final d(I)Lj3/g;
    .registers 3

    iget v0, p0, Lj3/g;->C1:I

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
    iget-object v0, p0, Lj3/g;->B1:[B

    if-eqz v0, :cond_20

    :goto_1a
    new-instance v0, Lj3/g;

    invoke-direct {v0, p0, p1}, Lj3/g;-><init>(Lj3/g;I)V

    return-object v0

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no seed available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getEncoded()[B
    .registers 5

    iget-object v0, p0, Lj3/g;->x:[B

    iget-object v1, p0, Lj3/g;->y:[B

    iget-object v2, p0, Lj3/g;->q:[B

    iget-object v3, p0, Lj3/g;->z1:[B

    iget-object p0, p0, Lj3/g;->A1:[B

    filled-new-array {v2, v3, p0, v0, v1}, [[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->m([[B)[B

    move-result-object p0

    return-object p0
.end method
