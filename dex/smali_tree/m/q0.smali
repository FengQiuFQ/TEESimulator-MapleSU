.class public final Lm/q0;
.super Lm/u;


# static fields
.field public static final A1:Lm/a;


# instance fields
.field public c:Lm/q;

.field public d:Lm/l;

.field public q:Lm/u;

.field public x:I

.field public y:Lm/u;

.field public final synthetic z1:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/q0;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/q0;->A1:Lm/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lm/q0;->z1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm/x;I)V
    .registers 7

    iput p2, p0, Lm/q0;->z1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lm/q0;->s(Lm/x;I)Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/q;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    check-cast v0, Lm/q;

    iput-object v0, p0, Lm/q0;->c:Lm/q;

    invoke-static {p1, v2}, Lm/q0;->s(Lm/x;I)Lm/u;

    move-result-object v0

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, p2

    :goto_1a
    instance-of v3, v0, Lm/l;

    if-eqz v3, :cond_28

    check-cast v0, Lm/l;

    iput-object v0, p0, Lm/q0;->d:Lm/l;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lm/q0;->s(Lm/x;I)Lm/u;

    move-result-object v0

    :cond_28
    instance-of v3, v0, Lm/a0;

    if-nez v3, :cond_34

    iput-object v0, p0, Lm/q0;->q:Lm/u;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lm/q0;->s(Lm/x;I)Lm/u;

    move-result-object v0

    :cond_34
    invoke-virtual {p1}, Lm/x;->size()I

    move-result p1

    add-int/2addr v1, v2

    if-ne p1, v1, :cond_aa

    instance-of p1, v0, Lm/a0;

    if-eqz p1, :cond_a2

    check-cast v0, Lm/a0;

    iget p1, v0, Lm/a0;->q:I

    if-ltz p1, :cond_96

    const/4 v1, 0x2

    if-gt p1, v1, :cond_96

    iput p1, p0, Lm/q0;->x:I

    invoke-static {v0}, Lq4/k;->v(Lm/a0;)V

    if-eqz p1, :cond_8b

    if-eq p1, v2, :cond_7c

    if-ne p1, v1, :cond_62

    invoke-static {v0}, Lq4/k;->v(Lm/a0;)V

    sget-object p1, Lm/b;->d:Lm/a;

    invoke-virtual {v0, p2, p1}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm/a;->a(Lm/u;)V

    check-cast p2, Lm/b;

    goto :goto_93

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "invalid tag: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lm/a0;->d:I

    invoke-static {v0, p1}, Lq4/k;->h0(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    invoke-static {v0}, Lq4/k;->v(Lm/a0;)V

    sget-object p1, Lm/r;->d:Lm/a;

    invoke-virtual {v0, p2, p1}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm/a;->a(Lm/u;)V

    check-cast p2, Lm/r;

    goto :goto_93

    :cond_8b
    invoke-virtual {v0}, Lm/a0;->u()Lm/n;

    move-result-object p1

    invoke-virtual {p1}, Lm/n;->d()Lm/u;

    move-result-object p2

    :goto_93
    iput-object p2, p0, Lm/q0;->y:Lm/u;

    return-void

    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid encoding value: "

    invoke-static {p1, p2}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input sequence too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Lm/x;I)Lm/u;
    .registers 3

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    if-le v0, p1, :cond_f

    invoke-virtual {p0, p1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm/q0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lm/q0;

    iget-object v1, p0, Lm/q0;->c:Lm/q;

    iget-object v3, p1, Lm/q0;->c:Lm/q;

    invoke-static {v1, v3}, Lm4/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lm/q0;->d:Lm/l;

    iget-object v3, p1, Lm/q0;->d:Lm/l;

    invoke-static {v1, v3}, Lm4/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lm/q0;->q:Lm/u;

    iget-object v3, p1, Lm/q0;->q:Lm/u;

    invoke-static {v1, v3}, Lm4/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget v1, p0, Lm/q0;->x:I

    iget v3, p1, Lm/q0;->x:I

    if-ne v1, v3, :cond_3b

    iget-object p0, p0, Lm/q0;->y:Lm/u;

    iget-object p1, p1, Lm/q0;->y:Lm/u;

    invoke-virtual {p0, p1}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return v0

    :cond_3b
    return v2
.end method

.method public final hashCode()I
    .registers 4

    iget-object v0, p0, Lm/q0;->c:Lm/q;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lm/q;->hashCode()I

    move-result v0

    :goto_b
    iget-object v2, p0, Lm/q0;->d:Lm/l;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_15

    :cond_11
    invoke-virtual {v2}, Lm/l;->hashCode()I

    move-result v2

    :goto_15
    xor-int/2addr v0, v2

    iget-object v2, p0, Lm/q0;->q:Lm/u;

    if-nez v2, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v2}, Lm/u;->hashCode()I

    move-result v1

    :goto_1f
    xor-int/2addr v0, v1

    iget v1, p0, Lm/q0;->x:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lm/q0;->y:Lm/u;

    invoke-virtual {p0}, Lm/u;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0x28

    invoke-virtual {p1, v0, p2}, Lb1/a;->I(IZ)V

    invoke-virtual {p0}, Lm/q0;->r()Lm/x;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lm/u;->i(Lb1/a;Z)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Z)I
    .registers 2

    invoke-virtual {p0}, Lm/q0;->r()Lm/x;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm/u;->l(Z)I

    move-result p0

    return p0
