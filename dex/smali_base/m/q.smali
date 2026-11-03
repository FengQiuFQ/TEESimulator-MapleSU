.class public final Lm/q;
.super Lm/u;


# static fields
.field public static final q:Lm/a;

.field public static final x:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public final c:[B

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/q;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/q;->q:Lm/a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lm/q;->x:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4001

    if-gt v0, v1, :cond_2e

    invoke-static {p1}, Lm/q;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p1}, Lm/q;->A(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lm/q;->s(I)V

    iput-object v0, p0, Lm/q;->c:[B

    iput-object p1, p0, Lm/q;->d:Ljava/lang/String;

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "string "

    const-string v1, " not a valid OID"

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_36
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'identifier\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/q;->c:[B

    iput-object p1, p0, Lm/q;->d:Ljava/lang/String;

    return-void
.end method

.method public static A(Ljava/lang/String;)[B
    .registers 18

    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-ne v4, v6, :cond_18

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move v7, v6

    goto :goto_22

    :cond_18
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v4, v5

    move-object/from16 v16, v7

    move v7, v4

    move-object/from16 v4, v16

    :goto_22
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    const/4 v8, 0x0

    if-ne v7, v6, :cond_2e

    move v9, v7

    move-object v7, v8

    goto :goto_3f

    :cond_2e
    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-ne v9, v6, :cond_3a

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move v9, v6

    goto :goto_3f

    :cond_3a
    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v9, v5

    :goto_3f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x12

    if-gt v10, v11, :cond_51

    int-to-long v12, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    add-long/2addr v14, v12

    invoke-static {v1, v14, v15}, Lm/v;->v(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_62

    :cond_51
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    int-to-long v12, v4

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v1, v4}, Lm/v;->w(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    :goto_62
    if-eq v9, v6, :cond_66

    move v4, v5

    goto :goto_67

    :cond_66
    move v4, v3

    :goto_67
    if-eqz v4, :cond_98

    if-ne v9, v6, :cond_6d

    move-object v4, v8

    goto :goto_81

    :cond_6d
    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v6, :cond_79

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move v9, v6

    goto :goto_81

    :cond_79
    invoke-virtual {v0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    move v9, v4

    move-object v4, v7

    :goto_81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v11, :cond_8f

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v1, v12, v13}, Lm/v;->v(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_62

    :cond_8f
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7}, Lm/v;->w(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_62

    :cond_98
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static B(Ljava/lang/String;)Lm/q;
    .registers 4

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4001

    if-gt v0, v1, :cond_1f

    invoke-static {p0}, Lm/q;->x(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-static {p0}, Lm/q;->A(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_1f

    new-instance v1, Lm/q;

    invoke-direct {v1, p0, v0}, Lm/q;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_1f
    const/4 p0, 0x0

    return-object p0

    :cond_21
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'identifier\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(I)V
    .registers 2

    const/16 v0, 0x1000

    if-gt p0, v0, :cond_5

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "exceeded OID contents length limit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static t(Z[B)Lm/q;
    .registers 4

    array-length v0, p1

    invoke-static {v0}, Lm/q;->s(I)V

    new-instance v0, Lm/p;

    invoke-direct {v0, p1}, Lm/p;-><init>([B)V

    sget-object v1, Lm/q;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    invoke-static {p1}, Lm/v;->t([B)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v0, Lm/q;

    if-eqz p0, :cond_22

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    :cond_22
    const/4 p0, 0x0

    invoke-direct {v0, p0, p1}, Lm/q;-><init>(Ljava/lang/String;[B)V

    return-object v0

    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid OID contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Ljava/lang/Object;)Lm/q;
    .registers 4

    if-eqz p0, :cond_4e

    instance-of v0, p0, Lm/q;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/q;

    if-eqz v1, :cond_3a

    check-cast v0, Lm/q;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_3a

    :try_start_1d
    sget-object v0, Lm/q;->q:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/q;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct object identifier from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    check-cast p0, Lm/q;

    return-object p0
.end method

.method public static x(Ljava/lang/String;)Z
    .registers 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_51

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_12

    goto :goto_51

    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-lt v3, v5, :cond_51

    const/16 v5, 0x32

    if-le v3, v5, :cond_1f

    goto :goto_51

    :cond_1f
    const/4 v6, 0x2

    invoke-static {v6, p0}, Lm/v;->u(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    return v1

    :cond_27
    if-ne v3, v5, :cond_2a

    return v0

    :cond_2a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v2, :cond_50

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_37

    goto :goto_50

    :cond_37
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_46

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_45

    goto :goto_46

    :cond_45
    return v1

    :cond_46
    :goto_46
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x34

    if-ge p0, v2, :cond_4f

    return v0

    :cond_4f
    return v1

    :cond_50
    :goto_50
    return v0

    :cond_51
    :goto_51
    return v1
.end method

.method public static z([B)Ljava/lang/String;
    .registers 19

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v10, v4

    move v7, v6

    const-wide/16 v8, 0x0

    :goto_e
    array-length v11, v0

    if-eq v7, v11, :cond_87

    aget-byte v11, v0, v7

    const-wide v12, 0xffffffffffff80L

    cmp-long v12, v8, v12

    const/4 v13, 0x7

    const/16 v14, 0x2e

    const/16 v15, 0x32

    const-wide/16 v16, 0x50

    if-gtz v12, :cond_55

    and-int/lit8 v12, v11, 0x7f

    int-to-long v2, v12

    add-long/2addr v8, v2

    and-int/lit16 v2, v11, 0x80

    if-nez v2, :cond_53

    if-eqz v5, :cond_4a

    const-wide/16 v2, 0x28

    cmp-long v5, v8, v2

    if-gez v5, :cond_39

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_39
    cmp-long v5, v8, v16

    if-gez v5, :cond_44

    const/16 v5, 0x31

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v2

    goto :goto_49

    :cond_44
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-long v8, v8, v16

    :goto_49
    move v5, v6

    :cond_4a
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_50
    const-wide/16 v8, 0x0

    goto :goto_84

    :cond_53
    shl-long/2addr v8, v13

    goto :goto_84

    :cond_55
    if-nez v10, :cond_5b

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    :cond_5b
    and-int/lit8 v2, v11, 0x7f

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    and-int/lit16 v3, v11, 0x80

    if-nez v3, :cond_80

    if-eqz v5, :cond_78

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move v5, v6

    :cond_78
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v10, v4

    goto :goto_50

    :cond_80
    invoke-virtual {v2, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    :goto_84
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lm/q;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lm/q;

    iget-object p0, p0, Lm/q;->c:[B

    iget-object p1, p1, Lm/q;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/q;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/4 v0, 0x6

    iget-object p0, p0, Lm/q;->c:[B

    invoke-virtual {p1, v0, p2, p0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    iget-object p0, p0, Lm/q;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final r(Ljava/lang/String;)Lm/q;
    .registers 9

    sget-object v0, Lm/v;->q:Lm/a;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3fff

    if-gt v0, v1, :cond_b7

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lm/v;->u(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    iget-object v3, p0, Lm/q;->c:[B

    if-gt v1, v2, :cond_41

    array-length v1, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-static {v1}, Lm/q;->s(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v2, :cond_35

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    :cond_35
    int-to-byte v1, v1

    array-length v2, v3

    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [B

    invoke-static {v3, v0, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v1, v4, v2

    goto :goto_8b

    :cond_41
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_46
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7d

    if-ne v0, v2, :cond_4d

    const/4 v2, 0x0

    goto :goto_64

    :cond_4d
    const/16 v4, 0x2e

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v2, :cond_5d

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_64

    :cond_5d
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    :goto_64
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x12

    if-gt v4, v5, :cond_74

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lm/v;->v(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_46

    :cond_74
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lm/v;->w(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_46

    :cond_7d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v3

    array-length v2, v0

    add-int/2addr v1, v2

    invoke-static {v1}, Lm/q;->s(I)V

    invoke-static {v3, v0}, Lm4/d;->j([B[B)[B

    move-result-object v4

    :goto_8b
    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lm/q;

    invoke-direct {p1, p0, v4}, Lm/q;-><init>(Ljava/lang/String;[B)V

    return-object p1

    :cond_a9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "string "

    const-string v1, " not a valid relative OID"

    invoke-static {v0, p1, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "exceeded relative OID contents length limit"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized u()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lm/q;->d:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Lm/q;->c:[B

    invoke-static {v0}, Lm/q;->z([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/q;->d:Ljava/lang/String;

    goto :goto_10

    :catchall_e
    move-exception v0

    goto :goto_14

    :cond_10
    :goto_10
    iget-object v0, p0, Lm/q;->d:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_e

    monitor-exit p0

    return-object v0

    :goto_14
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_e

    throw v0
.end method

.method public final w()Lm/q;
    .registers 4

    new-instance v0, Lm/p;

    iget-object v1, p0, Lm/q;->c:[B

    invoke-direct {v0, v1}, Lm/p;-><init>([B)V

    sget-object v1, Lm/q;->x:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/q;

    if-nez v2, :cond_28

    monitor-enter v1

    :try_start_12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    monitor-exit v1

    return-object p0

    :catchall_1d
    move-exception p0

    goto :goto_26

    :cond_1f
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    goto :goto_1b

    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_1d

    throw p0

    :cond_28
    return-object v2
.end method

.method public final y(Lm/q;)Z
    .registers 7

    iget-object p1, p1, Lm/q;->c:[B

    array-length v0, p1

    iget-object p0, p0, Lm/q;->c:[B

    array-length v1, p0

    const/4 v2, 0x0

    if-le v1, v0, :cond_18

    move v1, v2

    :goto_a
    if-ge v1, v0, :cond_16

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-eq v3, v4, :cond_13

    goto :goto_18

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    :goto_18
    return v2
.end method
