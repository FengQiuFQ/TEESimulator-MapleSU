.class public final Lv3/i;
.super Lv3/n;


# instance fields
.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    packed-switch p1, :pswitch_data_1a

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lv3/n;-><init>(I)V

    const/4 p1, 0x0

    iput p1, p0, Lv3/i;->e:I

    iput p1, p0, Lv3/i;->f:I

    iput p1, p0, Lv3/i;->g:I

    return-void

    :pswitch_f
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lv3/n;-><init>(I)V

    iput p1, p0, Lv3/i;->e:I

    iput p1, p0, Lv3/i;->f:I

    iput p1, p0, Lv3/i;->g:I

    return-void

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method
