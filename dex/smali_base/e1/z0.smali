.class public Le1/z0;
.super Le1/b;


# static fields
.field public static final x:La2/r;

.field public static final y:Ljava/math/BigInteger;


# instance fields
.field public final d:Ljava/math/BigInteger;

.field public final q:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, La2/r;

    invoke-direct {v0}, La2/r;-><init>()V

    sput-object v0, Le1/z0;->x:La2/r;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le1/z0;->y:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Le1/b;-><init>(Z)V

    const/4 v2, 0x1

    if-nez p1, :cond_1a

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA publicExponent is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_1a
    sget-object v3, Le1/z0;->x:La2/r;

    monitor-enter v3

    :try_start_1d
    iget-object v4, v3, La2/r;->h:Ljava/lang/Object;

    check-cast v4, Ljava/util/WeakHashMap;

    invoke-virtual {v4, v1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_242

    monitor-exit v3

    if-eqz v4, :cond_2a

    goto/16 :goto_213

    :cond_2a
    if-eqz p4, :cond_31

    invoke-virtual {v3, v1}, La2/r;->c(Ljava/math/BigInteger;)V

    goto/16 :goto_213

    :cond_31
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/2addr v4, v2

    if-eqz v4, :cond_23a

    const-string v4, "org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {v4}, Lm4/h;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_42

    goto/16 :goto_213

    :cond_42
    const-string v4, "org.bouncycastle.rsa.max_size"

    const/16 v5, 0x4000

    invoke-static {v5, v4}, Lm4/h;->a(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-lt v4, v5, :cond_232

    sget-object v4, Le1/z0;->y:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    if-ge v5, v6, :cond_5e

    move-object v5, v1

    goto :goto_60

    :cond_5e
    move-object v5, v4

    move-object v4, v1

    :goto_60
    sget-object v6, Lm4/a;->a:Ljava/math/BigInteger;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_22a

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-ne v7, v2, :cond_222

    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-ltz v7, :cond_7f

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    if-le v7, v8, :cond_83

    :cond_7f
    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    :cond_83
    sget-object v7, Lm4/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x4

    if-eqz v7, :cond_8f

    move v4, v2

    goto/16 :goto_115

    :cond_8f
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-static {v7, v4}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object v4

    invoke-static {v7, v5}, Ls2/b;->u(ILjava/math/BigInteger;)[I

    move-result-object v5

    array-length v7, v4

    shl-int/lit8 v9, v7, 0x5

    sub-int/2addr v7, v2

    aget v10, v4, v7

    invoke-static {v10}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v10, v9, 0x1d

    div-int/lit8 v10, v10, 0x1e

    :goto_aa
    if-ltz v7, :cond_bd

    aget v11, v5, v7

    if-eqz v11, :cond_ba

    mul-int/lit8 v7, v7, 0x20

    add-int/lit8 v7, v7, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v11

    sub-int/2addr v7, v11

    goto :goto_be

    :cond_ba
    add-int/lit8 v7, v7, -0x1

    goto :goto_aa

    :cond_bd
    move v7, v6

    :goto_be
    sub-int v7, v9, v7

    new-array v11, v8, [I

    new-array v12, v10, [I

    new-array v13, v10, [I

    new-array v14, v10, [I

    invoke-static {v9, v5, v13}, Lt4/d;->I(I[I[I)V

    invoke-static {v9, v4, v14}, Lt4/d;->I(I[I[I)V

    invoke-static {v14, v6, v12, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-int v4, v7

    const-wide/32 v16, 0x2e1e2

    int-to-long v14, v9

    mul-long v14, v14, v16

    const/16 v5, 0x2e

    if-ge v9, v5, :cond_e0

    const v5, 0x4b4b5

    goto :goto_e3

    :cond_e0
    const v5, 0x2c3c4

    :goto_e3
    int-to-long v8, v5

    add-long/2addr v14, v8

    const/16 v5, 0x10

    ushr-long v8, v14, v5

    long-to-int v5, v8

    :goto_ea
    invoke-static {v10, v6, v13}, Lt4/d;->O(II[I)Z

    move-result v8

    if-nez v8, :cond_106

    if-lt v7, v5, :cond_f4

    move v4, v6

    goto :goto_115

    :cond_f4
    add-int/lit8 v7, v7, 0x1e

    aget v8, v12, v6

    aget v9, v13, v6

    invoke-static {v4, v8, v9, v11}, Lt4/d;->G(III[I)I

    move-result v4

    invoke-static {v10, v12, v13, v11}, Lt4/d;->R0(I[I[I[I)V

    invoke-static {v10, v12, v13}, Lt4/d;->P0(I[I[I)I

    move-result v10

    goto :goto_ea

    :cond_106
    add-int/lit8 v4, v10, -0x1

    aget v4, v12, v4

    shr-int/lit8 v4, v4, 0x1f

    if-gez v4, :cond_111

    invoke-static {v10, v12}, Lt4/d;->z0(I[I)I

    :cond_111
    invoke-static {v10, v2, v12}, Lt4/d;->O(II[I)Z

    move-result v4

    :goto_115
    if-eqz v4, :cond_21a

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    const-string v7, "org.bouncycastle.rsa.max_mr_tests"

    const/16 v8, 0x600

    if-lt v4, v8, :cond_125

    const/4 v8, 0x3

    goto :goto_133

    :cond_125
    const/16 v8, 0x400

    if-lt v4, v8, :cond_12b

    const/4 v8, 0x4

    goto :goto_133

    :cond_12b
    const/16 v8, 0x200

    if-lt v4, v8, :cond_131

    const/4 v8, 0x7

    goto :goto_133

    :cond_131
    const/16 v8, 0x32

    :goto_133
    invoke-static {v8, v7}, Lm4/h;->a(ILjava/lang/String;)I

    move-result v4

    if-lez v4, :cond_210

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v7

    sget-object v8, Lj2/a;->a:Ljava/math/BigInteger;

    sget-object v9, Lj2/a;->b:Ljava/math/BigInteger;

    invoke-static {v1}, Lj2/a;->a(Ljava/math/BigInteger;)V

    if-eqz v7, :cond_208

    if-lt v4, v2, :cond_200

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-ne v10, v5, :cond_155

    new-instance v2, Lf1/a;

    invoke-direct {v2, v6}, Lf1/a;-><init>(Z)V

    goto/16 :goto_1f3

    :cond_155
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-nez v5, :cond_163

    new-instance v4, Lf1/a;

    invoke-direct {v4, v2}, Lf1/a;-><init>(Z)V

    :goto_160
    move-object v2, v4

    goto/16 :goto_1f3

    :cond_163
    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v5}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v12

    move v13, v6

    :goto_174
    if-ge v13, v4, :cond_1ed

    invoke-static {v9, v10, v7}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-lez v15, :cond_18a

    new-instance v4, Lf1/a;

    invoke-direct {v4, v2}, Lf1/a;-><init>(Z)V

    goto :goto_160

    :cond_18a
    invoke-virtual {v14, v12, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e9

    invoke-virtual {v14, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_19b

    goto :goto_1e9

    :cond_19b
    move v15, v2

    :goto_19c
    if-ge v15, v11, :cond_1b7

    invoke-virtual {v14, v9, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1aa

    move v15, v2

    goto :goto_1b9

    :cond_1aa
    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b2

    :goto_1b0
    const/4 v15, 0x0

    goto :goto_1b9

    :cond_1b2
    add-int/lit8 v15, v15, 0x1

    move-object v14, v6

    const/4 v6, 0x0

    goto :goto_19c

    :cond_1b7
    move-object v6, v14

    goto :goto_1b0

    :goto_1b9
    if-nez v15, :cond_1e9

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cd

    invoke-virtual {v6, v9, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cc

    goto :goto_1cd

    :cond_1cc
    move-object v14, v6

    :cond_1cd
    :goto_1cd
    invoke-virtual {v14, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_1e2

    new-instance v4, Lf1/a;

    invoke-direct {v4, v2}, Lf1/a;-><init>(Z)V

    goto/16 :goto_160

    :cond_1e2
    new-instance v4, Lf1/a;

    invoke-direct {v4, v2}, Lf1/a;-><init>(Z)V

    goto/16 :goto_160

    :cond_1e9
    :goto_1e9
    add-int/lit8 v13, v13, 0x1

    const/4 v6, 0x0

    goto :goto_174

    :cond_1ed
    new-instance v2, Lf1/a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lf1/a;-><init>(Z)V

    :goto_1f3
    iget-boolean v2, v2, Lf1/a;->g:Z

    if-eqz v2, :cond_1f8

    goto :goto_210

    :cond_1f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus is not composite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iterations\' must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'random\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_210
    :goto_210
    invoke-virtual {v3, v1}, La2/r;->c(Ljava/math/BigInteger;)V

    :goto_213
    iput-object v1, v0, Le1/z0;->d:Ljava/math/BigInteger;

    move-object/from16 v1, p3

    iput-object v1, v0, Le1/z0;->q:Ljava/math/BigInteger;

    return-void

    :cond_21a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus has a small prime factor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_222
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "BigInteger: modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'M\' must be odd"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_242
    move-exception v0

    :try_start_243
    monitor-exit v3
    :try_end_244
    .catchall {:try_start_243 .. :try_end_244} :catchall_242

    throw v0
.end method
