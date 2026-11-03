.class public final Lm/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3

    iput p2, p0, Lm/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/a;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lm/u;)V
    .registers 3

    iget-object p0, p0, Lm/a;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "unexpected object: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B)Lm/u;
    .registers 2

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/a;->a(Lm/u;)V

    return-object p1
.end method

.method public c(Lm/x;)Lm/u;
    .registers 2

    iget p0, p0, Lm/a;->b:I

    sparse-switch p0, :sswitch_data_2a

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_d
    invoke-virtual {p1}, Lm/x;->A()Lm/y;

    move-result-object p0

    return-object p0

    :sswitch_12
    return-object p1

    :sswitch_13
    invoke-virtual {p1}, Lm/x;->z()Lm/r;

    move-result-object p0

    return-object p0

    :sswitch_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit constructed encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_20
    invoke-virtual {p1}, Lm/x;->y()Lm/q0;

    move-result-object p0

    return-object p0

    :sswitch_25
    invoke-virtual {p1}, Lm/x;->x()Lm/b;

    move-result-object p0

    return-object p0

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_25
        0x4 -> :sswitch_20
        0xc -> :sswitch_18
        0xe -> :sswitch_13
        0x11 -> :sswitch_12
        0x12 -> :sswitch_d
    .end sparse-switch
.end method

.method public final d(Lm/a0;Z)Lm/u;
    .registers 3

    invoke-static {p1}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {p1, p2, p0}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm/a;->a(Lm/u;)V

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
