.class public final Lm/r1;
.super Lm/w1;


# static fields
.field public static final y:[B


# instance fields
.field public final q:I

.field public x:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lm/r1;->y:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lm/w1;-><init>(Ljava/io/InputStream;I)V

    if-gtz p2, :cond_13

    if-ltz p2, :cond_b

    invoke-virtual {p0}, Lm/w1;->a()V

    goto :goto_13

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "negative lengths not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    :goto_13
    iput p2, p0, Lm/r1;->q:I

    iput p2, p0, Lm/r1;->x:I

    return-void
.end method


# virtual methods
.method public final b()[B
    .registers 5

    iget v0, p0, Lm/r1;->x:I

    if-nez v0, :cond_7

    sget-object p0, Lm/r1;->y:[B

    return-object p0

    :cond_7
    iget v1, p0, Lm/w1;->d:I

    if-ge v0, v1, :cond_3d

    new-array v1, v0, [B

    iget-object v2, p0, Lm/w1;->c:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lm/r1;->x:I

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lm/w1;->a()V

    return-object v1

    :cond_1d
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEF length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lm/r1;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm/r1;->x:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "corrupted stream - out of bounds length found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lm/r1;->x:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " >= "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read()I
    .registers 4

    iget v0, p0, Lm/r1;->x:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    iget-object v0, p0, Lm/w1;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1a

    iget v1, p0, Lm/r1;->x:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm/r1;->x:I

    if-nez v1, :cond_19

    invoke-virtual {p0}, Lm/w1;->a()V

    :cond_19
    return v0

    :cond_1a
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEF length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lm/r1;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm/r1;->x:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final read([BII)I
    .registers 5

    iget v0, p0, Lm/r1;->x:I

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lm/w1;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1d

    iget p2, p0, Lm/r1;->x:I

    sub-int/2addr p2, p1

    iput p2, p0, Lm/r1;->x:I

    if-nez p2, :cond_1c

    invoke-virtual {p0}, Lm/w1;->a()V

    :cond_1c
    return p1

    :cond_1d
    new-instance p1, Ljava/io/EOFException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "DEF length "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lm/r1;->q:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " object truncated by "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm/r1;->x:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
