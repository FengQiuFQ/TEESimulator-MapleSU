.class public final Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;
.super Ljava/lang/Object;


# static fields
.field private static nameMappings:Ljava/util/Map;

.field private static oidMappings:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    sget-object v1, Lr/a;->f:Lm/q;

    const-string v2, "E-TEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    sget-object v1, Lr/a;->g:Lm/q;

    const-string v2, "E-A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    sget-object v3, Lr/a;->h:Lm/q;

    const-string v4, "E-B"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    sget-object v5, Lr/a;->i:Lm/q;

    const-string v6, "E-C"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    sget-object v7, Lr/a;->j:Lm/q;

    const-string v8, "E-D"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->oidMappings:Ljava/util/Map;

    sget-object v9, Lz1/a;->r:Lm/q;

    const-string v10, "PARAM-Z"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/GOST28147;->nameMappings:Ljava/util/Map;

    return-object v0
.end method
