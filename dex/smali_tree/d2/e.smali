.class public final Ld2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final q:Ljava/util/HashMap;


# instance fields
.field public c:[B

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ld2/e;->q:Ljava/util/HashMap;

    sget-object v1, Lr/a;->g:Lm/q;

    const-string v2, "E-A"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr/a;->h:Lm/q;

    const-string v2, "E-B"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr/a;->i:Lm/q;

    const-string v2, "E-C"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lr/a;->j:Lm/q;

    const-string v2, "E-D"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz1/a;->r:Lm/q;

    const-string v2, "Param-Z"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm/q;[B)V
    .registers 4

    sget-object v0, Ld2/e;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ld2/e;->c:[B

    iput-object p1, p0, Ld2/e;->d:[B

    invoke-static {v0}, Lv0/p;->f(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ld2/e;->d:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/e;->c:[B

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown OID: "

    invoke-static {p2, p1}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
