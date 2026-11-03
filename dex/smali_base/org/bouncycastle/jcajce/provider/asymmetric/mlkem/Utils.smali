.class Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;
.super Ljava/lang/Object;


# static fields
.field private static parameters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/q;->d:Ld2/q;

    const-string v1, "ML-KEM-512"

    sget-object v2, Lj3/f;->q:Lj3/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/q;->d:Ld2/q;

    const-string v1, "ML-KEM-768"

    sget-object v2, Lj3/f;->x:Lj3/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    sget-object v1, Ld2/q;->d:Ld2/q;

    const-string v1, "ML-KEM-1024"

    sget-object v2, Lj3/f;->y:Lj3/f;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameters(Ljava/lang/String;)Lj3/f;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/Utils;->parameters:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj3/f;

    return-object p0
.end method
