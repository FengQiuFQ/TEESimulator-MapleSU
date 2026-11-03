.class public final Lg3/g;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/c;


# instance fields
.field public final c:Lg3/f;

.field public final d:[B

.field public final q:[B


# direct methods
.method public constructor <init>(Lg3/f;[B[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3/g;->c:Lg3/f;

    iput-object p2, p0, Lg3/g;->d:[B

    iput-object p3, p0, Lg3/g;->q:[B

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lg3/g;
    .registers 5

    instance-of v0, p0, Lg3/g;

    if-eqz v0, :cond_7

    check-cast p0, Lg3/g;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_34

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget-object v1, Lg3/f;->g:Lg3/e;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg3/f;

    iget v1, v0, Lg3/f;->b:I

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    iget v2, v0, Lg3/f;->d:I

    iget v3, v0, Lg3/f;->b:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lg3/g;

    invoke-direct {p0, v0, v1, v2}, Lg3/g;-><init>(Lg3/f;[B[B)V

    return-object p0

    :cond_34
    instance-of v0, p0, [B

    if-eqz v0, :cond_57

    const/4 v0, 0x0

    :try_start_39
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_50

    :try_start_45
    invoke-static {v1}, Lg3/g;->a(Ljava/lang/Object;)Lg3/g;

    move-result-object p0
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4d

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_4d
    move-exception p0

    move-object v0, v1

    goto :goto_51

    :catchall_50
    move-exception p0

    :goto_51
    if-eqz v0, :cond_56

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_56
    throw p0

    :cond_57
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_66

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lg3/g;->a(Ljava/lang/Object;)Lg3/g;

    move-result-object p0

    return-object p0

    :cond_66
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

    if-eqz p1, :cond_36

    const-class v1, Lg3/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_36

    :cond_10
    check-cast p1, Lg3/g;

    iget-object v1, p1, Lg3/g;->c:Lg3/f;

    iget-object v2, p0, Lg3/g;->c:Lg3/f;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_21

    :cond_1f
    if-eqz v1, :cond_22

    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Lg3/g;->d:[B

    iget-object v2, p1, Lg3/g;->d:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2d

    return v0

    :cond_2d
    iget-object p0, p0, Lg3/g;->q:[B

    iget-object p1, p1, Lg3/g;->q:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_36
    :goto_36
    return v0
.end method

.method public final getEncoded()[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lg3/g;->c:Lg3/f;

    iget v1, v1, Lg3/f;->a:I

    const/4 v2, 0x0

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v3, v2

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lg3/g;->d:[B

    :try_start_1c
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_34

    iget-object p0, p0, Lg3/g;->q:[B

    :try_start_21
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_29

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_29
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_34
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lg3/g;->c:Lg3/f;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg3/g;->d:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lg3/g;->q:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
