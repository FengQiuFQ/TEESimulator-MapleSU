.class public final Lg3/d;
.super Lg3/h;


# instance fields
.field public final d:I

.field public final q:Lg3/k;


# direct methods
.method public constructor <init>(ILg3/k;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    if-eqz p2, :cond_b

    iput p1, p0, Lg3/d;->d:I

    iput-object p2, p0, Lg3/d;->q:Lg3/k;

    return-void

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "lmsPublicKey"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;)Lg3/d;
    .registers 4

    instance-of v0, p0, Lg3/d;

    if-eqz v0, :cond_7

    check-cast p0, Lg3/d;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_1c

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {p0}, Lg3/k;->a(Ljava/lang/Object;)Lg3/k;

    move-result-object p0

    new-instance v1, Lg3/d;

    invoke-direct {v1, v0, p0}, Lg3/d;-><init>(ILg3/k;)V

    return-object v1

    :cond_1c
    instance-of v0, p0, [B

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    :try_start_21
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_38

    :try_start_2d
    invoke-static {v1}, Lg3/d;->a(Ljava/lang/Object;)Lg3/d;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_35

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_35
    move-exception p0

    move-object v0, v1

    goto :goto_39

    :catchall_38
    move-exception p0

    :goto_39
    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_3e
    throw p0

    :cond_3f
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_4e

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lg3/d;->a(Ljava/lang/Object;)Lg3/d;

    move-result-object p0

    return-object p0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    const-class v1, Lg3/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_22

    :cond_10
    check-cast p1, Lg3/d;

    iget v1, p0, Lg3/d;->d:I

    iget v2, p1, Lg3/d;->d:I

    if-eq v1, v2, :cond_19

    return v0

    :cond_19
    iget-object p0, p0, Lg3/d;->q:Lg3/k;

    iget-object p1, p1, Lg3/d;->q:Lg3/k;

    invoke-virtual {p0, p1}, Lg3/k;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public final getEncoded()[B
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v1, p0, Lg3/d;->d:I

    ushr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    ushr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object p0, p0, Lg3/d;->q:Lg3/k;

    invoke-virtual {p0}, Lg3/k;->b()[B

    move-result-object p0

    :try_start_23
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_2b

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_2b
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lg3/d;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lg3/d;->q:Lg3/k;

    invoke-virtual {p0}, Lg3/k;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
