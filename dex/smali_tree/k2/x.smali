.class public abstract Lk2/x;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;

.field public static final c:[Lb1/b;

.field public static final d:[[B

.field public static final e:[Lb1/b;

.field public static final f:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 39

    sget-object v0, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lk2/x;->a:Ljava/math/BigInteger;

    sget-object v2, Lk2/a;->c:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lk2/x;->b:Ljava/math/BigInteger;

    sget-object v2, Lk2/a;->d:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    new-instance v5, Lb1/b;

    sget-object v4, Lk2/a;->a:Ljava/math/BigInteger;

    const/16 v6, 0x8

    invoke-direct {v5, v0, v4, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v7, Lb1/b;

    invoke-direct {v7, v3, v1, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v9, Lb1/b;

    invoke-direct {v9, v1, v1, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v11, Lb1/b;

    invoke-direct {v11, v0, v1, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v13, Lb1/b;

    invoke-direct {v13, v1, v0, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v15, Lb1/b;

    invoke-direct {v15, v0, v0, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v8, Lb1/b;

    invoke-direct {v8, v2, v0, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v10, Lb1/b;

    invoke-direct {v10, v1, v4, v6}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v12, v4

    const/4 v4, 0x0

    move v14, v6

    const/4 v6, 0x0

    move-object/from16 v17, v8

    const/4 v8, 0x0

    move-object/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move/from16 v18, v14

    const/4 v14, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move/from16 v21, v18

    const/16 v18, 0x0

    move-object/from16 v22, v2

    move-object/from16 v2, v20

    move-object/from16 v20, v1

    move/from16 v1, v21

    filled-new-array/range {v4 .. v19}, [Lb1/b;

    move-result-object v4

    sput-object v4, Lk2/x;->c:[Lb1/b;

    const/4 v4, 0x1

    new-array v6, v4, [B

    const/4 v13, 0x0

    aput-byte v4, v6, v13

    const/4 v14, 0x3

    new-array v8, v14, [B

    fill-array-data v8, :array_fa

    new-array v10, v14, [B

    fill-array-data v10, :array_100

    const/4 v15, 0x4

    new-array v12, v15, [B

    fill-array-data v12, :array_106

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    filled-new-array/range {v5 .. v12}, [[B

    move-result-object v5

    sput-object v5, Lk2/x;->d:[[B

    new-instance v5, Lb1/b;

    invoke-direct {v5, v0, v2, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v6, Lb1/b;

    invoke-direct {v6, v3, v0, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Lb1/b;

    move-object/from16 v7, v20

    invoke-direct {v3, v7, v0, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v8, Lb1/b;

    invoke-direct {v8, v0, v0, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v9, Lb1/b;

    invoke-direct {v9, v7, v7, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v10, Lb1/b;

    invoke-direct {v10, v0, v7, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lb1/b;

    move-object/from16 v11, v22

    invoke-direct {v0, v11, v7, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v11, Lb1/b;

    invoke-direct {v11, v7, v2, v1}, Lb1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    move-object/from16 v36, v0

    move-object/from16 v28, v3

    move-object/from16 v24, v5

    move-object/from16 v26, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v34, v10

    move-object/from16 v38, v11

    filled-new-array/range {v23 .. v38}, [Lb1/b;

    move-result-object v0

    sput-object v0, Lk2/x;->e:[Lb1/b;

    new-array v6, v4, [B

    aput-byte v4, v6, v13

    new-array v8, v14, [B

    fill-array-data v8, :array_10c

    new-array v10, v14, [B

    fill-array-data v10, :array_112

    new-array v12, v15, [B

    fill-array-data v12, :array_118

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    filled-new-array/range {v5 .. v12}, [[B

    move-result-object v0

    sput-object v0, Lk2/x;->f:[[B

    return-void

    nop

    :array_fa
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_100
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_106
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_10c
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_112
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_118
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method public static a(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BI)Lk2/w;
    .registers 7

    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0xa

    sub-int v1, p4, v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_31

    sget-object p0, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    :cond_31
    new-instance p0, Lk2/w;

    const/16 p2, 0xa

    invoke-direct {p0, p2, p1}, Lk2/w;-><init>(ILjava/math/BigInteger;)V

    return-object p0
.end method

.method public static b(BIZ)[Ljava/math/BigInteger;
    .registers 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    if-eqz p2, :cond_19

    sget-object p2, Lk2/a;->c:Ljava/math/BigInteger;

    int-to-long v1, p0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1d

    :cond_19
    sget-object p2, Lk2/a;->a:Ljava/math/BigInteger;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    :goto_1d
    move v2, v0

    :goto_1e
    if-ge v2, p1, :cond_36

    if-gez p0, :cond_27

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_28

    :cond_27
    move-object v3, v1

    :goto_28
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_1e

    :cond_36
    filled-new-array {p2, v1}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lk2/c;)[Ljava/math/BigInteger;
    .registers 6

    invoke-virtual {p0}, Lk2/c;->u()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Lk2/h;->l()I

    move-result v0

    iget-object v1, p0, Lk2/h;->b:Lk2/b0;

    invoke-virtual {v1}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iget-object p0, p0, Lk2/h;->e:Ljava/math/BigInteger;

    const/4 v2, 0x1

    if-nez v1, :cond_1b

    const/4 v3, -0x1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    int-to-byte v3, v3

    if-eqz p0, :cond_6b

    sget-object v4, Lk2/a;->c:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move p0, v2

    goto :goto_32

    :cond_29
    sget-object v4, Lk2/a;->e:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6b

    const/4 p0, 0x2

    :goto_32
    add-int/lit8 v0, v0, 0x3

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v3, v0, v1}, Lk2/x;->b(BIZ)[Ljava/math/BigInteger;

    move-result-object v0

    if-ne v3, v2, :cond_4c

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v0, v2

    :cond_4c
    sget-object v3, Lk2/a;->b:Ljava/math/BigInteger;

    aget-object v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_6b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_73
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
