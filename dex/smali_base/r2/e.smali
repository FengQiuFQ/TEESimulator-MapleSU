.class public final Lr2/e;
.super Ljava/lang/Object;

# interfaces
.implements Lr2/a;


# instance fields
.field public final a:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/e;->a:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final b()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lr2/e;->a:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lr2/e;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lr2/e;

    iget-object p0, p0, Lr2/e;->a:Ljava/math/BigInteger;

    iget-object p1, p1, Lr2/e;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lr2/e;->a:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    return p0
.end method
