.class public abstract Lv3/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv3/f;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lv3/f;->b:Ljava/util/HashMap;

    sget-object v2, Lz/b;->a:Lm/q;

    const-string v3, "SHA-256"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lz/b;->c:Lm/q;

    const-string v5, "SHA-512"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lz/b;->k:Lm/q;

    const-string v7, "SHAKE128"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lz/b;->l:Lm/q;

    const-string v9, "SHAKE256"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lm/q;)Lorg/bouncycastle/crypto/v;
    .registers 3

    sget-object v0, Lz/b;->a:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Ls0/b0;

    invoke-direct {p0}, Ls0/b0;-><init>()V

    return-object p0

    :cond_e
    sget-object v0, Lz/b;->c:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance p0, Ls0/e0;

    invoke-direct {p0}, Ls0/e0;-><init>()V

    return-object p0

    :cond_1c
    sget-object v0, Lz/b;->k:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance p0, Ls0/g0;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ls0/g0;-><init>(I)V

    return-object p0

    :cond_2c
    sget-object v0, Lz/b;->l:Lm/q;

    invoke-virtual {p0, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance p0, Ls0/g0;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Ls0/g0;-><init>(I)V

    return-object p0

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized digest OID: "

    invoke-static {v1, p0}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lm/q;
    .registers 3

    sget-object v0, Lv3/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unrecognized digest name: "

    invoke-static {v1, p0}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
