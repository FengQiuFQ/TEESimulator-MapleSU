.class public abstract Lz/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lz/a;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lz/a;->b:Ljava/util/Hashtable;

    const-string v0, "B-571"

    sget-object v1, Lf0/e;->F:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "B-409"

    sget-object v1, Lf0/e;->D:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "B-283"

    sget-object v1, Lf0/e;->n:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "B-233"

    sget-object v1, Lf0/e;->t:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "B-163"

    sget-object v1, Lf0/e;->l:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "K-571"

    sget-object v1, Lf0/e;->E:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "K-409"

    sget-object v1, Lf0/e;->C:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "K-283"

    sget-object v1, Lf0/e;->m:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "K-233"

    sget-object v1, Lf0/e;->s:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "K-163"

    sget-object v1, Lf0/e;->b:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "P-521"

    sget-object v1, Lf0/e;->B:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "P-384"

    sget-object v1, Lf0/e;->A:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "P-256"

    sget-object v1, Lf0/e;->H:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "P-224"

    sget-object v1, Lf0/e;->z:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v0, "P-192"

    sget-object v1, Lf0/e;->G:Lm/q;

    invoke-static {v0, v1}, Lz/a;->a(Ljava/lang/String;Lm/q;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lm/q;)V
    .registers 3

    sget-object v0, Lz/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lm/q;)Lm0/h;
    .registers 3

    sget-object v0, Lz/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    sget-object v0, Lf0/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm0/i;

    if-nez p0, :cond_14

    return-object v1

    :cond_14
    invoke-virtual {p0}, Lm0/i;->d()Lm0/h;

    move-result-object p0

    return-object p0

    :cond_19
    return-object v1
.end method
