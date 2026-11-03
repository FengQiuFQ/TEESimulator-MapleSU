.class public interface abstract Ll1/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;

.field public static final c:Lm/q;

.field public static final d:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ld0/r;->a:Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.5.5.7.16"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.5.5.7.6"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "30"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Ll1/b;->a:Lm/q;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Ll1/b;->b:Lm/q;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Ll1/b;->c:Lm/q;

    const-string v1, "33"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    sput-object v0, Ll1/b;->d:Lm/q;

    return-void
.end method
