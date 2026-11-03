.class public abstract Lr/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lm0/d;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lm0/d;-><init>(I)V

    new-instance v1, Lm0/d;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lm0/d;-><init>(I)V

    new-instance v2, Lm0/d;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lm0/d;-><init>(I)V

    new-instance v3, Lm0/d;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Lm0/d;-><init>(I)V

    new-instance v4, Lm0/d;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Lm0/d;-><init>(I)V

    new-instance v5, Lm0/d;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lm0/d;-><init>(I)V

    new-instance v6, Lm0/d;

    const/16 v7, 0x11

    invoke-direct {v6, v7}, Lm0/d;-><init>(I)V

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lr/b;->a:Ljava/util/Hashtable;

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lr/b;->b:Ljava/util/Hashtable;

    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    sput-object v7, Lr/b;->c:Ljava/util/Hashtable;

    const-string v7, "GostR3410-2001-CryptoPro-A"

    sget-object v8, Lr/a;->s:Lm/q;

    invoke-static {v7, v8, v0}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v7, "GostR3410-2001-CryptoPro-B"

    sget-object v8, Lr/a;->t:Lm/q;

    invoke-static {v7, v8, v1}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v7, "GostR3410-2001-CryptoPro-C"

    sget-object v8, Lr/a;->u:Lm/q;

    invoke-static {v7, v8, v2}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v7, "GostR3410-2001-CryptoPro-XchA"

    sget-object v8, Lr/a;->v:Lm/q;

    invoke-static {v7, v8, v0}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v7, "GostR3410-2001-CryptoPro-XchB"

    sget-object v8, Lr/a;->w:Lm/q;

    invoke-static {v7, v8, v2}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v7, "Tc26-Gost-3410-12-256-paramSetA"

    sget-object v8, Lz1/a;->k:Lm/q;

    invoke-static {v7, v8, v3}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v3, "Tc26-Gost-3410-12-256-paramSetB"

    sget-object v7, Lz1/a;->l:Lm/q;

    invoke-static {v3, v7, v0}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "Tc26-Gost-3410-12-256-paramSetC"

    sget-object v3, Lz1/a;->m:Lm/q;

    invoke-static {v0, v3, v1}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "Tc26-Gost-3410-12-256-paramSetD"

    sget-object v1, Lz1/a;->n:Lm/q;

    invoke-static {v0, v1, v2}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "Tc26-Gost-3410-12-512-paramSetA"

    sget-object v1, Lz1/a;->o:Lm/q;

    invoke-static {v0, v1, v4}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "Tc26-Gost-3410-12-512-paramSetB"

    sget-object v1, Lz1/a;->p:Lm/q;

    invoke-static {v0, v1, v5}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "Tc26-Gost-3410-12-512-paramSetC"

    sget-object v1, Lz1/a;->q:Lm/q;

    invoke-static {v0, v1, v6}, Lr/b;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static b(Lk2/h;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lm0/j;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-static {p0}, Lk2/b0;->e(Lk2/p;)V

    new-instance p1, Lm0/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lm0/j;-><init>(Lk2/p;Z)V

    return-object p1
.end method

.method public static c(Ljava/lang/String;Lm/q;Lm0/i;)V
    .registers 4

    sget-object v0, Lr/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lr/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lr/b;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Lm/q;)Lm0/h;
    .registers 2

    sget-object v0, Lr/b;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/i;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Lm0/i;->d()Lm0/h;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lm/q;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lr/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static f(Ljava/lang/String;)Lm/q;
    .registers 2

    sget-object v0, Lr/b;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    return-object p0
.end method
