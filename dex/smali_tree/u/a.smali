.class public abstract Lu/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lt0/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lt0/a;-><init>(I)V

    new-instance v1, Lt0/a;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lt0/a;-><init>(I)V

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lu/a;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lu/a;->b:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lu/a;->c:Ljava/util/Hashtable;

    const-string v2, "wapip192v1"

    sget-object v3, Lu/b;->b:Lm/q;

    invoke-static {v2, v3, v1}, Lu/a;->b(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v2, "wapi192v1"

    sget-object v3, Lu/b;->c:Lm/q;

    invoke-static {v2, v3, v1}, Lu/a;->b(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v1, "sm2p256v1"

    sget-object v2, Lu/b;->a:Lm/q;

    invoke-static {v1, v2, v0}, Lu/a;->b(Ljava/lang/String;Lm/q;Lm0/i;)V

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

.method public static b(Ljava/lang/String;Lm/q;Lm0/i;)V
    .registers 5

    sget-object v0, Lu/a;->a:Ljava/util/Hashtable;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/a;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lu/a;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
