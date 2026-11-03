.class public final Li1/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p;


# static fields
.field public static final i:Ljava/math/BigInteger;


# instance fields
.field public g:Le1/u;

.field public h:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Li1/c;->i:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final b([B)[Ljava/math/BigInteger;
    .registers 12

    iget-object v0, p0, Li1/c;->g:Le1/u;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    iget-object v1, v0, Le1/r;->g:Lk2/h;

    invoke-static {p1}, Lm4/d;->H([B)[B

    move-result-object p1

    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1}, Lk2/h;->l()I

    move-result p1

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    sget-object v5, Li1/c;->i:Ljava/math/BigInteger;

    if-le v4, p1, :cond_24

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    :cond_24
    invoke-virtual {v1, v2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p1}, Lk2/b0;->t()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v5}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    :cond_32
    iget-object v1, v0, Le1/r;->j:Ljava/math/BigInteger;

    iget-object v2, p0, Li1/c;->g:Le1/u;

    check-cast v2, Le1/w;

    iget-object v2, v2, Le1/w;->q:Ljava/math/BigInteger;

    new-instance v4, Lk2/q;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lk2/q;-><init>(I)V

    :cond_40
    iget-object v6, p0, Li1/c;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-static {v7, v6}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    iget-object v7, v0, Le1/r;->i:Lk2/p;

    invoke-virtual {v4, v7, v6}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v7

    invoke-virtual {v7}, Lk2/p;->p()Lk2/p;

    move-result-object v7

    invoke-virtual {v7}, Lk2/p;->b()V

    iget-object v7, v7, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v7}, Lk2/b0;->t()Z

    move-result v8

    if-nez v8, :cond_40

    invoke-virtual {p1, v7}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v7

    invoke-virtual {v7}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {v7}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, v8, :cond_7b

    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    :cond_7b
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_40

    filled-new-array {v7, v6}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Z
    .registers 11

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_8d

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_e

    goto/16 :goto_8d

    :cond_e
    iget-object v0, p0, Li1/c;->g:Le1/u;

    iget-object v0, v0, Le1/u;->d:Le1/r;

    iget-object v1, v0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_8d

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_21

    goto :goto_8d

    :cond_21
    iget-object v2, v0, Le1/r;->g:Lk2/h;

    invoke-static {p3}, Lm4/d;->H([B)[B

    move-result-object p3

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2}, Lk2/h;->l()I

    move-result p3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    sget-object v6, Li1/c;->i:Ljava/math/BigInteger;

    if-le v5, p3, :cond_41

    invoke-virtual {v6, p3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    :cond_41
    invoke-virtual {v2, v3}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p3

    invoke-virtual {p3}, Lk2/b0;->t()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-virtual {v2, v6}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p3

    :cond_4f
    iget-object v0, v0, Le1/r;->i:Lk2/p;

    iget-object p0, p0, Li1/c;->g:Le1/u;

    check-cast p0, Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-static {v0, p2, p0, p1}, Lk2/b0;->J(Lk2/p;Ljava/math/BigInteger;Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p2

    if-eqz p2, :cond_66

    goto :goto_8d

    :cond_66
    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p3, p0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p3

    if-le p3, p2, :cond_86

    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :cond_86
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-nez p0, :cond_8d

    return v4

    :cond_8d
    :goto_8d
    const/4 p0, 0x0

    return p0
.end method

.method public final getOrder()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Li1/c;->g:Le1/u;

    iget-object p0, p0, Le1/u;->d:Le1/r;

    iget-object p0, p0, Le1/r;->j:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    if-eqz p1, :cond_1a

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_f

    check-cast p2, Le1/t0;

    iget-object v0, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object v0, p0, Li1/c;->h:Ljava/security/SecureRandom;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    goto :goto_15

    :cond_f
    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Li1/c;->h:Ljava/security/SecureRandom;

    :goto_15
    check-cast p2, Le1/w;

    :goto_17
    iput-object p2, p0, Li1/c;->g:Le1/u;

    goto :goto_1d

    :cond_1a
    check-cast p2, Le1/x;

    goto :goto_17

    :goto_1d
    const-string p2, "DSTU4145"

    iget-object p0, p0, Li1/c;->g:Le1/u;

    invoke-static {p2, p0, p1}, Lq4/k;->Z(Ljava/lang/String;Le1/u;Z)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method
