.class Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;
.super Ljava/lang/Object;


# static fields
.field private static parameters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/n;->d:Ld2/n;

    const-string v1, "ML-DSA-44"

    sget-object v2, Li3/e;->d:Li3/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/n;->d:Ld2/n;

    const-string v1, "ML-DSA-65"

    sget-object v2, Li3/e;->e:Li3/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/n;->d:Ld2/n;

    const-string v1, "ML-DSA-87"

    sget-object v2, Li3/e;->f:Li3/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/n;->d:Ld2/n;

    const-string v1, "ML-DSA-44-WITH-SHA512"

    sget-object v2, Li3/e;->g:Li3/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/n;->d:Ld2/n;

    const-string v1, "ML-DSA-65-WITH-SHA512"

    sget-object v2, Li3/e;->h:Li3/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/n;->d:Ld2/n;

    const-string v1, "ML-DSA-87-WITH-SHA512"

    sget-object v2, Li3/e;->i:Li3/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameters(Ljava/lang/String;)Li3/e;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->parameters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li3/e;

    return-object p0
.end method
