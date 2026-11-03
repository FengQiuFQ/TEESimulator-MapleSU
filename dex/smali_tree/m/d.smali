.class public final Lm/d;
.super Lm/u;


# static fields
.field public static final d:Lm/a;

.field public static final q:Lm/d;

.field public static final x:Lm/d;


# instance fields
.field public final c:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/d;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/d;->d:Lm/a;

    new-instance v0, Lm/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/d;-><init>(B)V

    sput-object v0, Lm/d;->q:Lm/d;

    new-instance v0, Lm/d;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lm/d;-><init>(B)V

    sput-object v0, Lm/d;->x:Lm/d;

    return-void
.end method

.method public constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lm/d;->c:B

    return-void
.end method

.method public static r([B)Lm/d;
    .registers 3

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_15

    if-eqz p0, :cond_12

    new-instance v0, Lm/d;

    invoke-direct {v0, p0}, Lm/d;-><init>(B)V

    return-object v0

    :cond_12
    sget-object p0, Lm/d;->q:Lm/d;

    return-object p0

    :cond_15
    sget-object p0, Lm/d;->x:Lm/d;

    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static s(Lm/f;)Lm/d;
    .registers 4

    if-eqz p0, :cond_3c

    instance-of v0, p0, Lm/d;

    if-eqz v0, :cond_7

    goto :goto_3c

    :cond_7
    instance-of v0, p0, [B

    if-eqz v0, :cond_28

    check-cast p0, [B

    :try_start_d
    sget-object v0, Lm/d;->d:Lm/a;

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/d;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    check-cast p0, Lm/d;

    return-object p0
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 4

    instance-of v0, p1, Lm/d;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lm/d;

    invoke-virtual {p0}, Lm/d;->t()Z

    move-result p0

    invoke-virtual {p1}, Lm/d;->t()Z

    move-result p1

    if-ne p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public final hashCode()I
    .registers 1

    invoke-virtual {p0}, Lm/d;->t()Z

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lb1/a;->I(IZ)V

    invoke-virtual {p1, v0}, Lb1/a;->D(I)V

    iget-byte p0, p0, Lm/d;->c:B

    invoke-virtual {p1, p0}, Lb1/a;->B(I)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    const/4 p0, 0x1

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public final p()Lm/u;
    .registers 1

    invoke-virtual {p0}, Lm/d;->t()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lm/d;->x:Lm/d;

    return-object p0

    :cond_9
    sget-object p0, Lm/d;->q:Lm/d;

    return-object p0
.end method

.method public final t()Z
    .registers 1

    iget-byte p0, p0, Lm/d;->c:B

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lm/d;->t()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "TRUE"

    return-object p0

    :cond_9
    const-string p0, "FALSE"

    return-object p0
.end method
