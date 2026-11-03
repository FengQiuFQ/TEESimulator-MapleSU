.class public Lm/u0;
.super Lm/u;

# interfaces
.implements Lm/z;


# static fields
.field public static final d:Lm/a;


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/u0;

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/u0;->d:Lm/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    invoke-static {p1}, Lm4/m;->c(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lm/u0;->c:[B

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/u0;->c:[B

    return-void
.end method

.method public static r(Ljava/lang/Object;)Lm/u0;
    .registers 4

    if-eqz p0, :cond_4e

    instance-of v0, p0, Lm/u0;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/u0;

    if-eqz v1, :cond_19

    check-cast v0, Lm/u0;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_3a

    :try_start_1d
    sget-object v0, Lm/u0;->d:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/u0;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encoding error in getInstance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
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

    :cond_4e
    :goto_4e
    check-cast p0, Lm/u0;

    return-object p0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/u0;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/u0;

    iget-object p0, p0, Lm/u0;->c:[B

    iget-object p1, p1, Lm/u0;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0x16

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-virtual {p1, v0, p2, p0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    iget-object p0, p0, Lm/u0;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lm/u0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
