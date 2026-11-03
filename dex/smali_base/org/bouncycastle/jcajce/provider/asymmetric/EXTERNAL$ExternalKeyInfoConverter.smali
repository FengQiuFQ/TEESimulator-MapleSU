.class Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# instance fields
.field private final provider:Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/EXTERNAL$ExternalKeyInfoConverter;->provider:Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    return-void
.end method


# virtual methods
.method public generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "no support for private key"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 2

    invoke-virtual {p1}, Ll0/p0;->i()Lm/u;

    move-result-object p0

    if-eqz p0, :cond_10

    new-instance p1, Lo/e;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {p1, p0}, Lo/e;-><init>(Lm/x;)V

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    new-instance p0, La2/e;

    invoke-direct {p0, p1}, La2/e;-><init>(Lo/e;)V

    return-object p0
.end method
