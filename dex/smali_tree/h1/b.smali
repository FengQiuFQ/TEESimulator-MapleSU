.class public final Lh1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lh1/c;


# static fields
.field public static final h:[B

.field public static final i:Ljava/util/Hashtable;


# instance fields
.field public a:Ls0/e0;

.field public b:[B

.field public c:[B

.field public d:J

.field public e:Lg1/a;

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    sput-object v1, Lh1/b;->h:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lh1/b;->i:Ljava/util/Hashtable;

    const/16 v1, 0x1b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-512/256"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-512/224"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x378

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA-384"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c([B[B)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_4
    array-length v4, p1

    const/16 v5, 0xff

    if-gt v2, v4, :cond_22

    array-length v4, p0

    sub-int/2addr v4, v2

    aget-byte v4, p0, v4

    and-int/2addr v4, v5

    array-length v6, p1

    sub-int/2addr v6, v2

    aget-byte v6, p1, v6

    and-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    if-le v4, v5, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v0

    :goto_1a
    array-length v5, p0

    sub-int/2addr v5, v2

    int-to-byte v4, v4

    aput-byte v4, p0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_22
    array-length p1, p1

    add-int/2addr p1, v1

    :goto_24
    array-length v2, p0

    if-gt p1, v2, :cond_3a

    array-length v2, p0

    sub-int/2addr v2, p1

    aget-byte v2, p0, v2

    and-int/2addr v2, v5

    add-int/2addr v2, v3

    if-le v2, v5, :cond_31

    move v3, v1

    goto :goto_32

    :cond_31
    move v3, v0

    :goto_32
    array-length v4, p0

    sub-int/2addr v4, p1

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_24

    :cond_3a
    return-void
.end method


# virtual methods
.method public final a(Z[B)I
    .registers 16

    iget-object v0, p0, Lh1/b;->a:Ls0/e0;

    array-length v1, p2

    const/16 v2, 0x8

    mul-int/2addr v1, v2

    const/high16 v3, 0x40000

    if-gt v1, v3, :cond_a5

    iget-wide v3, p0, Lh1/b;->d:J

    const-wide v5, 0x800000000000L

    cmp-long v3, v3, v5

    if-lez v3, :cond_17

    const/4 p0, -0x1

    return p0

    :cond_17
    if-eqz p1, :cond_1d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lh1/b;->b([B)V

    :cond_1d
    iget-object p1, p0, Lh1/b;->b:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    div-int/lit8 v3, v1, 0x8

    div-int/lit8 v4, v3, 0x40

    array-length v5, p1

    new-array v6, v5, [B

    array-length v7, p1

    const/4 v8, 0x0

    invoke-static {p1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v3, [B

    const/16 v7, 0x40

    new-array v9, v7, [B

    move v10, v8

    :goto_35
    if-gt v10, v4, :cond_4f

    invoke-virtual {v0, v6, v8, v5}, Ls0/o;->update([BII)V

    invoke-virtual {v0, v9, v8}, Ls0/e0;->doFinal([BI)I

    mul-int/lit8 v11, v10, 0x40

    sub-int v12, v3, v11

    if-le v12, v7, :cond_44

    move v12, v7

    :cond_44
    invoke-static {v9, v8, p1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v11, Lh1/b;->h:[B

    invoke-static {v6, v11}, Lh1/b;->c([B[B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_35

    :cond_4f
    iget-object v3, p0, Lh1/b;->b:[B

    array-length v4, v3

    const/4 v5, 0x1

    add-int/2addr v4, v5

    new-array v6, v4, [B

    array-length v9, v3

    invoke-static {v3, v8, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x3

    aput-byte v3, v6, v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v7, v7, [B

    invoke-virtual {v0, v6, v8, v4}, Ls0/o;->update([BII)V

    invoke-virtual {v0, v7, v8}, Ls0/e0;->doFinal([BI)I

    iget-object v0, p0, Lh1/b;->b:[B

    invoke-static {v0, v7}, Lh1/b;->c([B[B)V

    iget-object v0, p0, Lh1/b;->b:[B

    iget-object v4, p0, Lh1/b;->c:[B

    invoke-static {v0, v4}, Lh1/b;->c([B[B)V

    iget-wide v6, p0, Lh1/b;->d:J

    const/16 v0, 0x18

    shr-long v9, v6, v0

    long-to-int v0, v9

    int-to-byte v0, v0

    const/16 v4, 0x10

    shr-long v9, v6, v4

    long-to-int v4, v9

    int-to-byte v4, v4

    shr-long v9, v6, v2

    long-to-int v2, v9

    int-to-byte v2, v2

    long-to-int v6, v6

    int-to-byte v6, v6

    const/4 v7, 0x4

    new-array v7, v7, [B

    aput-byte v0, v7, v8

    aput-byte v4, v7, v5

    const/4 v0, 0x2

    aput-byte v2, v7, v0

    aput-byte v6, v7, v3

    iget-object v0, p0, Lh1/b;->b:[B

    invoke-static {v0, v7}, Lh1/b;->c([B[B)V

    iget-wide v2, p0, Lh1/b;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lh1/b;->d:J

    array-length p0, p2

    invoke-static {p1, v8, p2, v8, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of bits per request limited to 262144"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b([B)V
    .registers 8

    iget-object v0, p0, Lh1/b;->e:Lg1/a;

    invoke-interface {v0}, Lg1/a;->getEntropy()[B

    move-result-object v0

    array-length v1, v0

    iget v2, p0, Lh1/b;->f:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_38

    sget-object v1, Lh1/b;->h:[B

    iget-object v2, p0, Lh1/b;->b:[B

    invoke-static {v1, v2, v0, p1}, Lm4/d;->l([B[B[B[B)[B

    move-result-object p1

    iget-object v0, p0, Lh1/b;->a:Ls0/e0;

    iget v1, p0, Lh1/b;->g:I

    invoke-static {v0, p1, v1}, Lh1/d;->a(Ls0/e0;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lh1/b;->b:[B

    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v4, 0x0

    aput-byte v4, v2, v4

    array-length v5, p1

    invoke-static {p1, v4, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v2, v1}, Lh1/d;->a(Ls0/e0;[BI)[B

    move-result-object p1

    iput-object p1, p0, Lh1/b;->c:[B

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lh1/b;->d:J

    return-void

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Insufficient entropy provided by entropy source"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
