.class public final Lh0/d;
.super Lm/n;


# static fields
.field public static final x:[B


# instance fields
.field public final c:Lm/q;

.field public d:Lh0/b;

.field public q:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lh0/d;->x:[B

    return-void

    :array_a
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lm/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lh0/d;->x:[B

    iput-object v0, p0, Lh0/d;->q:[B

    iput-object p1, p0, Lh0/d;->c:Lm/q;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lh0/d;
    .registers 12

    instance-of v0, p0, Lh0/d;

    if-eqz v0, :cond_7

    check-cast p0, Lh0/d;

    return-object p0

    :cond_7
    const-string v0, "object parse error"

    if-eqz p0, :cond_14e

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v2, v2, Lm/q;

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_29

    new-instance v2, Lh0/d;

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v1

    invoke-direct {v2, v1}, Lh0/d;-><init>(Lm/q;)V

    goto/16 :goto_12f

    :cond_29
    new-instance v2, Lh0/d;

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    instance-of v6, v5, Lh0/b;

    if-eqz v6, :cond_37

    check-cast v5, Lh0/b;

    goto/16 :goto_126

    :cond_37
    const/4 v6, 0x0

    if-eqz v5, :cond_125

    new-instance v7, Lh0/b;

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, v7, Lh0/b;->c:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    instance-of v8, v8, Lm/a0;

    if-eqz v8, :cond_75

    invoke-virtual {v5, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    check-cast v8, Lm/a0;

    invoke-virtual {v8}, Lm/a0;->w()Z

    move-result v9

    if-eqz v9, :cond_6f

    iget v9, v8, Lm/a0;->q:I

    if-nez v9, :cond_6f

    invoke-static {v8}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v8

    invoke-virtual {v8}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v8

    iput-object v8, v7, Lh0/b;->c:Ljava/math/BigInteger;

    move v8, v3

    goto :goto_76

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_75
    move v8, v1

    :goto_76
    invoke-virtual {v5, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v9

    instance-of v10, v9, Lh0/a;

    if-eqz v10, :cond_82

    move-object v6, v9

    check-cast v6, Lh0/a;

    goto :goto_f1

    :cond_82
    if-eqz v9, :cond_f1

    new-instance v6, Lh0/a;

    invoke-static {v9}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v9

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    invoke-static {v10}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v10

    invoke-virtual {v10}, Lm/l;->w()I

    move-result v10

    iput v10, v6, Lh0/a;->c:I

    invoke-virtual {v9, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    instance-of v10, v10, Lm/l;

    if-eqz v10, :cond_b0

    invoke-virtual {v9, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/l;

    invoke-virtual {v1}, Lm/l;->w()I

    move-result v1

    iput v1, v6, Lh0/a;->d:I

    goto :goto_f1

    :cond_b0
    invoke-virtual {v9, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v10

    instance-of v10, v10, Lm/x;

    if-eqz v10, :cond_eb

    invoke-virtual {v9, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v9

    invoke-static {v9}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v9

    invoke-virtual {v9, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->w()I

    move-result v1

    iput v1, v6, Lh0/a;->d:I

    invoke-virtual {v9, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->w()I

    move-result v1

    iput v1, v6, Lh0/a;->q:I

    invoke-virtual {v9, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->w()I

    move-result v1

    iput v1, v6, Lh0/a;->x:I

    goto :goto_f1

    :cond_eb
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f1
    :goto_f1
    iput-object v6, v7, Lh0/b;->d:Lh0/a;

    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v5, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    iput-object v1, v7, Lh0/b;->q:Lm/l;

    add-int/lit8 v1, v8, 0x2

    invoke-virtual {v5, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iput-object v1, v7, Lh0/b;->x:Lm/r;

    add-int/lit8 v1, v8, 0x3

    invoke-virtual {v5, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    iput-object v1, v7, Lh0/b;->y:Lm/l;

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v5, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iput-object v1, v7, Lh0/b;->z1:Lm/r;

    move-object v5, v7

    goto :goto_126

    :cond_125
    move-object v5, v6

    :goto_126
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lh0/d;->x:[B

    iput-object v1, v2, Lh0/d;->q:[B

    iput-object v5, v2, Lh0/d;->d:Lh0/b;

    :goto_12f
    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    if-ne v1, v4, :cond_14d

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    iput-object p0, v2, Lh0/d;->q:[B

    array-length p0, p0

    const/16 v1, 0x40

    if-ne p0, v1, :cond_147

    goto :goto_14d

    :cond_147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14d
    :goto_14d
    return-object v2

    :cond_14e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lh0/d;->c:Lm/q;

    if-eqz v1, :cond_e

    :goto_a
    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    goto :goto_11

    :cond_e
    iget-object v1, p0, Lh0/d;->d:Lh0/b;

    goto :goto_a

    :goto_11
    iget-object v1, p0, Lh0/d;->q:[B

    sget-object v2, Lh0/d;->x:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_25

    new-instance v1, Lm/x0;

    iget-object p0, p0, Lh0/d;->q:[B

    invoke-direct {v1, p0}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_25
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
