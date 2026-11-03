.class public final Li2/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lh2/h;


# instance fields
.field public final c:Li2/n;

.field public final d:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li2/n;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/l;->c:Li2/n;

    sget-object p1, Lr/a;->o:Lm/q;

    invoke-virtual {p1}, Lm/q;->u()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Li2/l;->q:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Li2/l;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Lm/q;

    invoke-direct {v0, p1}, Lm/q;-><init>(Ljava/lang/String;)V

    sget-object v1, Lr/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/e;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_11

    goto :goto_29

    :catch_11
    sget-object v0, Lr/d;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lr/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/e;

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_4b

    new-instance v1, Li2/n;

    iget-object v2, v0, Lr/e;->c:Lm/l;

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, v0, Lr/e;->d:Lm/l;

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v0, v0, Lr/e;->q:Lm/l;

    invoke-virtual {v0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Li2/n;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Li2/l;->c:Li2/n;

    iput-object p1, p0, Li2/l;->d:Ljava/lang/String;

    iput-object p2, p0, Li2/l;->q:Ljava/lang/String;

    iput-object p3, p0, Li2/l;->x:Ljava/lang/String;

    return-void

    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no key parameter set for passed in name/OID."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lr/f;)Li2/l;
    .registers 4

    iget-object v0, p0, Lr/f;->q:Lm/q;

    iget-object v1, p0, Lr/f;->d:Lm/q;

    iget-object v2, p0, Lr/f;->c:Lm/q;

    if-eqz v0, :cond_1c

    new-instance v0, Li2/l;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lr/f;->q:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v2, v1, p0}, Li2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1c
    const/4 p0, 0x0

    new-instance v0, Li2/l;

    if-eqz v1, :cond_2d

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1, p0}, Li2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2d
    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Li2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Li2/l;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    check-cast p1, Li2/l;

    iget-object v0, p0, Li2/l;->c:Li2/n;

    iget-object v2, p1, Li2/l;->c:Li2/n;

    invoke-virtual {v0, v2}, Li2/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p1, Li2/l;->q:Ljava/lang/String;

    iget-object v2, p0, Li2/l;->q:Ljava/lang/String;

    if-eq v2, v0, :cond_1f

    if-eqz v2, :cond_2f

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :cond_1f
    iget-object p1, p1, Li2/l;->x:Ljava/lang/String;

    iget-object p0, p0, Li2/l;->x:Ljava/lang/String;

    if-eq p0, p1, :cond_2d

    if-eqz p0, :cond_2f

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2d
    const/4 p0, 0x1

    return p0

    :cond_2f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Li2/l;->c:Li2/n;

    invoke-virtual {v0}, Li2/n;->hashCode()I

    move-result v0

    iget-object v1, p0, Li2/l;->q:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Li2/l;->x:Ljava/lang/String;

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    xor-int/2addr p0, v0

    return p0
.end method
