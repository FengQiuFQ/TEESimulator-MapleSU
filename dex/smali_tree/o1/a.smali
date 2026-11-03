.class public interface abstract Lo1/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;

.field public static final c:Lm/q;

.field public static final d:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/q;

    const-string v1, "1.3.101"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "110"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1}, Lm/q;->w()Lm/q;

    move-result-object v1

    sput-object v1, Lo1/a;->a:Lm/q;

    const-string v1, "111"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1}, Lm/q;->w()Lm/q;

    move-result-object v1

    sput-object v1, Lo1/a;->b:Lm/q;

    const-string v1, "112"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    invoke-virtual {v1}, Lm/q;->w()Lm/q;

    move-result-object v1

    sput-object v1, Lo1/a;->c:Lm/q;

    const-string v1, "113"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    invoke-virtual {v0}, Lm/q;->w()Lm/q;

    move-result-object v0

    sput-object v0, Lo1/a;->d:Lm/q;

    return-void
.end method
