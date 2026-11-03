.class public final Ld2/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final A1:Ld2/n;

.field public static final B1:Ljava/util/HashMap;

.field public static final d:Ld2/n;

.field public static final q:Ld2/n;

.field public static final x:Ld2/n;

.field public static final y:Ld2/n;

.field public static final z1:Ld2/n;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Ld2/n;

    const-string v1, "ML-DSA-44"

    invoke-direct {v0, v1}, Ld2/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld2/n;->d:Ld2/n;

    new-instance v1, Ld2/n;

    const-string v2, "ML-DSA-65"

    invoke-direct {v1, v2}, Ld2/n;-><init>(Ljava/lang/String;)V

    sput-object v1, Ld2/n;->q:Ld2/n;

    new-instance v2, Ld2/n;

    const-string v3, "ML-DSA-87"

    invoke-direct {v2, v3}, Ld2/n;-><init>(Ljava/lang/String;)V

    sput-object v2, Ld2/n;->x:Ld2/n;

    new-instance v3, Ld2/n;

    const-string v4, "ML-DSA-44-WITH-SHA512"

    invoke-direct {v3, v4}, Ld2/n;-><init>(Ljava/lang/String;)V

    sput-object v3, Ld2/n;->y:Ld2/n;

    new-instance v4, Ld2/n;

    const-string v5, "ML-DSA-65-WITH-SHA512"

    invoke-direct {v4, v5}, Ld2/n;-><init>(Ljava/lang/String;)V

    sput-object v4, Ld2/n;->z1:Ld2/n;

    new-instance v5, Ld2/n;

    const-string v6, "ML-DSA-87-WITH-SHA512"

    invoke-direct {v5, v6}, Ld2/n;-><init>(Ljava/lang/String;)V

    sput-object v5, Ld2/n;->A1:Ld2/n;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Ld2/n;->B1:Ljava/util/HashMap;

    const-string v7, "ml-dsa-44"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ml-dsa-65"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ml-dsa-87"

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ml-dsa-44-with-sha512"

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ml-dsa-65-with-sha512"

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ml-dsa-87-with-sha512"

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/n;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld2/n;
    .registers 3

    if-eqz p0, :cond_1d

    sget-object v0, Ld2/n;->B1:Ljava/util/HashMap;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/n;

    if-eqz v0, :cond_11

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown parameter name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "name cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