.end method

.method public p()Lm/u;
    .registers 6

    iget v0, p0, Lm/q0;->z1:I

    packed-switch v0, :pswitch_data_6e

    new-instance v0, Lm/q0;

    iget-object v1, p0, Lm/q0;->c:Lm/q;

    iget-object v2, p0, Lm/q0;->d:Lm/l;

    iget-object v3, p0, Lm/q0;->q:Lm/u;

    iget v4, p0, Lm/q0;->x:I

    iget-object p0, p0, Lm/q0;->y:Lm/u;

    invoke-direct {v0}, Lm/q0;-><init>()V

    iput-object v1, v0, Lm/q0;->c:Lm/q;

    iput-object v2, v0, Lm/q0;->d:Lm/l;

    iput-object v3, v0, Lm/q0;->q:Lm/u;

    if-ltz v4, :cond_61

    const/4 v1, 0x2

    if-gt v4, v1, :cond_61

    iput v4, v0, Lm/q0;->x:I

    const/4 v2, 0x1

    const-string v3, "unexpected object: "

    if-eq v4, v2, :cond_44

    if-eq v4, v1, :cond_29

    goto :goto_4c

    :cond_29
    const-class v1, Lm/b;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_4c

    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    const-class v1, Lm/r;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :goto_4c
    iput-object p0, v0, Lm/q0;->y:Lm/u;

    return-object v0

    :cond_4f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid encoding value: "

    invoke-static {v4, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6d
    return-object p0

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_6d
    .end packed-switch
.end method

.method public final q()Lm/u;
    .registers 2

    iget v0, p0, Lm/q0;->z1:I

    return-object p0
.end method

.method public final r()Lm/x;
    .registers 5

    iget v0, p0, Lm/q0;->z1:I

    packed-switch v0, :pswitch_data_78

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lm/q0;->c:Lm/q;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_12
    iget-object v1, p0, Lm/q0;->d:Lm/l;

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_19
    iget-object v1, p0, Lm/q0;->q:Lm/u;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lm/u;->q()Lm/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_24
    new-instance v1, Lm/p1;

    iget v2, p0, Lm/q0;->x:I

    if-nez v2, :cond_2c

    const/4 v3, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v3, 0x0

    :goto_2d
    iget-object p0, p0, Lm/q0;->y:Lm/u;

    invoke-direct {v1, v3, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/n1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/n1;->q:I

    return-object p0

    :pswitch_3e
    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lm/q0;->c:Lm/q;

    if-eqz v1, :cond_4b

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_4b
    iget-object v1, p0, Lm/q0;->d:Lm/l;

    if-eqz v1, :cond_52

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_52
    iget-object v1, p0, Lm/q0;->q:Lm/u;

    if-eqz v1, :cond_5d

    invoke-virtual {v1}, Lm/u;->p()Lm/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_5d
    new-instance v1, Lm/d1;

    iget v2, p0, Lm/q0;->x:I

    if-nez v2, :cond_65

    const/4 v3, 0x1

    goto :goto_66

    :cond_65
    const/4 v3, 0x0

    :goto_66
    iget-object p0, p0, Lm/q0;->y:Lm/u;

    invoke-direct {v1, v3, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0

    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_3e
    .end packed-switch
.end method
