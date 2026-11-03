.class public final Lx0/g;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public g:Le1/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/g;->h:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 6

    iget-object p0, p0, Lx0/g;->g:Le1/k;

    iget-object v0, p0, Le1/k;->i:Le1/m;

    iget-object v1, v0, Le1/m;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x2

    :cond_10
    sget-object v3, Lx0/g;->h:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v3, v4, p0}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v3}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v4

    if-lt v4, v2, :cond_10

    iget-object p0, v0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v1, v0, Le1/m;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance v1, Lorg/bouncycastle/crypto/m;

    new-instance v2, Le1/o;

    invoke-direct {v2, p0, v0}, Le1/o;-><init>(Ljava/math/BigInteger;Le1/m;)V

    new-instance p0, Le1/n;

    invoke-direct {p0, v3, v0}, Le1/n;-><init>(Ljava/math/BigInteger;Le1/m;)V

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 2

    check-cast p1, Le1/k;

    iput-object p1, p0, Lx0/g;->g:Le1/k;

    iget-object p1, p1, Le1/k;->i:Le1/m;

    iget-object p1, p1, Le1/m;->q:Ljava/math/BigInteger;

    invoke-static {p1}, Lq4/k;->s(Ljava/math/BigInteger;)I

    iget-object p0, p0, Lx0/g;->g:Le1/k;

    iget-object p0, p0, Le1/k;->i:Le1/m;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
