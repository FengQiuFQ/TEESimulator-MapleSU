.class public Lb1/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/p;
.implements Lk2/u;


# instance fields
.field public final synthetic g:I

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lb1/b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/g0;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    iput-object v0, p0, Lb1/b;->h:Ljava/lang/Object;

    new-instance v0, Ls0/g0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/g0;-><init>(I)V

    iput-object v0, p0, Lb1/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lb1/b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lj0/c;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lj0/c;Ll0/p0;)V
    .registers 9

    const/16 v0, 0xa

    iput v0, p0, Lb1/b;->g:I

    new-instance v0, Ll0/x0;

    invoke-direct {v0, p3}, Ll0/x0;-><init>(Ljava/util/Date;)V

    new-instance p3, Ll0/x0;

    invoke-direct {p3, p4}, Ll0/x0;-><init>(Ljava/util/Date;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ll0/z0;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lb1/b;->h:Ljava/lang/Object;

    new-instance v1, Lm/l;

    invoke-direct {v1, p2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v1, p4, Ll0/z0;->a:Lm/l;

    iput-object p1, p4, Ll0/z0;->c:Lj0/c;

    iput-object v0, p4, Ll0/z0;->d:Ll0/x0;

    iput-object p3, p4, Ll0/z0;->e:Ll0/x0;

    iput-object p5, p4, Ll0/z0;->f:Lj0/c;

    iput-object p6, p4, Ll0/z0;->g:Ll0/p0;

    new-instance p1, Ll0/x;

    invoke-direct {p1}, Ll0/x;-><init>()V

    iput-object p1, p0, Lb1/b;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj3/g;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lb1/b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_15

    iput-object p1, p0, Lb1/b;->h:Ljava/lang/Object;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Lj3/f;

    invoke-virtual {p1}, Lj3/f;->a()Lj3/a;

    move-result-object p1

    iput-object p1, p0, Lb1/b;->i:Ljava/lang/Object;

    return-void

    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'privateKey\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4

    iput p3, p0, Lb1/b;->g:I

    iput-object p1, p0, Lb1/b;->h:Ljava/lang/Object;

    iput-object p2, p0, Lb1/b;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
    .registers 4

    const/16 v0, 0x9

    iput v0, p0, Lb1/b;->g:I

    const-string v0, "input"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1/b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lk2/v;)Lk2/v;
    .registers 13

    iget v0, p0, Lb1/b;->g:I

    packed-switch v0, :pswitch_data_14a

    iget-object v0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lo2/b;

    instance-of v1, p1, Lo2/a;

    if-eqz v1, :cond_10

    check-cast p1, Lo2/a;

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    if-eqz p1, :cond_1c

    iget-object v1, p1, Lo2/a;->a:Lo2/b;

    if-ne v1, v0, :cond_1c

    iget-object v1, p1, Lo2/a;->b:Lk2/p;

    if-eqz v1, :cond_1c

    goto :goto_33

    :cond_1c
    iget-object p1, v0, Lo2/b;->b:Lb1/a;

    iget-object p0, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast p0, Lk2/p;

    iget-object p1, p1, Lb1/a;->h:Ljava/lang/Object;

    check-cast p1, Lk2/b0;

    invoke-virtual {p0, p1}, Lk2/p;->t(Lk2/b0;)Lk2/p;

    move-result-object p0

    new-instance p1, Lo2/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lo2/a;->a:Lo2/b;

    iput-object p0, p1, Lo2/a;->b:Lk2/p;

    :goto_33
    return-object p1

    :pswitch_34
    instance-of v0, p1, Lk2/z;

    if-eqz v0, :cond_3b

    check-cast p1, Lk2/z;

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    :goto_3c
    iget-object v0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lk2/z;

    iget v1, v0, Lk2/z;->f:I

    iget-object v2, v0, Lk2/z;->c:[Lk2/p;

    array-length v2, v2

    if-eqz p1, :cond_62

    iget v3, p1, Lk2/z;->f:I

    if-lt v3, v1, :cond_62

    iget-object v3, p1, Lk2/z;->c:[Lk2/p;

    if-eqz v3, :cond_62

    array-length v3, v3

    if-lt v3, v2, :cond_62

    iget-object v3, p1, Lk2/z;->d:[Lk2/p;

    if-eqz v3, :cond_62

    array-length v3, v3

    if-lt v3, v2, :cond_62

    iget p0, p1, Lk2/z;->a:I

    if-lez p0, :cond_b7

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Lk2/z;->a:I

    goto :goto_b7

    :cond_62
    new-instance p1, Lk2/z;

    invoke-direct {p1}, Lk2/z;-><init>()V

    iget v0, v0, Lk2/z;->a:I

    iput v0, p1, Lk2/z;->a:I

    iget-object v0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lk2/z;

    iget-object v0, v0, Lk2/z;->e:Lk2/p;

    if-eqz v0, :cond_81

    iget-object v2, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v2, Lb1/a;

    iget-object v2, v2, Lb1/a;->h:Ljava/lang/Object;

    check-cast v2, Lk2/b0;

    invoke-virtual {v0, v2}, Lk2/p;->t(Lk2/b0;)Lk2/p;

    move-result-object v0

    iput-object v0, p1, Lk2/z;->e:Lk2/p;

    :cond_81
    iget-object v0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lk2/z;

    iget-object v0, v0, Lk2/z;->c:[Lk2/p;

    array-length v2, v0

    new-array v3, v2, [Lk2/p;

    const/4 v4, 0x0

    move v5, v4

    :goto_8c
    array-length v6, v0

    if-ge v5, v6, :cond_a2

    iget-object v6, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v6, Lb1/a;

    aget-object v7, v0, v5

    iget-object v6, v6, Lb1/a;->h:Ljava/lang/Object;

    check-cast v6, Lk2/b0;

    invoke-virtual {v7, v6}, Lk2/p;->t(Lk2/b0;)Lk2/p;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    :cond_a2
    iput-object v3, p1, Lk2/z;->c:[Lk2/p;

    iput v1, p1, Lk2/z;->f:I

    new-array p0, v2, [Lk2/p;

    :goto_a8
    if-ge v4, v2, :cond_b5

    aget-object v0, v3, v4

    invoke-virtual {v0}, Lk2/p;->o()Lk2/p;

    move-result-object v0

    aput-object v0, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a8

    :cond_b5
    iput-object p0, p1, Lk2/z;->d:[Lk2/p;

    :cond_b7
    :goto_b7
    return-object p1

    :pswitch_b8
    iget-object v0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lk2/h;

    instance-of v1, p1, Lk2/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_c4

    check-cast p1, Lk2/r;

    goto :goto_c5

    :cond_c4
    move-object p1, v2

    :goto_c5
    invoke-static {v0}, Lk2/b0;->h(Lk2/h;)I

    move-result v1

    const/16 v3, 0xfa

    if-le v1, v3, :cond_cf

    const/4 v3, 0x6

    goto :goto_d0

    :cond_cf
    const/4 v3, 0x5

    :goto_d0
    const/4 v4, 0x1

    shl-int v5, v4, v3

    if-eqz p1, :cond_e0

    iget-object v6, p1, Lk2/r;->b:Lk2/b0;

    if-eqz v6, :cond_e0

    invoke-virtual {v6}, Lk2/b0;->m()I

    move-result v6

    if-lt v6, v5, :cond_e0

    goto :goto_148

    :cond_e0
    add-int/2addr v1, v3

    sub-int/2addr v1, v4

    div-int/2addr v1, v3

    add-int/lit8 p1, v3, 0x1

    new-array v6, p1, [Lk2/p;

    iget-object p0, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast p0, Lk2/p;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    move p0, v4

    :goto_ef
    if-ge p0, v3, :cond_fe

    add-int/lit8 v8, p0, -0x1

    aget-object v8, v6, v8

    invoke-virtual {v8, v1}, Lk2/p;->x(I)Lk2/p;

    move-result-object v8

    aput-object v8, v6, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_ef

    :cond_fe
    aget-object p0, v6, v7

    aget-object v1, v6, v4

    invoke-virtual {p0, v1}, Lk2/p;->v(Lk2/p;)Lk2/p;

    move-result-object p0

    aput-object p0, v6, v3

    invoke-virtual {v0, v6, v7, p1, v2}, Lk2/h;->p([Lk2/p;IILk2/b0;)V

    new-array p0, v5, [Lk2/p;

    aget-object p1, v6, v7

    aput-object p1, p0, v7

    add-int/lit8 p1, v3, -0x1

    :goto_113
    if-ltz p1, :cond_12d

    aget-object v1, v6, p1

    shl-int v8, v4, p1

    move v9, v8

    :goto_11a
    if-ge v9, v5, :cond_12a

    sub-int v10, v9, v8

    aget-object v10, p0, v10

    invoke-virtual {v10, v1}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v10

    aput-object v10, p0, v9

    shl-int/lit8 v10, v8, 0x1

    add-int/2addr v9, v10

    goto :goto_11a

    :cond_12a
    add-int/lit8 p1, p1, -0x1

    goto :goto_113

    :cond_12d
    invoke-virtual {v0, p0, v7, v5, v2}, Lk2/h;->p([Lk2/p;IILk2/b0;)V

    new-instance p1, Lk2/r;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v2, p1, Lk2/r;->a:Lk2/p;

    iput-object v2, p1, Lk2/r;->b:Lk2/b0;

    const/4 v1, -0x1

    iput v1, p1, Lk2/r;->c:I

    invoke-virtual {v0, p0, v5}, Lk2/h;->b([Lk2/p;I)Lk2/b0;

    move-result-object p0

    iput-object p0, p1, Lk2/r;->b:Lk2/b0;

    aget-object p0, v6, v3

    iput-object p0, p1, Lk2/r;->a:Lk2/p;

    iput v3, p1, Lk2/r;->c:I

    :goto_148
    return-object p1

    nop

    :pswitch_data_14a
    .packed-switch 0x6
        :pswitch_b8
        :pswitch_34
    .end packed-switch
.end method

.method public b([B)[Ljava/math/BigInteger;
    .registers 10

    iget v0, p0, Lb1/b;->g:I

    invoke-static {p1}, Lm4/d;->H([B)[B

    move-result-object p1

    packed-switch v0, :pswitch_data_ba

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p1, La3/a;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Le1/i0;

    :cond_18
    iget-object p1, v1, Le1/i0;->d:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    iget-object v3, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v3, Ljava/security/SecureRandom;

    invoke-static {v2, v3}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_18

    iget-object v3, v1, Le1/i0;->q:Ljava/math/BigInteger;

    iget-object v1, v1, Le1/i0;->c:Ljava/math/BigInteger;

    invoke-virtual {v3, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p0, La3/a;

    check-cast p0, Le1/j0;

    iget-object p0, p0, Le1/j0;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :pswitch_55
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p1, Le1/u;

    iget-object v1, p1, Le1/u;->d:Le1/r;

    iget-object v2, v1, Le1/r;->j:Ljava/math/BigInteger;

    check-cast p1, Le1/w;

    iget-object p1, p1, Le1/w;->q:Ljava/math/BigInteger;

    new-instance v3, Lk2/q;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lk2/q;-><init>(I)V

    :cond_6d
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    iget-object v5, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v5, Ljava/security/SecureRandom;

    invoke-static {v4, v5}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Lk2/a;->a:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6d

    iget-object v6, v1, Le1/r;->i:Lk2/p;

    invoke-virtual {v3, v6, v4}, Lk2/b0;->w(Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object v6

    invoke-virtual {v6}, Lk2/p;->p()Lk2/p;

    move-result-object v6

    invoke-virtual {v6}, Lk2/p;->b()V

    iget-object v6, v6, Lk2/p;->b:Lk2/b0;

    invoke-virtual {v6}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6d

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    filled-new-array {v6, v4}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_55
    .end packed-switch
.end method

.method public c(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)Z
    .registers 9

    iget v0, p0, Lb1/b;->g:I

    invoke-static {p3}, Lm4/d;->H([B)[B

    move-result-object p3

    packed-switch v0, :pswitch_data_f4

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p3, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p3, La3/a;

    iget-object p3, p3, La3/a;->d:Ljava/lang/Object;

    check-cast p3, Le1/i0;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_81

    iget-object v2, p3, Le1/i0;->d:Ljava/math/BigInteger;

    iget-object v3, p3, Le1/i0;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_2e

    goto :goto_81

    :cond_2e
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_81

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_3b

    goto :goto_81

    :cond_3b
    new-instance v1, Ljava/math/BigInteger;

    const-string v4, "2"

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p3, p3, Le1/i0;->q:Ljava/math/BigInteger;

    invoke-virtual {p3, p2, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    iget-object p0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p0, La3/a;

    check-cast p0, Le1/k0;

    iget-object p0, p0, Le1/k0;->q:Ljava/math/BigInteger;

    invoke-virtual {p0, v0, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_82

    :cond_81
    :goto_81
    const/4 p0, 0x0

    :goto_82
    return p0

    :pswitch_83
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p3, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p3, Le1/u;

    iget-object p3, p3, Le1/u;->d:Le1/r;

    iget-object p3, p3, Le1/r;->j:Ljava/math/BigInteger;

    sget-object v1, Lk2/a;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_f2

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_a0

    goto :goto_f2

    :cond_a0
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_f2

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_ad

    goto :goto_f2

    :cond_ad
    invoke-static {p3, v0}, Lm4/a;->j(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object p0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p0, Le1/u;

    iget-object v1, p0, Le1/u;->d:Le1/r;

    iget-object v1, v1, Le1/r;->i:Lk2/p;

    check-cast p0, Le1/x;

    iget-object p0, p0, Le1/x;->q:Lk2/p;

    invoke-static {v1, p2, p0, v0}, Lk2/b0;->J(Lk2/p;Ljava/math/BigInteger;Lk2/p;Ljava/math/BigInteger;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p2

    if-eqz p2, :cond_e0

    goto :goto_f2

    :cond_e0
    invoke-virtual {p0}, Lk2/p;->b()V

    iget-object p0, p0, Lk2/p;->b:Lk2/b0;

    invoke-virtual {p0}, Lk2/b0;->L()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_f3

    :cond_f2
    :goto_f2
    const/4 p0, 0x0

    :goto_f3
    return p0

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_83
    .end packed-switch
.end method

.method public d(Lm/q;Ll0/f0;)V
    .registers 4

    :try_start_0
    iget-object p0, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast p0, Ll0/x;

    invoke-virtual {p0, p1, p2}, Ll0/x;->b(Lm/q;Ll0/f0;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "cannot encode extension: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method

.method public e(Lg1/d;)Ln0/e;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lg1/d;->g:I

    packed-switch v2, :pswitch_data_192

    iget-object v2, v1, Lg1/d;->i:Ljava/lang/Object;

    check-cast v2, Lw2/a;

    iget-object v2, v2, Lw2/a;->c:Ll0/b;

    goto :goto_14

    :pswitch_10
    iget-object v2, v1, Lg1/d;->i:Ljava/lang/Object;

    check-cast v2, Ll0/b;

    :goto_14
    iget-object v3, v0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v3, Ll0/z0;

    iput-object v2, v3, Ll0/z0;->b:Ll0/b;

    iget-object v0, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v0, Ll0/x;

    iget-object v4, v0, Ll0/x;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_140

    sget-object v4, Ll0/v;->W1:Lm/q;

    iget-object v5, v0, Ll0/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll0/v;

    if-eqz v4, :cond_12b

    invoke-virtual {v4}, Ll0/v;->h()Lm/u;

    move-result-object v5

    if-eqz v5, :cond_42

    new-instance v7, Ll0/q;

    invoke-static {v5}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v5

    invoke-direct {v7, v5}, Ll0/q;-><init>(Lm/x;)V

    goto :goto_43

    :cond_42
    const/4 v7, 0x0

    :goto_43
    invoke-virtual {v3}, Ll0/z0;->a()Ll0/u0;

    move-result-object v5

    invoke-virtual {v0}, Ll0/x;->c()Ll0/w;

    move-result-object v8

    iget-object v10, v7, Ll0/q;->c:Lm/l;

    iget-object v9, v7, Ll0/q;->d:Ll0/b;

    if-eqz v9, :cond_5b

    iget-object v11, v5, Ll0/u0;->x:Ll0/b;

    invoke-virtual {v9, v11}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5b

    const/4 v11, 0x0

    goto :goto_5c

    :cond_5b
    move-object v11, v9

    :goto_5c
    iget-object v9, v7, Ll0/q;->q:Lj0/c;

    if-eqz v9, :cond_6a

    iget-object v12, v5, Ll0/u0;->y:Lj0/c;

    invoke-virtual {v9, v12}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6a

    const/4 v12, 0x0

    goto :goto_6b

    :cond_6a
    move-object v12, v9

    :goto_6b
    iget-object v9, v7, Ll0/q;->x:Ll0/a1;

    if-eqz v9, :cond_79

    iget-object v13, v5, Ll0/u0;->z1:Ll0/a1;

    invoke-virtual {v9, v13}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_79

    const/4 v13, 0x0

    goto :goto_7a

    :cond_79
    move-object v13, v9

    :goto_7a
    iget-object v9, v7, Ll0/q;->y:Lj0/c;

    if-eqz v9, :cond_88

    iget-object v5, v5, Ll0/u0;->A1:Lj0/c;

    invoke-virtual {v9, v5}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_88

    const/4 v14, 0x0

    goto :goto_89

    :cond_88
    move-object v14, v9

    :goto_89
    iget-object v15, v7, Ll0/q;->z1:Ll0/p0;

    iget-object v5, v7, Ll0/q;->A1:Ll0/w;

    if-eqz v5, :cond_df

    new-instance v9, Ll0/x;

    invoke-direct {v9}, Ll0/x;-><init>()V

    iget-object v6, v8, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v6

    :goto_9a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_cd

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v6, v16

    check-cast v6, Lm/q;

    move-object/from16 v16, v10

    sget-object v10, Ll0/v;->W1:Lm/q;

    invoke-virtual {v10, v6}, Lm/u;->n(Lm/u;)Z

    move-result v10

    if-eqz v10, :cond_b9

    :cond_b4
    :goto_b4
    move-object/from16 v10, v16

    move-object/from16 v6, v17

    goto :goto_9a

    :cond_b9
    invoke-virtual {v5, v6}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v10

    if-eqz v10, :cond_b4

    invoke-virtual {v8, v6}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v6

    invoke-virtual {v10, v6}, Ll0/v;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b4

    invoke-virtual {v9, v10}, Ll0/x;->a(Ll0/v;)V

    goto :goto_b4

    :cond_cd
    move-object/from16 v16, v10

    iget-object v5, v9, Ll0/x;->b:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_d9

    const/4 v6, 0x0

    goto :goto_dd

    :cond_d9
    invoke-virtual {v9}, Ll0/x;->c()Ll0/w;

    move-result-object v6

    :goto_dd
    move-object v5, v6

    goto :goto_e1

    :cond_df
    move-object/from16 v16, v10

    :goto_e1
    iget-object v6, v7, Ll0/q;->B1:Lm/b;

    new-instance v9, Ll0/q;

    move-object/from16 v17, v6

    move-object/from16 v10, v16

    move-object/from16 v16, v5

    invoke-direct/range {v9 .. v17}, Ll0/q;-><init>(Lm/l;Ll0/b;Lj0/c;Ll0/a1;Lj0/c;Ll0/p0;Ll0/w;Lm/b;)V

    :try_start_ee
    sget-object v5, Ll0/v;->W1:Lm/q;

    iget-boolean v4, v4, Ll0/v;->d:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ll0/v;

    new-instance v7, Lm/x0;

    invoke-direct {v7, v9}, Lm/x0;-><init>(Lm/n;)V

    invoke-direct {v6, v5, v4, v7}, Ll0/v;-><init>(Lm/q;ZLm/x0;)V

    iget-object v4, v0, Ll0/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10b

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12b

    :cond_10b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extension "

    const-string v2, " not present"

    invoke-static {v1, v5, v2}, Lb/b;->k(Ljava/lang/String;Lm/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_119} :catch_119

    :catch_119
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to replace deltaCertificateDescriptor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12b
    :goto_12b
    invoke-virtual {v0}, Ll0/x;->c()Ll0/w;

    move-result-object v0

    iput-object v0, v3, Ll0/z0;->h:Ll0/w;

    sget-object v4, Ll0/v;->z1:Lm/q;

    invoke-virtual {v0, v4}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v0

    if-eqz v0, :cond_140

    iget-boolean v0, v0, Ll0/v;->d:Z

    if-eqz v0, :cond_140

    const/4 v0, 0x1

    iput-boolean v0, v3, Ll0/z0;->i:Z

    :cond_140
    :try_start_140
    invoke-virtual {v3}, Ll0/z0;->a()Ll0/u0;

    move-result-object v0

    iget v3, v1, Lg1/d;->g:I

    packed-switch v3, :pswitch_data_198

    iget-object v3, v1, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, Ljava/io/OutputStream;

    goto :goto_152

    :pswitch_14e
    iget-object v3, v1, Lg1/d;->j:Ljava/lang/Object;

    check-cast v3, Lc2/c;

    :goto_152
    const-string v4, "DER"

    invoke-virtual {v0}, Ll0/u0;->d()Lm/u;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Lg1/d;->g()[B

    move-result-object v1

    new-instance v3, Ln0/e;

    new-instance v4, Lm/g;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lm/g;-><init>(I)V

    invoke-virtual {v4, v0}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v4, v2}, Lm/g;->a(Lm/f;)V

    new-instance v0, Lm/p0;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm/b;-><init>([BI)V

    invoke-virtual {v4, v0}, Lm/g;->a(Lm/f;)V

    new-instance v0, Lm/a1;

    invoke-direct {v0, v4}, Lm/x;-><init>(Lm/g;)V

    const/4 v1, -0x1

    iput v1, v0, Lm/a1;->q:I

    invoke-static {v0}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v0

    invoke-direct {v3, v0}, Ln0/e;-><init>(Ll0/m;)V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_188} :catch_189

    return-object v3

    :catch_189
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot produce certificate signature"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_192
    .packed-switch 0x6
        :pswitch_10
    .end packed-switch

    :pswitch_data_198
    .packed-switch 0x6
        :pswitch_14e
    .end packed-switch
.end method

.method public f([B)[B
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v2, Lj3/a;

    iget-object v0, v0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v0, Lj3/g;

    iget v3, v2, Lj3/a;->m:I

    iget-object v4, v2, Lj3/a;->p:Li1/g;

    iget v5, v2, Lj3/a;->l:I

    invoke-virtual {v0}, Lj3/g;->getEncoded()[B

    move-result-object v0

    const/16 v6, 0x40

    new-array v7, v6, [B

    new-array v8, v6, [B

    iget v9, v2, Lj3/a;->i:I

    array-length v10, v0

    invoke-static {v0, v9, v10}, Lm4/d;->q([BII)[B

    move-result-object v9

    iget-object v10, v2, Lj3/a;->b:Lj3/c;

    new-instance v11, Lj3/j;

    iget-object v12, v10, Lj3/c;->a:Lj3/a;

    const/4 v13, 0x1

    invoke-direct {v11, v12, v13}, Lj3/j;-><init>(Lj3/a;I)V

    new-instance v14, Lj3/j;

    invoke-direct {v14, v12, v13}, Lj3/j;-><init>(Lj3/a;I)V

    const/16 v15, 0x100

    move/from16 p0, v13

    new-array v13, v15, [S

    new-instance v15, Lj3/j;

    const/4 v6, 0x0

    invoke-direct {v15, v12, v6}, Lj3/j;-><init>(Lj3/a;I)V

    move/from16 v16, v5

    iget v5, v12, Lj3/a;->f:I

    invoke-static {v1, v6, v5}, Lm4/d;->q([BII)[B

    move-result-object v17

    move/from16 v18, v6

    iget-object v6, v11, Lj3/j;->d:Ljava/lang/Object;

    check-cast v6, [Lj3/j;

    move-object/from16 v19, v6

    iget v6, v11, Lj3/j;->b:I

    move-object/from16 v20, v13

    mul-int/lit16 v13, v6, 0x140

    const/16 v21, 0x2

    move-object/from16 v22, v2

    const/16 v23, 0x7

    const/16 v24, 0x5

    const/16 v25, 0x3

    const/16 v26, 0x6

    const/16 v27, 0x8

    if-ne v5, v13, :cond_f2

    move/from16 v13, v18

    move/from16 v28, v13

    :goto_68
    if-ge v13, v6, :cond_1ff

    move/from16 v30, v13

    move/from16 v2, v18

    :goto_6e
    const/16 v13, 0x40

    const/16 v29, 0x4

    if-ge v2, v13, :cond_ee

    aget-byte v13, v17, v28

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v31, v28, 0x1

    move/from16 v32, v2

    aget-byte v2, v17, v31

    and-int/lit16 v2, v2, 0xff

    move/from16 v31, v2

    shl-int/lit8 v2, v31, 0x8

    int-to-short v2, v2

    or-int/2addr v2, v13

    int-to-short v2, v2

    shr-int/lit8 v13, v31, 0x2

    add-int/lit8 v31, v28, 0x2

    move/from16 v33, v2

    aget-byte v2, v17, v31

    and-int/lit16 v2, v2, 0xff

    move/from16 v31, v2

    shl-int/lit8 v2, v31, 0x6

    int-to-short v2, v2

    or-int/2addr v2, v13

    int-to-short v2, v2

    shr-int/lit8 v13, v31, 0x4

    add-int/lit8 v31, v28, 0x3

    move/from16 v34, v2

    aget-byte v2, v17, v31

    and-int/lit16 v2, v2, 0xff

    move/from16 v31, v2

    shl-int/lit8 v2, v31, 0x4

    int-to-short v2, v2

    or-int/2addr v2, v13

    int-to-short v2, v2

    shr-int/lit8 v13, v31, 0x6

    add-int/lit8 v31, v28, 0x4

    move/from16 v35, v2

    aget-byte v2, v17, v31

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    or-int/2addr v2, v13

    int-to-short v2, v2

    move/from16 v13, v29

    move/from16 v29, v2

    new-array v2, v13, [S

    aput-short v33, v2, v18

    aput-short v34, v2, p0

    aput-short v35, v2, v21

    aput-short v29, v2, v25

    add-int/lit8 v28, v28, 0x5

    move-object/from16 v31, v2

    move/from16 v2, v18

    :goto_cc
    if-ge v2, v13, :cond_eb

    aget-object v13, v19, v30

    mul-int/lit8 v33, v32, 0x4

    add-int v33, v33, v2

    move/from16 v34, v2

    aget-short v2, v31, v34

    and-int/lit16 v2, v2, 0x3ff

    mul-int/lit16 v2, v2, 0xd01

    add-int/lit16 v2, v2, 0x200

    shr-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    iget-object v13, v13, Lj3/j;->d:Ljava/lang/Object;

    check-cast v13, [S

    aput-short v2, v13, v33

    add-int/lit8 v2, v34, 0x1

    const/4 v13, 0x4

    goto :goto_cc

    :cond_eb
    add-int/lit8 v2, v32, 0x1

    goto :goto_6e

    :cond_ee
    add-int/lit8 v13, v30, 0x1

    goto/16 :goto_68

    :cond_f2
    mul-int/lit16 v2, v6, 0x160

    if-ne v5, v2, :cond_3ad

    move/from16 v2, v18

    move v13, v2

    :goto_f9
    if-ge v2, v6, :cond_1ff

    move/from16 v28, v2

    move/from16 v30, v6

    move/from16 v2, v18

    :goto_101
    const/16 v6, 0x20

    if-ge v2, v6, :cond_1f7

    aget-byte v6, v17, v13

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v31, v13, 0x1

    move/from16 v32, v2

    aget-byte v2, v17, v31

    and-int/lit16 v2, v2, 0xff

    move/from16 v31, v6

    int-to-short v6, v2

    shl-int/lit8 v6, v6, 0x8

    or-int v6, v31, v6

    int-to-short v6, v6

    shr-int/lit8 v2, v2, 0x3

    add-int/lit8 v31, v13, 0x2

    move/from16 v33, v2

    aget-byte v2, v17, v31

    and-int/lit16 v2, v2, 0xff

    move/from16 v31, v6

    int-to-short v6, v2

    shl-int/lit8 v6, v6, 0x5

    or-int v6, v33, v6

    int-to-short v6, v6

    shr-int/lit8 v2, v2, 0x6

    add-int/lit8 v33, v13, 0x3

    move/from16 v34, v2

    aget-byte v2, v17, v33

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    shl-int/lit8 v2, v2, 0x2

    or-int v2, v34, v2

    add-int/lit8 v33, v13, 0x4

    move/from16 v34, v2

    aget-byte v2, v17, v33

    and-int/lit16 v2, v2, 0xff

    move/from16 v33, v2

    shl-int/lit8 v2, v33, 0xa

    int-to-short v2, v2

    or-int v2, v34, v2

    int-to-short v2, v2

    shr-int/lit8 v33, v33, 0x1

    add-int/lit8 v34, v13, 0x5

    move/from16 v35, v2

    aget-byte v2, v17, v34

    and-int/lit16 v2, v2, 0xff

    move/from16 v34, v6

    int-to-short v6, v2

    shl-int/lit8 v6, v6, 0x7

    or-int v6, v33, v6

    int-to-short v6, v6

    const/16 v29, 0x4

    shr-int/lit8 v2, v2, 0x4

    add-int/lit8 v33, v13, 0x6

    move/from16 v36, v2

    aget-byte v2, v17, v33

    and-int/lit16 v2, v2, 0xff

    move/from16 v33, v6

    int-to-short v6, v2

    shl-int/lit8 v6, v6, 0x4

    or-int v6, v36, v6

    int-to-short v6, v6

    shr-int/lit8 v2, v2, 0x7

    add-int/lit8 v36, v13, 0x7

    move/from16 v37, v2

    aget-byte v2, v17, v36

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    shl-int/lit8 v2, v2, 0x1

    or-int v2, v37, v2

    add-int/lit8 v36, v13, 0x8

    move/from16 v37, v2

    aget-byte v2, v17, v36

    and-int/lit16 v2, v2, 0xff

    move/from16 v36, v2

    shl-int/lit8 v2, v36, 0x9

    int-to-short v2, v2

    or-int v2, v37, v2

    int-to-short v2, v2

    shr-int/lit8 v36, v36, 0x2

    add-int/lit8 v37, v13, 0x9

    move/from16 v38, v2

    aget-byte v2, v17, v37

    and-int/lit16 v2, v2, 0xff

    move/from16 v37, v6

    int-to-short v6, v2

    shl-int/lit8 v6, v6, 0x6

    or-int v6, v36, v6

    int-to-short v6, v6

    shr-int/lit8 v2, v2, 0x5

    add-int/lit8 v36, v13, 0xa

    move/from16 v39, v2

    aget-byte v2, v17, v36

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    shl-int/lit8 v2, v2, 0x3

    or-int v2, v39, v2

    int-to-short v2, v2

    move/from16 v36, v2

    move/from16 v39, v6

    move/from16 v2, v27

    new-array v6, v2, [S

    aput-short v31, v6, v18

    aput-short v34, v6, p0

    aput-short v35, v6, v21

    aput-short v33, v6, v25

    const/16 v29, 0x4

    aput-short v37, v6, v29

    aput-short v38, v6, v24

    aput-short v39, v6, v26

    aput-short v36, v6, v23

    add-int/lit8 v13, v13, 0xb

    move-object/from16 v31, v6

    move/from16 v2, v18

    :goto_1d1
    const/16 v6, 0x8

    if-ge v2, v6, :cond_1f1

    aget-object v6, v19, v28

    mul-int/lit8 v33, v32, 0x8

    add-int v33, v33, v2

    move/from16 v34, v2

    aget-short v2, v31, v34

    and-int/lit16 v2, v2, 0x7ff

    mul-int/lit16 v2, v2, 0xd01

    add-int/lit16 v2, v2, 0x400

    shr-int/lit8 v2, v2, 0xb

    int-to-short v2, v2

    iget-object v6, v6, Lj3/j;->d:Ljava/lang/Object;

    check-cast v6, [S

    aput-short v2, v6, v33

    add-int/lit8 v2, v34, 0x1

    goto :goto_1d1

    :cond_1f1
    add-int/lit8 v2, v32, 0x1

    const/16 v27, 0x8

    goto/16 :goto_101

    :cond_1f7
    add-int/lit8 v2, v28, 0x1

    move/from16 v6, v30

    const/16 v27, 0x8

    goto/16 :goto_f9

    :cond_1ff
    array-length v2, v1

    invoke-static {v1, v5, v2}, Lm4/d;->q([BII)[B

    move-result-object v2

    iget v5, v12, Lj3/a;->e:I

    const/16 v6, 0x80

    if-ne v5, v6, :cond_23e

    move/from16 v5, v18

    move v13, v5

    :goto_20d
    if-ge v5, v6, :cond_2df

    mul-int/lit8 v17, v5, 0x2

    aget-byte v6, v2, v13

    move-object/from16 v28, v2

    and-int/lit8 v2, v6, 0xf

    int-to-short v2, v2

    mul-int/lit16 v2, v2, 0xd01

    const/16 v27, 0x8

    add-int/lit8 v2, v2, 0x8

    const/16 v29, 0x4

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    aput-short v2, v20, v17

    add-int/lit8 v17, v17, 0x1

    and-int/lit16 v2, v6, 0xff

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    mul-int/lit16 v2, v2, 0xd01

    add-int/lit8 v2, v2, 0x8

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    aput-short v2, v20, v17

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v28

    const/16 v6, 0x80

    goto :goto_20d

    :cond_23e
    move-object/from16 v28, v2

    const/16 v2, 0xa0

    if-ne v5, v2, :cond_3a5

    move/from16 v2, v18

    move v5, v2

    :goto_247
    const/16 v6, 0x20

    if-ge v2, v6, :cond_2df

    aget-byte v6, v28, v5

    and-int/lit16 v6, v6, 0xff

    int-to-byte v13, v6

    shr-int/lit8 v6, v6, 0x5

    add-int/lit8 v17, v5, 0x1

    move/from16 v19, v2

    aget-byte v2, v28, v17

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v17, v2, 0x3

    or-int v6, v6, v17

    int-to-byte v6, v6

    move/from16 v17, v2

    shr-int/lit8 v2, v17, 0x2

    int-to-byte v2, v2

    shr-int/lit8 v17, v17, 0x7

    add-int/lit8 v30, v5, 0x2

    move/from16 v31, v2

    aget-byte v2, v28, v30

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v30, v2, 0x1

    move/from16 v32, v2

    or-int v2, v17, v30

    int-to-byte v2, v2

    const/16 v29, 0x4

    shr-int/lit8 v17, v32, 0x4

    add-int/lit8 v30, v5, 0x3

    move/from16 v32, v2

    aget-byte v2, v28, v30

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v30, v2, 0x4

    move/from16 v33, v2

    or-int v2, v17, v30

    int-to-byte v2, v2

    move/from16 v17, v2

    shr-int/lit8 v2, v33, 0x1

    int-to-byte v2, v2

    shr-int/lit8 v30, v33, 0x6

    add-int/lit8 v33, v5, 0x4

    move/from16 v34, v2

    aget-byte v2, v28, v33

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v33, v2, 0x2

    move/from16 v35, v2

    or-int v2, v30, v33

    int-to-byte v2, v2

    move/from16 v30, v2

    shr-int/lit8 v2, v35, 0x3

    int-to-byte v2, v2

    move/from16 v33, v2

    move/from16 v27, v5

    const/16 v2, 0x8

    new-array v5, v2, [B

    aput-byte v13, v5, v18

    aput-byte v6, v5, p0

    aput-byte v31, v5, v21

    aput-byte v32, v5, v25

    const/16 v29, 0x4

    aput-byte v17, v5, v29

    aput-byte v34, v5, v24

    aput-byte v30, v5, v26

    aput-byte v33, v5, v23

    add-int/lit8 v6, v27, 0x5

    move/from16 v13, v18

    :goto_2c1
    if-ge v13, v2, :cond_2da

    mul-int/lit8 v2, v19, 0x8

    add-int/2addr v2, v13

    aget-byte v17, v5, v13

    move/from16 v30, v2

    and-int/lit8 v2, v17, 0x1f

    mul-int/lit16 v2, v2, 0xd01

    add-int/lit8 v2, v2, 0x10

    shr-int/lit8 v2, v2, 0x5

    int-to-short v2, v2

    aput-short v2, v20, v30

    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x8

    goto :goto_2c1

    :cond_2da
    add-int/lit8 v2, v19, 0x1

    move v5, v6

    goto/16 :goto_247

    :cond_2df
    invoke-virtual {v14, v0}, Lj3/j;->d([B)V

    invoke-virtual {v11}, Lj3/j;->h()V

    invoke-static {v15, v14, v11, v12}, Lj3/j;->f(Lj3/j;Lj3/j;Lj3/j;Lj3/a;)V

    invoke-virtual {v15}, Lj3/j;->g()V

    move/from16 v2, v18

    const/16 v5, 0x100

    :goto_2ef
    if-ge v2, v5, :cond_300

    aget-short v6, v20, v2

    iget-object v11, v15, Lj3/j;->d:Ljava/lang/Object;

    check-cast v11, [S

    aget-short v12, v11, v2

    sub-int/2addr v6, v12

    int-to-short v6, v6

    aput-short v6, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2ef

    :cond_300
    invoke-virtual {v15}, Lj3/j;->i()V

    const/16 v6, 0x20

    new-array v2, v6, [B

    invoke-virtual {v15}, Lj3/j;->c()V

    move/from16 v5, v18

    :goto_30c
    if-ge v5, v6, :cond_336

    aput-byte v18, v2, v5

    move/from16 v6, v18

    const/16 v11, 0x8

    :goto_314
    if-ge v6, v11, :cond_331

    mul-int/lit8 v12, v5, 0x8

    add-int/2addr v12, v6

    iget-object v13, v15, Lj3/j;->d:Ljava/lang/Object;

    check-cast v13, [S

    aget-short v12, v13, v12

    rsub-int v13, v12, 0x340

    add-int/lit16 v12, v12, -0x9c1

    and-int/2addr v12, v13

    ushr-int/lit8 v12, v12, 0x1f

    aget-byte v13, v2, v5

    shl-int/2addr v12, v6

    int-to-byte v12, v12

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v2, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_314

    :cond_331
    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x20

    goto :goto_30c

    :cond_336
    move/from16 v5, v18

    invoke-static {v2, v5, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v16, -0x40

    invoke-static {v0, v2, v7, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v4, Li1/g;->b:Ljava/lang/Object;

    check-cast v2, Ls0/d0;

    const/16 v13, 0x40

    invoke-virtual {v2, v7, v5, v13}, Ls0/n;->f([BII)V

    invoke-virtual {v2, v8, v5}, Ls0/d0;->doFinal([BI)I

    add-int/lit8 v2, v3, 0x20

    new-array v11, v2, [B

    add-int/lit8 v12, v16, -0x20

    invoke-static {v0, v12, v11, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v5, v11, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v4, Li1/g;->d:Ljava/lang/Object;

    check-cast v0, Ls0/g0;

    invoke-virtual {v0, v11, v5, v2}, Ls0/n;->f([BII)V

    invoke-virtual {v0, v11, v5, v2}, Ls0/g0;->b([BII)I

    invoke-static {v7, v5, v6}, Lm4/d;->q([BII)[B

    move-result-object v0

    const/16 v13, 0x40

    invoke-static {v8, v6, v13}, Lm4/d;->q([BII)[B

    move-result-object v2

    invoke-virtual {v10, v9, v0, v2}, Lj3/c;->a([B[B[B)[B

    move-result-object v0

    array-length v2, v0

    array-length v3, v1

    xor-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_374
    array-length v4, v0

    if-eq v3, v4, :cond_380

    aget-byte v4, v1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_374

    :cond_380
    and-int/lit16 v0, v2, 0xff

    const/16 v18, 0x0

    rsub-int/lit8 v6, v0, 0x0

    shr-int/lit8 v0, v6, 0x18

    const/4 v5, 0x0

    const/16 v6, 0x20

    :goto_38b
    if-eq v5, v6, :cond_39b

    aget-byte v1, v11, v5

    and-int/2addr v1, v0

    aget-byte v2, v8, v5

    not-int v3, v0

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38b

    :cond_39b
    move-object/from16 v2, v22

    iget v0, v2, Lj3/a;->o:I

    const/4 v5, 0x0

    invoke-static {v8, v5, v0}, Lm4/d;->q([BII)[B

    move-result-object v0

    return-object v0

    :cond_3a5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3ad
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v0, Ll/i;

    if-nez v0, :cond_d

    new-instance v0, Ll/i;

    invoke-direct {v0, p0}, Ll/i;-><init>(Lb1/b;)V

    iput-object v0, p0, Lb1/b;->i:Ljava/lang/Object;

    :cond_d
    iget-object p0, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast p0, Ll/i;

    invoke-static {p0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    return-object p0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .registers 2

    iget v0, p0, Lb1/b;->g:I

    iget-object p0, p0, Lb1/b;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_18

    check-cast p0, La3/a;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le1/i0;

    iget-object p0, p0, Le1/i0;->d:Ljava/math/BigInteger;

    return-object p0

    :pswitch_10
    check-cast p0, Le1/u;

    iget-object p0, p0, Le1/u;->d:Le1/r;

    iget-object p0, p0, Le1/r;->j:Ljava/math/BigInteger;

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method

.method public h([B)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v1, [[J

    const/16 v2, 0x100

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v1, :cond_20

    new-array v1, v4, [I

    aput v4, v1, v6

    aput v2, v1, v5

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    iput-object v1, v0, Lb1/b;->i:Ljava/lang/Object;

    goto :goto_3e

    :cond_20
    iget-object v1, v0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v1, [B

    move v7, v5

    move v8, v7

    :goto_26
    if-ge v7, v3, :cond_31

    aget-byte v9, v1, v7

    aget-byte v10, p1, v7

    xor-int/2addr v9, v10

    or-int/2addr v8, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_26

    :cond_31
    ushr-int/lit8 v1, v8, 0x1

    and-int/lit8 v7, v8, 0x1

    or-int/2addr v1, v7

    sub-int/2addr v1, v6

    shr-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    if-eqz v1, :cond_3e

    goto/16 :goto_bf

    :cond_3e
    :goto_3e
    new-array v1, v3, [B

    iput-object v1, v0, Lb1/b;->h:Ljava/lang/Object;

    move v7, v5

    :goto_43
    if-ge v7, v3, :cond_4c

    aget-byte v8, p1, v7

    aput-byte v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_43

    :cond_4c
    iget-object v1, v0, Lb1/b;->h:Ljava/lang/Object;

    check-cast v1, [B

    iget-object v3, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v3, [[J

    aget-object v3, v3, v6

    move v7, v5

    move v8, v7

    :goto_58
    if-ge v7, v4, :cond_65

    invoke-static {v8, v1}, Lm4/d;->c(I[B)J

    move-result-wide v9

    aput-wide v9, v3, v7

    add-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v7, 0x1

    goto :goto_58

    :cond_65
    iget-object v1, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v1, [[J

    aget-object v1, v1, v6

    aget-wide v7, v1, v5

    aget-wide v9, v1, v6

    const/16 v3, 0x39

    shl-long v11, v9, v3

    const/4 v13, 0x7

    ushr-long v14, v7, v13

    xor-long/2addr v14, v11

    ushr-long v16, v11, v6

    xor-long v14, v14, v16

    ushr-long v16, v11, v4

    xor-long v14, v14, v16

    ushr-long/2addr v11, v13

    xor-long/2addr v11, v14

    aput-wide v11, v1, v5

    ushr-long/2addr v9, v13

    shl-long/2addr v7, v3

    or-long/2addr v7, v9

    aput-wide v7, v1, v6

    :goto_88
    if-ge v4, v2, :cond_bf

    iget-object v1, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v1, [[J

    shr-int/lit8 v3, v4, 0x1

    aget-object v3, v1, v3

    aget-object v7, v1, v4

    aget-wide v8, v3, v5

    aget-wide v10, v3, v6

    const/16 v3, 0x3f

    shr-long v12, v8, v3

    const-wide/high16 v14, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v14, v12

    xor-long/2addr v8, v14

    shl-long/2addr v8, v6

    ushr-long v14, v10, v3

    or-long/2addr v8, v14

    aput-wide v8, v7, v5

    shl-long/2addr v10, v6

    neg-long v12, v12

    or-long/2addr v10, v12

    aput-wide v10, v7, v6

    aget-object v3, v1, v6

    add-int/lit8 v7, v4, 0x1

    aget-object v1, v1, v7

    aget-wide v12, v3, v5

    xor-long v7, v8, v12

    aput-wide v7, v1, v5

    aget-wide v7, v3, v6

    xor-long/2addr v7, v10

    aput-wide v7, v1, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_88

    :cond_bf
    :goto_bf
    return-void
.end method

.method public i([B)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v2, [[J

    const/16 v3, 0xf

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    const/16 v2, 0xe

    :goto_18
    const/16 v9, 0x8

    if-ltz v2, :cond_45

    iget-object v10, v0, Lb1/b;->i:Ljava/lang/Object;

    check-cast v10, [[J

    aget-byte v11, v1, v2

    and-int/lit16 v11, v11, 0xff

    aget-object v10, v10, v11

    const/16 v11, 0x38

    shl-long v12, v7, v11

    aget-wide v14, v10, v6

    ushr-long/2addr v7, v9

    shl-long v16, v4, v11

    or-long v7, v7, v16

    xor-long/2addr v7, v14

    aget-wide v10, v10, v3

    ushr-long/2addr v4, v9

    xor-long/2addr v4, v10

    xor-long/2addr v4, v12

    ushr-long v9, v12, v6

    xor-long/2addr v4, v9

    const/4 v9, 0x2

    ushr-long v9, v12, v9

    xor-long/2addr v4, v9

    const/4 v9, 0x7

    ushr-long v9, v12, v9

    xor-long/2addr v4, v9

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_45
    invoke-static {v3, v4, v5, v1}, Lm4/d;->E(IJ[B)V

    invoke-static {v9, v7, v8, v1}, Lm4/d;->E(IJ[B)V

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/g;)V
    .registers 5

    iget v0, p0, Lb1/b;->g:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_6e

    if-eqz p1, :cond_22

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_12

    check-cast p2, Le1/t0;

    iget-object v1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_12
    check-cast p2, Le1/j0;

    iput-object p2, p0, Lb1/b;->h:Ljava/lang/Object;

    if-nez v1, :cond_1d

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_1f

    :cond_1d
    sget-object p1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_1f
    iput-object v1, p0, Lb1/b;->i:Ljava/lang/Object;

    goto :goto_27

    :cond_22
    check-cast p2, Le1/k0;

    iput-object p2, p0, Lb1/b;->h:Ljava/lang/Object;

    goto :goto_1f

    :goto_27
    iget-object p0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p0, La3/a;

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Le1/i0;

    iget-object p0, p0, Le1/i0;->c:Ljava/math/BigInteger;

    invoke-static {p0}, Lq4/k;->s(Ljava/math/BigInteger;)I

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_40
    if-eqz p1, :cond_5c

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_4c

    check-cast p2, Le1/t0;

    iget-object v1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_4c
    check-cast p2, Le1/w;

    iput-object p2, p0, Lb1/b;->h:Ljava/lang/Object;

    if-nez v1, :cond_57

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v1

    goto :goto_59

    :cond_57
    sget-object p2, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_59
    iput-object v1, p0, Lb1/b;->i:Ljava/lang/Object;

    goto :goto_61

    :cond_5c
    check-cast p2, Le1/x;

    iput-object p2, p0, Lb1/b;->h:Ljava/lang/Object;

    goto :goto_59

    :goto_61
    iget-object p0, p0, Lb1/b;->h:Ljava/lang/Object;

    check-cast p0, Le1/u;

    const-string p2, "ECGOST3410"

    invoke-static {p2, p0, p1}, Lq4/k;->Z(Ljava/lang/String;Le1/u;Z)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method
