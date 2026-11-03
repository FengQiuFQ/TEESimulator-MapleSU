.class public final Lm/f1;
.super Lm/u;

# interfaces
.implements Lm/z;


# static fields
.field public static final d:Lm/a;


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/f1;

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/f1;->d:Lm/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lm4/m;->f([C)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lm/f1;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/f1;->c:[B

    return-void
.end method

.method public static r(Lm/f;)Lm/f1;
    .registers 4

    if-eqz p0, :cond_47

    instance-of v0, p0, Lm/f1;

    if-eqz v0, :cond_7

    goto :goto_47

    :cond_7
    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/f1;

    if-eqz v1, :cond_12

    check-cast v0, Lm/f1;

    return-object v0

    :cond_12
    instance-of v0, p0, [B

    if-eqz v0, :cond_33

    :try_start_16
    sget-object v0, Lm/f1;->d:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/f1;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
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

    :cond_47
    :goto_47
    check-cast p0, Lm/f1;

    return-object p0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 11

    sget-object v0, Lm4/m;->a:Ljava/lang/String;

    iget-object p0, p0, Lm/f1;->c:[B

    array-length v0, p0

    new-array v1, v0, [C

    sget-object v2, Ln4/d;->a:[S

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    if-ge v3, v0, :cond_73

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p0, v3

    const/4 v6, -0x1

    if-ltz v3, :cond_21

    if-lt v4, v0, :cond_19

    :goto_17
    move v4, v6

    goto :goto_73

    :cond_19
    add-int/lit8 v6, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v4

    move v3, v5

    move v4, v6

    goto :goto_c

    :cond_21
    sget-object v7, Ln4/d;->a:[S

    and-int/lit8 v3, v3, 0x7f

    aget-short v3, v7, v3

    ushr-int/lit8 v7, v3, 0x8

    int-to-byte v3, v3

    :goto_2a
    if-ltz v3, :cond_43

    if-lt v5, v0, :cond_2f

    goto :goto_17

    :cond_2f
    add-int/lit8 v8, v5, 0x1

    aget-byte v5, p0, v5

    shl-int/lit8 v7, v7, 0x6

    and-int/lit8 v9, v5, 0x3f

    or-int/2addr v7, v9

    sget-object v9, Ln4/d;->b:[B

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    aget-byte v3, v9, v3

    move v5, v8

    goto :goto_2a

    :cond_43
    const/4 v8, -0x2

    if-ne v3, v8, :cond_47

    goto :goto_17

    :cond_47
    const v3, 0xffff

    if-gt v7, v3, :cond_56

    if-lt v4, v0, :cond_4f

    goto :goto_17

    :cond_4f
    add-int/lit8 v3, v4, 0x1

    int-to-char v6, v7

    aput-char v6, v1, v4

    move v4, v3

    goto :goto_71

    :cond_56
    add-int/lit8 v3, v0, -0x1

    if-lt v4, v3, :cond_5b

    goto :goto_17

    :cond_5b
    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v6, v7, 0xa

    const v8, 0xd7c0

    add-int/2addr v6, v8

    int-to-char v6, v6

    aput-char v6, v1, v4

    add-int/lit8 v4, v4, 0x2

    and-int/lit16 v6, v7, 0x3ff

    const v7, 0xdc00

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v3

    :goto_71
    move v3, v5

    goto :goto_c

    :cond_73
    :goto_73
    if-ltz v4, :cond_7b

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTF-8 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/f1;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/f1;

    iget-object p0, p0, Lm/f1;->c:[B

    iget-object p1, p1, Lm/f1;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/f1;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0xc

    iget-object p0, p0, Lm/f1;->c:[B

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

    iget-object p0, p0, Lm/f1;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/f1;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
