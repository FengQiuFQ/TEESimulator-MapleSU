.class public final Lr0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/i;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    iput p2, p0, Lr0/a;->a:I

    iput-object p1, p0, Lr0/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lr0/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0/a;->b:Ljava/lang/String;

    instance-of p0, p2, Lorg/bouncycastle/crypto/j;

    if-nez p0, :cond_d

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getServiceName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lr0/a;->a:I

    packed-switch v0, :pswitch_data_e

    iget-object p0, p0, Lr0/a;->b:Ljava/lang/String;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lr0/a;->b:Ljava/lang/String;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lr0/a;->b:Ljava/lang/String;

    return-object p0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method
