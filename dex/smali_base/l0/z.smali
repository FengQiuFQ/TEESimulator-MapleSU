.class public final Ll0/z;
.super Lm/n;


# instance fields
.field public final c:[Ll0/y;


# direct methods
.method public constructor <init>(Ll0/y;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p1}, [Ll0/y;

    move-result-object p1

    iput-object p1, p0, Ll0/z;->c:[Ll0/y;

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    new-array v0, v0, [Ll0/y;

    iput-object v0, p0, Ll0/z;->c:[Ll0/y;

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    if-eq v0, v1, :cond_21

    iget-object v1, p0, Ll0/z;->c:[Ll0/y;

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ll0/y;->h(Ljava/lang/Object;)Ll0/y;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll0/z;
    .registers 2

    instance-of v0, p0, Ll0/z;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/z;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Ll0/z;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Ll0/z;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 2

    new-instance v0, Lm/a1;

    iget-object p0, p0, Ll0/z;->c:[Ll0/y;

    invoke-direct {v0, p0}, Lm/a1;-><init>([Lm/f;)V

    return-object v0
.end method

.method public final i()[Ll0/y;
    .registers 4

    iget-object p0, p0, Ll0/z;->c:[Ll0/y;

    array-length v0, p0

    new-array v0, v0, [Ll0/y;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeneralNames:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lm4/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Ll0/z;->c:[Ll0/y;

    array-length v4, v3

    if-eq v2, v4, :cond_22

    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
