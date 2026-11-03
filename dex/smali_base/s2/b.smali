.class public abstract Ls2/b;
.super Ljava/lang/Object;


# direct methods
.method public static A([I)I
    .registers 2

    const/4 v0, 0x0

    aget p0, p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static B(Ly4/d;)Lj0/c;
    .registers 3

    new-instance v0, Ln0/e;

    iget-object p0, p0, Ly4/d;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/Certificate;

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0

    invoke-direct {v0, p0}, Ln0/e;-><init>([B)V

    iget-object p0, v0, Ln0/e;->c:Ll0/m;

    iget-object p0, p0, Ll0/m;->d:Ll0/u0;

    iget-object p0, p0, Ll0/u0;->A1:Lj0/c;

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    return-object p0
.end method

.method public static C(II)Ly4/d;
    .registers 3

    invoke-static {p0}, Lu4/g;->b(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-ne p1, v0, :cond_d

    const-string p1, "EC"

    goto :goto_1b

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported algorithm ID: "

    invoke-static {p1, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    const-string p1, "RSA"

    :goto_1b
    invoke-static {p0, p1}, Ly4/e;->b(Ljava/lang/String;Ljava/lang/String;)Ly4/d;

    move-result-object p1

    if-nez p1, :cond_36

    invoke-static {p0}, Ly4/e;->a(Ljava/lang/String;)Ly4/d;

    move-result-object p1

    if-eqz p1, :cond_28

    goto :goto_36

    :cond_28
    new-instance p1, Landroid/os/ServiceSpecificException;

    const-string v0, "No usable attestation key in "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, -0x4b

    invoke-direct {p1, v0, p0}, Landroid/os/ServiceSpecificException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_36
    :goto_36
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p1
.end method

.method public static D(I[I[I)Z
    .registers 7

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_16

    aget v1, p1, p0

    const/high16 v2, -0x80000000

    xor-int/2addr v1, v2

    aget v3, p2, p0

    xor-int/2addr v2, v3

    if-ge v1, v2, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    if-le v1, v2, :cond_13

    return v0

    :cond_13
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_16
    return v0
.end method

.method public static E(ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_2
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "currentActivityThread"

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v2, "Reflection: ActivityThread.currentActivityThread() returned null"

    invoke-static {v2, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1e
    :goto_1e
    move-object v4, v0

    goto :goto_57

    :catch_20
    move-exception v2

    goto :goto_4f

    :cond_22
    const-string v4, "getApplication"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/content/Context;

    if-eqz v5, :cond_36

    check-cast v4, Landroid/content/Context;

    goto :goto_37

    :cond_36
    move-object v4, v0

    :goto_37
    if-eqz v4, :cond_3a

    goto :goto_57

    :cond_3a
    const-string v4, "getSystemContext"

    invoke-virtual {v2, v4, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/content/Context;

    if-eqz v3, :cond_1e

    move-object v4, v2

    check-cast v4, Landroid/content/Context;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_20

    goto :goto_57

    :goto_4f
    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "Reflection failed to get global context for permission check"

    invoke-static {v3, v2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e

    :goto_57
    const/4 v2, 0x0

    if-nez v4, :cond_62

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "AndroidPermissionUtils: Context is null, failing permission check safely."

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_62
    const/4 v0, -0x1

    invoke-virtual {v4, p1, v0, p0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v1, v2

    :goto_6b
    return v1
.end method

.method public static F(I[I[I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/4 v2, 0x1

    if-ge v1, p0, :cond_18

    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz v3, :cond_2

    :goto_e
    if-ge v1, p0, :cond_17

    aget v2, p1, v1

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    return v0

    :cond_18
    return v2
.end method

.method public static G([I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x10

    const/4 v3, 0x1

    if-ge v1, v2, :cond_12

    aget v2, p0, v1

    add-int/2addr v2, v3

    aput v2, p0, v1

    if-eqz v2, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v3
.end method

.method public static H(II[I)I
    .registers 5

    :goto_0
    const/4 v0, 0x1

    if-ge p1, p0, :cond_f

    aget v1, p2, p1

    add-int/2addr v1, v0

    aput v1, p2, p1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_f
    return v0
.end method

.method public static I(II[I)I
    .registers 5

    :goto_0
    const/4 v0, 0x1

    if-ge p1, p0, :cond_f

    aget v1, p2, p1

    add-int/2addr v1, v0

    aput v1, p2, p1

    if-eqz v1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_f
    return v0
.end method

.method public static J(IJ)Z
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_11

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "index must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K(I[I)Z
    .registers 6

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    return v0

    :cond_7
    move v1, v2

    :goto_8
    if-ge v1, p0, :cond_12

    aget v3, p1, v1

    if-eqz v3, :cond_f

    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    return v2
.end method

.method public static L(I[I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p0, :cond_c

    aget v2, p1, v1

    if-eqz v2, :cond_9

    return v0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method public static M(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1b

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v3, v0

    const/16 v0, 0x20

    shr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1b
    long-to-int p0, v0

    return p0
.end method

.method public static N(III[I[I)I
    .registers 16

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :cond_a
    aget v6, p3, p1

    int-to-long v6, v6

    and-long/2addr v6, v2

    mul-long/2addr v6, v0

    add-int v8, p2, p1

    aget v9, p4, v8

    int-to-long v9, v9

    and-long/2addr v9, v2

    add-long/2addr v6, v9

    add-long/2addr v6, v4

    long-to-int v4, v6

    aput v4, p4, v8

    const/16 v4, 0x20

    ushr-long v4, v6, v4

    add-int/lit8 p1, p1, 0x1

    if-lt p1, p0, :cond_a

    long-to-int p0, v4

    return p0
.end method

.method public static O(II[I[I)I
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p0, :cond_10

    aget v1, p2, v0

    shl-int/lit8 v2, v1, 0x1

    ushr-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v2

    aput p1, p3, v0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    goto :goto_1

    :cond_10
    ushr-int/lit8 p0, p1, 0x1f

    return p0
.end method

.method public static P(I[I)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_11

    aget v2, p1, v0

    shl-int/lit8 v3, v2, 0x2

    ushr-int/lit8 v1, v1, -0x2

    or-int/2addr v1, v3

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_11
    ushr-int/lit8 p0, v1, -0x2

    return p0
.end method

.method public static Q(I[I[I)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p0, :cond_11

    aget v2, p1, v0

    shl-int/lit8 v3, v2, 0x3

    ushr-int/lit8 v1, v1, -0x3

    or-int/2addr v1, v3

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_11
    ushr-int/lit8 p0, v1, -0x3

    return p0
.end method

.method public static R(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1e

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p3, v2

    const/16 v0, 0x20

    shr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static S(II[I)V
    .registers 10

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    long-to-int p1, v1

    aput p1, p2, v0

    const/16 p1, 0x20

    shr-long v0, v1, p1

    const/4 v2, 0x1

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p2, v2

    shr-long v0, v3, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_29

    return-void

    :cond_29
    const/4 p1, 0x2

    invoke-static {p0, p1, p2}, Ls2/b;->q(II[I)I

    return-void
.end method

.method public static T(II[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_20

    add-int v3, p1, v2

    aget v4, p3, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    aget v8, p2, v2

    int-to-long v8, v8

    and-long/2addr v6, v8

    sub-long/2addr v4, v6

    add-long/2addr v4, v0

    long-to-int v0, v4

    aput v0, p3, v3

    const/16 v0, 0x20

    shr-long v0, v4, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_20
    long-to-int p0, v0

    return p0
.end method

.method public static U(I[I[I)V
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1e

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p1, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    sub-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p2, v2

    const/16 v0, 0x20

    shr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    return-void
.end method

.method public static V(I[I)Ljava/math/BigInteger;
    .registers 6

    shl-int/lit8 v0, p0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p0, :cond_16

    aget v2, p1, v1

    if-eqz v2, :cond_13

    add-int/lit8 v3, p0, -0x1

    sub-int/2addr v3, v1

    shl-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v3}, Lm4/d;->w([BII)V

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public static W(IJ)[B
    .registers 5

    new-array v0, p0, [B

    add-int/lit8 p0, p0, -0x1

    :goto_4
    if-ltz p0, :cond_10

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    const/16 v1, 0x8

    ushr-long/2addr p1, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_4

    :cond_10
    return-object v0
.end method

.method public static a(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1e

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p3, v2

    const/16 v0, 0x20

    ushr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static b(II[I)V
    .registers 10

    const/4 v0, 0x0

    aget v1, p2, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    int-to-long v5, p1

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    long-to-int p1, v1

    aput p1, p2, v0

    const/16 p1, 0x20

    ushr-long v0, v1, p1

    const/4 v2, 0x1

    aget v5, p2, v2

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p2, v2

    ushr-long v0, v3, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_29

    return-void

    :cond_29
    const/4 p1, 0x2

    invoke-static {p0, p1, p2}, Ls2/b;->H(II[I)I

    return-void
.end method

.method public static c(I[I[I[I)I
    .registers 13

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_23

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v7, v5

    add-long/2addr v3, v7

    aget v7, p3, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p3, v2

    const/16 v0, 0x20

    ushr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_23
    long-to-int p0, v0

    return p0
.end method

.method public static d(II[I[I)I
    .registers 14

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_20

    aget v3, p2, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    add-int v7, p1, v2

    aget v8, p3, v7

    int-to-long v8, v8

    and-long/2addr v5, v8

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p3, v7

    const/16 v0, 0x20

    ushr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_20
    long-to-int p0, v0

    return p0
.end method

.method public static e(I[I[I)I
    .registers 12

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p0, :cond_1e

    aget v3, p1, v2

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    aget v7, p2, v2

    int-to-long v7, v7

    and-long/2addr v5, v7

    add-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    aput v0, p2, v2

    const/16 v0, 0x20

    ushr-long v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1e
    long-to-int p0, v0

    return p0
.end method

.method public static f(III[I)V
    .registers 10

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    aget p1, p3, p2

    int-to-long v4, p1

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int p1, v0

    aput p1, p3, p2

    const/16 p1, 0x20

    ushr-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_19

    return-void

    :cond_19
    add-int/lit8 p2, p2, 0x1

    invoke-static {p0, p2, p3}, Ls2/b;->H(II[I)I

    return-void
.end method

.method public static g(II[I)I
    .registers 9

    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 p1, 0x0

    aget v4, p2, p1

    int-to-long v4, v4

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v2, v0

    aput v2, p2, p1

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    return p1

    :cond_1a
    const/4 p1, 0x1

    invoke-static {p0, p1, p2}, Ls2/b;->H(II[I)I

    move-result p0

    return p0
.end method

.method public static h(Ljava/security/KeyPair;Ljava/security/KeyPair;Lj0/c;Lt4/l;II)Ljava/security/cert/X509Certificate;
    .registers 28

    move-object/from16 v0, p3

    move/from16 v1, p5

    iget-object v2, v0, Lt4/l;->l:Lj0/c;

    iget-object v3, v0, Lt4/l;->o:[B

    iget-object v4, v0, Lt4/l;->h:Ljava/util/List;

    if-nez v2, :cond_13

    new-instance v2, Lj0/c;

    const-string v5, "CN=Android Keystore Key"

    invoke-direct {v2, v5}, Lj0/c;-><init>(Ljava/lang/String;)V

    :cond_13
    move-object v11, v2

    iget-object v2, v0, Lt4/l;->m:Ljava/util/Date;

    if-nez v2, :cond_1f

    new-instance v2, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    :cond_1f
    move-object v9, v2

    iget-object v2, v0, Lt4/l;->n:Ljava/util/Date;

    if-nez v2, :cond_2e

    new-instance v2, Ljava/util/Date;

    const-wide v5, 0xe677d21fd818L

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    :cond_2e
    move-object v10, v2

    new-instance v6, Lo0/c;

    iget-object v2, v0, Lt4/l;->k:Ljava/math/BigInteger;

    if-nez v2, :cond_37

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :cond_37
    move-object v8, v2

    invoke-virtual/range {p0 .. p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v12

    move-object/from16 v7, p2

    invoke-direct/range {v6 .. v12}, Lo0/c;-><init>(Lj0/c;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lj0/c;Ljava/security/PublicKey;)V

    invoke-static {v4}, Ls2/b;->i(Ljava/util/List;)I

    move-result v2

    if-eqz v2, :cond_51

    sget-object v5, Ll0/v;->y:Lm/q;

    new-instance v7, Ll0/f0;

    invoke-direct {v7, v2}, Ll0/f0;-><init>(I)V

    invoke-virtual {v6, v5, v7}, Lb1/b;->d(Lm/q;Ll0/f0;)V

    :cond_51
    const/4 v5, 0x0

    if-eqz v3, :cond_58e

    sget-object v7, Lt4/c;->a:La/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v0, Lt4/l;->Q:Ljava/util/List;

    iget-object v10, v0, Lt4/l;->g:Ljava/util/List;

    iget-object v11, v0, Lt4/l;->f:Ljava/util/List;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v4}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    new-instance v14, Lm/l;

    move-object v15, v3

    int-to-long v2, v13

    invoke-direct {v14, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v15

    goto :goto_6d

    :cond_89
    move-object v15, v3

    new-array v2, v5, [Lm/l;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lm/f;

    new-instance v3, Lm/b1;

    invoke-direct {v3, v2}, Lm/b1;-><init>([Lm/f;)V

    new-instance v2, Lm/d1;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v4, v3}, Lm/a0;-><init>(ZILm/f;)V

    new-instance v3, Lm/d1;

    new-instance v12, Lm/l;

    iget v13, v0, Lt4/l;->b:I

    int-to-long v13, v13

    invoke-direct {v12, v13, v14}, Lm/l;-><init>(J)V

    const/4 v13, 0x2

    invoke-direct {v3, v4, v13, v12}, Lm/a0;-><init>(ZILm/f;)V

    new-instance v12, Lm/d1;

    new-instance v14, Lm/l;

    move/from16 p2, v13

    iget v13, v0, Lt4/l;->a:I

    move-object/from16 v16, v6

    int-to-long v5, v13

    invoke-direct {v14, v5, v6}, Lm/l;-><init>(J)V

    const/4 v5, 0x3

    invoke-direct {v12, v4, v5, v14}, Lm/a0;-><init>(ZILm/f;)V

    iget-object v6, v0, Lt4/l;->i:Ljava/util/List;

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v6}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_cc
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    move/from16 v18, v5

    new-instance v5, Lm/l;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    int-to-long v2, v14

    invoke-direct {v5, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v5, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto :goto_cc

    :cond_f2
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v18, v5

    const/4 v2, 0x0

    new-array v3, v2, [Lm/l;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lm/f;

    new-instance v5, Lm/b1;

    invoke-direct {v5, v3}, Lm/b1;-><init>([Lm/f;)V

    new-instance v3, Lm/d1;

    const/4 v6, 0x5

    invoke-direct {v3, v4, v6, v5}, Lm/a0;-><init>(ZILm/f;)V

    const/4 v5, 0x4

    new-array v13, v5, [Lm/f;

    aput-object v19, v13, v2

    aput-object v20, v13, v4

    aput-object v12, v13, p2

    aput-object v3, v13, v18

    new-instance v2, Ljava/util/ArrayList;

    new-instance v3, Lb/g;

    invoke-direct {v3, v13, v4}, Lb/g;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lt4/l;->c:Ljava/lang/Integer;

    if-eqz v3, :cond_13d

    new-instance v12, Lm/d1;

    new-instance v13, Lm/l;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-wide/from16 v19, v7

    move v8, v6

    int-to-long v6, v3

    invoke-direct {v13, v6, v7}, Lm/l;-><init>(J)V

    const/16 v3, 0xa

    invoke-direct {v12, v4, v3, v13}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_140

    :cond_13d
    move-wide/from16 v19, v7

    move v8, v6

    :goto_140
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_183

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v11}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_153
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    new-instance v11, Lm/l;

    int-to-long v12, v7

    invoke-direct {v11, v12, v13}, Lm/l;-><init>(J)V

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_153

    :cond_16d
    const/4 v7, 0x0

    new-array v6, v7, [Lm/l;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lm/f;

    new-instance v6, Lm/b1;

    invoke-direct {v6, v3}, Lm/b1;-><init>([Lm/f;)V

    new-instance v3, Lm/d1;

    invoke-direct {v3, v4, v5, v6}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_183
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1c7

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v10}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_196
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    new-instance v10, Lm/l;

    int-to-long v11, v7

    invoke-direct {v10, v11, v12}, Lm/l;-><init>(J)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_196

    :cond_1b0
    const/4 v7, 0x0

    new-array v6, v7, [Lm/l;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lm/f;

    new-instance v6, Lm/b1;

    invoke-direct {v6, v3}, Lm/b1;-><init>([Lm/f;)V

    new-instance v3, Lm/d1;

    const/4 v7, 0x6

    invoke-direct {v3, v4, v7, v6}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c7
    iget-object v3, v0, Lt4/l;->j:Ljava/math/BigInteger;

    if-eqz v3, :cond_1de

    new-instance v6, Lm/d1;

    new-instance v7, Lm/l;

    invoke-virtual {v3}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Lm/l;-><init>(J)V

    const/16 v3, 0xc8

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1de
    sget-object v3, Lz4/f;->a:La/f;

    invoke-static {v1}, Lz4/f;->e(I)I

    move-result v3

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_22d

    const/16 v6, 0x64

    if-lt v3, v6, :cond_22d

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v9}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1fb
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_215

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    new-instance v10, Lm/l;

    int-to-long v11, v9

    invoke-direct {v10, v11, v12}, Lm/l;-><init>(J)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1fb

    :cond_215
    const/4 v9, 0x0

    new-array v7, v9, [Lm/l;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lm/f;

    new-instance v7, Lm/b1;

    invoke-direct {v7, v6}, Lm/b1;-><init>([Lm/f;)V

    new-instance v6, Lm/d1;

    const/16 v9, 0xcb

    invoke-direct {v6, v4, v9, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22d
    iget-object v6, v0, Lt4/l;->G:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    sget-object v9, Lm/v0;->d:Lm/v0;

    if-eqz v6, :cond_247

    move/from16 v6, v18

    if-lt v3, v6, :cond_247

    new-instance v6, Lm/d1;

    const/16 v10, 0x12f

    invoke-direct {v6, v4, v10, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_247
    iget-object v6, v0, Lt4/l;->H:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25b

    if-lt v3, v5, :cond_25b

    new-instance v6, Lm/d1;

    const/16 v10, 0x131

    invoke-direct {v6, v4, v10, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25b
    iget-object v6, v0, Lt4/l;->L:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26d

    new-instance v6, Lm/d1;

    const/16 v10, 0x1f7

    invoke-direct {v6, v4, v10, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26d
    iget-object v6, v0, Lt4/l;->I:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27f

    new-instance v6, Lm/d1;

    const/16 v10, 0x1fa

    invoke-direct {v6, v4, v10, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27f
    iget-object v6, v0, Lt4/l;->J:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_295

    const/4 v6, 0x3

    if-lt v3, v6, :cond_296

    new-instance v10, Lm/d1;

    const/16 v11, 0x1fb

    invoke-direct {v10, v4, v11, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_296

    :cond_295
    const/4 v6, 0x3

    :cond_296
    :goto_296
    iget-object v10, v0, Lt4/l;->K:Ljava/lang/Boolean;

    invoke-static {v10, v7}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2aa

    if-lt v3, v6, :cond_2aa

    new-instance v3, Lm/d1;

    const/16 v6, 0x1fc

    invoke-direct {v3, v4, v6, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2aa
    new-instance v3, Lm/d1;

    new-instance v6, Lm/l;

    iget-object v7, v0, Lt4/l;->e:Ljava/lang/Integer;

    if-eqz v7, :cond_2b7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2b8

    :cond_2b7
    const/4 v7, 0x0

    :goto_2b8
    int-to-long v10, v7

    invoke-direct {v6, v10, v11}, Lm/l;-><init>(J)V

    const/16 v7, 0x2be

    invoke-direct {v3, v4, v7, v6}, Lm/a0;-><init>(ZILm/f;)V

    new-instance v6, Lm/d1;

    const/16 v7, 0x2c0

    invoke-static {}, Lt4/c;->b()Lm/a1;

    move-result-object v10

    invoke-direct {v6, v4, v7, v10}, Lm/a0;-><init>(ZILm/f;)V

    filled-new-array {v3, v6}, [Lm/d1;

    move-result-object v3

    invoke-static {v3}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static/range {p4 .. p4}, Lt4/c;->d(I)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v6, "<this>"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2ed
    :goto_2ed
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2fd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2ed

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2ed

    :cond_2fd
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x0

    :goto_302
    if-ge v7, v3, :cond_310

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v7, v7, 0x1

    check-cast v10, Lm/d1;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_302

    :cond_310
    iget-object v3, v0, Lt4/l;->p:[B

    if-eqz v3, :cond_323

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2c6

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_323
    iget-object v3, v0, Lt4/l;->q:[B

    if-eqz v3, :cond_336

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2c7

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_336
    iget-object v3, v0, Lt4/l;->r:[B

    if-eqz v3, :cond_349

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2c8

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_349
    iget-object v3, v0, Lt4/l;->s:[B

    if-eqz v3, :cond_35c

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2c9

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35c
    iget-object v3, v0, Lt4/l;->t:[B

    if-eqz v3, :cond_36f

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2ca

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_36f
    iget-object v3, v0, Lt4/l;->u:[B

    if-eqz v3, :cond_382

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2cb

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_382
    iget-object v3, v0, Lt4/l;->v:[B

    if-eqz v3, :cond_395

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2cc

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_395
    iget-object v3, v0, Lt4/l;->w:[B

    if-eqz v3, :cond_3a8

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2cd

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a8
    sget-object v3, Lz4/f;->a:La/f;

    invoke-static {v1}, Lz4/f;->e(I)I

    move-result v3

    const/16 v6, 0x12c

    if-lt v3, v6, :cond_3c5

    iget-object v3, v0, Lt4/l;->x:[B

    if-eqz v3, :cond_3c5

    new-instance v6, Lm/d1;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v3}, Lm/r;-><init>([B)V

    const/16 v3, 0x2d3

    invoke-direct {v6, v4, v3, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c5
    new-instance v3, Lm/a1;

    new-instance v6, Lt4/b;

    invoke-direct {v6, v4}, Lt4/b;-><init>(I)V

    invoke-static {v2, v6}, Lb/i;->a1(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    const/4 v7, 0x0

    new-array v6, v7, [Lm/f;

    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lm/f;

    invoke-direct {v3, v2}, Lm/a1;-><init>([Lm/f;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lm/d1;

    new-instance v7, Lm/l;

    move-wide/from16 v10, v19

    invoke-direct {v7, v10, v11}, Lm/l;-><init>(J)V

    const/16 v12, 0x2bd

    invoke-direct {v6, v4, v12, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lm/d1;

    const/16 v7, 0x2c5

    invoke-static/range {p4 .. p4}, Lt4/c;->c(I)Lm/x0;

    move-result-object v12

    invoke-direct {v6, v4, v7, v12}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lz4/f;->e(I)I

    move-result v6

    const/16 v7, 0x190

    if-lt v6, v7, :cond_424

    new-instance v6, Lm/d1;

    new-instance v12, Lm/x0;

    sget-object v13, Lz4/f;->l:La/f;

    invoke-virtual {v13}, La/f;->a()Ljava/lang/Object;

    move-result-object v13

    const-string v14, "getValue(...)"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v13, [B

    invoke-direct {v12, v13}, Lm/r;-><init>([B)V

    const/16 v13, 0x2d4

    invoke-direct {v6, v4, v13, v12}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_424
    iget-object v6, v0, Lt4/l;->C:Ljava/lang/Boolean;

    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v13, 0x7

    if-eqz v6, :cond_437

    new-instance v6, Lm/d1;

    invoke-direct {v6, v4, v13, v9}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_437
    iget-object v6, v0, Lt4/l;->y:Ljava/util/Date;

    if-eqz v6, :cond_453

    new-instance v14, Lm/d1;

    move/from16 v19, v5

    new-instance v5, Lm/l;

    move/from16 v20, v8

    move-object/from16 v21, v9

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Lm/l;-><init>(J)V

    invoke-direct {v14, v4, v7, v5}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_459

    :cond_453
    move/from16 v19, v5

    move/from16 v20, v8

    move-object/from16 v21, v9

    :goto_459
    iget-object v5, v0, Lt4/l;->z:Ljava/util/Date;

    if-eqz v5, :cond_470

    new-instance v6, Lm/d1;

    new-instance v7, Lm/l;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lm/l;-><init>(J)V

    const/16 v5, 0x191

    invoke-direct {v6, v4, v5, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_470
    iget-object v5, v0, Lt4/l;->A:Ljava/util/Date;

    if-eqz v5, :cond_487

    new-instance v6, Lm/d1;

    new-instance v7, Lm/l;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lm/l;-><init>(J)V

    const/16 v5, 0x192

    invoke-direct {v6, v4, v5, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_487
    iget-object v5, v0, Lt4/l;->B:Ljava/lang/Integer;

    if-eqz v5, :cond_49f

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    new-instance v6, Lm/d1;

    new-instance v7, Lm/l;

    int-to-long v8, v5

    invoke-direct {v7, v8, v9}, Lm/l;-><init>(J)V

    const/16 v5, 0x195

    invoke-direct {v6, v4, v5, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49f
    iget-object v5, v0, Lt4/l;->E:Ljava/lang/Boolean;

    invoke-static {v5, v12}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b3

    new-instance v5, Lm/d1;

    const/16 v6, 0x1fd

    move-object/from16 v7, v21

    invoke-direct {v5, v4, v6, v7}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b3
    new-instance v5, Lm/a1;

    new-instance v6, Lt4/b;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lt4/b;-><init>(I)V

    invoke-static {v2, v6}, Lb/i;->a1(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    new-array v6, v7, [Lm/f;

    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lm/f;

    invoke-direct {v5, v2}, Lm/a1;-><init>([Lm/f;)V

    iget-object v0, v0, Lt4/l;->F:Ljava/lang/Boolean;

    invoke-static {v0, v12}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_527

    invoke-static/range {p4 .. p4}, Lt4/c;->c(I)Lm/x0;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    const-string v2, "getOctets(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide v6, 0x9a7ec800L

    div-long v7, v10, v6

    array-length v2, v0

    add-int/lit8 v2, v2, 0x9

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const-string v2, "HmacSHA256"

    invoke-static {v2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v8, Lt4/c;->a:La/f;

    invoke-virtual {v8}, La/f;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {v7, v8, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v6, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    const-string v2, "doFinal(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v2, "copyOf(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_52a

    :cond_527
    const/4 v7, 0x0

    new-array v0, v7, [B

    :goto_52a
    new-instance v2, Lm/l;

    invoke-static {v1}, Lz4/f;->e(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v2, v6, v7}, Lm/l;-><init>(J)V

    new-instance v6, Lm/h;

    invoke-direct {v6, v1}, Lm/h;-><init>(I)V

    new-instance v7, Lm/l;

    invoke-static {v1}, Lz4/f;->g(I)I

    move-result v8

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lm/l;-><init>(J)V

    new-instance v8, Lm/h;

    invoke-direct {v8, v1}, Lm/h;-><init>(I)V

    new-instance v1, Lm/x0;

    invoke-direct {v1, v15}, Lm/r;-><init>([B)V

    new-instance v9, Lm/x0;

    invoke-direct {v9, v0}, Lm/r;-><init>([B)V

    const/16 v0, 0x8

    new-array v0, v0, [Lm/u;

    const/16 v17, 0x0

    aput-object v2, v0, v17

    aput-object v6, v0, v4

    aput-object v7, v0, p2

    const/16 v18, 0x3

    aput-object v8, v0, v18

    aput-object v1, v0, v19

    aput-object v9, v0, v20

    const/4 v7, 0x6

    aput-object v5, v0, v7

    aput-object v3, v0, v13

    new-instance v1, Lm/a1;

    check-cast v0, [Lm/f;

    invoke-direct {v1, v0}, Lm/a1;-><init>([Lm/f;)V

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ll0/v;

    sget-object v2, Lt4/k;->a:Lm/q;

    new-instance v3, Lm/x0;

    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    invoke-direct {v3, v1}, Lm/r;-><init>([B)V

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v3}, Ll0/v;-><init>(Lm/q;ZLm/x0;)V

    move-object/from16 v6, v16

    iget-object v1, v6, Lb1/b;->i:Ljava/lang/Object;

    check-cast v1, Ll0/x;

    invoke-virtual {v1, v0}, Ll0/x;->a(Ll0/v;)V

    :cond_58e
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5f8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x89e

    if-eq v1, v2, :cond_5be

    const v2, 0x13e20

    if-eq v1, v2, :cond_5b3

    const v2, 0x3ebd434

    if-ne v1, v2, :cond_5f8

    const-string v1, "ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f8

    goto :goto_5c6

    :cond_5b3
    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f8

    const-string v0, "SHA256withRSA"

    goto :goto_5c8

    :cond_5be
    const-string v1, "EC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f8

    :goto_5c6
    const-string v0, "SHA256withECDSA"

    :goto_5c8
    new-instance v1, Lw2/a;

    invoke-direct {v1, v0}, Lw2/a;-><init>(Ljava/lang/String;)V

    new-instance v0, Lw2/b;

    new-instance v2, La3/e;

    const/4 v7, 0x6

    const/4 v9, 0x0

    invoke-direct {v2, v9, v7}, La3/e;-><init>(BI)V

    invoke-direct {v0, v2}, Lw2/b;-><init>(Le2/b;)V

    iput-object v0, v1, Lw2/a;->b:Lw2/b;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw2/a;->a(Ljava/security/PrivateKey;)Lg1/d;

    move-result-object v0

    new-instance v1, La3/e;

    const/16 v2, 0x14

    invoke-direct {v1, v9, v2}, La3/e;-><init>(BI)V

    invoke-virtual {v6, v0}, Lb1/b;->e(Lg1/d;)Ln0/e;

    move-result-object v0

    invoke-virtual {v1, v0}, La3/e;->n(Ln0/e;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    const-string v1, "getCertificate(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_5f8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported signing key: "

    invoke-static {v2, v1}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Ljava/util/List;)I
    .registers 5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_32

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2f

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2c

    const/4 v3, 0x6

    if-eq v2, v3, :cond_29

    const/4 v3, 0x7

    if-eq v2, v3, :cond_27

    move v2, v0

    goto :goto_34

    :cond_27
    const/4 v2, 0x4

    goto :goto_34

    :cond_29
    const/16 v2, 0x8

    goto :goto_34

    :cond_2c
    const/16 v2, 0x20

    goto :goto_34

    :cond_2f
    const/16 v2, 0x80

    goto :goto_34

    :cond_32
    const/16 v2, 0x10

    :goto_34
    or-int/2addr v1, v2

    goto :goto_6

    :cond_36
    return v1
.end method

.method public static j(Ljava/security/KeyPair;Lt4/l;)Ljava/security/cert/X509Certificate;
    .registers 11

    iget-object v0, p1, Lt4/l;->l:Lj0/c;

    if-nez v0, :cond_b

    new-instance v0, Lj0/c;

    const-string v1, "CN=Android Keystore Key"

    invoke-direct {v0, v1}, Lj0/c;-><init>(Ljava/lang/String;)V

    :cond_b
    move-object v3, v0

    iget-object v0, p1, Lt4/l;->m:Ljava/util/Date;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_17
    move-object v5, v0

    iget-object v0, p1, Lt4/l;->n:Ljava/util/Date;

    if-nez v0, :cond_26

    new-instance v0, Ljava/util/Date;

    const-wide v1, 0xe677d21fd818L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    :cond_26
    move-object v6, v0

    new-instance v2, Lo0/c;

    iget-object v0, p1, Lt4/l;->k:Ljava/math/BigInteger;

    if-nez v0, :cond_2f

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    :cond_2f
    move-object v4, v0

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v8

    move-object v7, v3

    invoke-direct/range {v2 .. v8}, Lo0/c;-><init>(Lj0/c;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lj0/c;Ljava/security/PublicKey;)V

    iget-object p1, p1, Lt4/l;->h:Ljava/util/List;

    invoke-static {p1}, Ls2/b;->i(Ljava/util/List;)I

    move-result p1

    if-eqz p1, :cond_4a

    sget-object v0, Ll0/v;->y:Lm/q;

    new-instance v1, Ll0/f0;

    invoke-direct {v1, p1}, Ll0/f0;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Lb1/b;->d(Lm/q;Ll0/f0;)V

    :cond_4a
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x89e

    if-eq v0, v1, :cond_7a

    const v1, 0x13e20

    if-eq v0, v1, :cond_6f

    const v1, 0x3ebd434

    if-ne v0, v1, :cond_b5

    const-string v0, "ECDSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b5

    goto :goto_82

    :cond_6f
    const-string v0, "RSA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b5

    const-string p1, "SHA256withRSA"

    goto :goto_84

    :cond_7a
    const-string v0, "EC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b5

    :goto_82
    const-string p1, "SHA256withECDSA"

    :goto_84
    new-instance v0, Lw2/a;

    invoke-direct {v0, p1}, Lw2/a;-><init>(Ljava/lang/String;)V

    new-instance p1, Lw2/b;

    new-instance v1, La3/e;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v1, v4, v3}, La3/e;-><init>(BI)V

    invoke-direct {p1, v1}, Lw2/b;-><init>(Le2/b;)V

    iput-object p1, v0, Lw2/a;->b:Lw2/b;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw2/a;->a(Ljava/security/PrivateKey;)Lg1/d;

    move-result-object p0

    new-instance p1, La3/e;

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, La3/e;-><init>(BI)V

    invoke-virtual {v2, p0}, Lb1/b;->e(Lg1/d;)Ln0/e;

    move-result-object p0

    invoke-virtual {p1, p0}, La3/e;->n(Ln0/e;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    const-string p1, "getCertificate(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_b5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p0

    invoke-interface {p0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unsupported key: "

    invoke-static {v0, p0}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static k(I[B)J
    .registers 7

    if-eqz p1, :cond_14

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_5
    if-ge v0, p0, :cond_13

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    return-wide v1

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l([B)[B
    .registers 4

    if-eqz p0, :cond_b

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static m([[B)[[B
    .registers 7

    if-eqz p0, :cond_26

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_e

    aget-object v2, p0, v1

    if-eqz v2, :cond_26

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    array-length v1, p0

    new-array v1, v1, [[B

    move v2, v0

    :goto_12
    array-length v3, p0

    if-ge v2, v3, :cond_25

    aget-object v3, p0, v2

    array-length v3, v3

    new-array v3, v3, [B

    aput-object v3, v1, v2

    aget-object v4, p0, v2

    array-length v5, v4

    invoke-static {v4, v0, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_25
    return-object v1

    :cond_26
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "in has null pointers"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static n([BI[B)V
    .registers 6

    if-eqz p2, :cond_27

    if-ltz p1, :cond_1f

    array-length v0, p2

    add-int/2addr v0, p1

    array-length v1, p0

    if-gt v0, v1, :cond_17

    const/4 v0, 0x0

    :goto_a
    array-length v1, p2

    if-ge v0, v1, :cond_16

    add-int v1, p1, v0

    aget-byte v2, p2, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_16
    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "src length + offset must not be greater than size of destination"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static o(Ld0/t;)Le1/b;
    .registers 26

    move-object/from16 v0, p0

    if-eqz v0, :cond_8f9

    iget-object v1, v0, Ld0/t;->y:Lm/b;

    iget-object v2, v0, Ld0/t;->d:Ll0/b;

    iget-object v3, v2, Ll0/b;->c:Lm/q;

    iget-object v2, v2, Ll0/b;->d:Lm/f;

    sget-object v4, Ly2/e;->a:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_2c

    new-instance v1, Ls3/b;

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v2}, Ly2/f;->h(Ljava/lang/Object;)Ly2/f;

    move-result-object v2

    invoke-static {v2}, Lu3/d;->e(Ly2/f;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ls3/b;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_2c
    sget-object v4, Ly2/e;->b:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_61

    new-instance v1, Lk3/a;

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    array-length v2, v0

    div-int/2addr v2, v5

    new-array v3, v2, [S

    :goto_47
    if-eq v6, v2, :cond_5d

    mul-int/lit8 v4, v6, 0x2

    aget-byte v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v7

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_5d
    invoke-direct {v1, v3}, Lk3/a;-><init>([S)V

    return-object v1

    :cond_61
    sget-object v4, Ld0/r;->f0:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    const/16 v8, 0x40

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-eqz v4, :cond_ad

    invoke-virtual {v0}, Ld0/t;->i()Lm/x0;

    move-result-object v0

    iget-object v2, v0, Lm/r;->c:[B

    array-length v3, v2

    if-ne v3, v8, :cond_77

    goto :goto_8b

    :cond_77
    invoke-static {v2}, Lu3/d;->b([B)Z

    move-result v3

    if-nez v3, :cond_85

    aget-byte v3, v2, v6

    if-ne v3, v9, :cond_85

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v10

    :cond_85
    if-eqz v10, :cond_8b

    invoke-static {v10}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    :cond_8b
    :goto_8b
    iget-object v0, v0, Lm/r;->c:[B

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v9, v2}, Lm4/d;->q([BII)[B

    move-result-object v0

    invoke-static {v0}, Lg3/c;->a(Ljava/lang/Object;)Lg3/c;

    move-result-object v0

    invoke-static {v1}, Lg3/d;->a(Ljava/lang/Object;)Lg3/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_a3
    array-length v1, v0

    invoke-static {v0, v9, v1}, Lm4/d;->q([BII)[B

    move-result-object v0

    invoke-static {v0}, Lg3/c;->a(Ljava/lang/Object;)Lg3/c;

    move-result-object v0

    return-object v0

    :cond_ad
    sget-object v4, Lo/a;->H:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    const-string v11, "unrecognized version"

    const/4 v12, 0x3

    if-nez v4, :cond_83e

    sget-object v4, Lo/a;->s0:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_c2

    goto/16 :goto_83e

    :cond_c2
    sget-object v4, Lu3/d;->L:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_fd

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/l;

    invoke-virtual {v0}, Ld0/t;->i()Lm/x0;

    move-result-object v0

    iget-object v2, v1, Lq3/l;->b:Lq3/k;

    invoke-virtual {v2}, Lq3/k;->b()I

    move-result v2

    mul-int/2addr v2, v9

    iget-object v3, v0, Lm/r;->c:[B

    array-length v4, v3

    if-ne v4, v2, :cond_e1

    goto :goto_f5

    :cond_e1
    invoke-static {v3}, Lu3/d;->b([B)Z

    move-result v2

    if-nez v2, :cond_ef

    aget-byte v2, v3, v6

    if-ne v2, v9, :cond_ef

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v10

    :cond_ef
    if-eqz v10, :cond_f5

    invoke-static {v10}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    :cond_f5
    :goto_f5
    new-instance v2, Lq3/m;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v2, v1, v0}, Lq3/m;-><init>(Lq3/l;[B)V

    return-object v2

    :cond_fd
    sget-object v4, Lo/a;->F0:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_11d

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/a;

    new-instance v2, Ln3/b;

    invoke-direct {v2, v1, v0}, Ln3/b;-><init>(Ln3/a;[B)V

    return-object v2

    :cond_11d
    sget-object v4, Lo/a;->s1:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    const/4 v13, 0x7

    const/4 v14, 0x6

    const/4 v15, 0x5

    if-eqz v4, :cond_1db

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    if-eqz v0, :cond_1ae

    new-instance v10, Ly2/a;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->y()I

    move-result v1

    iput v1, v10, Ly2/a;->c:I

    if-nez v1, :cond_1a8

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v10, Ly2/a;->d:[B

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v10, Ly2/a;->q:[B

    invoke-virtual {v0, v12}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v10, Ly2/a;->x:[B

    invoke-virtual {v0, v9}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v10, Ly2/a;->y:[B

    invoke-virtual {v0, v15}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v10, Ly2/a;->z1:[B

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v1

    if-ne v1, v13, :cond_1ae

    invoke-virtual {v0, v14}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ly2/b;->h(Lm/f;)Ly2/b;

    move-result-object v0

    iput-object v0, v10, Ly2/a;->A1:Ly2/b;

    goto :goto_1ae

    :cond_1a8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ae
    :goto_1ae
    sget-object v0, Lu3/d;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb3/b;

    new-instance v1, Lb3/c;

    iget-object v0, v10, Ly2/a;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v3

    iget-object v0, v10, Ly2/a;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object v0, v10, Ly2/a;->x:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v5

    iget-object v0, v10, Ly2/a;->y:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v6

    iget-object v0, v10, Ly2/a;->z1:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lb3/c;-><init>(Lb3/b;[B[B[B[B[B)V

    return-object v1

    :cond_1db
    sget-object v4, Lo/a;->D1:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_201

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->j:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le3/a;

    new-instance v2, Le3/b;

    invoke-direct {v2, v7, v1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, v2, Le3/b;->q:[B

    return-object v2

    :cond_201
    sget-object v4, Lo/a;->K1:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_227

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a;

    new-instance v2, Lp3/b;

    invoke-direct {v2, v7, v1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, v2, Lp3/b;->q:[B

    return-object v2

    :cond_227
    sget-object v4, Lo/a;->d2:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_247

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->r:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/a;

    new-instance v2, Ll3/b;

    invoke-direct {v2, v1, v0}, Ll3/b;-><init>(Ll3/a;[B)V

    return-object v2

    :cond_247
    sget-object v4, Lz/b;->P0:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    const-string v11, "invalid "

    move/from16 v16, v13

    const-string v13, "inconsistent "

    const-string v8, " private key"

    if-nez v4, :cond_778

    sget-object v4, Lz/b;->Q0:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-nez v4, :cond_778

    sget-object v4, Lz/b;->R0:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_269

    goto/16 :goto_778

    :cond_269
    sget-object v4, Lo/a;->n2:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_2b6

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    sget-object v1, Lu3/d;->v:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lm3/a;

    new-instance v13, Lm3/b;

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v15, v1, Lm/r;->c:[B

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-virtual {v0, v12}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    move-object/from16 v18, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v13 .. v18}, Lm3/b;-><init>(Lm3/a;[B[B[B[B)V

    return-object v13

    :cond_2b6
    sget-object v4, Lo/a;->u2:Lm/q;

    invoke-virtual {v3, v4}, Lm/q;->y(Lm/q;)Z

    move-result v4

    if-eqz v4, :cond_30f

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    sget-object v1, Lu3/d;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lm3/d;

    new-instance v13, Lm3/e;

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v15, v1, Lm/r;->c:[B

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-virtual {v0, v12}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-virtual {v0, v9}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    move-object/from16 v19, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-direct/range {v13 .. v19}, Lm3/e;-><init>(Lm3/d;[B[B[B[B[B)V

    return-object v13

    :cond_30f
    sget-object v4, Lu3/d;->J:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_39e

    invoke-virtual {v0}, Ld0/t;->i()Lm/x0;

    move-result-object v0

    iget-object v2, v0, Lm/r;->c:[B

    array-length v5, v2

    const/16 v9, 0x20

    if-ne v5, v9, :cond_323

    goto :goto_338

    :cond_323
    invoke-static {v2}, Lu3/d;->c([B)Lm/u;

    move-result-object v2

    instance-of v5, v2, Lm/r;

    if-eqz v5, :cond_330

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    goto :goto_338

    :cond_330
    instance-of v5, v2, Lm/x;

    if-eqz v5, :cond_338

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    :cond_338
    :goto_338
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li3/e;

    if-eqz v1, :cond_344

    invoke-static {v2, v1}, Lu3/a;->b(Li3/e;Lm/b;)Li3/g;

    move-result-object v10

    :cond_344
    instance-of v1, v0, Lm/r;

    if-eqz v1, :cond_352

    new-instance v1, Li3/f;

    check-cast v0, Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v1, v2, v0, v10}, Li3/f;-><init>(Li3/e;[BLi3/g;)V

    return-object v1

    :cond_352
    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_38d

    check-cast v0, Lm/x;

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    new-instance v3, Li3/f;

    invoke-direct {v3, v2, v1, v10}, Li3/f;-><init>(Li3/e;[BLi3/g;)V

    invoke-virtual {v3}, Li3/f;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v0}, Lm4/d;->o([B[B)Z

    move-result v0

    if-eqz v0, :cond_37c

    return-object v3

    :cond_37c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Li3/e;->b:Ljava/lang/String;

    invoke-static {v1, v2, v8}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Li3/e;->b:Ljava/lang/String;

    invoke-static {v1, v2, v8}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39e
    sget-object v4, Lo/a;->d1:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-nez v4, :cond_678

    sget-object v4, Lo/a;->e1:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-nez v4, :cond_678

    sget-object v4, Lo/a;->f1:Lm/q;

    invoke-virtual {v3, v4}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_3b8

    goto/16 :goto_678

    :cond_3b8
    sget-object v1, Lo/a;->a1:Lm/q;

    invoke-virtual {v3, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-nez v1, :cond_64b

    sget-object v1, Lo/a;->b1:Lm/q;

    invoke-virtual {v3, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_3ca

    goto/16 :goto_64b

    :cond_3ca
    sget-object v1, Lo/a;->Y0:Lm/q;

    invoke-virtual {v3, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-nez v1, :cond_61e

    sget-object v1, Lo/a;->Z0:Lm/q;

    invoke-virtual {v3, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_3dc

    goto/16 :goto_61e

    :cond_3dc
    sget-object v1, Lo/a;->B2:Lm/q;

    invoke-virtual {v3, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1

    if-eqz v1, :cond_431

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->B:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La3/b;

    iget v2, v1, La3/b;->d:I

    iget v3, v1, La3/b;->d:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-static {v0, v6, v2}, Lm4/d;->q([BII)[B

    move-result-object v2

    add-int/lit8 v4, v3, 0x7

    div-int/lit8 v4, v4, 0x8

    add-int/lit8 v6, v3, 0x7

    div-int/lit8 v6, v6, 0x8

    mul-int/2addr v6, v5

    invoke-static {v0, v4, v6}, Lm4/d;->q([BII)[B

    move-result-object v4

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    mul-int/2addr v3, v5

    array-length v5, v0

    invoke-static {v0, v3, v5}, Lm4/d;->q([BII)[B

    move-result-object v0

    new-instance v3, La3/c;

    invoke-direct {v3, v7, v1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v3, La3/c;->q:[B

    invoke-static {v4}, Lm4/d;->e([B)[B

    move-result-object v1

    iput-object v1, v3, La3/c;->x:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, v3, La3/c;->y:[B

    return-object v3

    :cond_431
    sget-object v1, Lo/a;->F2:Lm/q;

    invoke-virtual {v3, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1

    if-eqz v1, :cond_451

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->D:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/a;

    new-instance v2, Lf3/b;

    invoke-direct {v2, v1, v0}, Lf3/b;-><init>(Lf3/a;[B)V

    return-object v2

    :cond_451
    sget-object v1, Lo/a;->j1:Lm/q;

    invoke-virtual {v3, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1

    if-eqz v1, :cond_471

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->F:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/c;

    new-instance v2, Lo3/d;

    invoke-direct {v2, v1, v0}, Lo3/d;-><init>(Lo3/c;[B)V

    return-object v2

    :cond_471
    sget-object v1, Ly2/e;->c:Lm/q;

    invoke-virtual {v3, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    const-string v4, "ClassNotFoundException processing BDS state: "

    if-eqz v1, :cond_51b

    invoke-static {v2}, Ly2/i;->h(Ljava/lang/Object;)Ly2/i;

    move-result-object v1

    iget-object v2, v1, Ly2/i;->q:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    if-eqz v0, :cond_492

    new-instance v10, Ly2/m;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v10, v0}, Ly2/m;-><init>(Lm/x;)V

    :cond_492
    :try_start_492
    new-instance v0, Lv3/u;

    new-instance v3, Lv3/t;

    iget v1, v1, Ly2/i;->d:I

    invoke-static {v2}, Lu3/d;->a(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lv3/t;-><init>(ILorg/bouncycastle/crypto/v;)V

    invoke-direct {v0, v3}, Lv3/u;-><init>(Lv3/t;)V

    iget v1, v10, Ly2/m;->d:I

    iget-object v3, v10, Ly2/m;->B1:[B

    iput v1, v0, Lv3/u;->i:I

    iget-object v1, v10, Ly2/m;->q:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v1

    iput-object v1, v0, Lv3/u;->g:[B

    iget-object v1, v10, Ly2/m;->x:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v1

    iput-object v1, v0, Lv3/u;->h:[B

    iget-object v1, v10, Ly2/m;->y:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v1

    iput-object v1, v0, Lv3/u;->l:Ljava/lang/Object;

    iget-object v1, v10, Ly2/m;->z1:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v1

    iput-object v1, v0, Lv3/u;->m:Ljava/lang/Object;

    iget v1, v10, Ly2/m;->c:I

    if-eqz v1, :cond_4e3

    iget v1, v10, Ly2/m;->A1:I

    iput v1, v0, Lv3/u;->j:I

    goto :goto_4e3

    :catch_4e1
    move-exception v0

    goto :goto_505

    :cond_4e3
    :goto_4e3
    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v1

    if-eqz v1, :cond_4ff

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v1

    const-class v3, Lv3/a;

    invoke-static {v1, v3}, Ls2/b;->r([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lv3/a;

    invoke-direct {v3, v1, v2}, Lv3/a;-><init>(Lv3/a;Lm/q;)V

    iput-object v3, v0, Lv3/u;->n:Ljava/lang/Object;

    :cond_4ff
    new-instance v1, Lv3/v;

    invoke-direct {v1, v0}, Lv3/v;-><init>(Lv3/u;)V
    :try_end_504
    .catch Ljava/lang/ClassNotFoundException; {:try_start_492 .. :try_end_504} :catch_4e1

    return-object v1

    :goto_505
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_51b
    sget-object v1, Ly2/e;->d:Lm/q;

    invoke-virtual {v3, v1}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_5d6

    invoke-static {v2}, Ly2/j;->h(Ljava/lang/Object;)Ly2/j;

    move-result-object v1

    iget-object v2, v1, Ly2/j;->x:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    :try_start_52b
    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    if-eqz v0, :cond_53a

    new-instance v10, Ly2/k;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v10, v0}, Ly2/k;-><init>(Lm/x;)V

    :cond_53a
    new-instance v0, Lv3/p;

    new-instance v3, Lv3/o;

    iget v5, v1, Ly2/j;->d:I

    iget v1, v1, Ly2/j;->q:I

    invoke-static {v2}, Lu3/d;->a(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v6

    invoke-direct {v3, v5, v1, v6}, Lv3/o;-><init>(IILorg/bouncycastle/crypto/v;)V

    invoke-direct {v0, v3}, Lv3/p;-><init>(Lv3/o;)V

    iget-wide v6, v10, Ly2/k;->d:J

    iget-object v1, v10, Ly2/k;->B1:[B

    iput-wide v6, v0, Lv3/p;->b:J

    iget-object v3, v10, Ly2/k;->x:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-static {v3}, Ls2/b;->l([B)[B

    move-result-object v3

    iput-object v3, v0, Lv3/p;->d:[B

    iget-object v3, v10, Ly2/k;->y:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-static {v3}, Ls2/b;->l([B)[B

    move-result-object v3

    iput-object v3, v0, Lv3/p;->e:[B

    iget-object v3, v10, Ly2/k;->z1:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-static {v3}, Ls2/b;->l([B)[B

    move-result-object v3

    iput-object v3, v0, Lv3/p;->f:[B

    iget-object v3, v10, Ly2/k;->A1:[B

    invoke-static {v3}, Lm4/d;->e([B)[B

    move-result-object v3

    invoke-static {v3}, Ls2/b;->l([B)[B

    move-result-object v3

    iput-object v3, v0, Lv3/p;->g:[B

    iget v3, v10, Ly2/k;->c:I

    if-eqz v3, :cond_58d

    iget-wide v6, v10, Ly2/k;->q:J

    iput-wide v6, v0, Lv3/p;->c:J

    goto :goto_58d

    :catch_58b
    move-exception v0

    goto :goto_5c0

    :cond_58d
    :goto_58d
    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v3

    if-eqz v3, :cond_5ba

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    const-class v3, Lv3/b;

    invoke-static {v1, v3}, Ls2/b;->r([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv3/b;

    invoke-virtual {v1, v2}, Lv3/b;->a(Lm/q;)Lv3/b;

    move-result-object v1

    iget-wide v2, v1, Lv3/b;->d:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_5b8

    new-instance v2, Lv3/b;

    const-wide/16 v6, 0x1

    shl-long v8, v6, v5

    sub-long/2addr v8, v6

    invoke-direct {v2, v1, v8, v9}, Lv3/b;-><init>(Lv3/b;J)V

    iput-object v2, v0, Lv3/p;->h:Lv3/b;

    goto :goto_5ba

    :cond_5b8
    iput-object v1, v0, Lv3/p;->h:Lv3/b;

    :cond_5ba
    :goto_5ba
    new-instance v1, Lv3/q;

    invoke-direct {v1, v0}, Lv3/q;-><init>(Lv3/p;)V
    :try_end_5bf
    .catch Ljava/lang/ClassNotFoundException; {:try_start_52b .. :try_end_5bf} :catch_58b

    return-object v1

    :goto_5c0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d6
    sget-object v1, Lo/a;->J2:Lm/q;

    invoke-virtual {v3, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1

    if-eqz v1, :cond_5f6

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->N:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/a;

    new-instance v2, Lh3/b;

    invoke-direct {v2, v1, v0}, Lh3/b;-><init>(Lh3/a;[B)V

    return-object v2

    :cond_5f6
    sget-object v1, Lo/a;->O2:Lm/q;

    invoke-virtual {v3, v1}, Lm/q;->y(Lm/q;)Z

    move-result v1

    if-eqz v1, :cond_616

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    sget-object v1, Lu3/d;->P:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/a;

    new-instance v2, Lr3/b;

    invoke-direct {v2, v1, v0}, Lr3/b;-><init>(Lr3/a;[B)V

    return-object v2

    :cond_616
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in private key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61e
    :goto_61e
    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Ly2/c;->h(Lm/u;)Ly2/c;

    move-result-object v0

    sget-object v1, Lu3/d;->t:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ld3/a;

    new-instance v2, Ld3/b;

    iget-object v1, v0, Ly2/c;->d:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object v1, v0, Ly2/c;->q:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v5

    iget-object v1, v0, Ly2/c;->x:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v6

    iget-object v0, v0, Ly2/c;->y:Ly2/d;

    iget-object v7, v0, Ly2/d;->c:[B

    invoke-direct/range {v2 .. v7}, Ld3/b;-><init>(Ld3/a;[B[B[B[B)V

    return-object v2

    :cond_64b
    :goto_64b
    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    invoke-static {v0}, Ly2/c;->h(Lm/u;)Ly2/c;

    move-result-object v0

    sget-object v1, Lu3/d;->t:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ld3/a;

    new-instance v2, Ld3/b;

    iget-object v1, v0, Ly2/c;->d:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v4

    iget-object v1, v0, Ly2/c;->q:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v5

    iget-object v1, v0, Ly2/c;->x:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v6

    iget-object v0, v0, Ly2/c;->y:Ly2/d;

    iget-object v7, v0, Ly2/d;->c:[B

    invoke-direct/range {v2 .. v7}, Ld3/b;-><init>(Ld3/a;[B[B[B[B)V

    return-object v2

    :cond_678
    :goto_678
    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    sget-object v2, Lu3/d;->z:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc3/a;

    instance-of v3, v0, Lm/x;

    if-eqz v3, :cond_754

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v3

    invoke-virtual {v3}, Lm/l;->y()I

    move-result v3

    if-nez v3, :cond_748

    if-eqz v1, :cond_6f6

    invoke-static {v2, v1}, Lu3/a;->a(Lc3/a;Lm/b;)Lc3/c;

    move-result-object v1

    new-instance v16, Lc3/b;

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v3

    invoke-virtual {v3}, Lm/b;->u()[B

    move-result-object v18

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v3

    invoke-virtual {v3}, Lm/b;->u()[B

    move-result-object v19

    invoke-virtual {v0, v12}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v3

    invoke-virtual {v3}, Lm/b;->u()[B

    move-result-object v20

    invoke-virtual {v0, v9}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v3

    invoke-virtual {v3}, Lm/b;->u()[B

    move-result-object v21

    invoke-virtual {v0, v15}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v3

    invoke-virtual {v3}, Lm/b;->u()[B

    move-result-object v22

    invoke-virtual {v0, v14}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->u()[B

    move-result-object v23

    iget-object v0, v1, Lc3/c;->x:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v24

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v24}, Lc3/b;-><init>(Lc3/a;[B[B[B[B[B[B[B)V

    return-object v16

    :cond_6f6
    move-object/from16 v17, v2

    new-instance v16, Lc3/b;

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v18

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v19

    invoke-virtual {v0, v12}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v20

    invoke-virtual {v0, v9}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v21

    invoke-virtual {v0, v15}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v1

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v22

    invoke-virtual {v0, v14}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v0

    invoke-virtual {v0}, Lm/b;->u()[B

    move-result-object v23

    const/16 v24, 0x0

    invoke-direct/range {v16 .. v24}, Lc3/b;-><init>(Lc3/a;[B[B[B[B[B[B[B)V

    return-object v16

    :cond_748
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown private key version: "

    invoke-static {v3, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_754
    instance-of v3, v0, Lm/x0;

    if-eqz v3, :cond_770

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    if-eqz v1, :cond_76a

    invoke-static {v2, v1}, Lu3/a;->a(Lc3/a;Lm/b;)Lc3/c;

    move-result-object v1

    new-instance v3, Lc3/b;

    invoke-direct {v3, v2, v0, v1}, Lc3/b;-><init>(Lc3/a;[BLc3/c;)V

    return-object v3

    :cond_76a
    new-instance v1, Lc3/b;

    invoke-direct {v1, v2, v0, v10}, Lc3/b;-><init>(Lc3/a;[BLc3/c;)V

    return-object v1

    :cond_770
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_778
    :goto_778
    invoke-virtual {v0}, Ld0/t;->i()Lm/x0;

    move-result-object v0

    iget-object v2, v0, Lm/r;->c:[B

    array-length v4, v2

    const/16 v5, 0x40

    if-ne v4, v5, :cond_784

    goto :goto_799

    :cond_784
    invoke-static {v2}, Lu3/d;->c([B)Lm/u;

    move-result-object v2

    instance-of v4, v2, Lm/r;

    if-eqz v4, :cond_791

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    goto :goto_799

    :cond_791
    instance-of v4, v2, Lm/x;

    if-eqz v4, :cond_799

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    :cond_799
    :goto_799
    sget-object v2, Lu3/d;->H:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj3/f;

    if-eqz v1, :cond_7e4

    :try_start_7a3
    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v3

    invoke-static {v3}, Lm/u;->o([B)Lm/u;

    move-result-object v3

    instance-of v4, v3, Lm/x;

    if-eqz v4, :cond_7ce

    invoke-static {v3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v3

    new-instance v4, Lj3/h;

    invoke-virtual {v3, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v5

    iget-object v5, v5, Lm/r;->c:[B

    invoke-virtual {v3, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    invoke-direct {v4, v2, v5, v3}, Lj3/h;-><init>(Lj3/f;[B[B)V

    :goto_7cc
    move-object v10, v4

    goto :goto_7e4

    :cond_7ce
    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    new-instance v4, Lj3/h;

    invoke-direct {v4, v2, v3}, Lj3/h;-><init>(Lj3/f;[B)V
    :try_end_7d9
    .catch Ljava/lang/Exception; {:try_start_7a3 .. :try_end_7d9} :catch_7da

    goto :goto_7cc

    :catch_7da
    new-instance v3, Lj3/h;

    invoke-virtual {v1}, Lm/b;->u()[B

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lj3/h;-><init>(Lj3/f;[B)V

    move-object v10, v3

    :cond_7e4
    :goto_7e4
    instance-of v1, v0, Lm/r;

    if-eqz v1, :cond_7f2

    new-instance v1, Lj3/g;

    check-cast v0, Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v1, v2, v0, v10}, Lj3/g;-><init>(Lj3/f;[BLj3/h;)V

    return-object v1

    :cond_7f2
    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_82d

    check-cast v0, Lm/x;

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    new-instance v3, Lj3/g;

    invoke-direct {v3, v2, v1, v10}, Lj3/g;-><init>(Lj3/f;[BLj3/h;)V

    invoke-virtual {v3}, Lj3/g;->getEncoded()[B

    move-result-object v1

    invoke-static {v1, v0}, Lm4/d;->o([B[B)Z

    move-result v0

    if-eqz v0, :cond_81c

    return-object v3

    :cond_81c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lj3/f;->c:Ljava/lang/String;

    invoke-static {v1, v2, v8}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_82d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lj3/f;->c:Ljava/lang/String;

    invoke-static {v1, v2, v8}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_83e
    :goto_83e
    sget-object v1, Lu3/d;->p:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lt3/a;

    invoke-virtual {v0}, Ld0/t;->j()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_8ed

    new-instance v1, Ly2/g;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v2

    invoke-virtual {v2}, Lm/l;->y()I

    move-result v2

    iput v2, v1, Ly2/g;->c:I

    if-nez v2, :cond_8e7

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iput-object v2, v1, Ly2/g;->d:[B

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iput-object v2, v1, Ly2/g;->q:[B

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v2

    if-ne v2, v9, :cond_8c7

    invoke-virtual {v0, v12}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    instance-of v2, v0, Ly2/h;

    if-eqz v2, :cond_89a

    move-object v10, v0

    check-cast v10, Ly2/h;

    goto :goto_8c5

    :cond_89a
    if-eqz v0, :cond_8c5

    new-instance v10, Ly2/h;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v2

    iput-object v2, v10, Ly2/h;->c:[B

    invoke-virtual {v0, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iput-object v0, v10, Ly2/h;->d:[B

    :cond_8c5
    :goto_8c5
    iput-object v10, v1, Ly2/g;->x:Ly2/h;

    :cond_8c7
    iget-object v0, v1, Ly2/g;->x:Ly2/h;

    new-instance v13, Lt3/b;

    iget-object v2, v1, Ly2/g;->d:[B

    invoke-static {v2}, Lm4/d;->e([B)[B

    move-result-object v15

    iget-object v1, v1, Ly2/g;->q:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v16

    iget-object v1, v0, Ly2/h;->c:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v17

    iget-object v0, v0, Ly2/h;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v18

    invoke-direct/range {v13 .. v18}, Lt3/b;-><init>(Lt3/a;[B[B[B[B)V

    return-object v13

    :cond_8e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8ed
    new-instance v1, Lt3/b;

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v1, v14, v0}, Lt3/b;-><init>(Lt3/a;[B)V

    return-object v1

    :cond_8f9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static p(Le1/b;)Ll0/p0;
    .registers 8

    instance-of v0, p0, Ls3/c;

    if-eqz v0, :cond_24

    check-cast p0, Ls3/c;

    new-instance v0, Ll0/b;

    sget-object v1, Ly2/e;->a:Lm/q;

    new-instance v2, Ly2/f;

    iget-object v3, p0, Ls3/a;->d:Ljava/lang/String;

    invoke-static {v3}, Lu3/d;->d(Ljava/lang/String;)Ll0/b;

    move-result-object v3

    invoke-direct {v2, v3}, Ly2/f;-><init>(Ll0/b;)V

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v1, Ll0/p0;

    iget-object p0, p0, Ls3/c;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :cond_24
    instance-of v0, p0, Lk3/b;

    if-eqz v0, :cond_3d

    check-cast p0, Lk3/b;

    new-instance v0, Ll0/b;

    sget-object v1, Ly2/e;->b:Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ll0/p0;

    iget-object p0, p0, Lk3/b;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :cond_3d
    instance-of v0, p0, Lg3/k;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7d

    check-cast p0, Lg3/k;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    int-to-byte v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v1

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_5a
    invoke-virtual {p0}, Lg3/k;->b()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_61} :catch_72

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->f0:Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ll0/p0;

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :catch_72
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7d
    instance-of v0, p0, Lg3/d;

    if-eqz v0, :cond_c5

    check-cast p0, Lg3/d;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v1, p0, Lg3/d;->d:I

    ushr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p0, p0, Lg3/d;->q:Lg3/k;

    :try_start_a2
    invoke-virtual {p0}, Lg3/k;->b()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a9} :catch_ba

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Ll0/b;

    sget-object v1, Ld0/r;->f0:Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ll0/p0;

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :catch_ba
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c5
    instance-of v0, p0, Lq3/n;

    if-eqz v0, :cond_e6

    check-cast p0, Lq3/n;

    invoke-virtual {p0}, Lq3/n;->getEncoded()[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lq3/l;

    sget-object v2, Lu3/d;->K:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_e6
    instance-of v0, p0, Lt3/c;

    if-eqz v0, :cond_10d

    check-cast p0, Lt3/c;

    iget-object v0, p0, Lt3/c;->q:Ln4/b;

    iget-object v1, v0, Ln4/b;->b:[B

    iget-object v0, v0, Ln4/b;->c:[B

    invoke-static {v1, v0}, Lm4/d;->j([B[B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lt3/a;

    sget-object v2, Lu3/d;->o:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_10d
    instance-of v0, p0, Lb3/d;

    if-eqz v0, :cond_130

    check-cast p0, Lb3/d;

    iget-object v0, p0, Lb3/d;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lb3/b;

    sget-object v2, Lu3/d;->m:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_130
    instance-of v0, p0, Lv3/w;

    if-eqz v0, :cond_17f

    check-cast p0, Lv3/w;

    iget-object v0, p0, Lv3/w;->z1:[B

    invoke-static {v0}, Ls2/b;->l([B)[B

    move-result-object v0

    iget-object v1, p0, Lv3/w;->y:[B

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v1

    invoke-virtual {p0}, Lv3/w;->getEncoded()[B

    move-result-object v2

    array-length v3, v2

    array-length v4, v0

    array-length v5, v1

    add-int/2addr v4, v5

    if-le v3, v4, :cond_15e

    new-instance p0, Ll0/b;

    sget-object v0, Lr1/a;->a:Lm/q;

    invoke-direct {p0, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ll0/p0;

    new-instance v1, Lm/x0;

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object v0

    :cond_15e
    new-instance v2, Ll0/b;

    sget-object v3, Ly2/e;->c:Lm/q;

    new-instance v4, Ly2/i;

    iget-object v5, p0, Lv3/w;->q:Lv3/t;

    iget v5, v5, Lv3/t;->b:I

    iget-object p0, p0, Ls3/a;->d:Ljava/lang/String;

    invoke-static {p0}, Lu3/d;->f(Ljava/lang/String;)Ll0/b;

    move-result-object p0

    invoke-direct {v4, v5, p0}, Ly2/i;-><init>(ILl0/b;)V

    invoke-direct {v2, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance p0, Ll0/p0;

    new-instance v3, Ly2/n;

    invoke-direct {v3, v0, v1}, Ly2/n;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_17f
    instance-of v0, p0, Lv3/r;

    if-eqz v0, :cond_1d8

    check-cast p0, Lv3/r;

    iget-object v0, p0, Lv3/r;->y:[B

    iget-object v1, p0, Lv3/r;->z1:[B

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v2

    invoke-static {v0}, Ls2/b;->l([B)[B

    move-result-object v3

    invoke-virtual {p0}, Lv3/r;->a()[B

    move-result-object v4

    array-length v5, v4

    array-length v2, v2

    array-length v3, v3

    add-int/2addr v2, v3

    if-le v5, v2, :cond_1ad

    new-instance p0, Ll0/b;

    sget-object v0, Lr1/a;->b:Lm/q;

    invoke-direct {p0, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ll0/p0;

    new-instance v1, Lm/x0;

    invoke-direct {v1, v4}, Lm/r;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object v0

    :cond_1ad
    new-instance v2, Ll0/b;

    sget-object v3, Ly2/e;->d:Lm/q;

    new-instance v4, Ly2/j;

    iget-object v5, p0, Lv3/r;->q:Lv3/o;

    iget v6, v5, Lv3/o;->c:I

    iget v5, v5, Lv3/o;->d:I

    iget-object p0, p0, Ls3/a;->d:Ljava/lang/String;

    invoke-static {p0}, Lu3/d;->f(Ljava/lang/String;)Ll0/b;

    move-result-object p0

    invoke-direct {v4, v6, v5, p0}, Ly2/j;-><init>(IILl0/b;)V

    invoke-direct {v2, v3, v4}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance p0, Ll0/p0;

    new-instance v3, Ly2/l;

    invoke-static {v1}, Ls2/b;->l([B)[B

    move-result-object v1

    invoke-static {v0}, Ls2/b;->l([B)[B

    move-result-object v0

    invoke-direct {v3, v1, v0}, Ly2/l;-><init>([B[B)V

    invoke-direct {p0, v2, v3}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_1d8
    instance-of v0, p0, Le3/c;

    if-eqz v0, :cond_200

    check-cast p0, Le3/c;

    iget-object v0, p0, Le3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le3/a;

    sget-object v2, Lu3/d;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_200
    instance-of v0, p0, Lp3/c;

    if-eqz v0, :cond_230

    check-cast p0, Lp3/c;

    iget-object v0, p0, Lp3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lp3/a;

    sget-object v2, Lu3/d;->k:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    new-instance v2, Lm/a1;

    new-instance v3, Lm/x0;

    invoke-direct {v3, v0}, Lm/r;-><init>([B)V

    invoke-direct {v2, v3}, Lm/x;-><init>(Lm/f;)V

    const/4 v0, -0x1

    iput v0, v2, Lm/a1;->q:I

    invoke-direct {p0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_230
    instance-of v0, p0, Ln3/c;

    if-eqz v0, :cond_258

    check-cast p0, Ln3/c;

    iget-object v0, p0, Ln3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Ln3/a;

    sget-object v2, Lu3/d;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_258
    instance-of v0, p0, Ll3/c;

    if-eqz v0, :cond_27b

    check-cast p0, Ll3/c;

    iget-object v0, p0, Ll3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Ll3/a;

    sget-object v2, Lu3/d;->q:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_27b
    instance-of v0, p0, Ld3/c;

    if-eqz v0, :cond_2ab

    check-cast p0, Ld3/c;

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Ld3/a;

    iget-object p0, p0, Ld3/c;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    new-instance v3, Ll0/b;

    sget-object v4, Lu3/d;->s:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    array-length v4, p0

    add-int/2addr v4, v2

    new-array v4, v4, [B

    iget v0, v0, Ld3/a;->d:I

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    array-length v0, p0

    invoke-static {p0, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v3, v4}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_2ab
    instance-of v0, p0, Lj3/h;

    if-eqz v0, :cond_2d0

    check-cast p0, Lj3/h;

    new-instance v0, Ll0/b;

    iget-object v1, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v1, Lj3/f;

    sget-object v2, Lu3/d;->G:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ll0/p0;

    iget-object v2, p0, Lj3/h;->q:[B

    iget-object p0, p0, Lj3/h;->x:[B

    invoke-static {v2, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :cond_2d0
    instance-of v0, p0, Lm3/c;

    if-eqz v0, :cond_303

    check-cast p0, Lm3/c;

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lm3/a;

    iget v2, v0, Lm3/a;->c:I

    new-array v2, v2, [B

    iget-object v3, p0, Lm3/c;->q:[B

    array-length v4, v3

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lm3/c;->x:[B

    array-length v3, v3

    array-length v4, p0

    invoke-static {p0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Ll0/b;

    sget-object v1, Lu3/d;->u:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {p0, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ll0/p0;

    new-instance v1, Lm/x0;

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-direct {v0, p0, v1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object v0

    :cond_303
    instance-of v0, p0, Lm3/f;

    if-eqz v0, :cond_32b

    check-cast p0, Lm3/f;

    iget-object v0, p0, Lm3/f;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lm3/d;

    sget-object v2, Lu3/d;->w:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_32b
    instance-of v0, p0, Lc3/c;

    if-eqz v0, :cond_350

    check-cast p0, Lc3/c;

    new-instance v0, Ll0/b;

    iget-object v1, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v1, Lc3/a;

    sget-object v2, Lu3/d;->y:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ll0/p0;

    iget-object v2, p0, Lc3/c;->q:[B

    iget-object p0, p0, Lc3/c;->x:[B

    invoke-static {v2, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :cond_350
    instance-of v0, p0, Li3/g;

    if-eqz v0, :cond_371

    check-cast p0, Li3/g;

    new-instance v0, Ll0/b;

    iget-object v1, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v1, Li3/e;

    sget-object v2, Lu3/d;->I:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    new-instance v1, Ll0/p0;

    invoke-virtual {p0}, Li3/g;->getEncoded()[B

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object v1

    :cond_371
    instance-of v0, p0, La3/d;

    if-eqz v0, :cond_394

    check-cast p0, La3/d;

    iget-object v0, p0, La3/d;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, La3/b;

    sget-object v2, Lu3/d;->A:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_394
    instance-of v0, p0, Lf3/c;

    if-eqz v0, :cond_3b7

    check-cast p0, Lf3/c;

    iget-object v0, p0, Lf3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lf3/a;

    sget-object v2, Lu3/d;->C:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    invoke-direct {p0, v1, v0}, Ll0/p0;-><init>(Ll0/b;[B)V

    return-object p0

    :cond_3b7
    instance-of v0, p0, Lo3/e;

    if-eqz v0, :cond_418

    check-cast p0, Lo3/e;

    iget-object v0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast v0, Lo3/c;

    iget v3, v0, Lo3/c;->A1:I

    if-eq v3, v2, :cond_3fa

    iget-object v3, p0, Lo3/e;->x:[B

    iget-object v4, p0, Lo3/e;->y:[[[S

    invoke-static {v4, v1}, Lt4/d;->b0([[[SZ)[B

    move-result-object v4

    invoke-static {v3, v4}, Lm4/d;->j([B[B)[B

    move-result-object v3

    iget-object v4, p0, Lo3/e;->z1:[[[S

    invoke-static {v4, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object v4

    invoke-static {v3, v4}, Lm4/d;->j([B[B)[B

    move-result-object v3

    iget-object v4, p0, Lo3/e;->A1:[[[S

    invoke-static {v4, v1}, Lt4/d;->b0([[[SZ)[B

    move-result-object v1

    invoke-static {v3, v1}, Lm4/d;->j([B[B)[B

    move-result-object v1

    iget-object v3, p0, Lo3/e;->B1:[[[S

    invoke-static {v3, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object v3

    invoke-static {v1, v3}, Lm4/d;->j([B[B)[B

    move-result-object v1

    iget-object p0, p0, Lo3/e;->C1:[[[S

    invoke-static {p0, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object p0

    invoke-static {v1, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    goto :goto_400

    :cond_3fa
    iget-object p0, p0, Lo3/e;->q:[[[S

    invoke-static {p0, v2}, Lt4/d;->b0([[[SZ)[B

    move-result-object p0

    :goto_400
    new-instance v1, Ll0/b;

    sget-object v2, Lu3/d;->E:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/q;

    invoke-direct {v1, v0}, Ll0/b;-><init>(Lm/q;)V

    new-instance v0, Ll0/p0;

    new-instance v2, Lm/x0;

    invoke-direct {v2, p0}, Lm/r;-><init>([B)V

    invoke-direct {v0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object v0

    :cond_418
    instance-of v0, p0, Lh3/c;

    if-eqz v0, :cond_440

    check-cast p0, Lh3/c;

    iget-object v0, p0, Lh3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lh3/a;

    sget-object v2, Lu3/d;->M:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_440
    instance-of v0, p0, Lr3/c;

    if-eqz v0, :cond_466

    check-cast p0, Lr3/c;

    iget-object v0, p0, Lr3/c;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    new-instance v1, Ll0/b;

    iget-object p0, p0, Lr3/c;->q:Lr3/a;

    sget-object v2, Lu3/d;->O:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    invoke-direct {v1, p0}, Ll0/b;-><init>(Lm/q;)V

    new-instance p0, Ll0/p0;

    new-instance v2, Lm/x0;

    invoke-direct {v2, v0}, Lm/r;-><init>([B)V

    invoke-direct {p0, v1, v2}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V

    return-object p0

    :cond_466
    new-instance p0, Ljava/io/IOException;

    const-string v0, "key parameters not recognized"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(II[I)I
    .registers 5

    :goto_0
    const/4 v0, -0x1

    if-ge p1, p0, :cond_10

    aget v1, p2, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, p2, p1

    if-eq v1, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_10
    return v0
.end method

.method public static r([BLjava/lang/Class;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p0, Lv3/x;

    invoke-direct {p0, p1, v0}, Lv3/x;-><init>(Ljava/lang/Class;Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->available()I

    move-result p0

    if-nez p0, :cond_23

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected class found in ObjectInputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unexpected data found at end of ObjectInputStream"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(I[I[I)Z
    .registers 6

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_2
    if-ltz p0, :cond_f

    aget v1, p1, p0

    aget v2, p2, p0

    if-eq v1, v2, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_f
    return v0
.end method

.method public static t([BII)[B
    .registers 6

    if-eqz p0, :cond_32

    if-ltz p1, :cond_2a

    if-ltz p2, :cond_22

    add-int v0, p1, p2

    array-length v1, p0

    if-gt v0, v1, :cond_1a

    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p2, :cond_19

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    return-object v0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset + length must not be greater then size of source array"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "offset hast to be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "src == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(ILjava/math/BigInteger;)[I
    .registers 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_25

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_25

    add-int/lit8 p0, p0, 0x1f

    shr-int/lit8 p0, p0, 0x5

    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p0, :cond_24

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v0, v1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_24
    return-object v0

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static v(ILjava/math/BigInteger;)[J
    .registers 6

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_25

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, p0, :cond_25

    add-int/lit8 p0, p0, 0x3f

    shr-int/lit8 p0, p0, 0x6

    new-array v0, p0, [J

    const/4 v1, 0x0

    :goto_13
    if-ge v1, p0, :cond_24

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_24
    return-object v0

    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static w(ILjava/lang/String;Ljava/lang/String;Lt4/l;I)Landroid/util/Pair;
    .registers 9

    const-string v0, "\'."

    const-string v1, "Successfully generated new certificate chain for alias: \'"

    const-string v2, "Generating new attested key pair for alias: \'"

    const-string v3, "alias"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_b
    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' (UID: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-static {p3}, Ls2/b;->y(Lt4/l;)Ljava/security/KeyPair;

    move-result-object v2

    if-eqz v2, :cond_57

    invoke-static {p0, v2, p2, p3, p4}, Ls2/b;->x(ILjava/security/KeyPair;Ljava/lang/String;Lt4/l;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4f

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :catch_4d
    move-exception p0

    goto :goto_5f

    :cond_4f
    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Failed to generate certificate chain for new key pair."

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_57
    new-instance p0, Ljava/lang/Exception;

    const-string p2, "Failed to generate underlying software key pair."

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catch Landroid/os/ServiceSpecificException; {:try_start_b .. :try_end_5f} :catch_77
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5f} :catch_4d

    :goto_5f
    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to generate attested key pair for alias \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :catch_77
    move-exception p0

    throw p0
.end method

.method public static x(ILjava/security/KeyPair;Ljava/lang/String;Lt4/l;I)Ljava/util/List;
    .registers 16

    const-string v0, "Designated attest key \'"

    const-string v1, "params"

    invoke-static {v1, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p3, Lt4/l;->o:[B

    if-eqz v1, :cond_20

    array-length v2, v1

    const/16 v3, 0x80

    if-gt v2, v3, :cond_11

    goto :goto_20

    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length p1, v1

    const-string p2, "Attestation challenge exceeds length limit ("

    const-string p3, " > 128)"

    invoke-static {p2, p3, p1}, Lb/b;->g(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    :goto_20
    const/4 v2, 0x0

    if-nez v1, :cond_34

    if-nez p2, :cond_34

    :try_start_25
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {p1, p3}, Ls2/b;->j(Ljava/security/KeyPair;Lt4/l;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_30
    move-exception v0

    move-object p0, v0

    goto/16 :goto_b1

    :cond_34
    iget v1, p3, Lt4/l;->b:I

    invoke-static {p0, v1}, Ls2/b;->C(II)Ly4/d;

    move-result-object v1

    if-eqz p2, :cond_44

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v3, v4, :cond_44

    const/4 v3, 0x1

    goto :goto_45

    :cond_44
    const/4 v3, 0x0

    :goto_45
    if-eqz v3, :cond_4c

    invoke-static {p0, p2}, Ls2/b;->z(ILjava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_4d

    :cond_4c
    move-object v4, v2

    :goto_4d
    if-eqz v3, :cond_70

    if-nez v4, :cond_70

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' not found for uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; refusing to emit a keybox-rooted leaf that would break the caller\'s chain."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_70
    if-eqz v4, :cond_7c

    iget-object p2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    new-instance v3, La/c;

    invoke-direct {v3, p2, v0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_87

    :cond_7c
    iget-object p2, v1, Ly4/d;->a:Ljava/security/KeyPair;

    invoke-static {v1}, Ls2/b;->B(Ly4/d;)Lj0/c;

    move-result-object v0

    new-instance v3, La/c;

    invoke-direct {v3, p2, v0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_87
    iget-object p2, v3, La/c;->c:Ljava/lang/Object;

    move-object v6, p2

    check-cast v6, Ljava/security/KeyPair;

    iget-object p2, v3, La/c;->d:Ljava/lang/Object;

    move-object v7, p2

    check-cast v7, Lj0/c;

    invoke-static {v6}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v7}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move v9, p0

    move-object v5, p1

    move-object v8, p3

    move v10, p4

    invoke-static/range {v5 .. v10}, Ls2/b;->h(Ljava/security/KeyPair;Ljava/security/KeyPair;Lj0/c;Lt4/l;II)Ljava/security/cert/X509Certificate;

    move-result-object p0

    if-eqz v4, :cond_a6

    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_a6
    invoke-static {p0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iget-object p1, v1, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lb/i;->Z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_b0
    .catch Landroid/os/ServiceSpecificException; {:try_start_25 .. :try_end_b0} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_b0} :catch_30

    return-object p0

    :goto_b1
    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p1, "Failed to generate certificate chain."

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :catch_b9
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public static y(Lt4/l;)Ljava/security/KeyPair;
    .registers 6

    const-string v0, "Unsupported algorithm: "

    const-string v1, "Generating "

    const-string v2, "params"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget v2, p0, Lt4/l;->a:I

    iget v3, p0, Lt4/l;->b:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    const/4 v4, 0x3

    if-ne v3, v4, :cond_22

    :try_start_13
    const-string v0, "EC"

    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    iget-object p0, p0, Lt4/l;->d:Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance p0, La/c;

    invoke-direct {p0, v0, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_46

    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    const-string v0, "RSA"

    new-instance v3, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget-object p0, p0, Lt4/l;->j:Ljava/math/BigInteger;

    if-nez p0, :cond_3e

    sget-object p0, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    :cond_3e
    invoke-direct {v3, v2, p0}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-instance p0, La/c;

    invoke-direct {p0, v0, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_46
    iget-object v0, p0, La/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, La/c;->d:Ljava/lang/Object;

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key pair with size "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p0
    :try_end_74
    .catchall {:try_start_13 .. :try_end_74} :catchall_75

    goto :goto_7c

    :catchall_75
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_7c
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_89

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "Failed to generate software key pair."

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_89
    instance-of v0, p0, La/d;

    if-eqz v0, :cond_8e

    const/4 p0, 0x0

    :cond_8e
    check-cast p0, Ljava/security/KeyPair;

    return-object p0
.end method

.method public static z(ILjava/lang/String;)Landroid/util/Pair;
    .registers 4

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Looking for attestation key: uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v0, p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    const/4 v0, 0x0

    if-eqz p0, :cond_65

    sget-object p1, Ly4/c;->a:La/f;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object p1

    if-eqz p1, :cond_3e

    iget-object p1, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-static {p1}, Ly4/c;->b(Landroid/system/keystore2/KeyMetadata;)[Ljava/security/cert/Certificate;

    move-result-object p1

    goto :goto_3f

    :cond_3e
    move-object p1, v0

    :goto_3f
    if-eqz p1, :cond_64

    array-length v1, p1

    if-nez v1, :cond_45

    goto :goto_64

    :cond_45
    new-instance v0, Ln0/e;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ln0/e;-><init>([B)V

    iget-object p1, v0, Ln0/e;->c:Ll0/m;

    iget-object p1, p1, Ll0/m;->d:Ll0/u0;

    iget-object p1, p1, Ll0/u0;->A1:Lj0/c;

    invoke-static {p1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyPair()Ljava/security/KeyPair;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_64
    :goto_64
    return-object v0

    :cond_65
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Attestation key \'"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found in generated key cache."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
