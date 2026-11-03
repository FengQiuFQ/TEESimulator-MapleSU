.class public abstract Lr2/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lr2/e;

.field public static final b:Lr2/e;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lr2/e;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lr2/e;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lr2/b;->a:Lr2/e;

    new-instance v0, Lr2/e;

    const-wide/16 v1, 0x3

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lr2/e;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lr2/b;->b:Lr2/e;

    return-void
.end method
