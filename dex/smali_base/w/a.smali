.class public interface abstract Lw/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/q;

    const-string v1, "0.4.0.127.0.15.1.1.13.0"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw/a;->a:Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "0.4.0.127.0.15.1.1.14.0"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Lw/a;->b:Lm/q;

    return-void
.end method
