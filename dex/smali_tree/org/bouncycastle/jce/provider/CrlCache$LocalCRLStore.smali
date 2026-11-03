.class Lorg/bouncycastle/jce/provider/CrlCache$LocalCRLStore;
.super Ljava/lang/Object;

# interfaces
.implements La2/j;
.implements Ljava/lang/Iterable;


# instance fields
.field private _local:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Lm4/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lm4/j;->getMatches(Lm4/i;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/CrlCache$LocalCRLStore;->_local:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getMatches(Lm4/i;)Ljava/util/Collection;
    .registers 5

    if-nez p1, :cond_a

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/CrlCache$LocalCRLStore;->_local:Ljava/util/Collection;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/CrlCache$LocalCRLStore;->_local:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CRL;

    invoke-interface {p1, v1}, Lm4/i;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/CrlCache$LocalCRLStore;->getMatches(Lm4/i;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
