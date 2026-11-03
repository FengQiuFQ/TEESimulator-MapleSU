.class public final Lc2/c;
.super Ljava/io/OutputStream;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lc2/c;->c:I

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 3

    iget v0, p0, Lc2/c;->c:I

    packed-switch v0, :pswitch_data_2c

    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lz0/d;->update(B)V

    return-void

    :pswitch_e
    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Ls0/z;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ls0/j;->update(B)V

    return-void

    :pswitch_17
    :try_start_17
    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Ljava/security/Signature;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update(B)V
    :try_end_1f
    .catch Ljava/security/SignatureException; {:try_start_17 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_e
    .end packed-switch
.end method

.method public write([B)V
    .registers 3

    iget v0, p0, Lc2/c;->c:I

    packed-switch v0, :pswitch_data_1c

    invoke-super {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void

    :pswitch_9
    :try_start_9
    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Ljava/security/Signature;

    invoke-virtual {p0, p1}, Ljava/security/Signature;->update([B)V
    :try_end_10
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public final write([BII)V
    .registers 5

    iget v0, p0, Lc2/c;->c:I

    packed-switch v0, :pswitch_data_28

    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    invoke-virtual {p0, p1, p2, p3}, Lz0/d;->update([BII)V

    return-void

    :pswitch_d
    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Ls0/z;

    invoke-virtual {p0, p1, p2, p3}, Ls0/j;->update([BII)V

    return-void

    :pswitch_15
    :try_start_15
    iget-object p0, p0, Lc2/c;->d:Ljava/lang/Object;

    check-cast p0, Ljava/security/Signature;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V
    :try_end_1c
    .catch Ljava/security/SignatureException; {:try_start_15 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_15
        :pswitch_d
    .end packed-switch
.end method
