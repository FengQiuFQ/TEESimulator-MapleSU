.class public final Ln2/s0;
.super Lk2/c;


# static fields
.field public static final k:[Lk2/b0;


# instance fields
.field public final j:Lk2/n;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ln2/q0;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ln2/q0;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ln2/s0;->k:[Lk2/b0;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v0, 0x7

    const/16 v1, 0xc

    const/16 v2, 0x11b

    const/4 v3, 0x5

    invoke-direct {p0, v2, v3, v0, v1}, Lk2/c;-><init>(IIII)V

    new-instance v0, Lk2/n;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-direct {v0, p0, v1, v1, v2}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object v0, p0, Ln2/s0;->j:Lk2/n;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Ln2/q0;

    invoke-direct {v1, v0}, Ln2/q0;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->b:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "027B680AC8B8596DA5A4AF8A19A0303FCA97FD7645309FA2A581485AF6263E313B79A2F5"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ln2/q0;

    invoke-direct {v1, v0}, Ln2/q0;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->c:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF90399660FC938A90165B042A7CEFADB307"

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

    new-instance p0, Ln2/s0;

    invoke-direct {p0}, Ln2/s0;-><init>()V

    return-object p0
.end method

.method public final b([Lk2/p;I)Lk2/b0;
    .registers 8

    mul-int/lit8 v0, p2, 0xa

    new-array v0, v0, [J

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, p2, :cond_23

    aget-object v3, p1, v1

    iget-object v4, v3, Lk2/p;->b:Lk2/b0;

    check-cast v4, Ln2/q0;

    iget-object v4, v4, Ln2/q0;->l:[J

    invoke-static {v2, v4, v0}, Lt4/d;->z(I[J[J)V

    add-int/lit8 v4, v2, 0x5

    iget-object v3, v3, Lk2/p;->c:Lk2/b0;

    check-cast v3, Ln2/q0;

    iget-object v3, v3, Ln2/q0;->l:[J

    invoke-static {v4, v3, v0}, Lt4/d;->z(I[J[J)V

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    new-instance p1, Ll2/a;

    const/16 v1, 0x1b

    invoke-direct {p1, p0, p2, v0, v1}, Ll2/a;-><init>(Lk2/h;ILjava/lang/Object;I)V

    return-object p1
.end method

.method public final e(Lk2/b0;Lk2/b0;)Lk2/p;
    .registers 5

    new-instance v0, Lk2/n;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, p2, v1}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0
.end method

.method public final f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
    .registers 10

    new-instance v0, Lk2/n;

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/n;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v0
.end method

.method public final j(Ljava/math/BigInteger;)Lk2/b0;
    .registers 2

    new-instance p0, Ln2/q0;

    invoke-direct {p0, p1}, Ln2/q0;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public final l()I
    .registers 1

    const/16 p0, 0x11b

    return p0
.end method

.method public final m()Lk2/p;
    .registers 1

    iget-object p0, p0, Ln2/s0;->j:Lk2/n;

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
