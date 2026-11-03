.class public final Lv0/q0;
.super Lv0/p0;


# instance fields
.field public final synthetic v:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lv0/q0;->v:I

    invoke-direct {p0}, Lv0/n0;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv0/n0;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lv0/q0;->v:I

    invoke-direct {p0, p1}, Lv0/n0;-><init>(Lv0/n0;)V

    return-void
.end method


# virtual methods
.method public a()Lm4/e;
    .registers 2

    iget v0, p0, Lv0/q0;->v:I

    packed-switch v0, :pswitch_data_10

    invoke-super {p0}, Lv0/p0;->a()Lm4/e;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance v0, Lv0/q0;

    invoke-direct {v0, p0}, Lv0/q0;-><init>(Lv0/n0;)V

    return-object v0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method
