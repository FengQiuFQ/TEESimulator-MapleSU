.class public final Lk2/g;
.super Lk2/d;


# static fields
.field public static final l:Ljava/util/Set;

.field public static final m:La2/r;


# instance fields
.field public i:Ljava/math/BigInteger;

.field public j:Ljava/math/BigInteger;

.field public k:Lk2/o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lk2/g;->l:Ljava/util/Set;

    new-instance v0, La2/r;

    invoke-direct {v0}, La2/r;-><init>()V

    sput-object v0, Lk2/g;->m:La2/r;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 15

    sget-object v0, Lk2/g;->l:Ljava/util/Set;

    invoke-direct {p0, p1}, Lk2/d;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x4

    if-eqz p6, :cond_d

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    :cond_d
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p6

    if-nez p6, :cond_a7

    sget-object p6, Lk2/g;->m:La2/r;

    monitor-enter p6

    :try_start_16
    iget-object v0, p6, La2/r;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_a4

    monitor-exit p6

    if-eqz v0, :cond_23

    goto/16 :goto_a7

    :cond_23
    const-string v0, "org.bouncycastle.ec.fp_max_size"

    const/16 v2, 0x412

    invoke-static {v2, v0}, Lm4/h;->a(ILjava/lang/String;)I

    move-result v0

    const-string v2, "org.bouncycastle.ec.fp_certainty"

    const/16 v3, 0x64

    invoke-static {v3, v2}, Lm4/h;->a(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-lt v0, v4, :cond_9c

    invoke-static {p1}, Lj2/a;->b(Ljava/math/BigInteger;)Z

    move-result v0

    if-nez v0, :cond_94

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    const/16 v5, 0x600

    if-lt v4, v5, :cond_56

    if-gt v2, v3, :cond_4b

    const/4 v2, 0x3

    goto :goto_8a

    :cond_4b
    const/16 v3, 0x80

    if-gt v2, v3, :cond_50

    goto :goto_5d

    :cond_50
    add-int/lit8 v2, v2, -0x7f

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    goto :goto_8a

    :cond_56
    const/16 v5, 0x400

    const/4 v6, 0x5

    if-lt v4, v5, :cond_6a

    if-gt v2, v3, :cond_5f

    :goto_5d
    move v2, v1

    goto :goto_8a

    :cond_5f
    const/16 v3, 0x70

    if-gt v2, v3, :cond_64

    goto :goto_72

    :cond_64
    add-int/lit8 v2, v2, -0x6f

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    goto :goto_8a

    :cond_6a
    const/16 v5, 0x200

    const/16 v7, 0x50

    if-lt v4, v5, :cond_7f

    if-gt v2, v7, :cond_74

    :goto_72
    move v2, v6

    goto :goto_8a

    :cond_74
    const/4 v4, 0x7

    if-gt v2, v3, :cond_79

    move v2, v4

    goto :goto_8a

    :cond_79
    add-int/lit8 v2, v2, -0x63

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    goto :goto_8a

    :cond_7f
    const/16 v3, 0x28

    if-gt v2, v7, :cond_85

    move v2, v3

    goto :goto_8a

    :cond_85
    add-int/lit8 v2, v2, -0x4f

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    :goto_8a
    invoke-static {p1, v0, v2}, Lj2/a;->c(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-virtual {p6, p1}, La2/r;->c(Ljava/math/BigInteger;)V

    goto :goto_a7

    :cond_94
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fp q value not prime"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Fp q value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a4
    move-exception p0

    :try_start_a5
    monitor-exit p6
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0

    :cond_a7
    :goto_a7
    iput-object p1, p0, Lk2/g;->i:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p6

    const/16 v0, 0x60

    const/4 v2, 0x0

    if-lt p6, v0, :cond_cd

    add-int/lit8 v0, p6, -0x40

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_cd

    sget-object v0, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, p6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p6

    invoke-virtual {p6, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_ce

    :cond_cd
    move-object p1, v2

    :goto_ce
    iput-object p1, p0, Lk2/g;->j:Ljava/math/BigInteger;

    new-instance p1, Lk2/o;

    const/4 p6, 0x0

    invoke-direct {p1, p0, v2, v2, p6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object p1, p0, Lk2/g;->k:Lk2/o;

    invoke-virtual {p0, p2}, Lk2/g;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    iput-object p1, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {p0, p3}, Lk2/g;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    iput-object p1, p0, Lk2/h;->c:Lk2/b0;

    iput-object p4, p0, Lk2/h;->d:Ljava/math/BigInteger;

    iput-object p5, p0, Lk2/h;->e:Ljava/math/BigInteger;

    iput v1, p0, Lk2/h;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lk2/h;
    .registers 8

    new-instance v0, Lk2/g;

    iget-object v1, p0, Lk2/g;->i:Ljava/math/BigInteger;

    iget-object v2, p0, Lk2/g;->j:Ljava/math/BigInteger;

    iget-object v3, p0, Lk2/h;->b:Lk2/b0;

    iget-object v4, p0, Lk2/h;->c:Lk2/b0;

    iget-object v5, p0, Lk2/h;->d:Ljava/math/BigInteger;

    iget-object p0, p0, Lk2/h;->e:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lk2/d;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, v0, Lk2/g;->i:Ljava/math/BigInteger;

    iput-object v2, v0, Lk2/g;->j:Ljava/math/BigInteger;

    new-instance v1, Lk2/o;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v0, v2, v2, v6}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object v1, v0, Lk2/g;->k:Lk2/o;

    iput-object v3, v0, Lk2/h;->b:Lk2/b0;

    iput-object v4, v0, Lk2/h;->c:Lk2/b0;

    iput-object v5, v0, Lk2/h;->d:Ljava/math/BigInteger;

    iput-object p0, v0, Lk2/h;->e:Ljava/math/BigInteger;

    const/4 p0, 0x4

    iput p0, v0, Lk2/h;->f:I

    return-object v0
.end method

.method public final e(Lk2/b0;Lk2/b0;)Lk2/p;
    .registers 5

    new-instance v0, Lk2/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0
.end method

.method public final f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
    .registers 10

    new-instance v0, Lk2/o;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v0
.end method

.method public final j(Ljava/math/BigInteger;)Lk2/b0;
    .registers 4

    iget-object v0, p0, Lk2/g;->i:Ljava/math/BigInteger;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_18

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_18

    new-instance v1, Lk2/l;

    iget-object p0, p0, Lk2/g;->j:Ljava/math/BigInteger;

    invoke-direct {v1, v0, p0, p1}, Lk2/l;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v1

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid for Fp field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l()I
    .registers 1

    iget-object p0, p0, Lk2/g;->i:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final m()Lk2/p;
    .registers 1

    iget-object p0, p0, Lk2/g;->k:Lk2/o;

    return-object p0
.end method

.method public final n(Lk2/p;)Lk2/p;
    .registers 10

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    if-eq p0, v0, :cond_1b

    iget v0, p0, Lk2/h;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    iget v0, v0, Lk2/h;->f:I

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    :cond_1b
    move-object v3, p0

    goto :goto_4a

    :cond_1d
    new-instance v2, Lk2/o;

    iget-object v0, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/g;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v4

    iget-object v0, p1, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/g;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v5

    iget-object p1, p1, Lk2/p;->d:[Lk2/b0;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lk2/g;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    filled-new-array {p1}, [Lk2/b0;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v2

    :goto_4a
    invoke-super {v3, p1}, Lk2/h;->n(Lk2/p;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public final s(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_c

    if-eq p1, p0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_c

    const/4 p0, 0x0

    :cond_c
    return p0
.end method

.method public final u()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lk2/g;->i:Ljava/math/BigInteger;

    return-object p0
.end method
