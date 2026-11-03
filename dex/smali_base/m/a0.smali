.class public abstract Lm/a0;
.super Lm/u;

# interfaces
.implements Lm/s1;


# instance fields
.field public final c:I

.field public final d:I

.field public final q:I

.field public final x:Lm/f;


# direct methods
.method public constructor <init>(IIILm/f;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_25

    if-eqz p2, :cond_19

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_19

    instance-of v0, p4, Lm/e;

    if-eqz v0, :cond_10

    const/4 p1, 0x1

    :cond_10
    iput p1, p0, Lm/a0;->c:I

    iput p2, p0, Lm/a0;->d:I

    iput p3, p0, Lm/a0;->q:I

    iput-object p4, p0, Lm/a0;->x:Lm/f;

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid tag class: "

    invoke-static {p2, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ZILm/f;)V
    .registers 5

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0, p2, p3}, Lm/a0;-><init>(IIILm/f;)V

    return-void
.end method

.method public static v(Ljava/lang/Object;)Lm/a0;
    .registers 4

    if-eqz p0, :cond_64

    instance-of v0, p0, Lm/a0;

    if-eqz v0, :cond_7

    goto :goto_64

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/a0;

    if-eqz v1, :cond_50

    check-cast v0, Lm/a0;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_50

    :try_start_1d
    check-cast p0, [B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    instance-of v0, p0, Lm/a0;

    if-eqz v0, :cond_2a

    check-cast p0, Lm/a0;

    return-object p0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unexpected object: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_3e} :catch_3e

    :catch_3e
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct tagged object from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    :goto_64
    check-cast p0, Lm/a0;

    return-object p0
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final h(Lm/u;)Z
    .registers 6

    instance-of v0, p1, Lm/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lm/a0;

    iget v0, p0, Lm/a0;->q:I

    iget v2, p1, Lm/a0;->q:I

    if-ne v0, v2, :cond_4f

    iget v0, p0, Lm/a0;->d:I

    iget v2, p1, Lm/a0;->d:I

    if-eq v0, v2, :cond_15

    goto :goto_4f

    :cond_15
    iget v0, p0, Lm/a0;->c:I

    iget v2, p1, Lm/a0;->c:I

    if-eq v0, v2, :cond_26

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v0

    invoke-virtual {p1}, Lm/a0;->w()Z

    move-result v2

    if-eq v0, v2, :cond_26

    return v1

    :cond_26
    iget-object v0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    iget-object v2, p1, Lm/a0;->x:Lm/f;

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    if-ne v0, v2, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v3

    if-nez v3, :cond_4a

    :try_start_3c
    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_48} :catch_49

    return p0

    :catch_49
    return v1

    :cond_4a
    invoke-virtual {v0, v2}, Lm/u;->h(Lm/u;)Z

    move-result p0

    return p0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lm/a0;->d:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lm/a0;->q:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0xf

    goto :goto_12

    :cond_10
    const/16 v1, 0xf0

    :goto_12
    xor-int/2addr v0, v1

    iget-object p0, p0, Lm/a0;->x:Lm/f;

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/u;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public p()Lm/u;
    .registers 5

    new-instance v0, Lm/d1;

    iget v1, p0, Lm/a0;->q:I

    iget-object v2, p0, Lm/a0;->x:Lm/f;

    iget v3, p0, Lm/a0;->c:I

    iget p0, p0, Lm/a0;->d:I

    invoke-direct {v0, v3, p0, v1, v2}, Lm/a0;-><init>(IIILm/f;)V

    return-object v0
.end method

.method public q()Lm/u;
    .registers 5

    new-instance v0, Lm/p1;

    iget v1, p0, Lm/a0;->q:I

    iget-object v2, p0, Lm/a0;->x:Lm/f;

    iget v3, p0, Lm/a0;->c:I

    iget p0, p0, Lm/a0;->d:I

    invoke-direct {v0, v3, p0, v1, v2}, Lm/a0;-><init>(IIILm/f;)V

    return-object v0
.end method

.method public final r()Lm/n;
    .registers 2

    iget-object p0, p0, Lm/a0;->x:Lm/f;

    instance-of v0, p0, Lm/n;

    if-eqz v0, :cond_9

    check-cast p0, Lm/n;

    return-object p0

    :cond_9
    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    return-object p0
.end method

