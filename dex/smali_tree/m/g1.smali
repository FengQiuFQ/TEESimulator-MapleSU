.class public final Lm/g1;
.super Lm/u;

# interfaces
.implements Lm/z;


# static fields
.field public static final d:Lm/a;

.field public static final q:[C


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/g1;

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/g1;->d:Lm/a;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lm/g1;->q:[C

    return-void

    nop

    :array_16
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/g1;->c:[B

    return-void
.end method

.method public static r(Ljava/lang/StringBuilder;I)V
    .registers 4

    ushr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    sget-object v1, Lm/g1;->q:[C

    aget-char v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 10

    iget-object p0, p0, Lm/g1;->c:[B

    array-length v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lb1/a;->r(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#1C"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    if-ge v0, v2, :cond_1e

    invoke-static {v1, v0}, Lm/g1;->r(Ljava/lang/StringBuilder;I)V

    goto :goto_3d

    :cond_1e
    const/4 v3, 0x5

    new-array v4, v3, [B

    move v6, v0

    move v5, v3

    :goto_23
    add-int/lit8 v7, v5, -0x1

    int-to-byte v8, v6

    aput-byte v8, v4, v7

    ushr-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_4f

    rsub-int/lit8 v6, v7, 0x5

    add-int/lit8 v5, v5, -0x2

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v4, v5

    :goto_34
    add-int/lit8 v2, v5, 0x1

    aget-byte v5, v4, v5

    invoke-static {v1, v5}, Lm/g1;->r(Ljava/lang/StringBuilder;I)V

    if-lt v2, v3, :cond_4d

    :goto_3d
    const/4 v2, 0x0

    :goto_3e
    if-ge v2, v0, :cond_48

    aget-byte v3, p0, v2

    invoke-static {v1, v3}, Lm/g1;->r(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    :cond_48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4d
    move v5, v2

    goto :goto_34

    :cond_4f
    move v5, v7

    goto :goto_23
.end method

.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/g1;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/g1;

    iget-object p0, p0, Lm/g1;->c:[B

    iget-object p1, p1, Lm/g1;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/g1;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0x1c

    iget-object p0, p0, Lm/g1;->c:[B

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

    iget-object p0, p0, Lm/g1;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/g1;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
