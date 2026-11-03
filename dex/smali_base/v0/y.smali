.class public Lv0/y;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p0;


# static fields
.field public static final l:[B


# instance fields
.field public final synthetic g:I

.field public h:Z

.field public final i:Lorg/bouncycastle/crypto/d;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lv0/y;->l:[B

    return-void

    nop

    :array_a
    .array-data 1
        -0x5at
        0x59t
        0x59t
        -0x5at
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;I)V
    .registers 3

    iput p2, p0, Lv0/y;->g:I

    packed-switch p2, :pswitch_data_22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x4

    new-array p2, p2, [B

    iput-object p2, p0, Lv0/y;->j:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-object p2, p0, Lv0/y;->k:Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lv0/y;->h:Z

    iput-object p1, p0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    return-void

    :pswitch_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, La1/c;

    invoke-direct {p2, p1}, La1/c;-><init>(Lorg/bouncycastle/crypto/d;)V

    iput-object p2, p0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public final a(I[B)[B
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lv0/y;->g:I

    packed-switch v3, :pswitch_data_194

    iget-object v3, v0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    check-cast v3, La1/c;

    iget-boolean v4, v0, Lv0/y;->h:Z

    if-nez v4, :cond_a8

    iget-object v4, v3, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v4}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    if-lt v1, v5, :cond_a0

    new-array v5, v1, [B

    new-array v6, v4, [B

    const/4 v7, 0x0

    invoke-static {v2, v7, v5, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v7, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Le1/s0;

    iget-object v8, v0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v8, Le1/s0;

    iget-object v8, v8, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    invoke-direct {v2, v8, v6, v7, v4}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    invoke-virtual {v3, v7, v2}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    move v2, v4

    :goto_37
    if-ge v2, v1, :cond_3e

    invoke-virtual {v3, v2, v2, v5, v5}, La1/c;->b(II[B[B)I

    add-int/2addr v2, v4

    goto :goto_37

    :cond_3e
    sub-int v2, v1, v4

    invoke-static {v5, v2, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Le1/s0;

    iget-object v8, v0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v8, Le1/s0;

    iget-object v8, v8, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    invoke-direct {v2, v8, v6, v7, v4}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    invoke-virtual {v3, v7, v2}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v3, v7, v7, v5, v5}, La1/c;->b(II[B[B)I

    iget-object v0, v0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v0, Le1/s0;

    invoke-virtual {v3, v7, v0}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    move v0, v7

    :goto_5c
    if-ge v0, v1, :cond_63

    invoke-virtual {v3, v0, v0, v5, v5}, La1/c;->b(II[B[B)I

    add-int/2addr v0, v4

    goto :goto_5c

    :cond_63
    aget-byte v0, v5, v7

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    const/4 v3, 0x1

    if-le v0, v1, :cond_6e

    move v4, v3

    goto :goto_6f

    :cond_6e
    move v4, v7

    :goto_6f
    if-eqz v4, :cond_74

    new-array v0, v1, [B

    goto :goto_76

    :cond_74
    new-array v0, v0, [B

    :goto_76
    array-length v1, v0

    invoke-static {v5, v2, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v7

    move v2, v1

    :goto_7c
    const/4 v6, 0x3

    if-eq v1, v6, :cond_8d

    add-int/lit8 v6, v1, 0x1

    aget-byte v8, v5, v6

    not-int v8, v8

    int-to-byte v8, v8

    add-int/lit8 v1, v1, 0x4

    aget-byte v1, v5, v1

    xor-int/2addr v1, v8

    or-int/2addr v2, v1

    move v1, v6

    goto :goto_7c

    :cond_8d
    invoke-static {v5, v7}, Ljava/util/Arrays;->fill([BB)V

    if-eqz v2, :cond_93

    move v7, v3

    :cond_93
    or-int v1, v7, v4

    if-nez v1, :cond_98

    return-object v0

    :cond_98
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "wrapped key corrupted"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "input too short"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b0
    iget-boolean v3, v0, Lv0/y;->h:Z

    if-nez v3, :cond_18c

    div-int/lit8 v3, v1, 0x8

    mul-int/lit8 v4, v3, 0x8

    if-ne v4, v1, :cond_184

    const/4 v4, 0x1

    if-le v3, v4, :cond_17c

    new-array v5, v1, [B

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v7, v1, [B

    const/16 v8, 0x8

    new-array v9, v8, [B

    const/4 v10, 0x2

    iget-object v11, v0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    if-ne v3, v10, :cond_eb

    iget-object v2, v0, Lv0/y;->k:Ljava/lang/Object;

    check-cast v2, Le1/o0;

    invoke-interface {v11, v6, v2}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-interface {v11}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v2

    move v3, v6

    :goto_da
    if-ge v3, v1, :cond_e1

    invoke-interface {v11, v3, v3, v5, v7}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int/2addr v3, v2

    goto :goto_da

    :cond_e1
    invoke-static {v7, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v1, v8

    new-array v2, v1, [B

    invoke-static {v7, v8, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_138

    :cond_eb
    sub-int/2addr v1, v8

    new-array v5, v1, [B

    const/16 v7, 0x10

    new-array v7, v7, [B

    invoke-static {v2, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v8, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lv0/y;->k:Ljava/lang/Object;

    check-cast v1, Le1/o0;

    invoke-interface {v11, v6, v1}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    sub-int/2addr v3, v4

    const/4 v1, 0x5

    :goto_101
    if-ltz v1, :cond_134

    move v2, v3

    :goto_104
    if-lt v2, v4, :cond_12f

    add-int/lit8 v10, v2, -0x1

    mul-int/2addr v10, v8

    invoke-static {v5, v10, v7, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v12, v3, v1

    add-int/2addr v12, v2

    move v13, v4

    :goto_110
    if-eqz v12, :cond_124

    rsub-int/lit8 v14, v13, 0x8

    aget-byte v15, v7, v14

    move/from16 v16, v4

    int-to-byte v4, v12

    xor-int/2addr v4, v15

    int-to-byte v4, v4

    aput-byte v4, v7, v14

    ushr-int/lit8 v12, v12, 0x8

    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto :goto_110

    :cond_124
    move/from16 v16, v4

    invoke-interface {v11, v6, v6, v7, v7}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    invoke-static {v7, v8, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_104

    :cond_12f
    move/from16 v16, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_101

    :cond_134
    invoke-static {v7, v6, v9, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v5

    :goto_138
    const/4 v1, 0x4

    new-array v3, v1, [B

    invoke-static {v9, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v9}, Lm4/d;->b(I[B)I

    move-result v4

    iget-object v0, v0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v3, v0}, Lm4/d;->o([B[B)Z

    move-result v0

    array-length v3, v2

    add-int/lit8 v5, v3, -0x8

    if-gt v4, v5, :cond_150

    move v0, v6

    :cond_150
    if-le v4, v3, :cond_153

    move v0, v6

    :cond_153
    sub-int/2addr v3, v4

    if-ge v3, v8, :cond_15b

    if-gez v3, :cond_159

    goto :goto_15b

    :cond_159
    move v1, v3

    goto :goto_15c

    :cond_15b
    :goto_15b
    move v0, v6

    :goto_15c
    new-array v3, v1, [B

    new-array v5, v1, [B

    array-length v7, v2

    sub-int/2addr v7, v1

    invoke-static {v2, v7, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v3}, Lm4/d;->o([B[B)Z

    move-result v1

    if-nez v1, :cond_16c

    move v0, v6

    :cond_16c
    if-eqz v0, :cond_174

    new-array v0, v4, [B

    invoke-static {v2, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_174
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "checksum failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17c
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "unwrap data must be at least 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_184
    new-instance v0, Lorg/bouncycastle/crypto/x;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_b0
    .end packed-switch
.end method

.method public final d(I[B)[B
    .registers 10

    iget v0, p0, Lv0/y;->g:I

    packed-switch v0, :pswitch_data_ee

    iget-object v0, p0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    check-cast v0, La1/c;

    iget-boolean v1, p0, Lv0/y;->h:Z

    if-eqz v1, :cond_7b

    const/16 v1, 0xff

    if-gt p1, v1, :cond_73

    if-ltz p1, :cond_73

    iget-object v1, p0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v1, Le1/s0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, La1/c;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object v1, v0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    add-int/lit8 v3, p1, 0x4

    mul-int/lit8 v4, v1, 0x2

    if-ge v3, v4, :cond_2a

    :goto_27
    new-array v4, v4, [B

    goto :goto_35

    :cond_2a
    rem-int v4, v3, v1

    if-nez v4, :cond_30

    move v4, v3

    goto :goto_27

    :cond_30
    div-int v4, v3, v1

    add-int/2addr v4, v2

    mul-int/2addr v4, v1

    goto :goto_27

    :goto_35
    int-to-byte v5, p1

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const/4 v5, 0x4

    invoke-static {p2, v6, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v4

    sub-int/2addr p1, v3

    new-array p2, p1, [B

    iget-object p0, p0, Lv0/y;->k:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    invoke-virtual {p0, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p2, v6, v4, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte p0, v4, v5

    not-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v4, v2

    const/4 p0, 0x5

    aget-byte p0, v4, p0

    not-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x2

    aput-byte p0, v4, p1

    const/4 p0, 0x6

    aget-byte p0, v4, p0

    not-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x3

    aput-byte p0, v4, p1

    move p0, v6

    :goto_62
    array-length p1, v4

    if-ge p0, p1, :cond_6a

    invoke-virtual {v0, p0, p0, v4, v4}, La1/c;->b(II[B[B)I

    add-int/2addr p0, v1

    goto :goto_62

    :cond_6a
    :goto_6a
    array-length p0, v4

    if-ge v6, p0, :cond_72

    invoke-virtual {v0, v6, v6, v4, v4}, La1/c;->b(II[B[B)I

    add-int/2addr v6, v1

    goto :goto_6a

    :cond_72
    return-object v4

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input must be from 0 to 255 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not set for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_83
    iget-boolean v0, p0, Lv0/y;->h:Z

    if-eqz v0, :cond_e6

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p1, v4}, Lm4/d;->w([BII)V

    new-array v2, p1, [B

    invoke-static {p2, v3, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rem-int/lit8 p2, p1, 0x8

    rsub-int/lit8 p2, p2, 0x8

    rem-int/2addr p2, v0

    add-int v4, p1, p2

    new-array v5, v4, [B

    invoke-static {v2, v3, v5, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p2, :cond_af

    new-array v2, p2, [B

    invoke-static {v2, v3, v5, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_af
    const/4 p1, 0x1

    iget-object p2, p0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    if-ne v4, v0, :cond_d0

    add-int/lit8 v2, v4, 0x8

    new-array v6, v2, [B

    invoke-static {v1, v3, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v3, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lv0/y;->k:Ljava/lang/Object;

    check-cast p0, Le1/o0;

    invoke-interface {p2, p1, p0}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-interface {p2}, Lorg/bouncycastle/crypto/d;->c()I

    move-result p0

    :goto_c9
    if-ge v3, v2, :cond_e5

    invoke-interface {p2, v3, v3, v6, v6}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int/2addr v3, p0

    goto :goto_c9

    :cond_d0
    new-instance v2, Lv0/x;

    invoke-direct {v2, p2}, Lv0/x;-><init>(Lorg/bouncycastle/crypto/d;)V

    new-instance p2, Le1/s0;

    iget-object p0, p0, Lv0/y;->k:Ljava/lang/Object;

    check-cast p0, Le1/o0;

    invoke-direct {p2, p0, v1, v3, v0}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    invoke-virtual {v2, p1, p2}, Lv0/x;->init(ZLorg/bouncycastle/crypto/g;)V

    invoke-virtual {v2, v4, v5}, Lv0/x;->d(I[B)[B

    move-result-object v6

    :cond_e5
    return-object v6

    :cond_e6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not set for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_83
    .end packed-switch
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lv0/y;->g:I

    packed-switch v0, :pswitch_data_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    check-cast p0, La1/c;

    iget-object p0, p0, La1/c;->k:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/RFC3211Wrap"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_21
    iget-object p0, p0, Lv0/y;->i:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_21
    .end packed-switch
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 7

    iget v0, p0, Lv0/y;->g:I

    packed-switch v0, :pswitch_data_78

    iput-boolean p1, p0, Lv0/y;->h:Z

    instance-of v0, p2, Le1/t0;

    const-string v1, "RFC3211Wrap requires an IV"

    if-eqz v0, :cond_24

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Lv0/y;->k:Ljava/lang/Object;

    iget-object p1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    instance-of p2, p1, Le1/s0;

    if-eqz p2, :cond_1e

    check-cast p1, Le1/s0;

    iput-object p1, p0, Lv0/y;->j:Ljava/lang/Object;

    goto :goto_34

    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    if-eqz p1, :cond_2c

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lv0/y;->k:Ljava/lang/Object;

    :cond_2c
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_35

    check-cast p2, Le1/s0;

    iput-object p2, p0, Lv0/y;->j:Ljava/lang/Object;

    :goto_34
    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3b
    iget-object v0, p0, Lv0/y;->j:Ljava/lang/Object;

    check-cast v0, [B

    iput-boolean p1, p0, Lv0/y;->h:Z

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_49

    check-cast p2, Le1/t0;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_49
    instance-of p1, p2, Le1/o0;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_59

    check-cast p2, Le1/o0;

    iput-object p2, p0, Lv0/y;->k:Ljava/lang/Object;

    sget-object p0, Lv0/y;->l:[B

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_76

    :cond_59
    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_76

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->c:[B

    array-length v3, p1

    if-ne v3, v1, :cond_6e

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    iput-object p2, p0, Lv0/y;->k:Ljava/lang/Object;

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_76

    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV length not equal to 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    :goto_76
    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_3b
    .end packed-switch
.end method
