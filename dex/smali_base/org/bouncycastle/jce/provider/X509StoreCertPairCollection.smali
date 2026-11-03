.class public Lorg/bouncycastle/jce/provider/X509StoreCertPairCollection;
.super Lq4/k;


# instance fields
.field private _store:Lm4/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetMatches(Lm4/i;)Ljava/util/Collection;
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509StoreCertPairCollection;->_store:Lm4/b;

    invoke-virtual {p0, p1}, Lm4/b;->getMatches(Lm4/i;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public engineInit(Lq4/l;)V
    .registers 3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Initialization parameters must be an instance of "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v0, Lq4/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
