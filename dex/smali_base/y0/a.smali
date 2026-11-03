.class public final Ly0/a;
.super Ljava/io/FilterInputStream;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/io/FilterInputStream;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Ly0/a;->c:I

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Ly0/a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final read()I
    .registers 3

    iget v0, p0, Ly0/a;->c:I

    packed-switch v0, :pswitch_data_28

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_15

    iget-object p0, p0, Ly0/a;->d:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Lz0/d;->update(B)V

    :cond_15
    return v0

    :pswitch_16
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_26

    iget-object p0, p0, Ly0/a;->d:Ljava/lang/Object;

    check-cast p0, Ls0/z;

    int-to-byte v1, v0

    invoke-virtual {p0, v1}, Ls0/j;->update(B)V

    :cond_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_16
    .end packed-switch
.end method

.method public final read([BII)I
    .registers 5

    iget v0, p0, Ly0/a;->c:I

    packed-switch v0, :pswitch_data_26

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-ltz p3, :cond_14

    iget-object p0, p0, Ly0/a;->d:Ljava/lang/Object;

    check-cast p0, Lz0/d;

    invoke-virtual {p0, p1, p2, p3}, Lz0/d;->update([BII)V

    :cond_14
    return p3

    :pswitch_15
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_24

    iget-object p0, p0, Ly0/a;->d:Ljava/lang/Object;

    check-cast p0, Ls0/z;

    invoke-virtual {p0, p1, p2, p3}, Ls0/j;->update([BII)V

    :cond_24
    return p3

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method
