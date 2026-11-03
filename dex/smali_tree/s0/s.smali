.class public final Ls0/s;
.super Ljava/io/ByteArrayOutputStream;


# virtual methods
.method public final a([BI)V
    .registers 5

    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-static {v0, v1, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final reset()V
    .registers 1

    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    invoke-static {p0}, Lm4/d;->d([B)V

    return-void
.end method
