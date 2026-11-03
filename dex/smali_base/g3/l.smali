.class public final Lg3/l;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/c;


# instance fields
.field public final c:I

.field public final d:Lg3/g;

.field public final q:Lg3/m;

.field public final x:[[B


# direct methods
.method public constructor <init>(ILg3/g;Lg3/m;[[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg3/l;->c:I

    iput-object p2, p0, Lg3/l;->d:Lg3/g;

    iput-object p3, p0, Lg3/l;->q:Lg3/m;

    iput-object p4, p0, Lg3/l;->x:[[B

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lg3/l;
    .registers 8

    instance-of v0, p0, Lg3/l;

    if-eqz v0, :cond_7

    check-cast p0, Lg3/l;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_3f

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {p0}, Lg3/g;->a(Ljava/lang/Object;)Lg3/g;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    sget-object v3, Lg3/m;->e:Lg3/e;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg3/m;

    iget v3, v2, Lg3/m;->c:I

    new-array v4, v3, [[B

    const/4 v5, 0x0

    :goto_2b
    if-ge v5, v3, :cond_39

    iget v6, v2, Lg3/m;->b:I

    new-array v6, v6, [B

    aput-object v6, v4, v5

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    :cond_39
    new-instance v0, Lg3/l;

    invoke-direct {v0, v1, p0, v2, v4}, Lg3/l;-><init>(ILg3/g;Lg3/m;[[B)V

    return-object v0

    :cond_3f
    instance-of v0, p0, [B

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    :try_start_44
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_5b

    :try_start_50
    invoke-static {v1}, Lg3/l;->a(Ljava/lang/Object;)Lg3/l;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_58

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_58
    move-exception p0

    move-object v0, v1

    goto :goto_5c

    :catchall_5b
    move-exception p0

    :goto_5c
    if-eqz v0, :cond_61

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_61
    throw p0

    :cond_62
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_71

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lg3/l;->a(Ljava/lang/Object;)Lg3/l;

    move-result-object p0

    return-object p0

    :cond_71
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
    .registers 7

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_42

    const-class v1, Lg3/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_42

    :cond_10
    check-cast p1, Lg3/l;

    iget-object v1, p1, Lg3/l;->q:Lg3/m;

    iget-object v2, p1, Lg3/l;->d:Lg3/g;

    iget v3, p0, Lg3/l;->c:I

    iget v4, p1, Lg3/l;->c:I

    if-eq v3, v4, :cond_1d

    return v0

    :cond_1d
    iget-object v3, p0, Lg3/l;->d:Lg3/g;

    if-eqz v3, :cond_28

    invoke-virtual {v3, v2}, Lg3/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_2a

    :cond_28
    if-eqz v2, :cond_2b

    :goto_2a
    return v0

    :cond_2b
    iget-object v2, p0, Lg3/l;->q:Lg3/m;

    if-eqz v2, :cond_36

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_38

    :cond_36
    if-eqz v1, :cond_39

    :goto_38
    return v0

    :cond_39
    iget-object p0, p0, Lg3/l;->x:[[B

    iget-object p1, p1, Lg3/l;->x:[[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_42
    :goto_42
    return v0
.end method

.method public final getEncoded()[B
    .registers 6

    new-instance v0, Lg3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg3/a;-><init>(I)V

    iget v1, p0, Lg3/l;->c:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-object v1, p0, Lg3/l;->d:Lg3/g;

    invoke-virtual {v1}, Lg3/g;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lg3/a;->b([B)V

    iget-object v1, p0, Lg3/l;->q:Lg3/m;

    iget v1, v1, Lg3/m;->a:I

    invoke-virtual {v0, v1}, Lg3/a;->d(I)V

    iget-object p0, p0, Lg3/l;->x:[[B

    :try_start_1d
    array-length v1, p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1e} :catch_30

    const/4 v2, 0x0

    :goto_1f
    iget-object v3, v0, Lg3/a;->a:Ljava/io/ByteArrayOutputStream;

    if-ge v2, v1, :cond_2b

    :try_start_23
    aget-object v4, p0, v2

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_30

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_30
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final hashCode()I
    .registers 4

    iget v0, p0, Lg3/l;->c:I

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lg3/l;->d:Lg3/g;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lg3/g;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lg3/l;->q:Lg3/m;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lg3/l;->x:[[B

    invoke-static {p0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
