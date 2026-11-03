.class public interface abstract Ls/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;

.field public static final c:Lm/q;

.field public static final d:Lm/q;

.field public static final e:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lm/q;

    const-string v1, "0.4.0.127.0.7"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "2.2.1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v3, "2"

    invoke-virtual {v1, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "2.2.3"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v4

    invoke-virtual {v4, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    invoke-virtual {v1, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "2.2.2"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v4

    invoke-virtual {v4, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    invoke-virtual {v4, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v5, "3"

    invoke-virtual {v4, v5}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v6, "4"

    invoke-virtual {v4, v6}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v7, "5"

    invoke-virtual {v4, v7}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v8, "6"

    invoke-virtual {v4, v8}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    invoke-virtual {v1, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Ls/a;->a:Lm/q;

    invoke-virtual {v1, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Ls/a;->b:Lm/q;

    invoke-virtual {v1, v5}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Ls/a;->c:Lm/q;

    invoke-virtual {v1, v6}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    sput-object v2, Ls/a;->d:Lm/q;

    invoke-virtual {v1, v7}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Ls/a;->e:Lm/q;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    return-void
.end method
