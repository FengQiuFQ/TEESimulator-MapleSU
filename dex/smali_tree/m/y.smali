.class public abstract Lm/y;
.super Lm/u;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final q:Lm/a;


# instance fields
.field public final c:[Lm/f;

.field public d:[Lm/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/y;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/y;->q:Lm/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lm/g;->d:[Lm/f;

    iput-object v0, p0, Lm/y;->c:[Lm/f;

    iput-object v0, p0, Lm/y;->d:[Lm/f;

    return-void
.end method

.method public constructor <init>(Lm/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_10

    const/4 v0, 0x1

    new-array v0, v0, [Lm/f;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lm/y;->c:[Lm/f;

    iput-object v0, p0, Lm/y;->d:[Lm/f;

    return-void

    :cond_10
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lm/g;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2e

    const/4 v0, 0x2

    if-eqz p2, :cond_1e

    iget v1, p1, Lm/g;->b:I

    if-lt v1, v0, :cond_1e

    if-nez v1, :cond_11

    sget-object p1, Lm/g;->d:[Lm/f;

    goto :goto_1a

    :cond_11
    new-array v2, v1, [Lm/f;

    iget-object p1, p1, Lm/g;->a:[Lm/f;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :goto_1a
    invoke-static {p1}, Lm/y;->u([Lm/f;)V

    goto :goto_22

    :cond_1e
    invoke-virtual {p1}, Lm/g;->d()[Lm/f;

    move-result-object p1

    :goto_22
    iput-object p1, p0, Lm/y;->c:[Lm/f;

    if-nez p2, :cond_2b

    array-length p2, p1

    if-ge p2, v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :cond_2b
    :goto_2b
    iput-object p1, p0, Lm/y;->d:[Lm/f;

    return-void

    :cond_2e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Z[Lm/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/y;->c:[Lm/f;

    if-nez p1, :cond_d

    array-length p1, p2

    const/4 v0, 0x2

    if-ge p1, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p2, 0x0

    :cond_d
    :goto_d
    iput-object p2, p0, Lm/y;->d:[Lm/f;

    return-void
.end method

.method public constructor <init>([Lm/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_20

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    if-eqz v2, :cond_20

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p1}, Lm/g;->b([Lm/f;)[Lm/f;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1b

    invoke-static {v0}, Lm/y;->u([Lm/f;)V

    :cond_1b
    iput-object v0, p0, Lm/y;->c:[Lm/f;

    iput-object p1, p0, Lm/y;->d:[Lm/f;

    return-void

    :cond_20
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lm/f;[Lm/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/y;->c:[Lm/f;

    iput-object p2, p0, Lm/y;->d:[Lm/f;

    return-void
.end method

.method public static r(Lm/f;)[B
    .registers 2

    :try_start_0
    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot encode object added to SET"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Ljava/lang/Object;)Lm/y;
    .registers 4

    if-eqz p0, :cond_4e

    instance-of v0, p0, Lm/y;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/y;

    if-eqz v1, :cond_3a

    check-cast v0, Lm/y;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_3a

    :try_start_1d
    sget-object v0, Lm/y;->q:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/y;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct set from byte[]: "

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

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    check-cast p0, Lm/y;

    return-object p0
.end method

.method public static t([B[B)Z
    .registers 8

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xdf

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xdf

    const/4 v3, 0x1

    if-eq v1, v2, :cond_10

    if-ge v1, v2, :cond_f

    return v3

    :cond_f
    return v0

    :cond_10
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v3

    move v2, v3

    :goto_18
    if-ge v2, v1, :cond_2b

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_28

    and-int/lit16 p0, v4, 0xff

    and-int/lit16 p1, v5, 0xff

    if-ge p0, p1, :cond_27

    return v3

    :cond_27
    return v0

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2b
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    if-gt p0, p1, :cond_36

    return v3

    :cond_36
    return v0
.end method

.method public static u([Lm/f;)V
    .registers 14

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    return-void

    :cond_5
    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-static {v2}, Lm/y;->r(Lm/f;)[B

    move-result-object v5

    invoke-static {v4}, Lm/y;->r(Lm/f;)[B

    move-result-object v6

    invoke-static {v6, v5}, Lm/y;->t([B[B)Z

    move-result v7

    if-eqz v7, :cond_1f

    move-object v12, v4

    move-object v4, v2

    move-object v2, v12

    move-object v12, v6

    move-object v6, v5

    move-object v5, v12

    :cond_1f
    :goto_1f
    if-ge v1, v0, :cond_61

    aget-object v7, p0, v1

    invoke-static {v7}, Lm/y;->r(Lm/f;)[B

    move-result-object v8

    invoke-static {v6, v8}, Lm/y;->t([B[B)Z

    move-result v9

    if-eqz v9, :cond_36

    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    move-object v2, v4

    move-object v5, v6

    move-object v4, v7

    move-object v6, v8

    goto :goto_5e

    :cond_36
    invoke-static {v5, v8}, Lm/y;->t([B[B)Z

    move-result v9

    if-eqz v9, :cond_43

    add-int/lit8 v5, v1, -0x2

    aput-object v2, p0, v5

    move-object v2, v7

    move-object v5, v8

    goto :goto_5e

    :cond_43
    add-int/lit8 v9, v1, -0x1

    :goto_45
    add-int/lit8 v10, v9, -0x1

    if-lez v10, :cond_5c

    add-int/lit8 v9, v9, -0x2

    aget-object v9, p0, v9

    invoke-static {v9}, Lm/y;->r(Lm/f;)[B

    move-result-object v11

    invoke-static {v11, v8}, Lm/y;->t([B[B)Z

    move-result v11

    if-eqz v11, :cond_58

    goto :goto_5c

    :cond_58
    aput-object v9, p0, v10

    move v9, v10

    goto :goto_45

    :cond_5c
    :goto_5c
    aput-object v7, p0, v10

    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_61
    add-int/lit8 v1, v0, -0x2

    aput-object v2, p0, v1

    sub-int/2addr v0, v3

    aput-object v4, p0, v0

    return-void
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 7

    instance-of v0, p1, Lm/y;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    goto :goto_38

    :cond_6
    check-cast p1, Lm/y;

    iget-object v0, p0, Lm/y;->c:[Lm/f;

    array-length v0, v0

    iget-object v2, p1, Lm/y;->c:[Lm/f;

    array-length v2, v2

    if-eq v2, v0, :cond_11

    goto :goto_38

    :cond_11
    invoke-virtual {p0}, Lm/y;->p()Lm/u;

    move-result-object p0

    check-cast p0, Lm/b1;

    invoke-virtual {p1}, Lm/y;->p()Lm/u;

    move-result-object p1

    check-cast p1, Lm/b1;

    move v2, v1

    :goto_1e
    if-ge v2, v0, :cond_3c

    iget-object v3, p0, Lm/y;->c:[Lm/f;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lm/f;->d()Lm/u;

    move-result-object v3

    iget-object v4, p1, Lm/y;->c:[Lm/f;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    if-eq v3, v4, :cond_39

    invoke-virtual {v3, v4}, Lm/u;->h(Lm/u;)Z

    move-result v3

    if-nez v3, :cond_39

    :goto_38
    return v1

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 4

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_15

    aget-object v2, p0, v0

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v2}, Lm/u;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_5

    :cond_15
    return v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lkotlin/jvm/internal/a;

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    invoke-static {p0}, Lm/g;->b([Lm/f;)[Lm/f;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlin/jvm/internal/a;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public p()Lm/u;
    .registers 3

    iget-object v0, p0, Lm/y;->d:[Lm/f;

    if-nez v0, :cond_11

    iget-object v0, p0, Lm/y;->c:[Lm/f;

    invoke-virtual {v0}, [Lm/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm/f;

    iput-object v0, p0, Lm/y;->d:[Lm/f;

    invoke-static {v0}, Lm/y;->u([Lm/f;)V

    :cond_11
    new-instance v0, Lm/b1;

    const/4 v1, 0x1

    iget-object p0, p0, Lm/y;->d:[Lm/f;

    invoke-direct {v0, v1, p0}, Lm/y;-><init>(Z[Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/b1;->x:I

    return-object v0
.end method

.method public q()Lm/u;
    .registers 3

    new-instance v0, Lm/o1;

    iget-object v1, p0, Lm/y;->c:[Lm/f;

    iget-object p0, p0, Lm/y;->d:[Lm/f;

    invoke-direct {v0, v1, p0}, Lm/y;-><init>([Lm/f;[Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/o1;->x:I

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    array-length v0, p0

    if-nez v0, :cond_8

    const-string p0, "[]"

    return-object p0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_10
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_23

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10
.end method
