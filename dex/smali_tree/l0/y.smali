.class public final Ll0/y;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public c:Lm/f;

.field public d:I


# direct methods
.method public constructor <init>(ILm/n;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll0/y;->c:Lm/f;

    iput p1, p0, Ll0/y;->d:I

    return-void
.end method

.method public constructor <init>(Lj0/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/y;->c:Lm/f;

    const/4 p1, 0x4

    iput p1, p0, Ll0/y;->d:I

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll0/y;
    .registers 7

    if-eqz p0, :cond_df

    instance-of v0, p0, Ll0/y;

    if-eqz v0, :cond_8

    goto/16 :goto_df

    :cond_8
    instance-of v0, p0, Lm/a0;

    if-eqz v0, :cond_b4

    check-cast p0, Lm/a0;

    iget v0, p0, Lm/a0;->q:I

    sget-object v1, Lm/x;->d:Lm/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_e2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag: "

    invoke-static {v0, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_23
    new-instance v1, Ll0/y;

    sget-object v4, Lm/q;->q:Lm/a;

    iget v4, p0, Lm/a0;->c:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_56

    const/4 v5, 0x4

    if-eq v4, v5, :cond_56

    iget v4, p0, Lm/a0;->d:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_56

    invoke-virtual {p0}, Lm/a0;->r()Lm/n;

    move-result-object v4

    invoke-virtual {v4}, Lm/n;->d()Lm/u;

    move-result-object v4

    instance-of v5, v4, Lm/q;

    if-nez v5, :cond_56

    invoke-static {v4}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    if-eqz p0, :cond_4e

    invoke-static {v2, p0}, Lm/q;->t(Z[B)Lm/q;

    move-result-object p0

    goto :goto_64

    :cond_4e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'contents\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_56
    sget-object v2, Lm/q;->q:Lm/a;

    invoke-static {p0}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {p0, v3, v2}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p0

    invoke-virtual {v2, p0}, Lm/a;->a(Lm/u;)V

    check-cast p0, Lm/q;

    :goto_64
    invoke-direct {v1, v0, p0}, Ll0/y;-><init>(ILm/n;)V

    return-object v1

    :pswitch_68
    new-instance v1, Ll0/y;

    invoke-static {p0}, Lq4/k;->v(Lm/a0;)V

    sget-object v2, Lm/r;->d:Lm/a;

    invoke-virtual {p0, v3, v2}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p0

    invoke-virtual {v2, p0}, Lm/a;->a(Lm/u;)V

    check-cast p0, Lm/r;

    invoke-direct {v1, v0, p0}, Ll0/y;-><init>(ILm/n;)V

    return-object v1

    :pswitch_7c
    new-instance v3, Ll0/y;

    sget-object v4, Lj0/c;->z1:Lk0/b;

    invoke-virtual {v1, p0, v2}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-static {p0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    invoke-direct {v3, v0, p0}, Ll0/y;-><init>(ILm/n;)V

    return-object v3

    :pswitch_8e
    new-instance v1, Ll0/y;

    invoke-static {p0}, Lq4/k;->v(Lm/a0;)V

    sget-object v2, Lm/u0;->d:Lm/a;

    invoke-virtual {p0, v3, v2}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p0

    invoke-virtual {v2, p0}, Lm/a;->a(Lm/u;)V

    check-cast p0, Lm/u0;

    invoke-direct {v1, v0, p0}, Ll0/y;-><init>(ILm/n;)V

    return-object v1

    :pswitch_a2
    new-instance v2, Ll0/y;

    invoke-static {p0}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {p0, v3, v1}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p0

    invoke-virtual {v1, p0}, Lm/a;->a(Lm/u;)V

    check-cast p0, Lm/x;

    invoke-direct {v2, v0, p0}, Ll0/y;-><init>(ILm/n;)V

    return-object v2

    :cond_b4
    instance-of v0, p0, [B

    if-eqz v0, :cond_cb

    :try_start_b8
    check-cast p0, [B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    invoke-static {p0}, Ll0/y;->h(Ljava/lang/Object;)Ll0/y;

    move-result-object p0
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_c2} :catch_c3

    return-object p0

    :catch_c3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse encoded general name"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_cb
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

    :cond_df
    :goto_df
    check-cast p0, Ll0/y;

    return-object p0

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_a2
        :pswitch_8e
        :pswitch_8e
        :pswitch_a2
        :pswitch_7c
        :pswitch_a2
        :pswitch_8e
        :pswitch_68
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    iget v0, p0, Ll0/y;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    new-instance v2, Lm/d1;

    iget-object p0, p0, Ll0/y;->c:Lm/f;

    invoke-direct {v2, v1, v0, p0}, Lm/a0;-><init>(ZILm/f;)V

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ll0/y;->c:Lm/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Ll0/y;->d:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-eq p0, v2, :cond_33

    const/4 v2, 0x2

    if-eq p0, v2, :cond_33

    const/4 v2, 0x4

    if-eq p0, v2, :cond_25

    const/4 v2, 0x6

    if-eq p0, v2, :cond_33

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_25
    invoke-static {v0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p0

    iget-object v0, p0, Lj0/c;->q:Lj0/d;

    invoke-interface {v0, p0}, Lj0/d;->b(Lj0/c;)Ljava/lang/String;

    move-result-object p0

    :goto_2f
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    :cond_33
    invoke-static {v0}, Lm/u0;->r(Ljava/lang/Object;)Lm/u0;

    move-result-object p0

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_2f

    :goto_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
