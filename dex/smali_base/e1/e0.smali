.class public final Le1/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:Ljava/math/BigInteger;

.field public final d:Ljava/math/BigInteger;

.field public final q:I


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Le1/e0;->c:Ljava/math/BigInteger;

    iput-object p2, p0, Le1/e0;->d:Ljava/math/BigInteger;

    iput p1, p0, Le1/e0;->q:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Le1/e0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Le1/e0;

    iget-object v0, p1, Le1/e0;->d:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/e0;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p1, Le1/e0;->c:Ljava/math/BigInteger;

    iget-object v2, p0, Le1/e0;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget p1, p1, Le1/e0;->q:I

    iget p0, p0, Le1/e0;->q:I

    if-ne p1, p0, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Le1/e0;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Le1/e0;->c:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget p0, p0, Le1/e0;->q:I

    add-int/2addr v0, p0

    return v0
.end method
