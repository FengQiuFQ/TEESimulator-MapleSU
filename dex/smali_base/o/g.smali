.class public final Lo/g;
.super Lm/n;

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final c:[Lm/f;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    new-array v0, v0, [Lm/f;

    iput-object v0, p0, Lo/g;->c:[Lm/f;

    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lo/g;->c:[Lm/f;

    array-length v2, v1

    if-eq v0, v2, :cond_2f

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    instance-of v3, v2, Lo/f;

    if-eqz v3, :cond_1c

    check-cast v2, Lo/f;

    goto :goto_2a

    :cond_1c
    if-eqz v2, :cond_29

    new-instance v3, Lo/f;

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-direct {v3, v2}, Lo/f;-><init>(Lm/x;)V

    move-object v2, v3

    goto :goto_2a

    :cond_29
    const/4 v2, 0x0

    :goto_2a
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2f
    return-void
.end method

.method public constructor <init>([Lo/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lm/f;

    iput-object v0, p0, Lo/g;->c:[Lm/f;

    const/4 p0, 0x0

    array-length v1, p1

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 2

    new-instance v0, Lm/a1;

    iget-object p0, p0, Lo/g;->c:[Lm/f;

    invoke-direct {v0, p0}, Lm/a1;-><init>([Lm/f;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lkotlin/jvm/internal/a;

    iget-object p0, p0, Lo/g;->c:[Lm/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlin/jvm/internal/a;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method
