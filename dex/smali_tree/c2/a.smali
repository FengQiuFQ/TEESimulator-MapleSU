.class public final Lc2/a;
.super Ljava/io/FilterInputStream;


# instance fields
.field public A1:I

.field public final c:Ljavax/crypto/Cipher;

.field public final d:[B

.field public q:Z

.field public x:Z

.field public y:[B

.field public z1:I


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;Ljavax/crypto/Cipher;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x200

    new-array p1, p1, [B

    iput-object p1, p0, Lc2/a;->d:[B

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc2/a;->q:Z

    iput-boolean p1, p0, Lc2/a;->x:Z

    iput-object p2, p0, Lc2/a;->c:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lc2/a;->x:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lc2/a;->b()I

    :cond_7
    iget-boolean v0, p0, Lc2/a;->q:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->q:Z

    iget-object p0, p0, Lc2/a;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0
    :try_end_14
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_14} :catch_17

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0

    :catch_17
    move-exception p0

    new-instance v0, Lm/i;

    const-string v1, "Error finalising cipher"

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final available()I
    .registers 2

    iget v0, p0, Lc2/a;->z1:I

    iget p0, p0, Lc2/a;->A1:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final b()I
    .registers 6

    iget-boolean v0, p0, Lc2/a;->q:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    goto :goto_2c

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc2/a;->x:Z

    const/4 v0, 0x0

    iput v0, p0, Lc2/a;->A1:I

    iput v0, p0, Lc2/a;->z1:I

    :cond_e
    :goto_e
    iget v2, p0, Lc2/a;->z1:I

    if-nez v2, :cond_3d

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lc2/a;->d:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_2d

    invoke-virtual {p0}, Lc2/a;->a()[B

    move-result-object v0

    iput-object v0, p0, Lc2/a;->y:[B

    if-eqz v0, :cond_2c

    array-length v2, v0

    if-nez v2, :cond_28

    goto :goto_2c

    :cond_28
    array-length v0, v0

    iput v0, p0, Lc2/a;->z1:I

    return v0

    :cond_2c
    :goto_2c
    return v1

    :cond_2d
    iget-object v3, p0, Lc2/a;->c:Ljavax/crypto/Cipher;

    iget-object v4, p0, Lc2/a;->d:[B

    invoke-virtual {v3, v4, v0, v2}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v2

    iput-object v2, p0, Lc2/a;->y:[B

    if-eqz v2, :cond_e

    array-length v2, v2

    iput v2, p0, Lc2/a;->z1:I

    goto :goto_e

    :cond_3d
    return v2
.end method

.method public final close()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_12

    iget-boolean v0, p0, Lc2/a;->q:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lc2/a;->a()[B

    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lc2/a;->A1:I

    iput v0, p0, Lc2/a;->z1:I

    return-void

    :catchall_12
    move-exception v0

    iget-boolean v1, p0, Lc2/a;->q:Z

    if-nez v1, :cond_1a

    invoke-virtual {p0}, Lc2/a;->a()[B

    :cond_1a
    throw v0
.end method

.method public final mark(I)V
    .registers 2

    return-void
.end method

.method public final markSupported()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final read()I
    .registers 4

    iget v0, p0, Lc2/a;->A1:I

    iget v1, p0, Lc2/a;->z1:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lc2/a;->b()I

    move-result v0

    if-gez v0, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    iget-object v0, p0, Lc2/a;->y:[B

    iget v1, p0, Lc2/a;->A1:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc2/a;->A1:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final read([BII)I
    .registers 6

    iget v0, p0, Lc2/a;->A1:I

    iget v1, p0, Lc2/a;->z1:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lc2/a;->b()I

    move-result v0

    if-gez v0, :cond_e

    const/4 p0, -0x1

    return p0

    :cond_e
    invoke-virtual {p0}, Lc2/a;->available()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lc2/a;->y:[B

    iget v1, p0, Lc2/a;->A1:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lc2/a;->A1:I

    add-int/2addr p1, p3

    iput p1, p0, Lc2/a;->A1:I

    return p3
.end method

.method public final reset()V
    .registers 1

    return-void
.end method

.method public final skip(J)J
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lc2/a;->available()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lc2/a;->A1:I

    add-int/2addr p2, p1

    iput p2, p0, Lc2/a;->A1:I

    int-to-long p0, p1

    return-wide p0
.end method
