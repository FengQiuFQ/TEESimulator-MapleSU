.class public abstract Li/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final c:I

.field public final d:I

.field public final q:I


# direct methods
.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_50

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_48

    iput p1, p0, Li/a;->c:I

    if-lez p3, :cond_23

    if-lt p1, p2, :cond_10

    goto :goto_3b

    :cond_10
    rem-int v0, p2, p3

    if-ltz v0, :cond_15

    goto :goto_16

    :cond_15
    add-int/2addr v0, p3

    :goto_16
    rem-int/2addr p1, p3

    if-ltz p1, :cond_1a

    goto :goto_1b

    :cond_1a
    add-int/2addr p1, p3

    :goto_1b
    sub-int/2addr v0, p1

    rem-int/2addr v0, p3

    if-ltz v0, :cond_20

    goto :goto_21

    :cond_20
    add-int/2addr v0, p3

    :goto_21
    sub-int/2addr p2, v0

    goto :goto_3b

    :cond_23
    if-gez p3, :cond_40

    if-gt p1, p2, :cond_28

    goto :goto_3b

    :cond_28
    neg-int v0, p3

    rem-int/2addr p1, v0

    if-ltz p1, :cond_2d

    goto :goto_2e

    :cond_2d
    add-int/2addr p1, v0

    :goto_2e
    rem-int v1, p2, v0

    if-ltz v1, :cond_33

    goto :goto_34

    :cond_33
    add-int/2addr v1, v0

    :goto_34
    sub-int/2addr p1, v1

    rem-int/2addr p1, v0

    if-ltz p1, :cond_39

    goto :goto_3a

    :cond_39
    add-int/2addr p1, v0

    :goto_3a
    add-int/2addr p2, p1

    :goto_3b
    iput p2, p0, Li/a;->d:I

    iput p3, p0, Li/a;->q:I

    return-void

    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 4

    new-instance v0, Li/b;

    iget v1, p0, Li/a;->d:I

    iget v2, p0, Li/a;->q:I

    iget p0, p0, Li/a;->c:I

    invoke-direct {v0, p0, v1, v2}, Li/b;-><init>(III)V

    return-object v0
.end method
