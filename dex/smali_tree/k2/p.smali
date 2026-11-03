.class public abstract Lk2/p;
.super Ljava/lang/Object;


# static fields
.field public static final f:[Lk2/b0;


# instance fields
.field public final a:Lk2/h;

.field public final b:Lk2/b0;

.field public final c:Lk2/b0;

.field public final d:[Lk2/b0;

.field public e:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lk2/b0;

    sput-object v0, Lk2/p;->f:[Lk2/b0;

    return-void
.end method

.method public constructor <init>(Lk2/h;Lk2/b0;Lk2/b0;)V
    .registers 7

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget v0, p1, Lk2/h;->f:I

    :goto_6
    if-eqz v0, :cond_3a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_35

    const/4 v2, 0x2

    if-eq v0, v2, :cond_35

    const/4 v2, 0x3

    if-eq v0, v2, :cond_30

    const/4 v2, 0x4

    if-eq v0, v2, :cond_29

    const/4 v2, 0x6

    if-ne v0, v2, :cond_21

    goto :goto_35

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    iget-object v0, p1, Lk2/h;->b:Lk2/b0;

    filled-new-array {v1, v0}, [Lk2/b0;

    move-result-object v0

    goto :goto_3c

    :cond_30
    filled-new-array {v1, v1, v1}, [Lk2/b0;

    move-result-object v0

    goto :goto_3c

    :cond_35
    :goto_35
    filled-new-array {v1}, [Lk2/b0;

    move-result-object v0

    goto :goto_3c

    :cond_3a
    sget-object v0, Lk2/p;->f:[Lk2/b0;

    :goto_3c
    invoke-direct {p0, p1, p2, p3, v0}, Lk2/p;-><init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;)V

    return-void
.end method

.method public constructor <init>(Lk2/h;Lk2/b0;Lk2/b0;[Lk2/b0;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk2/p;->e:Ljava/util/Hashtable;

    iput-object p1, p0, Lk2/p;->a:Lk2/h;

    iput-object p2, p0, Lk2/p;->b:Lk2/b0;

    iput-object p3, p0, Lk2/p;->c:Lk2/b0;

    iput-object p4, p0, Lk2/p;->d:[Lk2/b0;

    return-void
.end method


# virtual methods
.method public abstract a(Lk2/p;)Lk2/p;
.end method

.method public final b()V
    .registers 2

    invoke-virtual {p0}, Lk2/p;->m()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "point not in normal form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract c()Lk2/p;
.end method

.method public final d(Lk2/p;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_5

    goto/16 :goto_77

    :cond_5
    iget-object v1, p1, Lk2/p;->a:Lk2/h;

    const/4 v2, 0x1

    iget-object v3, p0, Lk2/p;->a:Lk2/h;

    if-nez v3, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v0

    :goto_f
    if-nez v1, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v0

    :goto_14
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v6

    invoke-virtual {p1}, Lk2/p;->l()Z

    move-result v7

    if-nez v6, :cond_68

    if-eqz v7, :cond_21

    goto :goto_68

    :cond_21
    if-eqz v4, :cond_26

    if-eqz v5, :cond_26

    goto :goto_4f

    :cond_26
    if-eqz v4, :cond_2d

    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    goto :goto_4f

    :cond_2d
    if-eqz v5, :cond_34

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    goto :goto_4f

    :cond_34
    invoke-virtual {v3, v1}, Lk2/h;->i(Lk2/h;)Z

    move-result v1

    if-nez v1, :cond_3b

    goto :goto_77

    :cond_3b
    invoke-virtual {v3, p1}, Lk2/h;->n(Lk2/p;)Lk2/p;

    move-result-object p1

    filled-new-array {p0, p1}, [Lk2/p;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-virtual {v3, p0, v0, v1, p1}, Lk2/h;->p([Lk2/p;IILk2/b0;)V

    aget-object p1, p0, v0

    aget-object p0, p0, v2

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_4f
    iget-object v1, p0, Lk2/p;->b:Lk2/b0;

    iget-object v3, p1, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {p0}, Lk2/p;->i()Lk2/b0;

    move-result-object p0

    invoke-virtual {p1}, Lk2/p;->i()Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_77

    goto :goto_76

    :cond_68
    :goto_68
    if-eqz v6, :cond_77

    if-eqz v7, :cond_77

    if-nez v4, :cond_76

    if-nez v5, :cond_76

    invoke-virtual {v3, v1}, Lk2/h;->i(Lk2/h;)Z

    move-result p0

    if-eqz p0, :cond_77

    :cond_76
    :goto_76
    return v2

    :cond_77
    :goto_77
    return v0
.end method

.method public final e()Lk2/b0;
    .registers 1

    invoke-virtual {p0}, Lk2/p;->b()V

    invoke-virtual {p0}, Lk2/p;->i()Lk2/b0;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lk2/p;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lk2/p;

    invoke-virtual {p0, p1}, Lk2/p;->d(Lk2/p;)Z

    move-result p0

    return p0
.end method

.method public abstract f()Z
.end method

.method public final g()I
    .registers 1

    iget-object p0, p0, Lk2/p;->a:Lk2/h;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lk2/h;->f:I

    return p0
.end method

.method public final h(Z)[B
    .registers 6

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    new-array p0, v1, [B

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    iget-object v0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0}, Lk2/b0;->i()[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2c

    array-length p1, v0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    invoke-virtual {p0}, Lk2/p;->f()Z

    move-result p0

    if-eqz p0, :cond_23

    const/4 p0, 0x3

    goto :goto_24

    :cond_23
    const/4 p0, 0x2

    :goto_24
    int-to-byte p0, p0

    aput-byte p0, p1, v2

    array-length p0, v0

    invoke-static {v0, v2, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2c
    invoke-virtual {p0}, Lk2/p;->i()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Lk2/b0;->i()[B

    move-result-object p0

    array-length p1, v0

    array-length v3, p0

    add-int/2addr p1, v3

    add-int/2addr p1, v1

    new-array p1, p1, [B

    const/4 v3, 0x4

    aput-byte v3, p1, v2

    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lk2/p;->a:Lk2/h;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_b

    :cond_6
    invoke-virtual {v0}, Lk2/h;->hashCode()I

    move-result v0

    not-int v0, v0

    :goto_b
    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    iget-object v1, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lk2/p;->i()Lk2/b0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit16 p0, p0, 0x101

    xor-int/2addr p0, v0

    return p0

    :cond_2a
    return v0
.end method

.method public i()Lk2/b0;
    .registers 1

    iget-object p0, p0, Lk2/p;->c:Lk2/b0;

    return-object p0
.end method

.method public j()Lk2/b0;
    .registers 2

    iget-object p0, p0, Lk2/p;->d:[Lk2/b0;

    array-length v0, p0

    if-gtz v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final k(ZZ)Z
    .registers 5

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Lk2/m;

    invoke-direct {v0, p0, p1, p2}, Lk2/m;-><init>(Lk2/p;ZZ)V

    iget-object p1, p0, Lk2/p;->a:Lk2/h;

    const-string p2, "bc_validity"

    invoke-virtual {p1, p0, p2, v0}, Lk2/h;->q(Lk2/p;Ljava/lang/String;Lk2/u;)Lk2/v;

    move-result-object p0

    check-cast p0, Lk2/y;

    iget-boolean p0, p0, Lk2/y;->a:Z

    xor-int/2addr p0, v1

    return p0
.end method

.method public final l()Z
    .registers 3

    iget-object v0, p0, Lk2/p;->b:Lk2/b0;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lk2/p;->d:[Lk2/b0;

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_17

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lk2/b0;->t()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return v1

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method

.method public final m()Z
    .registers 3

    invoke-virtual {p0}, Lk2/p;->g()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lk2/p;->d:[Lk2/b0;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Lk2/b0;->s()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public final n(Ljava/math/BigInteger;)Lk2/p;
    .registers 4

    iget-object v0, p0, Lk2/p;->a:Lk2/h;

    iget-object v1, v0, Lk2/h;->h:Lk2/b0;

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lk2/h;->c()Lk2/b0;

    move-result-object v1

    iput-object v1, v0, Lk2/h;->h:Lk2/b0;

    :cond_c
    iget-object v0, v0, Lk2/h;->h:Lk2/b0;

    invoke-virtual {v0, p0, p1}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract o()Lk2/p;
.end method

.method public final p()Lk2/p;
    .registers 4

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_40

    :cond_7
    invoke-virtual {p0}, Lk2/p;->g()I

    move-result v0

    if-eqz v0, :cond_40

    const/4 v1, 0x5

    if-eq v0, v1, :cond_40

    invoke-virtual {p0}, Lk2/p;->j()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->s()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_40

    :cond_1b
    iget-object v1, p0, Lk2/p;->a:Lk2/h;

    if-eqz v1, :cond_38

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v1, v2}, Lk2/h;->r(Ljava/security/SecureRandom;)Lk2/b0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {v0}, Lk2/b0;->q()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/p;->q(Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Detached points must be in affine coordinates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    :goto_40
    return-object p0
.end method

.method public final q(Lk2/b0;)Lk2/p;
    .registers 6

    invoke-virtual {p0}, Lk2/p;->g()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lk2/p;->c:Lk2/b0;

    iget-object v3, p0, Lk2/p;->b:Lk2/b0;

    iget-object p0, p0, Lk2/p;->a:Lk2/h;

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_22

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    const/4 v1, 0x4

    if-eq v0, v1, :cond_22

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a

    goto :goto_37

    :cond_1a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not a projective coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    invoke-virtual {p1}, Lk2/b0;->F()Lk2/b0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {v3, v0}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    :goto_2e
    invoke-virtual {v2, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lk2/h;->e(Lk2/b0;Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0

    :cond_37
    :goto_37
    invoke-virtual {v3, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object v0

    goto :goto_2e
.end method

.method public abstract r()Z
.end method

.method public s()Z
    .registers 4

    sget-object v0, Lk2/a;->b:Ljava/math/BigInteger;

    iget-object v1, p0, Lk2/p;->a:Lk2/h;

    iget-object v2, v1, Lk2/h;->e:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    return v2

    :cond_e
    iget-object v0, v1, Lk2/h;->d:Ljava/math/BigInteger;

    if-eqz v0, :cond_1f

    invoke-static {p0, v0}, Lk2/b0;->D(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v2
.end method

.method public t(Lk2/b0;)Lk2/p;
    .registers 4

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    iget-object v0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    iget-object v1, p0, Lk2/p;->d:[Lk2/b0;

    iget-object p0, p0, Lk2/p;->a:Lk2/h;

    invoke-virtual {p0, p1, v0, v1}, Lk2/h;->f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "INF"

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_20
    iget-object v3, p0, Lk2/p;->d:[Lk2/b0;

    array-length v4, v3

    if-ge v2, v4, :cond_30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_30
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Lk2/b0;)Lk2/p;
    .registers 4

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    iget-object v0, p0, Lk2/p;->c:Lk2/b0;

    invoke-virtual {v0, p1}, Lk2/b0;->x(Lk2/b0;)Lk2/b0;

    move-result-object p1

    iget-object v0, p0, Lk2/p;->d:[Lk2/b0;

    iget-object v1, p0, Lk2/p;->a:Lk2/h;

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v1, p0, p1, v0}, Lk2/h;->f(Lk2/b0;Lk2/b0;[Lk2/b0;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public abstract v(Lk2/p;)Lk2/p;
.end method

.method public w()Lk2/p;
    .registers 1

    invoke-virtual {p0, p0}, Lk2/p;->z(Lk2/p;)Lk2/p;

    move-result-object p0

    return-object p0
.end method

.method public x(I)Lk2/p;
    .registers 2

    if-ltz p1, :cond_c

    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Lk2/p;->y()Lk2/p;

    move-result-object p0

    goto :goto_2

    :cond_b
    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'e\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract y()Lk2/p;
.end method

.method public abstract z(Lk2/p;)Lk2/p;
.end method
