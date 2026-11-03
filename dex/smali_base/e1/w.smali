.class public final Le1/w;
.super Le1/u;


# instance fields
.field public final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Le1/r;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Le1/u;-><init>(ZLe1/r;)V

    if-eqz p1, :cond_21

    sget-object v0, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_19

    iget-object p2, p2, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p2

    if-gez p2, :cond_19

    iput-object p1, p0, Le1/w;->q:Ljava/math/BigInteger;

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scalar is not in the interval [1, n - 1]"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Scalar cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
