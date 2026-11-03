.class public final Ln2/c0;
.super Lk2/c;


# static fields
.field public static final k:[Lk2/b0;


# instance fields
.field public final j:Lk2/n;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ln2/b0;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ln2/b0;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ln2/c0;->k:[Lk2/b0;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x3

    const/16 v1, 0x8

    const/16 v2, 0x83

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0, v1}, Lk2/c;-><init>(IIII)V

    new-instance v0, Lk2/n;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v1, v2}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object v0, p0, Ln2/c0;->j:Lk2/n;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "07A11B09A76B562144418FF3FF8C2570B8"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ln2/b0;

    invoke-direct {v1, v0}, Ln2/b0;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->b:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0217C05610884B63B9C6C7291678F9D341"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ln2/b0;

    invoke-direct {v1, v0}, Ln2/b0;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->c:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0400000000000000023123953A9464B54D"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

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

    new-instance p0, Ln2/c0;

    invoke-direct {p0}, Ln2/c0;-><init>()V

    return-object p0
.end method

.method public final b([Lk2/p;I)Lk2/b0;
    .registers 8

    mul-int/lit8 v0, p2, 0x6

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, p2, :cond_23

    aget-object v3, p1, v1

    iget-object v4, v3, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/b0;

    iget-object v4, v4, Ln2/b0;->l:[J

    invoke-static {v2, v4, v0}, Lq4/k;->E(I[J[J)V

    add-int/lit8 v4, v2, 0x3

    iget-object v3, v3, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/b0;

    iget-object v3, v3, Ln2/b0;->l:[J

    invoke-static {v4, v3, v0}, Lq4/k;->E(I[J[J)V

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    new-instance p1, Ll2/a;

    const/16 v1, 0x10

    invoke-direct {p1, p0, p2, v0, v1}, Ll2/a;-><init>(Lk2/h;ILjava/lang/Object;I)V

    return-object p1
.end method

.method public final e(Lk2/b0;Lk2/b0;)Lk2/p;
    .registers 5

    new-instance v0, Lk2/n;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0
.end method

.method public final f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
    .registers 10

    new-instance v0, Lk2/n;

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v0
.end method

.method public final j(Ljava/math/BigInteger;)Lk2/b0;
    .registers 2

    new-instance p0, Ln2/b0;

    invoke-direct {p0, p1}, Ln2/b0;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public final l()I
    .registers 1

    const/16 p0, 0x83

    return p0
.end method

.method public final m()Lk2/p;
    .registers 1

    iget-object p0, p0, Ln2/c0;->j:Lk2/n;

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
