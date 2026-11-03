.class public abstract Lm1/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.4.1.3029"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    sput-object v0, Lm1/a;->a:Lm/q;

    return-void
.end method
