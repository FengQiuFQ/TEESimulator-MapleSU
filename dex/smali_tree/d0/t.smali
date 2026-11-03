.class public final Ld0/t;
.super Lm/n;


# instance fields
.field public c:Lm/l;

.field public d:Ll0/b;

.field public q:Lm/r;

.field public x:Lm/y;

.field public y:Lm/b;


# direct methods
.method public constructor <init>(Ll0/b;Lm/n;Lm/y;[B)V
    .registers 5

    invoke-interface {p2}, Lm/f;->d()Lm/u;

    move-result-object p2

    invoke-virtual {p2}, Lm/n;->g()[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Ld0/t;-><init>(Ll0/b;[BLm/y;[B)V

    return-void
.end method

.method public constructor <init>(Ll0/b;Lm/u;Lm/y;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ld0/t;-><init>(Ll0/b;Lm/n;Lm/y;[B)V

    return-void
.end method

.method public constructor <init>(Ll0/b;[BLm/y;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    if-eqz p4, :cond_a

    sget-object v1, Lm4/a;->b:Ljava/math/BigInteger;

    goto :goto_c

    :cond_a
    sget-object v1, Lm4/a;->a:Ljava/math/BigInteger;

    :goto_c
    invoke-direct {v0, v1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Ld0/t;->c:Lm/l;

    iput-object p1, p0, Ld0/t;->d:Ll0/b;

    new-instance p1, Lm/x0;

    invoke-direct {p1, p2}, Lm/r;-><init>([B)V

    iput-object p1, p0, Ld0/t;->q:Lm/r;

    iput-object p3, p0, Ld0/t;->x:Lm/y;

    if-nez p4, :cond_20

    const/4 p1, 0x0

    goto :goto_26

    :cond_20
    new-instance p1, Lm/p0;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Lm/b;-><init>([BI)V

    :goto_26
    iput-object p1, p0, Ld0/t;->y:Lm/b;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/t;
    .registers 8

    instance-of v0, p0, Ld0/t;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/t;

    return-object p0

    :cond_7
    if-eqz p0, :cond_99

    new-instance v0, Ld0/t;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    iput-object v1, v0, Ld0/t;->c:Lm/l;

    invoke-virtual {v1}, Lm/l;->y()I

    move-result v1

    if-ltz v1, :cond_91

    const/4 v2, 0x1

    if-gt v1, v2, :cond_91

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v3

    iput-object v3, v0, Ld0/t;->d:Ll0/b;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iput-object v3, v0, Ld0/t;->q:Lm/r;

    const/4 v3, -0x1

    :goto_3e
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/a0;

    iget v5, v4, Lm/a0;->q:I

    if-le v5, v3, :cond_88

    const/4 v3, 0x0

    if-eqz v5, :cond_76

    if-ne v5, v2, :cond_6e

    if-lt v1, v2, :cond_66

    invoke-static {v4}, Lq4/k;->v(Lm/a0;)V

    sget-object v6, Lm/b;->d:Lm/a;

    invoke-virtual {v4, v3, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v6, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/b;

    iput-object v3, v0, Ld0/t;->y:Lm/b;

    goto :goto_86

    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'publicKey\' requires version v2(1) or later"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown optional field in private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    invoke-static {v4}, Lq4/k;->v(Lm/a0;)V

    sget-object v6, Lm/y;->q:Lm/a;

    invoke-virtual {v4, v3, v6}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v3

    invoke-virtual {v6, v3}, Lm/a;->a(Lm/u;)V

    check-cast v3, Lm/y;

    iput-object v3, v0, Ld0/t;->x:Lm/y;

    :goto_86
    move v3, v5

    goto :goto_3e

    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid optional field in private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_90
    return-object v0

    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid version for private key info"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/t;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/t;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/t;->q:Lm/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ld0/t;->x:Lm/y;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    new-instance v3, Lm/d1;

    invoke-direct {v3, v2, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_22
    iget-object p0, p0, Ld0/t;->y:Lm/b;

    if-eqz p0, :cond_2f

    new-instance v1, Lm/d1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2f
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method

.method public final i()Lm/x0;
    .registers 2

    new-instance v0, Lm/x0;

    iget-object p0, p0, Ld0/t;->q:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    return-object v0
.end method

.method public final j()Lm/u;
    .registers 1

    iget-object p0, p0, Ld0/t;->q:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    return-object p0
.end method
