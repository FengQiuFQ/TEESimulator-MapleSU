.class public abstract Lg0/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lf0/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lf0/c;-><init>(I)V

    new-instance v1, Lf0/c;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lf0/c;-><init>(I)V

    new-instance v2, Lf0/c;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lf0/c;-><init>(I)V

    new-instance v3, Lf0/c;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lf0/c;-><init>(I)V

    new-instance v4, Lf0/c;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Lf0/c;-><init>(I)V

    new-instance v5, Lf0/c;

    const/16 v6, 0xd

    invoke-direct {v5, v6}, Lf0/c;-><init>(I)V

    new-instance v6, Lf0/c;

    const/16 v7, 0xe

    invoke-direct {v6, v7}, Lf0/c;-><init>(I)V

    new-instance v7, Lf0/c;

    const/16 v8, 0xf

    invoke-direct {v7, v8}, Lf0/c;-><init>(I)V

    new-instance v8, Lf0/c;

    const/16 v9, 0x10

    invoke-direct {v8, v9}, Lf0/c;-><init>(I)V

    new-instance v9, Lf0/c;

    const/4 v10, 0x3

    invoke-direct {v9, v10}, Lf0/c;-><init>(I)V

    new-instance v10, Lf0/c;

    const/4 v11, 0x4

    invoke-direct {v10, v11}, Lf0/c;-><init>(I)V

    new-instance v11, Lf0/c;

    const/4 v12, 0x5

    invoke-direct {v11, v12}, Lf0/c;-><init>(I)V

    new-instance v12, Lf0/c;

    const/4 v13, 0x6

    invoke-direct {v12, v13}, Lf0/c;-><init>(I)V

    new-instance v13, Lf0/c;

    const/4 v14, 0x7

    invoke-direct {v13, v14}, Lf0/c;-><init>(I)V

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lg0/a;->a:Ljava/util/Hashtable;

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lg0/a;->b:Ljava/util/Hashtable;

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lg0/a;->c:Ljava/util/Hashtable;

    const-string v14, "brainpoolP160r1"

    sget-object v15, Lg0/b;->i:Lm/q;

    invoke-static {v14, v15, v0}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP160t1"

    sget-object v14, Lg0/b;->j:Lm/q;

    invoke-static {v0, v14, v1}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP192r1"

    sget-object v1, Lg0/b;->k:Lm/q;

    invoke-static {v0, v1, v2}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP192t1"

    sget-object v1, Lg0/b;->l:Lm/q;

    invoke-static {v0, v1, v3}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP224r1"

    sget-object v1, Lg0/b;->m:Lm/q;

    invoke-static {v0, v1, v4}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP224t1"

    sget-object v1, Lg0/b;->n:Lm/q;

    invoke-static {v0, v1, v5}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP256r1"

    sget-object v1, Lg0/b;->o:Lm/q;

    invoke-static {v0, v1, v6}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP256t1"

    sget-object v1, Lg0/b;->p:Lm/q;

    invoke-static {v0, v1, v7}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP320r1"

    sget-object v1, Lg0/b;->q:Lm/q;

    invoke-static {v0, v1, v8}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP320t1"

    sget-object v1, Lg0/b;->r:Lm/q;

    invoke-static {v0, v1, v9}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP384r1"

    sget-object v1, Lg0/b;->s:Lm/q;

    invoke-static {v0, v1, v10}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP384t1"

    sget-object v1, Lg0/b;->t:Lm/q;

    invoke-static {v0, v1, v11}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP512r1"

    sget-object v1, Lg0/b;->u:Lm/q;

    invoke-static {v0, v1, v12}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "brainpoolP512t1"

    sget-object v1, Lg0/b;->v:Lm/q;

    invoke-static {v0, v1, v13}, Lg0/a;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

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

.method public static b(Lk2/h;Ljava/lang/String;)Lm0/j;
    .registers 3

    new-instance v0, Lm0/j;

    invoke-static {p1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lm0/j;-><init>(Lk2/h;[B)V

    invoke-virtual {v0}, Lm0/j;->h()Lk2/p;

    move-result-object p0

    invoke-static {p0}, Lk2/b0;->e(Lk2/p;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lm/q;Lm0/i;)V
    .registers 5

    sget-object v0, Lg0/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lg0/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lg0/a;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
