.class public final Ll0/f0;
.super Lm/n;


# instance fields
.field public c:Lm/b;


# direct methods
.method public constructor <init>(I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/p0;

    const/4 v1, 0x3

    const/16 v2, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_f

    new-array v5, v4, [B

    goto :goto_31

    :cond_f
    const/4 v5, 0x4

    move v6, v1

    :goto_11
    if-lt v6, v3, :cond_20

    mul-int/lit8 v7, v6, 0x8

    shl-int v7, v2, v7

    and-int/2addr v7, p1

    if-eqz v7, :cond_1b

    goto :goto_20

    :cond_1b
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_11

    :cond_20
    :goto_20
    new-array v6, v5, [B

    move v7, v4

    :goto_23
    if-ge v7, v5, :cond_30

    mul-int/lit8 v8, v7, 0x8

    shr-int v8, p1, v8

    and-int/2addr v8, v2

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_30
    move-object v5, v6

    :goto_31
    if-ltz v1, :cond_45

    if-eqz v1, :cond_3e

    mul-int/lit8 v6, v1, 0x8

    shr-int v6, p1, v6

    if-eqz v6, :cond_42

    and-int/lit16 p1, v6, 0xff

    goto :goto_46

    :cond_3e
    if-eqz p1, :cond_42

    and-int/2addr p1, v2

    goto :goto_46

    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    :cond_45
    move p1, v4

    :goto_46
    if-nez p1, :cond_49

    goto :goto_54

    :cond_49
    move v1, v3

    :goto_4a
    shl-int/2addr p1, v3

    and-int/lit16 v4, p1, 0xff

    if-eqz v4, :cond_52

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    :cond_52
    rsub-int/lit8 v4, v1, 0x8

    :goto_54
    invoke-direct {v0, v5, v4}, Lm/b;-><init>([BI)V

    iput-object v0, p0, Ll0/f0;->c:Lm/b;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/f0;->c:Lm/b;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object p0, p0, Ll0/f0;->c:Lm/b;

    invoke-virtual {p0}, Lm/b;->s()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const-string v2, "KeyUsage: 0x"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    :goto_16
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    goto :goto_16
.end method
