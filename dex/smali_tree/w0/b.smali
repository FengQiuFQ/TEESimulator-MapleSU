.class public final Lw0/b;
.super Lw0/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;I)V
    .registers 3

    iput p2, p0, Lw0/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 1

    iget p0, p0, Lw0/b;->a:I

    packed-switch p0, :pswitch_data_c

    const-string p0, "FF3-1"

    return-object p0

    :pswitch_8
    const-string p0, "FF1"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method

.method public final b(ZLorg/bouncycastle/crypto/g;)V
    .registers 3

    iget p0, p0, Lw0/b;->a:I

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->i(Ljava/lang/Object;)V

    packed-switch p0, :pswitch_data_c

    const/4 p0, 0x0

    throw p0

    :pswitch_a
    const/4 p0, 0x0

    throw p0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
