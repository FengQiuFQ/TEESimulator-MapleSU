.class public final La2/r;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/u;
.implements Lorg/bouncycastle/crypto/t;


# instance fields
.field public g:I

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, La2/r;->h:Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/math/BigInteger;

    iput-object v0, p0, La2/r;->i:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, La2/r;->g:I

    return-void
.end method

.method public constructor <init>(ILk2/p;Lk2/h;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, La2/r;->g:I

    iput-object p2, p0, La2/r;->h:Ljava/lang/Object;

    iput-object p3, p0, La2/r;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La2/u;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, La2/r;->g:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La2/r;->i:Ljava/lang/Object;

    iput-object p1, p0, La2/r;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/PKIXBuilderParameters;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, La2/r;->g:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La2/r;->i:Ljava/lang/Object;

    new-instance v0, La2/t;

    invoke-direct {v0, p1}, La2/t;-><init>(Ljava/security/cert/PKIXParameters;)V

    new-instance v1, La2/u;

    invoke-direct {v1, v0}, La2/u;-><init>(La2/t;)V

    iput-object v1, p0, La2/r;->h:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/security/cert/PKIXBuilderParameters;->getMaxPathLength()I

    move-result p1

    iput p1, p0, La2/r;->g:I

    return-void
.end method

.method public constructor <init>(Lm/w1;I[[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/r;->h:Ljava/lang/Object;

    iput p2, p0, La2/r;->g:I

    iput-object p3, p0, La2/r;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/v;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/r;->h:Ljava/lang/Object;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p1

    iput p1, p0, La2/r;->g:I

    return-void
.end method

.method public static b(I[B)V
    .registers 4

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p1, v1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p1, v1

    const/4 v0, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, v0

    return-void
.end method


# virtual methods
.method public a(Lk2/v;)Lk2/v;
    .registers 15

    instance-of v0, p1, Lk2/z;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lk2/z;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    iget v0, p0, La2/r;->g:I

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x1

    shl-int v4, v5, v4

    if-eqz p1, :cond_3e

    iget v6, p1, Lk2/z;->f:I

    iget v7, p1, Lk2/z;->b:I

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lt v6, v7, :cond_3e

    iget-object v6, p1, Lk2/z;->c:[Lk2/p;

    if-eqz v6, :cond_3e

    array-length v6, v6

    if-lt v6, v4, :cond_3e

    iget-object v6, p1, Lk2/z;->d:[Lk2/p;

    if-eqz v6, :cond_3e

    array-length v6, v6

    if-lt v6, v4, :cond_3e

    iget p0, p1, Lk2/z;->a:I

    if-lez p0, :cond_3d

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lk2/z;->a:I

    :cond_3d
    return-object p1

    :cond_3e
    new-instance v4, Lk2/z;

    invoke-direct {v4}, Lk2/z;-><init>()V

    if-eqz p1, :cond_5a

    iget v6, p1, Lk2/z;->a:I

    if-lez v6, :cond_4d

    add-int/lit8 v6, v6, -0x1

    iput v6, p1, Lk2/z;->a:I

    :cond_4d
    iput v6, v4, Lk2/z;->a:I

    iget v6, p1, Lk2/z;->b:I

    iput v6, v4, Lk2/z;->b:I

    iget-object v6, p1, Lk2/z;->c:[Lk2/p;

    iget-object v7, p1, Lk2/z;->d:[Lk2/p;

    iget-object p1, p1, Lk2/z;->e:Lk2/p;

    goto :goto_5d

    :cond_5a
    move-object p1, v1

    move-object v6, p1

    move-object v7, v6

    :goto_5d
    iget v8, v4, Lk2/z;->b:I

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    shl-int v2, v5, v2

    const/4 v8, 0x0

    if-nez v6, :cond_72

    sget-object v6, Lk2/b0;->k:[Lk2/p;

    move v9, v8

    goto :goto_73

    :cond_72
    array-length v9, v6

    :goto_73
    if-ge v9, v2, :cond_123

    new-array v10, v2, [Lk2/p;

    array-length v11, v6

    invoke-static {v6, v8, v10, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_8a

    iget-object p0, p0, La2/r;->h:Ljava/lang/Object;

    check-cast p0, Lk2/p;

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    aput-object p0, v10, v8

    :goto_87
    move-object v6, v10

    goto/16 :goto_123

    :cond_8a
    if-nez v9, :cond_94

    iget-object v6, p0, La2/r;->h:Ljava/lang/Object;

    check-cast v6, Lk2/p;

    aput-object v6, v10, v8

    move v6, v5

    goto :goto_95

    :cond_94
    move v6, v9

    :goto_95
    if-ne v2, v3, :cond_a3

    iget-object v3, p0, La2/r;->h:Ljava/lang/Object;

    check-cast v3, Lk2/p;

    invoke-virtual {v3}, Lk2/p;->w()Lk2/p;

    move-result-object v3

    aput-object v3, v10, v5

    goto/16 :goto_118

    :cond_a3
    add-int/lit8 v5, v6, -0x1

    aget-object v5, v10, v5

    if-nez p1, :cond_10b

    aget-object p1, v10, v8

    invoke-virtual {p1}, Lk2/p;->y()Lk2/p;

    move-result-object p1

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v11

    if-nez v11, :cond_10b

    iget-object v11, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v11, Lk2/h;

    iget-object v11, v11, Lk2/h;->a:Lr2/a;

    invoke-static {v11}, Lk2/b0;->r(Lr2/a;)Z

    move-result v11

    if-eqz v11, :cond_10b

    iget-object v11, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v11, Lk2/h;

    invoke-virtual {v11}, Lk2/h;->l()I

    move-result v11

    const/16 v12, 0x40

    if-lt v11, v12, :cond_10b

    iget-object v11, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v11, Lk2/h;

    iget v11, v11, Lk2/h;->f:I

    if-eq v11, v3, :cond_dc

    const/4 v3, 0x3

    if-eq v11, v3, :cond_dc

    const/4 v3, 0x4

    if-eq v11, v3, :cond_dc

    goto :goto_10b

    :cond_dc
    invoke-virtual {p1}, Lk2/p;->j()Lk2/b0;

    move-result-object v1

    iget-object v3, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v3, Lk2/h;

    iget-object v11, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v11}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p1}, Lk2/p;->i()Lk2/b0;

    move-result-object v12

    invoke-virtual {v12}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lk2/h;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v3

    invoke-virtual {v1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v11

    invoke-virtual {v11, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v12

    invoke-virtual {v5, v11}, Lk2/p;->t(Lk2/b0;)Lk2/p;

    move-result-object v5

    invoke-virtual {v5, v12}, Lk2/p;->u(Lk2/b0;)Lk2/p;

    move-result-object v5

    if-nez v9, :cond_10c

    aput-object v5, v10, v8

    goto :goto_10c

    :cond_10b
    :goto_10b
    move-object v3, p1

    :cond_10c
    :goto_10c
    if-ge v6, v2, :cond_118

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v3}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v5

    aput-object v5, v10, v6

    move v6, v11

    goto :goto_10c

    :cond_118
    :goto_118
    iget-object p0, p0, La2/r;->i:Ljava/lang/Object;

    check-cast p0, Lk2/h;

    sub-int v3, v2, v9

    invoke-virtual {p0, v10, v9, v3, v1}, Lk2/h;->p([Lk2/p;IILk2/b0;)V

    goto/16 :goto_87

    :cond_123
    :goto_123
    if-nez v7, :cond_128

    new-array v7, v2, [Lk2/p;

    goto :goto_135

    :cond_128
    array-length p0, v7

    if-ge p0, v2, :cond_134

    new-array v1, v2, [Lk2/p;

    array-length v3, v7

    invoke-static {v7, v8, v1, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, p0

    move-object v7, v1

    goto :goto_135

    :cond_134
    move v8, p0

    :goto_135
    if-ge v8, v2, :cond_142

    aget-object p0, v6, v8

    invoke-virtual {p0}, Lk2/p;->o()Lk2/p;

    move-result-object p0

    aput-object p0, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_135

    :cond_142
    iput-object v6, v4, Lk2/z;->c:[Lk2/p;

    iput-object v7, v4, Lk2/z;->d:[Lk2/p;

    iput-object p1, v4, Lk2/z;->e:Lk2/p;

    iput v0, v4, Lk2/z;->f:I

    return-object v4
.end method

.method public declared-synchronized c(Ljava/math/BigInteger;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, La2/r;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v0, [Ljava/math/BigInteger;

    iget v1, p0, La2/r;->g:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, La2/r;->g:I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public d(I)Lm/f;
    .registers 14

    iget-object v0, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v0, [[B

    iget v1, p0, La2/r;->g:I

    iget-object p0, p0, La2/r;->h:Ljava/lang/Object;

    check-cast p0, Lm/w1;

    instance-of v2, p0, Lm/t1;

    const/4 v3, 0x0

    if-eqz v2, :cond_17

    move-object v2, p0

    check-cast v2, Lm/t1;

    iput-boolean v3, v2, Lm/t1;->z1:Z

    invoke-virtual {v2}, Lm/t1;->b()Z

    :cond_17
    invoke-static {p0, p1}, Lm/k;->g(Ljava/io/InputStream;I)I

    move-result v2

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/16 v6, 0x11

    const/16 v7, 0x10

    const/4 v8, 0x4

    const/4 v9, 0x3

    if-eq v2, v9, :cond_31

    if-eq v2, v8, :cond_31

    if-eq v2, v7, :cond_31

    if-eq v2, v6, :cond_31

    if-ne v2, v5, :cond_2f

    goto :goto_31

    :cond_2f
    move v10, v3

    goto :goto_32

    :cond_31
    :goto_31
    move v10, v4

    :goto_32
    invoke-static {p0, v1, v10}, Lm/k;->e(Ljava/io/InputStream;IZ)I

    move-result v10

    if-gez v10, :cond_9f

    and-int/lit8 v3, p1, 0x20

    if-eqz v3, :cond_97

    new-instance v3, Lm/t1;

    invoke-direct {v3, p0, v1}, Lm/t1;-><init>(Ljava/io/InputStream;I)V

    new-instance p0, La2/r;

    invoke-direct {p0, v3, v1, v0}, La2/r;-><init>(Lm/w1;I[[B)V

    and-int/lit16 p1, p1, 0xc0

    if-eqz p1, :cond_50

    new-instance v0, Lm/l0;

    invoke-direct {v0, p1, v2, p0}, Lm/l0;-><init>(IILa2/r;)V

    return-object v0

    :cond_50
    if-eq v2, v9, :cond_91

    if-eq v2, v8, :cond_8b

    if-eq v2, v5, :cond_85

    if-eq v2, v7, :cond_7c

    if-ne v2, v6, :cond_63

    new-instance p1, Lm/i0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lm/i0;-><init>(I)V

    iput-object p0, p1, Lm/i0;->d:La2/r;

    return-object p1

    :cond_63
    new-instance p0, Lm/i;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown BER object encountered: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_7c
    new-instance p1, Lm/i0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lm/i0;-><init>(I)V

    iput-object p0, p1, Lm/i0;->d:La2/r;

    return-object p1

    :cond_85
    new-instance p1, Lm/i0;

    invoke-direct {p1, p0}, Lm/i0;-><init>(La2/r;)V

    return-object p1

    :cond_8b
    new-instance p1, Lm/g0;

    invoke-direct {p1, p0}, Lm/g0;-><init>(La2/r;)V

    return-object p1

    :cond_91
    new-instance p1, Lm/d0;

    invoke-direct {p1, p0}, Lm/d0;-><init>(La2/r;)V

    return-object p1

    :cond_97
    new-instance p0, Ljava/io/IOException;

    const-string p1, "indefinite-length primitive encoding encountered"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    new-instance v11, Lm/r1;

    invoke-direct {v11, p0, v10, v1}, Lm/r1;-><init>(Ljava/io/InputStream;II)V

    and-int/lit16 p0, p1, 0xe0

    if-nez p0, :cond_ea

    if-eq v2, v9, :cond_e4

    if-eq v2, v8, :cond_dc

    if-eq v2, v5, :cond_d3

    if-eq v2, v7, :cond_ca

    if-eq v2, v6, :cond_c1

    :try_start_b2
    invoke-static {v2, v11, v0}, Lm/k;->b(ILm/r1;[[B)Lm/u;

    move-result-object p0
    :try_end_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b2 .. :try_end_b6} :catch_b7

    return-object p0

    :catch_b7
    move-exception p0

    new-instance p1, Lm/i;

    const-string v0, "corrupted stream detected"

    const/4 v1, 0x0

    invoke-direct {p1, v0, p0, v1}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_c1
    new-instance p0, Lm/i;

    const-string p1, "sequences must use constructed encoding (see X.690 8.9.1/8.10.1)"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_ca
    new-instance p0, Lm/i;

    const-string p1, "sets must use constructed encoding (see X.690 8.11.1/8.12.1)"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_d3
    new-instance p0, Lm/i;

    const-string p1, "externals must use constructed encoding (see X.690 8.18)"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_dc
    new-instance p0, Lm/g0;

    invoke-direct {p0}, Lm/g0;-><init>()V

    iput-object v11, p0, Lm/g0;->d:Ljava/lang/Object;

    return-object p0

    :cond_e4
    new-instance p0, Lm/k1;

    invoke-direct {p0, v11}, Lm/k1;-><init>(Lm/r1;)V

    return-object p0

    :cond_ea
    new-instance p0, La2/r;

    iget v1, v11, Lm/w1;->d:I

    invoke-direct {p0, v11, v1, v0}, La2/r;-><init>(Lm/w1;I[[B)V

    and-int/lit16 v0, p1, 0xc0

    if-eqz v0, :cond_100

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_fa

    move v3, v4

    :cond_fa
    new-instance p1, Lm/q1;

    invoke-direct {p1, v0, v2, v3, p0}, Lm/q1;-><init>(IIZLa2/r;)V

    return-object p1

    :cond_100
    if-eq v2, v9, :cond_141

    if-eq v2, v8, :cond_13b

    if-eq v2, v5, :cond_135

    if-eq v2, v7, :cond_12c

    if-ne v2, v6, :cond_113

    new-instance p1, Lm/i0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lm/i0;-><init>(I)V

    iput-object p0, p1, Lm/i0;->d:La2/r;

    return-object p1

    :cond_113
    new-instance p0, Lm/i;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unknown DL object encountered: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_12c
    new-instance p1, Lm/i0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lm/i0;-><init>(I)V

    iput-object p0, p1, Lm/i0;->d:La2/r;

    return-object p1

    :cond_135
    new-instance p1, Lm/i0;

    invoke-direct {p1, p0}, Lm/i0;-><init>(La2/r;)V

    return-object p1

    :cond_13b
    new-instance p1, Lm/g0;

    invoke-direct {p1, p0}, Lm/g0;-><init>(La2/r;)V

    return-object p1

    :cond_141
    new-instance p1, Lm/d0;

    invoke-direct {p1, p0}, Lm/d0;-><init>(La2/r;)V

    return-object p1
.end method

.method public e(II)Lm/k0;
    .registers 7

    invoke-virtual {p0}, La2/r;->f()Lm/g;

    move-result-object p0

    iget v0, p0, Lm/g;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    new-instance v0, Lm/k0;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/g;->c(I)Lm/f;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2, p0}, Lm/a0;-><init>(IIILm/f;)V

    return-object v0

    :cond_15
    new-instance v2, Lm/k0;

    sget-object v3, Lm/e0;->a:Lm/h0;

    if-ge v0, v1, :cond_1e

    sget-object p0, Lm/e0;->a:Lm/h0;

    goto :goto_24

    :cond_1e
    new-instance v0, Lm/h0;

    invoke-direct {v0, p0}, Lm/x;-><init>(Lm/g;)V

    move-object p0, v0

    :goto_24
    const/4 v0, 0x4

    invoke-direct {v2, v0, p1, p2, p0}, Lm/a0;-><init>(IIILm/f;)V

    return-object v2
.end method

.method public f()Lm/g;
    .registers 5

    iget-object v0, p0, La2/r;->h:Ljava/lang/Object;

    check-cast v0, Lm/w1;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_11

    new-instance p0, Lm/g;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lm/g;-><init>(I)V

    return-object p0

    :cond_11
    new-instance v2, Lm/g;

    invoke-direct {v2}, Lm/g;-><init>()V

    :cond_16
    invoke-virtual {p0, v1}, La2/r;->d(I)Lm/f;

    move-result-object v1

    instance-of v3, v1, Lm/s1;

    if-eqz v3, :cond_28

    check-cast v1, Lm/s1;

    invoke-interface {v1}, Lm/s1;->a()Lm/u;

    move-result-object v1

    :goto_24
    invoke-virtual {v2, v1}, Lm/g;->a(Lm/f;)V

    goto :goto_2d

    :cond_28
    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v1

    goto :goto_24

    :goto_2d
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_16

    return-object v2
.end method

.method public generateBytes([BII)I
    .registers 12

    iget p2, p0, La2/r;->g:I

    array-length v0, p1

    sub-int/2addr v0, p3

    if-ltz v0, :cond_4a

    new-array v0, p2, [B

    const/4 v1, 0x4

    new-array v2, v1, [B

    iget-object v3, p0, La2/r;->h:Ljava/lang/Object;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/v;->reset()V

    const/4 v4, 0x0

    move v5, v4

    if-le p3, p2, :cond_30

    :cond_14
    invoke-static {v5, v2}, La2/r;->b(I[B)V

    iget-object v6, p0, La2/r;->i:Ljava/lang/Object;

    check-cast v6, [B

    array-length v7, v6

    invoke-interface {v3, v6, v4, v7}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v3, v2, v4, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v3, v0, v4}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    mul-int v6, v5, p2

    invoke-static {v0, v4, p1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    div-int v6, p3, p2

    if-lt v5, v6, :cond_14

    :cond_30
    mul-int/2addr p2, v5

    if-ge p2, p3, :cond_49

    invoke-static {v5, v2}, La2/r;->b(I[B)V

    iget-object p0, p0, La2/r;->i:Ljava/lang/Object;

    check-cast p0, [B

    array-length v5, p0

    invoke-interface {v3, p0, v4, v5}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v3, v2, v4, v1}, Lorg/bouncycastle/crypto/v;->update([BII)V

    invoke-interface {v3, v0, v4}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I

    sub-int p0, p3, p2

    invoke-static {v0, v4, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49
    return p3

    :cond_4a
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too small"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Lorg/bouncycastle/crypto/u;)V
    .registers 3

    instance-of v0, p1, Le1/p0;

    if-eqz v0, :cond_b

    check-cast p1, Le1/p0;

    iget-object p1, p1, Le1/p0;->a:[B

    iput-object p1, p0, La2/r;->i:Ljava/lang/Object;

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MGF parameters required for MGF1Generator"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
