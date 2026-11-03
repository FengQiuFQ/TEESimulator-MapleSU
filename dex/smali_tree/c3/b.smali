.class public final Lc3/b;
.super La3/a;


# instance fields
.field public final A1:[B

.field public final B1:[B

.field public final C1:[B

.field public final q:[B

.field public final x:[B

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(Lc3/a;[BLc3/c;)V
    .registers 12

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    iget p1, p1, Lc3/a;->a:I

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    const/4 v0, 0x2

    const/high16 v2, 0x20000

    const/16 v3, 0x80

    const/16 v4, 0x60

    const/high16 v5, 0x80000

    if-eq p1, v0, :cond_34

    const/4 v0, 0x3

    const/4 v6, 0x5

    if-eq p1, v0, :cond_31

    if-ne p1, v6, :cond_23

    const/16 p1, 0x8

    const/4 v6, 0x7

    :goto_21
    move v0, v5

    goto :goto_37

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "The mode "

    const-string p3, "is not supported by Crystals Dilithium!"

    invoke-static {p2, p3, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    const/4 p1, 0x6

    move v4, v3

    goto :goto_21

    :cond_34
    const/4 v6, 0x4

    move v0, v2

    move p1, v6

    :goto_37
    new-instance v7, Ls0/g0;

    invoke-direct {v7, v3}, Ls0/g0;-><init>(I)V

    new-instance v7, Ls0/g0;

    invoke-direct {v7, v1}, Ls0/g0;-><init>(I)V

    if-ne v0, v2, :cond_44

    goto :goto_46

    :cond_44
    if-ne v0, v5, :cond_85

    :goto_46
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-static {p2, v0, v1}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lc3/b;->q:[B

    const/16 v0, 0x40

    invoke-static {p2, v1, v0}, Lm4/d;->q([BII)[B

    move-result-object v1

    iput-object v1, p0, Lc3/b;->x:[B

    invoke-static {p2, v0, v3}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lc3/b;->y:[B

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    invoke-static {p2, v3, v6}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lc3/b;->z1:[B

    mul-int/2addr v4, p1

    add-int/2addr v4, v6

    invoke-static {p2, v6, v4}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lc3/b;->A1:[B

    mul-int/lit16 p1, p1, 0x1a0

    add-int/2addr p1, v4

    invoke-static {p2, v4, p1}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->B1:[B

    if-eqz p3, :cond_81

    iget-object p1, p3, Lc3/c;->x:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->C1:[B

    return-void

    :cond_81
    const/4 p1, 0x0

    iput-object p1, p0, Lc3/b;->C1:[B

    return-void

    :cond_85
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong Dilithium Gamma1!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lc3/a;[B[B[B[B[B[B[B)V
    .registers 10

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->x:[B

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->y:[B

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->z1:[B

    invoke-static {p6}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->A1:[B

    invoke-static {p7}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->B1:[B

    invoke-static {p8}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/b;->C1:[B

    return-void
.end method
