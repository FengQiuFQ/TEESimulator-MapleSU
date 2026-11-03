.class public final Lk2/a0;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/u;


# instance fields
.field public final synthetic g:I

.field public final h:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 3

    iput p2, p0, Lk2/a0;->g:I

    iput p1, p0, Lk2/a0;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk2/v;)Lk2/v;
    .registers 5

    instance-of v0, p1, Lk2/z;

    if-eqz v0, :cond_7

    check-cast p1, Lk2/z;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    iget v1, p1, Lk2/z;->b:I

    iget v2, p0, Lk2/a0;->h:I

    if-ne v1, v2, :cond_14

    iput v0, p1, Lk2/z;->a:I

    return-object p1

    :cond_14
    new-instance v1, Lk2/z;

    invoke-direct {v1}, Lk2/z;-><init>()V

    iput v0, v1, Lk2/z;->a:I

    iget p0, p0, Lk2/a0;->h:I

    iput p0, v1, Lk2/z;->b:I

    if-eqz p1, :cond_31

    iget-object p0, p1, Lk2/z;->c:[Lk2/p;

    iput-object p0, v1, Lk2/z;->c:[Lk2/p;

    iget-object p0, p1, Lk2/z;->d:[Lk2/p;

    iput-object p0, v1, Lk2/z;->d:[Lk2/p;

    iget-object p0, p1, Lk2/z;->e:Lk2/p;

    iput-object p0, v1, Lk2/z;->e:Lk2/p;

    iget p0, p1, Lk2/z;->f:I

    iput p0, v1, Lk2/z;->f:I

    :cond_31
    return-object v1
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lk2/a0;->g:I

    packed-switch v0, :pswitch_data_e

    iget p0, p0, Lk2/a0;->h:I

    return p0

    :pswitch_8
    iget p0, p0, Lk2/a0;->h:I

    return p0

    :pswitch_b
    iget p0, p0, Lk2/a0;->h:I

    return p0

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
