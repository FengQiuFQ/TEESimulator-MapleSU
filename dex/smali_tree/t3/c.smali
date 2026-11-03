.class public final Lt3/c;
.super La3/a;


# instance fields
.field public final q:Ln4/b;


# direct methods
.method public constructor <init>(Lt3/a;[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    iget-object p1, p1, Lt3/a;->c:Lk2/a0;

    invoke-virtual {p1}, Lk2/a0;->b()I

    move-result p1

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_20

    new-instance v1, Ln4/b;

    invoke-static {p2, v0, p1}, Lm4/d;->q([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lm4/d;->q([BII)[B

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {v1, v0, p2, p1}, Ln4/b;-><init>([BI[B)V

    iput-object v1, p0, Lt3/c;->q:Ln4/b;

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
