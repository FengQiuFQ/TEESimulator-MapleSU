.class Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;
.super Ljava/lang/Object;


# static fields
.field private static CURVE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->createCurveMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->CURVE_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCurveMap()Ljava/util/Map;
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lt0/b;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lm0/e;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    const/4 v4, 0x0

    if-nez v3, :cond_28

    move-object v3, v4

    goto :goto_30

    :cond_28
    sget-object v5, Lm0/e;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    :goto_30
    if-nez v3, :cond_4a

    sget-object v3, Lf0/d;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    if-nez v3, :cond_42

    move-object v3, v4

    goto :goto_4a

    :cond_42
    sget-object v5, Lf0/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    :cond_4a
    :goto_4a
    if-nez v3, :cond_64

    sget-object v3, Lz/a;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    if-eqz v3, :cond_63

    sget-object v5, Lf0/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    goto :goto_64

    :cond_63
    move-object v3, v4

    :cond_64
    :goto_64
    if-nez v3, :cond_7e

    sget-object v3, Lg0/a;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    if-nez v3, :cond_76

    move-object v3, v4

    goto :goto_7e

    :cond_76
    sget-object v5, Lg0/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    :cond_7e
    :goto_7e
    if-nez v3, :cond_98

    sget-object v3, Ln/a;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    if-nez v3, :cond_90

    move-object v3, v4

    goto :goto_98

    :cond_90
    sget-object v5, Ln/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    :cond_98
    :goto_98
    if-nez v3, :cond_aa

    invoke-static {v2}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v3

    if-nez v3, :cond_a2

    move-object v3, v4

    goto :goto_aa

    :cond_a2
    sget-object v5, Lr/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    :cond_aa
    :goto_aa
    if-nez v3, :cond_c5

    sget-object v3, Lu/a;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    if-nez v3, :cond_bb

    goto :goto_c6

    :cond_bb
    sget-object v4, Lu/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lm0/i;

    goto :goto_c6

    :cond_c5
    move-object v4, v3

    :goto_c6
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lm0/i;->c()Lk2/h;

    move-result-object v3

    iget-object v4, v3, Lk2/h;->a:Lr2/a;

    invoke-static {v4}, Lk2/b0;->r(Lr2/a;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lt0/b;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm0/i;

    invoke-virtual {v2}, Lm0/i;->c()Lk2/h;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    :cond_e9
    sget-object v1, Lt0/b;->a:Ljava/util/Hashtable;

    const-string v2, "Curve25519"

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/i;

    invoke-virtual {v1}, Lm0/i;->c()Lk2/h;

    move-result-object v1

    new-instance v2, Lk2/g;

    iget-object v3, v1, Lk2/h;->a:Lr2/a;

    invoke-interface {v3}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, v1, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v4}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, v1, Lk2/h;->c:Lk2/b0;

    invoke-virtual {v5}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, v1, Lk2/h;->d:Ljava/math/BigInteger;

    iget-object v7, v1, Lk2/h;->e:Ljava/math/BigInteger;

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Lk2/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static substitute(Lk2/h;)Lk2/h;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/EC5Util$CustomCurves;->CURVE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk2/h;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    return-object p0
.end method