.method public final s(I)Lm/u;
    .registers 3

    packed-switch p1, :pswitch_data_64

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_4f

    :pswitch_5
    sget-object v0, Lm/o0;->d:Lm/a;

    goto :goto_4f

    :pswitch_8
    sget-object v0, Lm/g1;->d:Lm/a;

    goto :goto_4f

    :pswitch_b
    sget-object v0, Lm/r0;->d:Lm/a;

    goto :goto_4f

    :pswitch_e
    sget-object v0, Lm/i1;->d:Lm/a;

    goto :goto_4f

    :pswitch_11
    sget-object v0, Lm/t0;->d:Lm/a;

    goto :goto_4f

    :pswitch_14
    sget-object v0, Lm/j;->d:Lm/a;

    goto :goto_4f

    :pswitch_17
    sget-object v0, Lm/b0;->d:Lm/a;

    goto :goto_4f

    :pswitch_1a
    sget-object v0, Lm/u0;->d:Lm/a;

    goto :goto_4f

    :pswitch_1d
    sget-object v0, Lm/h1;->d:Lm/a;

    goto :goto_4f

    :pswitch_20
    sget-object v0, Lm/c1;->d:Lm/a;

    goto :goto_4f

    :pswitch_23
    sget-object v0, Lm/z0;->d:Lm/a;

    goto :goto_4f

    :pswitch_26
    sget-object v0, Lm/w0;->d:Lm/a;

    goto :goto_4f

    :pswitch_29
    sget-object v0, Lm/y;->q:Lm/a;

    goto :goto_4f

    :pswitch_2c
    sget-object v0, Lm/x;->d:Lm/a;

    goto :goto_4f

    :pswitch_2f
    sget-object v0, Lm/v;->q:Lm/a;

    goto :goto_4f

    :pswitch_32
    sget-object v0, Lm/f1;->d:Lm/a;

    goto :goto_4f

    :pswitch_35
    sget-object v0, Lm/h;->q:Lm/a;

    goto :goto_4f

    :pswitch_38
    sget-object v0, Lm/q0;->A1:Lm/a;

    goto :goto_4f

    :pswitch_3b
    sget-object v0, Lm/o;->d:Lm/a;

    goto :goto_4f

    :pswitch_3e
    sget-object v0, Lm/q;->q:Lm/a;

    goto :goto_4f

    :pswitch_41
    sget-object v0, Lm/m;->c:Lm/a;

    goto :goto_4f

    :pswitch_44
    sget-object v0, Lm/r;->d:Lm/a;

    goto :goto_4f

    :pswitch_47
    sget-object v0, Lm/b;->d:Lm/a;

    goto :goto_4f

    :pswitch_4a
    sget-object v0, Lm/l;->q:Lm/a;

    goto :goto_4f

    :pswitch_4d
    sget-object v0, Lm/d;->d:Lm/a;

    :goto_4f
    if-eqz v0, :cond_57

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p0

    return-object p0

    :cond_57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported UNIVERSAL tag number: "

    invoke-static {p1, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_3
        :pswitch_35
        :pswitch_3
        :pswitch_32
        :pswitch_2f
        :pswitch_3
        :pswitch_3
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public final t(ZLm/a;)Lm/u;
    .registers 5

    iget-object v0, p0, Lm/a0;->x:Lm/f;

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result p0

    if-eqz p0, :cond_12

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm/a;->a(Lm/u;)V

    return-object p0

    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    const/4 p1, 0x1

    iget v1, p0, Lm/a0;->c:I

    if-eq p1, v1, :cond_10d

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object p1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_104

    const/4 p0, 0x4

    if-eq v1, p0, :cond_2d

    invoke-virtual {p2, p1}, Lm/a;->a(Lm/u;)V

    return-object p1

    :cond_2d
    instance-of p0, p1, Lm/x;

    if-eqz p0, :cond_38

    check-cast p1, Lm/x;

    invoke-virtual {p2, p1}, Lm/a;->c(Lm/x;)Lm/u;

    move-result-object p0

    return-object p0

    :cond_38
    check-cast p1, Lm/x0;

    iget p0, p2, Lm/a;->b:I

    packed-switch p0, :pswitch_data_116

    :pswitch_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unexpected implicit primitive encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_47
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/i1;

    invoke-direct {p1, p0}, Lm/i1;-><init>([B)V

    goto/16 :goto_103

    :pswitch_50
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/h1;

    invoke-direct {p1, p0}, Lm/h1;-><init>([B)V

    goto/16 :goto_103

    :pswitch_59
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/g1;

    invoke-direct {p1, p0}, Lm/g1;-><init>([B)V

    goto/16 :goto_103

    :pswitch_62
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/f1;

    invoke-direct {p1, p0}, Lm/f1;-><init>([B)V

    goto/16 :goto_103

    :pswitch_6b
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/b0;

    invoke-direct {p1, p0}, Lm/b0;-><init>([B)V

    goto/16 :goto_103

    :pswitch_74
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/c1;

    invoke-direct {p1, p0}, Lm/c1;-><init>([B)V

    goto/16 :goto_103

    :pswitch_7d
    iget-object p0, p1, Lm/r;->c:[B

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lm/v;->r(Z[B)Lm/v;

    move-result-object p1

    goto/16 :goto_103

    :pswitch_86
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/z0;

    invoke-direct {p1, p0}, Lm/z0;-><init>([B)V

    goto/16 :goto_103

    :pswitch_8f
    iget-object p0, p1, Lm/r;->c:[B

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lm/q;->t(Z[B)Lm/q;

    move-result-object p1

    goto/16 :goto_103

    :pswitch_98
    new-instance p0, Lm/o;

    iget-object p1, p1, Lm/r;->c:[B

    new-instance p2, Lm/t0;

    invoke-direct {p2, p1}, Lm/t0;-><init>([B)V

    invoke-direct {p0, p2}, Lm/o;-><init>(Lm/t0;)V

    move-object p1, p0

    goto :goto_103

    :pswitch_a6
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/w0;

    invoke-direct {p1, p0}, Lm/w0;-><init>([B)V

    goto :goto_103

    :pswitch_ae
    iget-object p0, p1, Lm/r;->c:[B

    array-length p0, p0

    if-nez p0, :cond_b6

    sget-object p1, Lm/v0;->d:Lm/v0;

    goto :goto_103

    :cond_b6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "malformed NULL encoding encountered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_be
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/l;

    invoke-direct {p1, p0}, Lm/l;-><init>([B)V

    goto :goto_103

    :pswitch_c6
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/u0;

    invoke-direct {p1, p0}, Lm/u0;-><init>([B)V

    goto :goto_103

    :pswitch_ce
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/t0;

    invoke-direct {p1, p0}, Lm/t0;-><init>([B)V

    goto :goto_103

    :pswitch_d6
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/j;

    invoke-direct {p1, p0}, Lm/j;-><init>([B)V

    goto :goto_103

    :pswitch_de
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/r0;

    invoke-direct {p1, p0}, Lm/r0;-><init>([B)V

    goto :goto_103

    :pswitch_e6
    iget-object p0, p1, Lm/r;->c:[B

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lm/h;->r(Z[B)Lm/h;

    move-result-object p1

    goto :goto_103

    :pswitch_ee
    iget-object p0, p1, Lm/r;->c:[B

    invoke-static {p0}, Lm/d;->r([B)Lm/d;

    move-result-object p1

    goto :goto_103

    :pswitch_f5
    iget-object p0, p1, Lm/r;->c:[B

    invoke-static {p0}, Lm/b;->r([B)Lm/b;

    move-result-object p1

    goto :goto_103

    :pswitch_fc
    iget-object p0, p1, Lm/r;->c:[B

    new-instance p1, Lm/o0;

    invoke-direct {p1, p0}, Lm/o0;-><init>([B)V

    :goto_103
    :pswitch_103
    return-object p1

    :cond_104
    invoke-virtual {p0, p1}, Lm/a0;->x(Lm/u;)Lm/x;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm/a;->c(Lm/x;)Lm/u;

    move-result-object p0

    return-object p0

    :cond_10d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object explicit - implicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_fc
        :pswitch_f5
        :pswitch_ee
        :pswitch_e6
        :pswitch_3f
        :pswitch_de
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
        :pswitch_ae
        :pswitch_a6
        :pswitch_98
        :pswitch_8f
        :pswitch_103
        :pswitch_86
        :pswitch_7d
        :pswitch_3f
        :pswitch_3f
        :pswitch_74
        :pswitch_6b
        :pswitch_62
        :pswitch_59
        :pswitch_50
        :pswitch_47
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lm/a0;->d:I

    iget v2, p0, Lm/a0;->q:I

    invoke-static {v1, v2}, Lq4/k;->h0(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm/a0;->x:Lm/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lm/n;
    .registers 2

    invoke-virtual {p0}, Lm/a0;->w()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lm/a0;->x:Lm/f;

    instance-of v0, p0, Lm/n;

    if-eqz v0, :cond_f

    check-cast p0, Lm/n;

    return-object p0

    :cond_f
    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "object implicit - explicit expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w()Z
    .registers 3

    iget p0, p0, Lm/a0;->c:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_a

    const/4 v1, 0x3

    if-eq p0, v1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    return v0
.end method

.method public abstract x(Lm/u;)Lm/x;
.end method
