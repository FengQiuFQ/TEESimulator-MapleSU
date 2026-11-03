.class public abstract Lj2/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/math/BigInteger;

.field public static final b:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lj2/a;->a:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lj2/a;->b:Ljava/math/BigInteger;

    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method

.method public static a(Ljava/math/BigInteger;)V
    .registers 3

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_11

    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'candidate\' must be non-null and >= 2"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljava/math/BigInteger;)Z
    .registers 3

    invoke-static {p0}, Lj2/a;->a(Ljava/math/BigInteger;)V

    const v0, 0xd4c2086

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x5

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0xb

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0xd

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x11

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x13

    if-eqz v1, :cond_171

    rem-int/lit8 v0, v0, 0x17

    if-nez v0, :cond_39

    goto/16 :goto_171

    :cond_39
    const v0, 0x37ed0ed

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x1d

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x25

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x29

    if-eqz v1, :cond_171

    rem-int/lit8 v0, v0, 0x2b

    if-nez v0, :cond_5f

    goto/16 :goto_171

    :cond_5f
    const v0, 0x23cd611f

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2f

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x35

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x3b

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x3d

    if-eqz v1, :cond_171

    rem-int/lit8 v0, v0, 0x43

    if-nez v0, :cond_85

    goto/16 :goto_171

    :cond_85
    const v0, 0x20691a3

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x47

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x49

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x4f

    if-eqz v1, :cond_171

    rem-int/lit8 v0, v0, 0x53

    if-nez v0, :cond_a7

    goto/16 :goto_171

    :cond_a7
    const v0, 0x55a60cb

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x59

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x61

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x65

    if-eqz v1, :cond_171

    rem-int/lit8 v0, v0, 0x67

    if-nez v0, :cond_c9

    goto/16 :goto_171

    :cond_c9
    const v0, 0x9f9f361

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit8 v1, v0, 0x6b

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x6d

    if-eqz v1, :cond_171

    rem-int/lit8 v1, v0, 0x71

    if-eqz v1, :cond_171

    rem-int/lit8 v0, v0, 0x7f

    if-nez v0, :cond_eb

    goto/16 :goto_171

    :cond_eb
    const v0, 0x1627b25d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0x83

    if-eqz v1, :cond_171

    rem-int/lit16 v1, v0, 0x89

    if-eqz v1, :cond_171

    rem-int/lit16 v1, v0, 0x8b

    if-eqz v1, :cond_171

    rem-int/lit16 v0, v0, 0x95

    if-nez v0, :cond_10c

    goto :goto_171

    :cond_10c
    const v0, 0x2676ed77

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0x97

    if-eqz v1, :cond_171

    rem-int/lit16 v1, v0, 0x9d

    if-eqz v1, :cond_171

    rem-int/lit16 v1, v0, 0xa3

    if-eqz v1, :cond_171

    rem-int/lit16 v0, v0, 0xa7

    if-nez v0, :cond_12d

    goto :goto_171

    :cond_12d
    const v0, 0x3fcf739d

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    rem-int/lit16 v1, v0, 0xad

    if-eqz v1, :cond_171

    rem-int/lit16 v1, v0, 0xb3

    if-eqz v1, :cond_171

    rem-int/lit16 v1, v0, 0xb5

    if-eqz v1, :cond_171

    rem-int/lit16 v0, v0, 0xbf

    if-nez v0, :cond_14e

    goto :goto_171

    :cond_14e
    const v0, 0x5f281a99

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    rem-int/lit16 v0, p0, 0xc1

    if-eqz v0, :cond_171

    rem-int/lit16 v0, p0, 0xc5

    if-eqz v0, :cond_171

    rem-int/lit16 v0, p0, 0xc7

    if-eqz v0, :cond_171

    rem-int/lit16 p0, p0, 0xd3

    if-nez p0, :cond_16f

    goto :goto_171

    :cond_16f
    const/4 p0, 0x0

    return p0

    :cond_171
    :goto_171
    const/4 p0, 0x1

    return p0
.end method

.method public static c(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z
    .registers 15

    invoke-static {p0}, Lj2/a;->a(Ljava/math/BigInteger;)V

    if-eqz p1, :cond_69

    const/4 v0, 0x1

    if-lt p2, v0, :cond_61

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    goto :goto_60

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    if-nez v2, :cond_18

    goto :goto_5c

    :cond_18
    sget-object v2, Lj2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Lj2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p0, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    move v8, v1

    :goto_2d
    if-ge v8, p2, :cond_60

    invoke-static {v4, v5, p1}, Lm4/a;->d(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v7, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_44

    goto :goto_5d

    :cond_44
    move v10, v0

    :goto_45
    if-ge v10, v6, :cond_5c

    invoke-virtual {v9, v4, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_52

    goto :goto_5d

    :cond_52
    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_59

    goto :goto_5c

    :cond_59
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    :cond_5c
    :goto_5c
    return v1

    :cond_5d
    :goto_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_60
    :goto_60
    return v0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'iterations\' must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'random\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
