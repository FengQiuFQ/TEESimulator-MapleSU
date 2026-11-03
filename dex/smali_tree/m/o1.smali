.class public final Lm/o1;
.super Lm/y;


# instance fields
.field public x:I


# direct methods
.method public constructor <init>([Lm/f;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lm/y;-><init>(Z[Lm/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lm/o1;->x:I

    return-void
.end method


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 11

    const/16 v0, 0x31

    invoke-virtual {p1, v0, p2}, Lb1/a;->I(IZ)V

    invoke-virtual {p1}, Lb1/a;->p()Lm/m1;

    move-result-object p2

    iget-object v0, p0, Lm/y;->c:[Lm/f;

    array-length v1, v0

    iget v2, p0, Lm/o1;->x:I

    const/4 v3, 0x0

    if-gez v2, :cond_40

    const/16 v2, 0x10

    if-le v1, v2, :cond_16

    goto :goto_40

    :cond_16
    new-array v2, v1, [Lm/u;

    move v4, v3

    move v5, v4

    :goto_1a
    if-ge v4, v1, :cond_31

    aget-object v6, v0, v4

    invoke-interface {v6}, Lm/f;->d()Lm/u;

    move-result-object v6

    invoke-virtual {v6}, Lm/u;->q()Lm/u;

    move-result-object v6

    aput-object v6, v2, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lm/u;->l(Z)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_31
    iput v5, p0, Lm/o1;->x:I

    invoke-virtual {p1, v5}, Lb1/a;->D(I)V

    :goto_36
    if-ge v3, v1, :cond_55

    aget-object p0, v2, v3

    invoke-virtual {p2, p0}, Lm/m1;->J(Lm/u;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lm/o1;->v()I

    move-result p0

    invoke-virtual {p1, p0}, Lb1/a;->D(I)V

    :goto_47
    if-ge v3, v1, :cond_55

    aget-object p0, v0, v3

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p2, p0}, Lm/m1;->J(Lm/u;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_55
    return-void
.end method

.method public final l(Z)I
    .registers 2

    invoke-virtual {p0}, Lm/o1;->v()I

    move-result p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final q()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final v()I
    .registers 7

    iget v0, p0, Lm/o1;->x:I

    if-gez v0, :cond_20

    iget-object v0, p0, Lm/y;->c:[Lm/f;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v2, v1, :cond_1e

    aget-object v4, v0, v2

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    invoke-virtual {v4}, Lm/u;->q()Lm/u;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lm/u;->l(Z)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    iput v3, p0, Lm/o1;->x:I

    :cond_20
    iget p0, p0, Lm/o1;->x:I

    return p0
.end method
