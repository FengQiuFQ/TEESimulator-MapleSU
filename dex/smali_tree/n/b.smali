.class public interface abstract Ln/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/q;

    const-string v1, "1.2.250.1.223.101.256.1"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln/b;->a:Lm/q;

    return-void
.end method
