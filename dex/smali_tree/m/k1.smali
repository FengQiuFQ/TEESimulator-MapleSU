.class public final Lm/k1;
.super Ljava/lang/Object;

# interfaces
.implements Lm/c;


# instance fields
.field public final c:Lm/r1;

.field public d:I


# direct methods
.method public constructor <init>(Lm/r1;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lm/k1;->d:I

    iput-object p1, p0, Lm/k1;->c:Lm/r1;

    return-void
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 1

    iget-object p0, p0, Lm/k1;->c:Lm/r1;

    invoke-virtual {p0}, Lm/r1;->b()[B

    move-result-object p0

    invoke-static {p0}, Lm/b;->r([B)Lm/b;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/io/InputStream;
    .registers 4

    iget-object v0, p0, Lm/k1;->c:Lm/r1;

    iget v1, v0, Lm/r1;->x:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_27

    invoke-virtual {v0}, Lm/r1;->read()I

    move-result v2

    iput v2, p0, Lm/k1;->d:I

    if-lez v2, :cond_26

    const/4 p0, 0x2

    if-lt v1, p0, :cond_1e

    const/4 p0, 0x7

    if-gt v2, p0, :cond_16

    goto :goto_26

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "zero length data with non-zero pad bits"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "content octets cannot be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Lm/u;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lm/k1;->a()Lm/u;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final f()I
    .registers 1

    iget p0, p0, Lm/k1;->d:I

    return p0
.end method
