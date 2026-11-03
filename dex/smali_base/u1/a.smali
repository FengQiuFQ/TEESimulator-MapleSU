.class public interface abstract Lu1/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;

.field public static final c:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/q;

    const-string v1, "1.2.410.200004.1.4"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu1/a;->a:Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "1.2.410.200004.1.7"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu1/a;->b:Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "1.2.410.200004.1.15"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lm/q;

    const-string v1, "1.2.410.200004.7.1.1.1"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu1/a;->c:Lm/q;

    return-void
.end method
