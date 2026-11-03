.class public final Ln2/w;
.super Lk2/d;


# static fields
.field public static final j:Ljava/math/BigInteger;

.field public static final k:[Lk2/b0;


# instance fields
.field public final i:Lk2/o;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Ln2/x;->m:Ljava/math/BigInteger;

    sput-object v0, Ln2/w;->j:Ljava/math/BigInteger;

    new-instance v0, Ln2/x;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ln2/x;-><init>(Ljava/math/BigInteger;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lk2/b0;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Ln2/w;->k:[Lk2/b0;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    sget-object v0, Ln2/w;->j:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lk2/d;-><init>(Ljava/math/BigInteger;)V

    new-instance v0, Lk2/o;

    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-direct {v0, p0, v1, v1, v2}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    iput-object v0, p0, Ln2/w;->i:Lk2/o;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ln2/x;

    invoke-direct {v1, v0}, Ln2/x;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->b:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0051953EB9618E1C9A1F929A21A0B68540EEA2DA725B99B315F3B8B489918EF109E156193951EC7E937B1652C0BD3BB1BF073573DF883D2C34F1EF451FD46B503F00"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ln2/x;

    invoke-direct {v1, v0}, Ln2/x;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p0, Lk2/h;->c:Lk2/b0;

    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "01FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA51868783BF2F966B7FCC0148F709A5D03BB5C9B8899C47AEBB6FB71E91386409"

    invoke-static {v1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lk2/h;->d:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lk2/h;->e:Ljava/math/BigInteger;

    const/4 v0, 0x2

    iput v0, p0, Lk2/h;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lk2/h;
    .registers 1

    new-instance p0, Ln2/w;

    invoke-direct {p0}, Ln2/w;-><init>()V

    return-object p0
.end method

.method public final b([Lk2/p;I)Lk2/b0;
    .registers 10

    mul-int/lit8 v0, p2, 0x22

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, p2, :cond_26

    aget-object v4, p1, v2

    iget-object v5, v4, Lk2/p;->b:Lk2/b0;

    check-cast v5, Ln2/x;

    iget-object v5, v5, Ln2/x;->l:[I

    const/16 v6, 0x11

    invoke-static {v5, v1, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v3, 0x11

    iget-object v4, v4, Lk2/p;->c:Lk2/b0;

    check-cast v4, Ln2/x;

    iget-object v4, v4, Ln2/x;->l:[I

    invoke-static {v4, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x22

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_26
    new-instance p1, Ll2/a;

    const/16 v1, 0xd

    invoke-direct {p1, p0, p2, v0, v1}, Ll2/a;-><init>(Lk2/h;ILjava/lang/Object;I)V

    return-object p1
.end method

.method public final e(Lk2/b0;Lk2/b0;)Lk2/p;
    .registers 5

    new-instance v0, Lk2/o;

    const/16 v1, 0xe

    invoke-direct {v0, p0, p1, p2, v1}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;I)V

    return-object v0
.end method

.method public final f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;
    .registers 10

    new-instance v0, Lk2/o;

    const/16 v5, 0xe

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lk2/o;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;I)V

    return-object v0
.end method

.method public final j(Ljava/math/BigInteger;)Lk2/b0;
    .registers 2

    new-instance p0, Ln2/x;

    invoke-direct {p0, p1}, Ln2/x;-><init>(Ljava/math/BigInteger;)V

    return-object p0
.end method

.method public final l()I
    .registers 1

    sget-object p0, Ln2/w;->j:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    return p0
.end method

.method public final m()Lk2/p;
    .registers 1

    iget-object p0, p0, Ln2/w;->i:Lk2/o;

    return-object p0
.end method

.method public final r(Ljava/security/SecureRandom;)Lk2/b0;
    .registers 7

    const/16 p0, 0x11

    new-array v0, p0, [I

    :cond_4
    const/16 v1, 0x44

    new-array v1, v1, [B

    :cond_8
    invoke-virtual {p1, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p0}, Lm4/d;->B([BI[III)V

    const/16 v3, 0x10

    aget v4, v0, v3

    and-int/lit16 v4, v4, 0x1ff

    aput v4, v0, v3

    sget-object v3, Ln2/b;->D:[I

    invoke-static {p0, v0, v3}, Ls2/b;->M(I[I[I)I

    move-result v3

    if-eqz v3, :cond_8

    move v1, v2

    :goto_20
    if-ge v2, p0, :cond_28

    aget v3, v0, v2

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_28
    ushr-int/lit8 v2, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0x1f

    if-nez v1, :cond_4

    new-instance p0, Ln2/x;

    invoke-direct {p0, v0}, Ln2/x;-><init>([I)V

    return-object p0
.end method

.method public final s(I)Z
    .registers 2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final u()Ljava/math/BigInteger;
    .registers 1

    sget-object p0, Ln2/w;->j:Ljava/math/BigInteger;

    return-object p0
.end method
