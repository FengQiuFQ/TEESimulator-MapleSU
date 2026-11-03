.class public final Lm/i;
.super Ljava/io/IOException;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lm/i;->c:I

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    iput p3, p0, Lm/i;->c:I

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lm/i;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget v0, p0, Lm/i;->c:I

    packed-switch v0, :pswitch_data_14

    iget-object p0, p0, Lm/i;->d:Ljava/lang/Exception;

    check-cast p0, Ljava/security/GeneralSecurityException;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lm/i;->d:Ljava/lang/Exception;

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    :pswitch_f
    iget-object p0, p0, Lm/i;->d:Ljava/lang/Exception;

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_a
    .end packed-switch
.end method
