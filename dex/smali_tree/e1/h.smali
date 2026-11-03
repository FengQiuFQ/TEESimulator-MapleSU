.class public final Le1/h;
.super Le1/e;


# instance fields
.field public final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Le1/g;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Le1/e;-><init>(ZLe1/g;)V

    iput-object p1, p0, Le1/h;->q:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Le1/h;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Le1/h;

    iget-object v0, v0, Le1/h;->q:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/h;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-super {p0, p1}, Le1/e;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Le1/h;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-super {p0}, Le1/e;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
