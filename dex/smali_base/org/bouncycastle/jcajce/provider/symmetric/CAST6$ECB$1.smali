.class Lorg/bouncycastle/jcajce/provider/symmetric/CAST6$ECB$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/bouncycastle/crypto/d;
    .registers 1

    new-instance p0, Lv0/g;

    invoke-direct {p0}, Lv0/g;-><init>()V

    return-object p0
.end method
