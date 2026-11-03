.class public interface abstract Le0/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;

.field public static final c:Lm/q;

.field public static final d:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lm/q;

    const-string v1, "1.2.643.7"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    const-string v2, "1.2.2"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Le0/a;->a:Lm/q;

    const-string v2, "1.2.3"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Le0/a;->b:Lm/q;

    const-string v2, "1.1.1"

    const-string v3, "1.1.2"

    const-string v4, "1.4.1"

    const-string v5, "1.4.2"

    invoke-static {v0, v4, v5, v2, v3}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "1.3.2"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Le0/a;->c:Lm/q;

    const-string v2, "1.3.3"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Le0/a;->d:Lm/q;

    const-string v2, "1.6"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v2, "2.1.1"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    const-string v4, "4"

    const-string v5, "3"

    invoke-static {v2, v1, v3, v5, v4}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "2.1.2"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    invoke-virtual {v2, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    invoke-virtual {v2, v5}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "2.5.1.1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    return-void
.end method
