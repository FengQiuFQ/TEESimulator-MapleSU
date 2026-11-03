.class public final Lm/b1;
.super Lm/y;


# instance fields
.field public x:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lm/y;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lm/b1;->x:I

    return-void
.end method

.method public constructor <init>(Lm/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lm/y;-><init>(Lm/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lm/b1;->x:I

    return-void
.end method

.method public constructor <init>([Lm/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lm/y;-><init>([Lm/f;)V

    const/4 p1, -0x1

    iput p1, p0, Lm/b1;->x:I

    return-void
.end method


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 11

    const/16 v0, 0x31

    invoke-virtual {p1, v0, p2}, Lb1/a;->I(IZ)V

    invoke-virtual {p1}, Lb1/a;->o()Lm/y0;

    move-result-object p2

    iget-object v0, p0, Lm/y;->c:[Lm/f;

    array-length v1, v0

    iget v2, p0, Lm/b1;->x:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_40

    const/16 v2, 0x10

    if-le v1, v2, :cond_17

    goto :goto_40

    :cond_17
    new-array v2, v1, [Lm/u;

    move v5, v3

    move v6, v5

    :goto_1b
    if-ge v5, v1, :cond_31

    aget-object v7, v0, v5

    invoke-interface {v7}, Lm/f;->d()Lm/u;

    move-result-object v7

    invoke-virtual {v7}, Lm/u;->p()Lm/u;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v7, v4}, Lm/u;->l(Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_31
    iput v6, p0, Lm/b1;->x:I

    invoke-virtual {p1, v6}, Lb1/a;->D(I)V

    :goto_36
    if-ge v3, v1, :cond_59

    aget-object p0, v2, v3

    invoke-virtual {p0, p2, v4}, Lm/u;->i(Lb1/a;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_40
    :goto_40
    invoke-virtual {p0}, Lm/b1;->v()I

    move-result p0

    invoke-virtual {p1, p0}, Lb1/a;->D(I)V

    :goto_47
    if-ge v3, v1, :cond_59

    aget-object p0, v0, v3

    invoke-interface {p0}, Lm/f;->d()Lm/u;

    move-result-object p0

    invoke-virtual {p0}, Lm/u;->p()Lm/u;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Lm/u;->i(Lb1/a;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_59
    return-void
.end method

.method public final l(Z)I
    .registers 2

    invoke-virtual {p0}, Lm/b1;->v()I

    move-result p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final p()Lm/u;
    .registers 2

    iget-object v0, p0, Lm/y;->d:[Lm/f;

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-super {p0}, Lm/y;->p()Lm/u;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final v()I
    .registers 7

    iget v0, p0, Lm/b1;->x:I

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

    invoke-virtual {v4}, Lm/u;->p()Lm/u;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lm/u;->l(Z)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1e
    iput v3, p0, Lm/b1;->x:I

    :cond_20
    iget p0, p0, Lm/b1;->x:I

    return p0
.end method
