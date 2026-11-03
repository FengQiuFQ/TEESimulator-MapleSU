.class public Lorg/bouncycastle/jce/provider/X509StoreCRLCollection;
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

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/X509StoreCRLCollection;->_store:Lm4/b;

    invoke-virtual {p0, p1}, Lm4/b;->getMatches(Lm4/i;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public engineInit(Lq4/l;)V
    .registers 2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
