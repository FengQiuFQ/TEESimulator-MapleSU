.class public final Lq2/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I

.field public final b:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    packed-switch p1, :pswitch_data_2e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/b;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lq2/b;->b:[I

    return-void

    :pswitch_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/b;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lq2/b;->b:[I

    return-void

    :pswitch_1f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xa

    new-array v0, p1, [I

    iput-object v0, p0, Lq2/b;->a:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lq2/b;->b:[I

    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_11
    .end packed-switch
.end method
