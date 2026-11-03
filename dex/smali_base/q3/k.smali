.class public final Lq3/k;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public synthetic constructor <init>(IIIIII)V
    .registers 7

    iput p6, p0, Lq3/k;->a:I

    iput p1, p0, Lq3/k;->b:I

    iput p2, p0, Lq3/k;->c:I

    iput p3, p0, Lq3/k;->d:I

    iput p4, p0, Lq3/k;->e:I

    iput p5, p0, Lq3/k;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq3/h;
    .registers 9

    iget v0, p0, Lq3/k;->a:I

    packed-switch v0, :pswitch_data_26

    new-instance v1, Lq3/g;

    iget v5, p0, Lq3/k;->e:I

    iget v6, p0, Lq3/k;->f:I

    iget v2, p0, Lq3/k;->b:I

    iget v3, p0, Lq3/k;->c:I

    iget v4, p0, Lq3/k;->d:I

    invoke-direct/range {v1 .. v6}, Lq3/g;-><init>(IIIII)V

    return-object v1

    :pswitch_15
    new-instance v2, Lq3/f;

    iget v6, p0, Lq3/k;->e:I

    iget v7, p0, Lq3/k;->f:I

    iget v3, p0, Lq3/k;->b:I

    iget v4, p0, Lq3/k;->c:I

    iget v5, p0, Lq3/k;->d:I

    invoke-direct/range {v2 .. v7}, Lq3/f;-><init>(IIIII)V

    return-object v2

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lq3/k;->a:I

    packed-switch v0, :pswitch_data_c

    iget p0, p0, Lq3/k;->b:I

    return p0

    :pswitch_8
    iget p0, p0, Lq3/k;->b:I

    return p0

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch
.end method
