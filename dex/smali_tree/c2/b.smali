.class public final Lc2/b;
.super Ljava/io/FilterOutputStream;


# instance fields
.field public final c:Ljavax/crypto/Cipher;

.field public final d:[B


# direct methods
.method public constructor <init>(Ljava/io/DataOutputStream;Ljavax/crypto/Cipher;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lc2/b;->d:[B

    iput-object p2, p0, Lc2/b;->c:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lc2/b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    goto :goto_14

    :catch_10
    move-exception v0

    goto :goto_29

    :cond_12
    :goto_12
    const/4 v0, 0x0

    goto :goto_32

    :goto_14
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error closing stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_27
    move-object v0, v1

    goto :goto_32

    :goto_29
    new-instance v1, Lm/i;

    const-string v2, "Error during cipher finalisation"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v0, v3}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_27

    :goto_32
    :try_start_32
    invoke-virtual {p0}, Lc2/b;->flush()V

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_3b

    goto :goto_3f

    :catch_3b
    move-exception p0

    if-nez v0, :cond_3f

    move-object v0, p0

    :cond_3f
    :goto_3f
    if-nez v0, :cond_42

    return-void

    :cond_42
    throw v0
.end method

.method public final flush()V
    .registers 1

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .registers 4

    int-to-byte p1, p1

    iget-object v0, p0, Lc2/b;->d:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lc2/b;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 5

    iget-object v0, p0, Lc2/b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_d
    return-void
.end method
