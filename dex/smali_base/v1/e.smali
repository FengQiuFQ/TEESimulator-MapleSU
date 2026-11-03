.class public final Lv1/e;
.super Lm/u0;


# instance fields
.field public final synthetic q:I


# direct methods
.method public constructor <init>(Lm/u0;I)V
    .registers 3

    iput p2, p0, Lv1/e;->q:I

    packed-switch p2, :pswitch_data_1a

    iget-object p1, p1, Lm/u0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lm/u0;-><init>(Ljava/lang/String;)V

    return-void

    :pswitch_f
    iget-object p1, p1, Lm/u0;->c:[B

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lm/u0;-><init>(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lv1/e;->q:I

    packed-switch v0, :pswitch_data_20

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "VerisignCzagExtension: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetscapeRevocationURL: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
