.class public interface abstract Lt1/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;

.field public static final c:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/q;

    const-string v1, "1.0.10118"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    const-string v1, "49"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Lt1/a;->a:Lm/q;

    const-string v1, "50"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Lt1/a;->b:Lm/q;

    const-string v1, "55"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    sput-object v0, Lt1/a;->c:Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "1.0.18033.2"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "1.2"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "2.4"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    return-void
.end method
