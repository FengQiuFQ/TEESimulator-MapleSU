.class public final Lj3/h;
.super La3/a;


# instance fields
.field public final q:[B

.field public final x:[B


# direct methods
.method public constructor <init>(Lj3/f;[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lj3/f;->a()Lj3/a;

    move-result-object p1

    array-length v1, p2

    iget v2, p1, Lj3/a;->h:I

    if-ne v1, v2, :cond_2f

    array-length v1, p2

    add-int/lit8 v1, v1, -0x20

    invoke-static {p2, v0, v1}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lj3/h;->q:[B

    array-length v1, p2

    add-int/lit8 v1, v1, -0x20

    array-length v2, p2

    invoke-static {p2, v1, v2}, Lm4/d;->q([BII)[B

    move-result-object p2

    iput-object p2, p0, Lj3/h;->x:[B

    invoke-virtual {p1, v0}, Lj3/a;->a([B)Z

    move-result p0

    if-eqz p0, :cond_27

    return-void

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Modulus check failed for ML-KEM public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'encoding\' has invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lj3/f;[B[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Lj3/f;->a()Lj3/a;

    move-result-object p1

    array-length v0, p2

    iget v1, p1, Lj3/a;->d:I

    if-ne v0, v1, :cond_35

    array-length v0, p3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_2d

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lj3/h;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p3

    iput-object p3, p0, Lj3/h;->x:[B

    invoke-virtual {p1, p2}, Lj3/a;->a([B)Z

    move-result p0

    if-eqz p0, :cond_25

    return-void

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Modulus check failed for ML-KEM public key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'rho\' has invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'t\' has invalid length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
