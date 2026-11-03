.class public final Lm/g0;
.super Ljava/lang/Object;

# interfaces
.implements Lm/s;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lm/g0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La2/r;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lm/g0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/g0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 3

    iget v0, p0, Lm/g0;->c:I

    packed-switch v0, :pswitch_data_28

    new-instance v0, Lm/x0;

    iget-object p0, p0, Lm/g0;->d:Ljava/lang/Object;

    check-cast p0, Lm/r1;

    invoke-virtual {p0}, Lm/r1;->b()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    return-object v0

    :pswitch_13
    iget-object p0, p0, Lm/g0;->d:Ljava/lang/Object;

    check-cast p0, La2/r;

    new-instance v0, Lm/f0;

    new-instance v1, Lm/n0;

    invoke-direct {v1, p0}, Lm/n0;-><init>(La2/r;)V

    invoke-static {v1}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/f0;-><init>([B[Lm/r;)V

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_13
    .end packed-switch
.end method

.method public final c()Ljava/io/InputStream;
    .registers 2

    iget v0, p0, Lm/g0;->c:I

    packed-switch v0, :pswitch_data_14

    iget-object p0, p0, Lm/g0;->d:Ljava/lang/Object;

    check-cast p0, Lm/r1;

    return-object p0

    :pswitch_a
    new-instance v0, Lm/n0;

    iget-object p0, p0, Lm/g0;->d:Ljava/lang/Object;

    check-cast p0, La2/r;

    invoke-direct {v0, p0}, Lm/n0;-><init>(La2/r;)V

    return-object v0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public final d()Lm/u;
    .registers 4

    iget v0, p0, Lm/g0;->c:I

    packed-switch v0, :pswitch_data_44

    :try_start_5
    invoke-virtual {p0}, Lm/g0;->a()Lm/u;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
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

    :pswitch_1d
    :try_start_1d
    iget-object p0, p0, Lm/g0;->d:Ljava/lang/Object;

    check-cast p0, La2/r;

    new-instance v0, Lm/f0;

    new-instance v1, Lm/n0;

    invoke-direct {v1, p0}, Lm/n0;-><init>(La2/r;)V

    invoke-static {v1}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/f0;-><init>([B[Lm/r;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_30} :catch_31

    return-object v0

    :catch_31
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

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method
