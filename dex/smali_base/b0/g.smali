.class public final Lb0/g;
.super Lm/n;


# instance fields
.field public final synthetic c:I

.field public d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lb0/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lb0/g;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lm4/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_11

    iput-object p1, p0, Lb0/g;->d:Ljava/lang/Object;

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid CRL number : not in (0..MAX)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    iget v0, p0, Lb0/g;->c:I

    packed-switch v0, :pswitch_data_26

    new-instance v0, Lm/l;

    iget-object p0, p0, Lb0/g;->d:Ljava/lang/Object;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :pswitch_f
    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object p0, p0, Lb0/g;->d:Ljava/lang/Object;

    check-cast p0, Lb0/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lb0/g;->c:I

    packed-switch v0, :pswitch_data_1e

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CRLNumber: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb0/g;->d:Ljava/lang/Object;

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
