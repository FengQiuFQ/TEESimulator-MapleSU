.class public abstract Lj1/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Ljava/util/Map;

.field public static final c:Ljava/util/Map;

.field public static final d:Lg3/e;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    new-instance v0, Lg3/e;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lf0/e;->H:Lm/q;

    const-string v2, "nistp256"

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->A:Lm/q;

    const-string v3, "nistp384"

    invoke-virtual {v0, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->B:Lm/q;

    const-string v4, "nistp521"

    invoke-virtual {v0, v4, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->b:Lm/q;

    const-string v5, "nistk163"

    invoke-virtual {v0, v5, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->G:Lm/q;

    const-string v6, "nistp192"

    invoke-virtual {v0, v6, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->z:Lm/q;

    const-string v7, "nistp224"

    invoke-virtual {v0, v7, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->s:Lm/q;

    const-string v8, "nistk233"

    invoke-virtual {v0, v8, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->t:Lm/q;

    const-string v9, "nistb233"

    invoke-virtual {v0, v9, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->m:Lm/q;

    const-string v10, "nistk283"

    invoke-virtual {v0, v10, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->C:Lm/q;

    const-string v11, "nistk409"

    invoke-virtual {v0, v11, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->D:Lm/q;

    const-string v12, "nistb409"

    invoke-virtual {v0, v12, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lf0/e;->E:Lm/q;

    const-string v13, "nistt571"

    invoke-virtual {v0, v13, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lj1/h;->b:Ljava/util/Map;

    new-instance v0, Lg3/e;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "secp256r1"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v14

    const-string v1, "secp384r1"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v15

    const-string v1, "secp521r1"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v16

    const-string v1, "sect163k1"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v17

    const-string v1, "secp192r1"

    filled-new-array {v1, v6}, [Ljava/lang/String;

    move-result-object v18

    const-string v1, "secp224r1"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v19

    const-string v1, "sect233k1"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v20

    const-string v1, "sect233r1"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v21

    const-string v1, "sect283k1"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v22

    const-string v1, "sect409k1"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v23

    const-string v1, "sect409r1"

    filled-new-array {v1, v12}, [Ljava/lang/String;

    move-result-object v24

    const-string v1, "sect571k1"

    filled-new-array {v1, v13}, [Ljava/lang/String;

    move-result-object v25

    filled-new-array/range {v14 .. v25}, [[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b2
    const/16 v4, 0xc

    if-eq v3, v4, :cond_c3

    aget-object v4, v1, v3

    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    :cond_c3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lj1/h;->c:Ljava/util/Map;

    new-instance v0, Lg3/e;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lt0/b;->e:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_d4
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_f4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lt0/b;->a:Ljava/util/Hashtable;

    invoke-static {v2}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/i;

    invoke-virtual {v3}, Lm0/i;->c()Lk2/h;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d4

    :cond_f4
    sput-object v0, Lj1/h;->d:Lg3/e;

    new-instance v0, Lg3/e;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lj1/h;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_105
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lj1/h;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/q;

    invoke-virtual {v0, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_105

    :cond_11d
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lj1/h;->a:Ljava/util/Map;

    return-void
.end method
