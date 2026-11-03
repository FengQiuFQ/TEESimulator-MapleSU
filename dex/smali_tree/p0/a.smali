.class public final Lp0/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/c;


# static fields
.field public static final c:Ljava/math/BigInteger;


# instance fields
.field public a:Le1/h;

.field public b:Le1/g;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lp0/a;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;
    .registers 5

    check-cast p1, Le1/i;

    iget-object v0, p1, Le1/e;->d:Le1/g;

    iget-object v1, p0, Lp0/a;->b:Le1/g;

    invoke-virtual {v0, v1}, Le1/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lp0/a;->b:Le1/g;

    iget-object v0, v0, Le1/g;->d:Ljava/math/BigInteger;

    iget-object p1, p1, Le1/i;->q:Ljava/math/BigInteger;

    if-eqz p1, :cond_3d

    sget-object v1, Lp0/a;->c:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_3d

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_3d

    iget-object p0, p0, Lp0/a;->a:Le1/h;

    iget-object p0, p0, Le1/h;->q:Ljava/math/BigInteger;

    invoke-virtual {p1, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    return-object p0

    :cond_35
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Shared key can\'t be 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Diffie-Hellman public key is weak"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getFieldSize()I
    .registers 1

    iget-object p0, p0, Lp0/a;->a:Le1/h;

    iget-object p0, p0, Le1/e;->d:Le1/g;

    iget-object p0, p0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 3

    instance-of v0, p1, Le1/t0;

    if-eqz v0, :cond_8

    check-cast p1, Le1/t0;

    iget-object p1, p1, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_8
    check-cast p1, Le1/b;

    instance-of v0, p1, Le1/h;

    if-eqz v0, :cond_1f

    check-cast p1, Le1/h;

    iput-object p1, p0, Lp0/a;->a:Le1/h;

    iget-object p1, p1, Le1/e;->d:Le1/g;

    iput-object p1, p0, Lp0/a;->b:Le1/g;

    iget-object p0, p1, Le1/g;->d:Ljava/math/BigInteger;

    invoke-static {p0}, Lq4/k;->s(Ljava/math/BigInteger;)I

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
