.class public final Ln2/z0;
.super Lk2/c;


# static fields
.field public static final k:[Lk2/b0;

.field public static final l:Ln2/w0;

.field public static final m:Ln2/w0;


# instance fields
.field public final j:Lk2/n;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ln2/w0;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ln2/w0;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lk2/b0;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sput-object v2, Ln2/z0;->k:[Lk2/b0;

    new-instance v0, Ln2/w0;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "02F40E7E2221F295DE297117B7F3D62F5C6A97FFCB8CEFF1CD6BA8CE4A9A18AD84FFABBD8EFA59332BE7AD6756A66E294AFD185A78FF12AA520E4DE739BACA0C7FFEFF7F2955727A"

    invoke-static {v3}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v2}, Ln2/w0;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Ln2/z0;->l:Ln2/w0;

    invoke-virtual {v0}, Ln2/w0;->E()Lk2/b0;

    move-result-object v0

    check-cast v0, Ln2/w0;

    sput-object v0, Ln2/z0;->m:Ln2/w0;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x5

    const/16 v1, 0xa

    const/16 v2, 0x23b

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Lk2/c;-><init>(IIII)V

    new-instance v0, Lk2/n;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-direct {v0, p0, v1, v1, v2}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object v0, p0, Ln2/z0;->j:Lk2/n;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ln2/w0;

    invoke-direct {v1, v0}, Ln2/w0;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->b:Lk2/b0;

    sget-object v0, Ln2/z0;->l:Ln2/w0;

    iput-object v0, p0, Lk2/h;->c:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE661CE18FF55987308059B186823851EC7DD9CA1161DE93D5174D66E8382E9BB2FE84E47"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lk2/h;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk2/h;->e:Ljava/math/BigInteger;

    const/4 v0, 0x6

    iput v0, p0, Lk2/h;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lk2/h;
    .registers 1

    new-instance p0, Ln2/z0;

    invoke-direct {p0}, Ln2/z0;-><init>()V

    return-object p0
.end method

.method public final b([Lk2/p;I)Lk2/b0;
    .registers 8

    mul-int/lit8 v0, p2, 0x12

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, p2, :cond_23

    aget-object v3, p1, v1

    iget-object v4, v3, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/w0;

    iget-object v4, v4, Ln2/w0;->l:[J

    invoke-static {v2, v4, v0}, Ls2/a;->h(I[J[J)V

    add-int/lit8 v4, v2, 0x9

    iget-object v3, v3, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/w0;

    iget-object v3, v3, Ln2/w0;->l:[J

    invoke-static {v4, v3, v0}, Ls2/a;->h(I[J[J)V

    add-int/lit8 v2, v2, 0x12

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    new-instance p1, Ln2/x0;

    const/4 v1, 0x1

    invoke-direct {p1, p0, p2, v0, v1}, Ln2/x0;-><init>(Lk2/c;I[JI)V

    return-object p1
.end method

.method public final e(Lk2/b0;Lk2/b0;)Lk2/p;
    .registers 5

    new-instance v0, Lk2/n;

    const/16 v1, 0x12

    invoke-direct {v0, p0, p1, p2, v1}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0
.end method

.method public final f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
    .registers 10

    new-instance v0, Lk2/n;

    const/16 v5, 0x12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v0
.end method

.method public final j(Ljava/math/BigInteger;)Lk2/b0;
    .registers 2

    new-instance p0, Ln2/w0;

    invoke-direct {p0, p1}, Ln2/w0;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public final l()I
    .registers 1

    const/16 p0, 0x23b

    return p0
.end method

.method public final m()Lk2/p;
    .registers 1

    iget-object p0, p0, Ln2/z0;->j:Lk2/n;

    return-object p0
.end method

.method public final s(I)Z
    .registers 2

    const/4 p0, 0x6

    if-eq p1, p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final u()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
