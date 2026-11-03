.class public interface abstract Ls1/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lm/q;

    const-string v1, "1.3.36.8"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v1

    sput-object v1, Ls1/a;->a:Lm/q;

    const-string v1, "4"

    const-string v3, "5"

    const-string v4, "2"

    invoke-static {v0, v4, v2, v1, v3}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "8"

    const-string v2, "9"

    const-string v3, "6"

    const-string v4, "7"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "12"

    const-string v2, "13"

    const-string v3, "10"

    const-string v4, "11"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "14"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "15"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "0.2.262.1.10.12.0"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    return-void
.end method
