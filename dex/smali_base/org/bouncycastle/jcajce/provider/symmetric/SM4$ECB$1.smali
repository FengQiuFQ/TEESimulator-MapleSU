.class Lorg/bouncycastle/jcajce/provider/symmetric/SM4$ECB$1;
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
    .registers 2

    new-instance p0, Lv0/c0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv0/c0;-><init>(I)V

    return-object p0
.end method
