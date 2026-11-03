.class public final Lm/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lm/f;
.implements Lm/s1;


# instance fields
.field public final synthetic c:I

.field public d:La2/r;


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lm/i0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(La2/r;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lm/i0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/i0;->d:La2/r;

    return-void
.end method

.method public static e(La2/r;)Lm/q0;
    .registers 4

    :try_start_0
    new-instance v0, Lm/q0;

    new-instance v1, Lm/n1;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    invoke-direct {v1, p0}, Lm/x;-><init>(Lm/g;)V

    const/4 p0, -0x1

    iput p0, v1, Lm/n1;->q:I

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lm/q0;-><init>(Lm/x;I)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    :catch_13
    move-exception p0

    new-instance v0, Lm/i;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 4

    iget v0, p0, Lm/i0;->c:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_4a

    iget-object p0, p0, Lm/i0;->d:La2/r;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    sget-object v0, Lm/l1;->a:Lm/n1;

    iget v0, p0, Lm/g;->b:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_16

    sget-object p0, Lm/l1;->b:Lm/o1;

    goto :goto_1f

    :cond_16
    new-instance v0, Lm/o1;

    invoke-direct {v0, p0, v1}, Lm/y;-><init>(Lm/g;Z)V

    const/4 p0, -0x1

    iput p0, v0, Lm/o1;->x:I

    move-object p0, v0

    :goto_1f
    return-object p0

    :pswitch_20
    iget-object p0, p0, Lm/i0;->d:La2/r;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    invoke-static {p0}, Lm/l1;->a(Lm/g;)Lm/n1;

    move-result-object p0

    return-object p0

    :pswitch_2b
    iget-object p0, p0, Lm/i0;->d:La2/r;

    invoke-static {p0}, Lm/i0;->e(La2/r;)Lm/q0;

    move-result-object p0

    return-object p0

    :pswitch_32
    iget-object p0, p0, Lm/i0;->d:La2/r;

    new-instance v0, Lm/j0;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Lm/y;-><init>(Lm/g;Z)V

    return-object v0

    :pswitch_3e
    iget-object p0, p0, Lm/i0;->d:La2/r;

    new-instance v0, Lm/h0;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    invoke-direct {v0, p0}, Lm/x;-><init>(Lm/g;)V

    return-object v0

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_32
        :pswitch_2b
        :pswitch_20
    .end packed-switch
.end method

.method public final d()Lm/u;
    .registers 4

    iget v0, p0, Lm/i0;->c:I

    packed-switch v0, :pswitch_data_72

    :try_start_5
    invoke-virtual {p0}, Lm/i0;->a()Lm/u;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    new-instance v0, Lm/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :pswitch_16
    :try_start_16
    invoke-virtual {p0}, Lm/i0;->a()Lm/u;

    move-result-object p0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1a} :catch_1b

    return-object p0

    :catch_1b
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_26
    const-string v0, "unable to get DER object"

    :try_start_28
    iget-object p0, p0, Lm/i0;->d:La2/r;

    invoke-static {p0}, Lm/i0;->e(La2/r;)Lm/q0;

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_2f

    return-object p0

    :catch_2f
    move-exception p0

    goto :goto_33

    :catch_31
    move-exception p0

    goto :goto_3a

    :goto_33
    new-instance v1, Lm/t;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :goto_3a
    new-instance v1, Lm/t;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v1

    :pswitch_41
    :try_start_41
    iget-object p0, p0, Lm/i0;->d:La2/r;

    new-instance v0, Lm/j0;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/y;-><init>(Lm/g;Z)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    move-exception p0

    new-instance v0, Lm/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :pswitch_5a
    :try_start_5a
    iget-object p0, p0, Lm/i0;->d:La2/r;

    new-instance v0, Lm/h0;

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    invoke-direct {v0, p0}, Lm/x;-><init>(Lm/g;)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_65} :catch_66

    return-object v0

    :catch_66
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_41
        :pswitch_26
        :pswitch_16
    .end packed-switch
.end method
