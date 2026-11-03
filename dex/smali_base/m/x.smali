.class public abstract Lm/x;
.super Lm/u;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final d:Lm/a;


# instance fields
.field public c:[Lm/f;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/x;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/x;->d:Lm/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lm/g;->d:[Lm/f;

    iput-object v0, p0, Lm/x;->c:[Lm/f;

    return-void
.end method

.method public constructor <init>(Lm/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    new-array v0, v0, [Lm/f;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lm/x;->c:[Lm/f;

    return-void

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lm/f;Lm/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    const/4 v0, 0x2

    new-array v0, v0, [Lm/f;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    iput-object v0, p0, Lm/x;->c:[Lm/f;

    return-void

    :cond_13
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element2\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element1\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lm/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lm/g;->d()[Lm/f;

    move-result-object p1

    iput-object p1, p0, Lm/x;->c:[Lm/f;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lm/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    if-eqz v2, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_10
    invoke-static {p1}, Lm/g;->b([Lm/f;)[Lm/f;

    move-result-object p1

    iput-object p1, p0, Lm/x;->c:[Lm/f;

    return-void

    :cond_17
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lm/f;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/x;->c:[Lm/f;

    return-void
.end method

.method public static t(Ljava/lang/Object;)Lm/x;
    .registers 4

    if-eqz p0, :cond_4e

    instance-of v0, p0, Lm/x;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_3a

    check-cast v0, Lm/x;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_3a

    :try_start_1d
    sget-object v0, Lm/x;->d:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
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

    :cond_4e
    :goto_4e
    check-cast p0, Lm/x;

    return-object p0
.end method

.method public static u(Lm/a0;Z)Lm/x;
    .registers 3

    sget-object v0, Lm/x;->d:Lm/a;

    invoke-virtual {v0, p0, p1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    return-object p0
.end method


# virtual methods
.method public abstract A()Lm/y;
.end method

.method public B()[Lm/f;
    .registers 1

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    invoke-static {p0}, Lm/g;->b([Lm/f;)[Lm/f;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lm/u;)Z
    .registers 7

    instance-of v0, p1, Lm/x;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lm/x;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v2

    if-eq v2, v0, :cond_13

    return v1

    :cond_13
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_32

    iget-object v3, p0, Lm/x;->c:[Lm/f;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lm/f;->d()Lm/u;

    move-result-object v3

    iget-object v4, p1, Lm/x;->c:[Lm/f;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    if-eq v3, v4, :cond_2f

    invoke-virtual {v3, v4}, Lm/u;->h(Lm/u;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lm/x;->c:[Lm/f;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_5
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_19

    mul-int/lit16 v1, v1, 0x101

    iget-object v2, p0, Lm/x;->c:[Lm/f;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    invoke-virtual {v2}, Lm/u;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_5

    :cond_19
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, Lkotlin/jvm/internal/a;

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkotlin/jvm/internal/a;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public p()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/x;-><init>([Lm/f;I)V

    const/4 p0, -0x1

    iput p0, v0, Lm/a1;->q:I

    return-object v0
.end method

.method public q()Lm/u;
    .registers 3

    new-instance v0, Lm/n1;

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm/x;-><init>([Lm/f;I)V

    const/4 p0, -0x1

    iput p0, v0, Lm/n1;->q:I

    return-object v0
.end method

.method public final r()[Lm/b;
    .registers 5

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    new-array v1, v0, [Lm/b;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Lm/x;->c:[Lm/f;

    aget-object v3, v3, v2

    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public final s()[Lm/r;
    .registers 5

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    new-array v1, v0, [Lm/r;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_16

    iget-object v3, p0, Lm/x;->c:[Lm/f;

    aget-object v3, v3, v2

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-object v1
.end method

.method public size()I
    .registers 1

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    array-length p0, p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "[]"

    return-object p0

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_11
    iget-object v3, p0, Lm/x;->c:[Lm/f;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_26

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_26
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11
.end method

.method public v(I)Lm/f;
    .registers 2

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public w()Ljava/util/Enumeration;
    .registers 2

    new-instance v0, Lm/w;

    invoke-direct {v0, p0}, Lm/w;-><init>(Lm/x;)V

    return-object v0
.end method

.method public abstract x()Lm/b;
.end method

.method public abstract y()Lm/q0;
.end method

.method public abstract z()Lm/r;
.end method
