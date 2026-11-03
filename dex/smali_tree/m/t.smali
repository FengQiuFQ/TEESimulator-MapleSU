.class public final Lm/t;
.super Ljava/lang/IllegalStateException;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lm/t;->c:I

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    iput p3, p0, Lm/t;->c:I

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lm/t;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget v0, p0, Lm/t;->c:I

    packed-switch v0, :pswitch_data_e

    iget-object p0, p0, Lm/t;->d:Ljava/lang/Exception;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lm/t;->d:Ljava/lang/Exception;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lm/t;->d:Ljava/lang/Exception;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
