.class public final Lr4/b;
.super Ljava/lang/Exception;


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4

    iput p3, p0, Lr4/b;->c:I

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lr4/b;->d:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 2

    iget v0, p0, Lr4/b;->c:I

    packed-switch v0, :pswitch_data_e

    iget-object p0, p0, Lr4/b;->d:Ljava/lang/Exception;

    check-cast p0, Ljava/security/GeneralSecurityException;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lr4/b;->d:Ljava/lang/Exception;

    return-object p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
