.class public final Lx0/s;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# static fields
.field public static final h:Ljava/math/BigInteger;


# instance fields
.field public g:Le1/y0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/s;->h:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 13

    const/4 v0, 0x0

    :goto_1
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_9f

    iget-object v1, p0, Lx0/s;->g:Le1/y0;

    iget-object v1, v1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v1, Ljava/security/SecureRandom;

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lm4/a;->e(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lx0/s;->h:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_9b

    :cond_1e
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_2a

    goto/16 :goto_9b

    :cond_2a
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iget-object v4, p0, Lx0/s;->g:Le1/y0;

    iget v4, v4, Le1/y0;->j:I

    const/16 v5, 0x600

    const/4 v6, 0x4

    const/16 v7, 0x64

    if-lt v2, v5, :cond_48

    if-gt v4, v7, :cond_3d

    const/4 v6, 0x3

    goto :goto_79

    :cond_3d
    const/16 v2, 0x80

    if-gt v4, v2, :cond_42

    goto :goto_79

    :cond_42
    add-int/lit8 v4, v4, -0x7f

    :goto_44
    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    goto :goto_79

    :cond_48
    const/16 v5, 0x400

    const/4 v8, 0x5

    if-lt v2, v5, :cond_5d

    if-gt v4, v7, :cond_50

    goto :goto_79

    :cond_50
    const/16 v2, 0x70

    if-gt v4, v2, :cond_56

    :goto_54
    move v6, v8

    goto :goto_79

    :cond_56
    add-int/lit8 v4, v4, -0x6f

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v4, 0x5

    goto :goto_79

    :cond_5d
    const/16 v5, 0x200

    const/16 v6, 0x50

    if-lt v2, v5, :cond_6d

    if-gt v4, v6, :cond_66

    goto :goto_54

    :cond_66
    const/4 v6, 0x7

    if-gt v4, v7, :cond_6a

    goto :goto_79

    :cond_6a
    add-int/lit8 v4, v4, -0x63

    goto :goto_44

    :cond_6d
    const/16 v2, 0x28

    if-gt v4, v6, :cond_73

    move v6, v2

    goto :goto_79

    :cond_73
    add-int/lit8 v4, v4, -0x4f

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v6, v4, 0x28

    :goto_79
    invoke-static {v1}, Lj2/a;->b(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_9b

    iget-object v2, p0, Lx0/s;->g:Le1/y0;

    iget-object v2, v2, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v2, Ljava/security/SecureRandom;

    invoke-static {v1, v2, v6}, Lj2/a;->c(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    goto :goto_9b

    :cond_9a
    return-object v1

    :cond_9b
    :goto_9b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unable to generate prime number for RSA key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 28

    move-object/from16 v0, p0

    iget-object v1, v0, Lx0/s;->g:Le1/y0;

    iget v1, v1, Lorg/bouncycastle/crypto/z;->g:I

    add-int/lit8 v2, v1, 0x1

    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v4, -0x64

    div-int/lit8 v6, v1, 0x3

    if-ge v5, v6, :cond_15

    move v5, v6

    :cond_15
    shr-int/lit8 v6, v1, 0x2

    const-wide/16 v7, 0x2

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    add-int/lit8 v7, v1, -0x1

    sget-object v8, Lx0/s;->h:Ljava/math/BigInteger;

    invoke-virtual {v8, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v8, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2f
    if-nez v12, :cond_db

    iget-object v13, v0, Lx0/s;->g:Le1/y0;

    iget-object v13, v13, Le1/y0;->i:Ljava/math/BigInteger;

    invoke-virtual {v0, v2, v13, v7}, Lx0/s;->a(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    :goto_39
    invoke-virtual {v0, v3, v13, v7}, Lx0/s;->a(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    move/from16 v24, v3

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-lt v3, v5, :cond_53

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_5a

    :cond_53
    move/from16 v25, v1

    move-object/from16 v16, v13

    const/4 v11, 0x0

    goto/16 :goto_d1

    :cond_5a
    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    if-eq v11, v1, :cond_6b

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    :goto_68
    move/from16 v3, v24

    goto :goto_39

    :cond_6b
    invoke-static {v3}, Lk2/b0;->l(Ljava/math/BigInteger;)I

    move-result v11

    if-ge v11, v6, :cond_76

    invoke-virtual {v0, v2, v13, v7}, Lx0/s;->a(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    goto :goto_68

    :cond_76
    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v11

    if-gez v11, :cond_81

    move-object/from16 v26, v15

    move-object v15, v14

    move-object/from16 v14, v26

    :cond_81
    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    move/from16 v25, v1

    invoke-virtual {v11, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gtz v16, :cond_a8

    :goto_a1
    move-object/from16 v0, p0

    move/from16 v3, v24

    move/from16 v1, v25

    goto :goto_2f

    :cond_a8
    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-static {v14, v15}, Lm4/a;->i(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    new-instance v10, Lorg/bouncycastle/crypto/m;

    new-instance v0, Le1/z0;

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {v0, v11, v3, v13, v12}, Le1/z0;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    move-object/from16 v18, v14

    new-instance v14, Le1/a1;

    const/16 v23, 0x1

    move-object/from16 v17, v1

    move-object/from16 v16, v13

    move-object/from16 v19, v15

    move-object v15, v3

    invoke-direct/range {v14 .. v23}, Le1/a1;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-direct {v10, v0, v14}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a1

    :goto_d1
    move-object/from16 v0, p0

    move-object/from16 v13, v16

    move/from16 v3, v24

    move/from16 v1, v25

    goto/16 :goto_39

    :cond_db
    return-object v10
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 2

    check-cast p1, Le1/y0;

    iput-object p1, p0, Lx0/s;->g:Le1/y0;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
