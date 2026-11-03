.class public final Lv0/b;
.super Lv0/x;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    packed-switch p1, :pswitch_data_16

    new-instance p1, Lv0/a;

    invoke-direct {p1}, Lv0/a;-><init>()V

    invoke-direct {p0, p1}, Lv0/x;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void

    :pswitch_c
    new-instance p1, Lv0/f;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lv0/f;-><init>(I)V

    invoke-direct {p0, p1}, Lv0/x;-><init>(Lorg/bouncycastle/crypto/d;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_c
    .end packed-switch
.end method
