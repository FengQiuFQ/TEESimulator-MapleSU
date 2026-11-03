.class public abstract Lm/r;
.super Lm/u;

# interfaces
.implements Lm/s;


# static fields
.field public static final d:Lm/a;

.field public static final q:[B


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/r;

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/r;->d:Lm/a;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lm/r;->q:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lm/r;->c:[B

    return-void

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Ljava/lang/Object;)Lm/r;
    .registers 4

    if-eqz p0, :cond_4e

    instance-of v0, p0, Lm/r;

    if-eqz v0, :cond_7

    goto :goto_4e

    :cond_7
    instance-of v0, p0, Lm/f;

    if-eqz v0, :cond_19

    move-object v0, p0

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/r;

    if-eqz v1, :cond_3a

    check-cast v0, Lm/r;

    return-object v0

    :cond_19
    instance-of v0, p0, [B

    if-eqz v0, :cond_3a

    :try_start_1d
    sget-object v0, Lm/r;->d:Lm/a;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lm/a;->b([B)Lm/u;

    move-result-object p0

    check-cast p0, Lm/r;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to construct OCTET STRING from byte[]: "

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

    const-string v1, "illegal object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    :goto_4e
    check-cast p0, Lm/r;

    return-object p0
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 1

    return-object p0
.end method

.method public final c()Ljava/io/InputStream;
    .registers 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/r;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    iget-object p1, p1, Lm/r;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public p()Lm/u;
    .registers 2

    new-instance v0, Lm/x0;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    return-object v0
.end method

.method public q()Lm/u;
    .registers 2

    new-instance v0, Lm/x0;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-direct {v0, p0}, Lm/r;-><init>([B)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    sget-object v0, Ln4/c;->a:Ln4/b;

    const/4 v0, 0x0

    iget-object p0, p0, Lm/r;->c:[B

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ln4/c;->d([BII)[B

    move-result-object p0

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
