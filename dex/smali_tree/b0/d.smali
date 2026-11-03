.class public interface abstract Lb0/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;

.field public static final b:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    sget-object v0, Ll0/e1;->G0:Lm/q;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Lb0/d;->a:Lm/q;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Lb0/d;->b:Lm/q;

    const-string v1, "5"

    const-string v2, "6"

    const-string v3, "3"

    const-string v4, "4"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    return-void
.end method
