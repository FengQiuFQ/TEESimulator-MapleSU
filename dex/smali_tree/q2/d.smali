.class public final Lq2/d;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    packed-switch p1, :pswitch_data_28

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/d;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/d;->b:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lq2/d;->c:[I

    return-void

    :pswitch_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/d;->a:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/d;->b:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lq2/d;->c:[I

    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method
