.class public final La1/i;
.super Ljava/lang/Object;

# interfaces
.implements La1/b;


# static fields
.field public static final l:[B


# instance fields
.field public final a:Lv0/h;

.field public final b:Lz0/f;

.field public final c:[B

.field public final d:[B

.field public final e:[B

.field public final f:[B

.field public g:[B

.field public h:J

.field public i:J

.field public j:I

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xf

    new-array v0, v0, [B

    sput-object v0, La1/i;->l:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Lz0/f;

    invoke-direct {v0}, Lz0/f;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, La1/i;->c:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    iput-object v1, p0, La1/i;->d:[B

    const/16 v1, 0x50

    new-array v1, v1, [B

    iput-object v1, p0, La1/i;->e:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, La1/i;->f:[B

    const/4 v1, 0x0

    iput v1, p0, La1/i;->j:I

    new-instance v1, Lv0/h;

    invoke-direct {v1}, Lv0/d0;-><init>()V

    iput-object v1, p0, La1/i;->a:Lv0/h;

    iput-object v0, p0, La1/i;->b:Lz0/f;

    return-void
.end method


# virtual methods
.method public final a([BII)V
    .registers 12

    if-eqz p1, :cond_69

    if-ltz p2, :cond_61

    if-ltz p3, :cond_59

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_51

    iget v0, p0, La1/i;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_22

    if-eq v0, v2, :cond_2d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_22

    if-ne v0, v2, :cond_1c

    goto :goto_2d

    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_22
    iput v2, p0, La1/i;->j:I

    goto :goto_2d

    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ChaCha20Poly1305 cannot be reused for encryption"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2d
    :goto_2d
    if-lez p3, :cond_50

    iget-wide v0, p0, La1/i;->h:J

    const-wide/high16 v2, -0x8000000000000000L

    add-long/2addr v2, v0

    int-to-long v4, p3

    const-wide v6, 0x7fffffffffffffffL

    sub-long/2addr v6, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_48

    add-long/2addr v0, v4

    iput-wide v0, p0, La1/i;->h:J

    iget-object p0, p0, La1/i;->b:Lz0/f;

    invoke-virtual {p0, p1, p2, p3}, Lz0/f;->update([BII)V

    return-void

    :cond_48
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    return-void

    :cond_51
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'len\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'inOff\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'in\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .registers 1

    iget-object p0, p0, La1/i;->f:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .registers 7

    iget v0, p0, La1/i;->j:I

    const/4 v1, 0x0

    sget-object v2, La1/i;->l:[B

    iget-object v3, p0, La1/i;->b:Lz0/f;

    packed-switch v0, :pswitch_data_38

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_10
    iget-wide v4, p0, La1/i;->h:J

    long-to-int v0, v4

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1c

    rsub-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v2, v1, v0}, Lz0/f;->update([BII)V

    :cond_1c
    const/4 v0, 0x7

    :goto_1d
    iput v0, p0, La1/i;->j:I

    return-void

    :pswitch_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ChaCha20Poly1305 cannot be reused for encryption"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_28
    return-void

    :pswitch_29
    iget-wide v4, p0, La1/i;->h:J

    long-to-int v0, v4

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_35

    rsub-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v2, v1, v0}, Lz0/f;->update([BII)V

    :cond_35
    const/4 v0, 0x3

    goto :goto_1d

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_29
        :pswitch_29
        :pswitch_28
        :pswitch_20
        :pswitch_10
        :pswitch_10
        :pswitch_28
    .end packed-switch
.end method

.method public final d(I)V
    .registers 9

    iget-wide v0, p0, La1/i;->i:J

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0x10

    const/4 v2, 0x0

    iget-object v3, p0, La1/i;->b:Lz0/f;

    if-eqz v0, :cond_13

    sget-object v4, La1/i;->l:[B

    rsub-int/lit8 v0, v0, 0x10

    invoke-virtual {v3, v4, v2, v0}, Lz0/f;->update([BII)V

    :cond_13
    new-array v0, v1, [B

    iget-wide v4, p0, La1/i;->h:J

    invoke-static {v2, v4, v5, v0}, Lm4/d;->F(IJ[B)V

    iget-wide v4, p0, La1/i;->i:J

    const/16 v6, 0x8

    invoke-static {v6, v4, v5, v0}, Lm4/d;->F(IJ[B)V

    invoke-virtual {v3, v0, v2, v1}, Lz0/f;->update([BII)V

    iget-object v0, p0, La1/i;->f:[B

    invoke-virtual {v3, v0, v2}, Lz0/f;->doFinal([BI)I

    iput p1, p0, La1/i;->j:I

    return-void
.end method

.method public final doFinal([BI)I
    .registers 15

    if-eqz p1, :cond_93

    if-ltz p2, :cond_8b

    invoke-virtual {p0}, La1/i;->c()V

    iget-object v0, p0, La1/i;->f:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iget v2, p0, La1/i;->j:I

    const/4 v3, 0x3

    iget-object v5, p0, La1/i;->e:[B

    iget-object v10, p0, La1/i;->b:Lz0/f;

    const-string v4, "Output buffer too short"

    const/16 v11, 0x10

    if-eq v2, v3, :cond_5c

    const/4 v3, 0x7

    if-ne v2, v3, :cond_56

    iget v2, p0, La1/i;->k:I

    if-lt v2, v11, :cond_4e

    add-int/lit8 v7, v2, -0x10

    array-length v2, p1

    sub-int/2addr v2, v7

    if-gt p2, v2, :cond_48

    if-lez v7, :cond_33

    invoke-virtual {v10, v5, v1, v7}, Lz0/f;->update([BII)V

    const/4 v6, 0x0

    move-object v4, p0

    move-object v8, p1

    move v9, p2

    invoke-virtual/range {v4 .. v9}, La1/i;->e([BII[BI)V

    :cond_33
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, La1/i;->d(I)V

    invoke-static {v11, v7, v0, v5}, Lm4/d;->n(II[B[B)Z

    move-result p1

    if-eqz p1, :cond_40

    move-object v4, p0

    goto :goto_80

    :cond_40
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "mac check in ChaCha20Poly1305 failed"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    new-instance p0, Lorg/bouncycastle/crypto/x;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_5c
    move-object v8, p1

    move v9, p2

    iget v7, p0, La1/i;->k:I

    add-int/lit8 p1, v7, 0x10

    array-length p2, v8

    sub-int/2addr p2, p1

    if-gt v9, p2, :cond_85

    if-lez v7, :cond_73

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, La1/i;->e([BII[BI)V

    iget p0, v4, La1/i;->k:I

    invoke-virtual {v10, v8, v9, p0}, Lz0/f;->update([BII)V

    goto :goto_74

    :cond_73
    move-object v4, p0

    :goto_74
    const/4 p0, 0x4

    invoke-virtual {v4, p0}, La1/i;->d(I)V

    iget p0, v4, La1/i;->k:I

    add-int p2, v9, p0

    invoke-static {v0, v1, v8, p2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v7, p1

    :goto_80
    const/4 p0, 0x1

    invoke-virtual {v4, v1, p0}, La1/i;->f(ZZ)V

    return v7

    :cond_85
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'outOff\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'out\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e([BII[BI)V
    .registers 13

    array-length v0, p4

    sub-int/2addr v0, p3

    if-gt p5, v0, :cond_2a

    iget-object v1, p0, La1/i;->a:Lv0/h;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lv0/d0;->processBytes([BII[BI)I

    iget-wide p1, p0, La1/i;->i:J

    const-wide/high16 p3, -0x8000000000000000L

    add-long/2addr p3, p1

    int-to-long v0, v4

    const-wide v2, -0x7fffffc000000040L    # -1.3580773059E-312

    sub-long/2addr v2, v0

    cmp-long p3, p3, v2

    if-gtz p3, :cond_22

    add-long/2addr p1, v0

    iput-wide p1, p0, La1/i;->i:J

    return-void

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Limit exceeded"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "Output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(ZZ)V
    .registers 11

    iget-object v0, p0, La1/i;->e:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    if-eqz p1, :cond_d

    iget-object p1, p0, La1/i;->f:[B

    invoke-static {p1, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_d
    const-wide/16 v2, 0x0

    iput-wide v2, p0, La1/i;->h:J

    iput-wide v2, p0, La1/i;->i:J

    iput v1, p0, La1/i;->k:I

    iget p1, p0, La1/i;->j:I

    packed-switch p1, :pswitch_data_5c

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :pswitch_20
    const/4 p1, 0x5

    iput p1, p0, La1/i;->j:I

    goto :goto_28

    :pswitch_24
    const/4 p1, 0x4

    iput p1, p0, La1/i;->j:I

    return-void

    :goto_28
    :pswitch_28
    if-eqz p2, :cond_2f

    iget-object p1, p0, La1/i;->a:Lv0/h;

    invoke-virtual {p1}, Lv0/d0;->reset()V

    :cond_2f
    const/16 p1, 0x40

    new-array v3, p1, [B

    :try_start_33
    iget-object v2, p0, La1/i;->a:Lv0/h;

    const/16 v5, 0x40

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v6, v3

    invoke-virtual/range {v2 .. v7}, Lv0/d0;->processBytes([BII[BI)I

    iget-object p1, p0, La1/i;->b:Lz0/f;

    new-instance p2, Le1/o0;

    const/16 v0, 0x20

    invoke-direct {p2, v3, v1, v0}, Le1/o0;-><init>([BII)V

    invoke-virtual {p1, p2}, Lz0/f;->init(Lorg/bouncycastle/crypto/g;)V
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_55

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    iget-object p1, p0, La1/i;->g:[B

    if-eqz p1, :cond_54

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, La1/i;->a([BII)V

    :cond_54
    return-void

    :catchall_55
    move-exception v0

    move-object p0, v0

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([BB)V

    throw p0

    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_28
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_28
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "ChaCha20Poly1305"

    return-object p0
.end method

.method public final getOutputSize(I)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, La1/i;->k:I

    add-int/2addr p1, v1

    iget p0, p0, La1/i;->j:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2a

    const/4 v1, 0x5

    if-eq p0, v1, :cond_23

    const/4 v1, 0x6

    if-eq p0, v1, :cond_23

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_23
    :goto_23
    add-int/lit8 p1, p1, -0x10

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2a
    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public final getUpdateOutputSize(I)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, La1/i;->k:I

    add-int/2addr p1, v1

    iget p0, p0, La1/i;->j:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_29

    const/4 v1, 0x2

    if-eq p0, v1, :cond_29

    const/4 v1, 0x3

    if-eq p0, v1, :cond_29

    const/4 v1, 0x5

    if-eq p0, v1, :cond_23

    const/4 v1, 0x6

    if-eq p0, v1, :cond_23

    const/4 v1, 0x7

    if-ne p0, v1, :cond_1d

    goto :goto_23

    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_23
    :goto_23
    add-int/lit8 p1, p1, -0x10

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_29
    rem-int/lit8 p0, p1, 0x40

    sub-int/2addr p1, p0

    return p1
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 11

    instance-of v0, p2, Le1/a;

    if-eqz v0, :cond_2e

    check-cast p2, Le1/a;

    iget v0, p2, Le1/a;->x:I

    const/16 v1, 0x80

    if-ne v1, v0, :cond_22

    iget-object v0, p2, Le1/a;->q:Le1/o0;

    iget-object v1, p2, Le1/a;->d:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    new-instance v2, Le1/s0;

    invoke-direct {v2, v0, v1}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iget-object p2, p2, Le1/a;->c:[B

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, La1/i;->g:[B

    goto :goto_3f

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value for MAC size: "

    invoke-static {v0, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    instance-of v0, p2, Le1/s0;

    if-eqz v0, :cond_b7

    move-object v2, p2

    check-cast v2, Le1/s0;

    iget-object p2, v2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    move-object v0, p2

    check-cast v0, Le1/o0;

    iget-object v1, v2, Le1/s0;->c:[B

    const/4 p2, 0x0

    iput-object p2, p0, La1/i;->g:[B

    :goto_3f
    const/16 p2, 0x20

    if-nez v0, :cond_50

    iget v3, p0, La1/i;->j:I

    if-eqz v3, :cond_48

    goto :goto_55

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be specified in initial init"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    iget-object v3, v0, Le1/o0;->c:[B

    array-length v3, v3

    if-ne p2, v3, :cond_af

    :goto_55
    if-eqz v1, :cond_a7

    array-length v3, v1

    const/16 v4, 0xc

    if-ne v4, v3, :cond_a7

    iget v3, p0, La1/i;->j:I

    iget-object v5, p0, La1/i;->c:[B

    iget-object v6, p0, La1/i;->d:[B

    if-eqz v3, :cond_7f

    if-eqz p1, :cond_7f

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_7f

    if-eqz v0, :cond_77

    iget-object v3, v0, Le1/o0;->c:[B

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_77

    goto :goto_7f

    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot reuse nonce for ChaCha20Poly1305 encryption"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    :goto_7f
    const/4 v3, 0x0

    if-eqz v0, :cond_93

    iget-object v0, v0, Le1/o0;->c:[B

    array-length v7, v0

    if-ne v7, p2, :cond_8b

    invoke-static {v0, v3, v5, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_93

    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "len"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_93
    :goto_93
    invoke-static {v1, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, La1/i;->a:Lv0/h;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, v2}, Lv0/d0;->init(ZLorg/bouncycastle/crypto/g;)V

    if-eqz p1, :cond_a0

    move p1, v0

    goto :goto_a1

    :cond_a0
    const/4 p1, 0x5

    :goto_a1
    iput p1, p0, La1/i;->j:I

    invoke-virtual {p0, v0, v3}, La1/i;->f(ZZ)V

    return-void

    :cond_a7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Nonce must be 96 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_af
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key must be 256 bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid parameters passed to ChaCha20Poly1305"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final processByte(B[BI)I
    .registers 15

    invoke-virtual {p0}, La1/i;->c()V

    iget v0, p0, La1/i;->j:I

    const/4 v1, 0x3

    iget-object v2, p0, La1/i;->b:Lz0/f;

    iget-object v4, p0, La1/i;->e:[B

    const/4 v9, 0x0

    const/16 v10, 0x40

    if-eq v0, v1, :cond_37

    const/4 v1, 0x7

    if-ne v0, v1, :cond_31

    iget v0, p0, La1/i;->k:I

    aput-byte p1, v4, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La1/i;->k:I

    array-length p1, v4

    if-ne v0, p1, :cond_50

    invoke-virtual {v2, v4, v9, v10}, Lz0/f;->update([BII)V

    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object v3, p0

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, La1/i;->e([BII[BI)V

    const/16 p0, 0x10

    invoke-static {v4, v10, v4, v9, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p0, v3, La1/i;->k:I

    return v10

    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_37
    move-object v3, p0

    move-object v7, p2

    move v8, p3

    iget p0, v3, La1/i;->k:I

    aput-byte p1, v4, p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v3, La1/i;->k:I

    if-ne p0, v10, :cond_50

    const/4 v5, 0x0

    const/16 v6, 0x40

    invoke-virtual/range {v3 .. v8}, La1/i;->e([BII[BI)V

    invoke-virtual {v2, v7, v8, v10}, Lz0/f;->update([BII)V

    iput v9, v3, La1/i;->k:I

    return v10

    :cond_50
    return v9
.end method

.method public final processBytes([BII[BI)I
    .registers 21

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v4, p4

    move/from16 v9, p5

    if-eqz v0, :cond_e4

    if-ltz v1, :cond_dc

    if-ltz v2, :cond_d4

    array-length v3, v0

    sub-int/2addr v3, v2

    if-gt v1, v3, :cond_cc

    if-ltz v9, :cond_c4

    const/4 v10, 0x0

    if-ne v0, v4, :cond_29

    invoke-virtual {p0, v2}, La1/i;->getUpdateOutputSize(I)I

    move-result v3

    invoke-static {v1, v2, v9, v3}, Lm4/d;->J(IIII)Z

    move-result v3

    if-eqz v3, :cond_29

    new-array v0, v2, [B

    invoke-static {v4, v1, v0, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v10

    :cond_29
    move-object v11, v0

    invoke-virtual {p0}, La1/i;->c()V

    iget v0, p0, La1/i;->j:I

    const/4 v3, 0x3

    iget-object v12, p0, La1/i;->b:Lz0/f;

    iget-object v4, p0, La1/i;->e:[B

    const/16 v13, 0x40

    if-eq v0, v3, :cond_6f

    const/4 v3, 0x7

    if-ne v0, v3, :cond_69

    move v0, v10

    move v14, v0

    :goto_3d
    if-ge v0, v2, :cond_68

    iget v3, p0, La1/i;->k:I

    add-int v5, v1, v0

    aget-byte v5, v11, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, La1/i;->k:I

    array-length v5, v4

    if-ne v3, v5, :cond_65

    invoke-virtual {v12, v4, v10, v13}, Lz0/f;->update([BII)V

    const/16 v6, 0x40

    add-int v8, v9, v14

    const/4 v5, 0x0

    move-object v3, p0

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, La1/i;->e([BII[BI)V

    const/16 v5, 0x10

    invoke-static {v4, v13, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, La1/i;->k:I

    add-int/lit8 v14, v14, 0x40

    :cond_65
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_68
    return v14

    :cond_69
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_6f
    iget v0, p0, La1/i;->k:I

    if-eqz v0, :cond_a0

    :goto_73
    if-lez v2, :cond_a0

    add-int/lit8 v6, v2, -0x1

    iget v0, p0, La1/i;->k:I

    add-int/lit8 v7, v1, 0x1

    aget-byte v1, v11, v1

    aput-byte v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La1/i;->k:I

    if-ne v0, v13, :cond_99

    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object v0, p0

    move-object v1, v4

    move v5, v9

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, La1/i;->e([BII[BI)V

    move-object v8, v1

    invoke-virtual {v12, v4, v9, v13}, Lz0/f;->update([BII)V

    iput v10, p0, La1/i;->k:I

    move v2, v7

    move v7, v13

    goto :goto_a6

    :cond_99
    move-object v8, v4

    move-object/from16 v4, p4

    move v2, v6

    move v1, v7

    move-object v4, v8

    goto :goto_73

    :cond_a0
    move-object v8, v4

    move-object/from16 v4, p4

    move v6, v2

    move v7, v10

    move v2, v1

    :goto_a6
    if-lt v6, v13, :cond_bb

    add-int v5, v9, v7

    const/16 v3, 0x40

    move-object v0, p0

    move-object v1, v11

    invoke-virtual/range {v0 .. v5}, La1/i;->e([BII[BI)V

    invoke-virtual {v12, v4, v5, v13}, Lz0/f;->update([BII)V

    add-int/lit8 v2, v2, 0x40

    add-int/lit8 v6, v6, -0x40

    add-int/lit8 v7, v7, 0x40

    goto :goto_a6

    :cond_bb
    move-object v1, v11

    if-lez v6, :cond_c3

    invoke-static {v1, v2, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, p0, La1/i;->k:I

    :cond_c3
    return v7

    :cond_c4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'outOff\' cannot be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cc
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string v0, "Input buffer too short"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'len\' cannot be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_dc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'inOff\' cannot be negative"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'in\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
