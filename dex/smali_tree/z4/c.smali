.class public final synthetic Lz4/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/a;
.implements Lh/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lz4/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 5

    iget p0, p0, Lz4/c;->a:I

    sparse-switch p0, :sswitch_data_2c

    sget-object p0, Lz4/g;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_12
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :sswitch_17
    sget-object p0, Lz4/g;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    goto :goto_12

    :sswitch_21
    invoke-static {}, Lt4/j;->b()Lt4/h;

    move-result-object p0

    if-eqz p0, :cond_2a

    iget-object p0, p0, Lt4/h;->b:[B

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return-object p0

    :sswitch_data_2c
    .sparse-switch
        0x0 -> :sswitch_21
        0x3 -> :sswitch_17
    .end sparse-switch
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lz4/c;->a:I

    packed-switch p0, :pswitch_data_2a

    check-cast p1, Ljava/lang/String;

    const-string p0, "it"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    const/4 p0, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%02x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
    .end packed-switch
.end method
