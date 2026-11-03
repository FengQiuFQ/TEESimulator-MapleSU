.class public final Ls0/t;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/v;


# instance fields
.field public final g:Ls0/s;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/s;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ls0/t;->g:Ls0/s;

    return-void
.end method


# virtual methods
.method public final doFinal([BI)I
    .registers 5

    iget-object v0, p0, Ls0/t;->g:Ls0/s;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0, p1, p2}, Ls0/s;->a([BI)V

    invoke-virtual {p0}, Ls0/t;->reset()V

    return v1
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "NULL"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    iget-object p0, p0, Ls0/t;->g:Ls0/s;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    return p0
.end method

.method public final reset()V
    .registers 1

    iget-object p0, p0, Ls0/t;->g:Ls0/s;

    invoke-virtual {p0}, Ls0/s;->reset()V

    return-void
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Ls0/t;->g:Ls0/s;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Ls0/t;->g:Ls0/s;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
