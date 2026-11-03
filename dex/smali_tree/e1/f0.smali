.class public final Le1/f0;
.super Le1/d0;


# instance fields
.field public final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Le1/e0;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Le1/d0;-><init>(ZLe1/e0;)V

    iput-object p1, p0, Le1/f0;->q:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Le1/f0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Le1/f0;

    iget-object v0, v0, Le1/f0;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/f0;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    :cond_14
    invoke-super {p0, p1}, Le1/d0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Le1/f0;->q:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
