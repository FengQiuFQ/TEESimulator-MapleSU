.class public final Lm/g;
.super Ljava/lang/Object;


# static fields
.field public static final d:[Lm/f;


# instance fields
.field public a:[Lm/f;

.field public b:I

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Lm/f;

    sput-object v0, Lm/g;->d:[Lm/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lm/g;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_14

    if-nez p1, :cond_a

    sget-object p1, Lm/g;->d:[Lm/f;

    goto :goto_c

    :cond_a
    new-array p1, p1, [Lm/f;

    :goto_c
    iput-object p1, p0, Lm/g;->a:[Lm/f;

    const/4 p1, 0x0

    iput p1, p0, Lm/g;->b:I

    iput-boolean p1, p0, Lm/g;->c:Z

    return-void

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'initialCapacity\' must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b([Lm/f;)[Lm/f;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    sget-object p0, Lm/g;->d:[Lm/f;

    return-object p0

    :cond_7
    invoke-virtual {p0}, [Lm/f;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lm/f;

    return-object p0
.end method


# virtual methods
.method public final a(Lm/f;)V
    .registers 7

    if-eqz p1, :cond_31

    iget-object v0, p0, Lm/g;->a:[Lm/f;

    array-length v1, v0

    iget v2, p0, Lm/g;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-le v2, v1, :cond_d

    goto :goto_e

    :cond_d
    move v3, v4

    :goto_e
    iget-boolean v1, p0, Lm/g;->c:Z

    or-int/2addr v1, v3

    if-eqz v1, :cond_28

    array-length v0, v0

    shr-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lm/f;

    iget-object v1, p0, Lm/g;->a:[Lm/f;

    iget v3, p0, Lm/g;->b:I

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lm/g;->a:[Lm/f;

    iput-boolean v4, p0, Lm/g;->c:Z

    :cond_28
    iget-object v0, p0, Lm/g;->a:[Lm/f;

    iget v1, p0, Lm/g;->b:I

    aput-object p1, v0, v1

    iput v2, p0, Lm/g;->b:I

    return-void

    :cond_31
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)Lm/f;
    .registers 4

    iget v0, p0, Lm/g;->b:I

    if-ge p1, v0, :cond_9

    iget-object p0, p0, Lm/g;->a:[Lm/f;

    aget-object p0, p0, p1

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lm/g;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()[Lm/f;
    .registers 4

    iget v0, p0, Lm/g;->b:I

    if-nez v0, :cond_7

    sget-object p0, Lm/g;->d:[Lm/f;

    return-object p0

    :cond_7
    iget-object v1, p0, Lm/g;->a:[Lm/f;

    array-length v2, v1

    if-ne v2, v0, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/g;->c:Z

    return-object v1

    :cond_10
    new-array p0, v0, [Lm/f;

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method
