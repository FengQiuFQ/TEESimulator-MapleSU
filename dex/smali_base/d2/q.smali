.class public final Ld2/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final d:Ld2/q;

.field public static final q:Ld2/q;

.field public static final x:Ld2/q;

.field public static final y:Ljava/util/HashMap;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ld2/q;

    const-string v1, "ML-KEM-512"

    invoke-direct {v0, v1}, Ld2/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld2/q;->d:Ld2/q;

    new-instance v1, Ld2/q;

    const-string v2, "ML-KEM-768"

    invoke-direct {v1, v2}, Ld2/q;-><init>(Ljava/lang/String;)V

    sput-object v1, Ld2/q;->q:Ld2/q;

    new-instance v2, Ld2/q;

    const-string v3, "ML-KEM-1024"

    invoke-direct {v2, v3}, Ld2/q;-><init>(Ljava/lang/String;)V

    sput-object v2, Ld2/q;->x:Ld2/q;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Ld2/q;->y:Ljava/util/HashMap;

    const-string v4, "ml-kem-512"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ml-kem-768"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "ml-kem-1024"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "kyber512"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "kyber768"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "kyber1024"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/q;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld2/q;
    .registers 3

    sget-object v0, Ld2/q;->y:Ljava/util/HashMap;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/q;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown parameter name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
