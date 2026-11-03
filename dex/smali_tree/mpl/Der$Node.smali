.class public final Lmpl/Der$Node;
.super Ljava/lang/Object;
.source "Der.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/Der;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field private dirty:Z

.field private kids:[Lmpl/Der$Node;

.field private parentNode:Lmpl/Der$Node;

.field private final rawBytes:[B

.field private final tagBytes:[B

.field private valueBytes:[B


# direct methods
.method private constructor <init>([B[B[B[Lmpl/Der$Node;)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lmpl/Der$Node;->tagBytes:[B

    .line 87
    iput-object p2, p0, Lmpl/Der$Node;->rawBytes:[B

    .line 88
    iput-object p3, p0, Lmpl/Der$Node;->valueBytes:[B

    .line 89
    iput-object p4, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    return-void
.end method

.method synthetic constructor <init>([B[B[B[Lmpl/Der$Node;Lmpl/Der$1;)V
    .registers 6

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lmpl/Der$Node;-><init>([B[B[B[Lmpl/Der$Node;)V

    return-void
.end method

.method static synthetic access$202(Lmpl/Der$Node;Lmpl/Der$Node;)Lmpl/Der$Node;
    .registers 2

    .line 76
    iput-object p1, p0, Lmpl/Der$Node;->parentNode:Lmpl/Der$Node;

    return-object p1
.end method

.method private markDirty()V
    .registers 3

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lmpl/Der$Node;->dirty:Z

    .line 161
    iget-object v1, p0, Lmpl/Der$Node;->parentNode:Lmpl/Der$Node;

    :goto_5
    if-eqz v1, :cond_c

    .line 163
    iput-boolean v0, v1, Lmpl/Der$Node;->dirty:Z

    .line 164
    iget-object v1, v1, Lmpl/Der$Node;->parentNode:Lmpl/Der$Node;

    goto :goto_5

    :cond_c
    return-void
.end method


# virtual methods
.method public child(I)Lmpl/Der$Node;
    .registers 5

    .line 112
    iget-object v0, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    array-length v1, v0

    if-ge p1, v1, :cond_c

    .line 115
    aget-object p1, v0, p1

    return-object p1

    .line 113
    :cond_c
    new-instance v0, Lmpl/Der$DerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "child index out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (count "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmpl/Der$Node;->childCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childCount()I
    .registers 2

    .line 108
    iget-object v0, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method public isConstructed()Z
    .registers 3

    .line 104
    iget-object v0, p0, Lmpl/Der$Node;->tagBytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    return v0

    :cond_b
    return v1
.end method

.method public oid()Ljava/lang/String;
    .registers 3

    .line 192
    invoke-virtual {p0}, Lmpl/Der$Node;->tag()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lmpl/Der$Node;->valueBytes:[B

    if-nez v0, :cond_c

    goto :goto_11

    .line 195
    :cond_c
    invoke-static {v0}, Lmpl/Der;->oidString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public rawLength()I
    .registers 2

    .line 200
    iget-object v0, p0, Lmpl/Der$Node;->rawBytes:[B

    if-nez v0, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method

.method public replaceChild(ILmpl/Der$Node;)V
    .registers 5

    .line 133
    iget-object v0, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    if-eqz v0, :cond_1b

    if-ltz p1, :cond_1b

    array-length v1, v0

    if-ge p1, v1, :cond_1b

    if-eqz p2, :cond_13

    .line 139
    aput-object p2, v0, p1

    .line 140
    iput-object p0, p2, Lmpl/Der$Node;->parentNode:Lmpl/Der$Node;

    .line 141
    invoke-direct {p0}, Lmpl/Der$Node;->markDirty()V

    return-void

    .line 137
    :cond_13
    new-instance p1, Lmpl/Der$DerException;

    const-string p2, "replaceChild: null replacement"

    invoke-direct {p1, p2}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1b
    new-instance p2, Lmpl/Der$DerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replaceChild: index out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public serialize()[B
    .registers 6

    .line 173
    iget-boolean v0, p0, Lmpl/Der$Node;->dirty:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lmpl/Der$Node;->rawBytes:[B

    if-eqz v0, :cond_f

    .line 174
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    .line 177
    :cond_f
    iget-object v0, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    if-eqz v0, :cond_33

    .line 178
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 179
    :goto_1c
    iget-object v3, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    array-length v4, v3

    if-ge v2, v4, :cond_2e

    .line 180
    aget-object v3, v3, v2

    invoke-virtual {v3}, Lmpl/Der$Node;->serialize()[B

    move-result-object v3

    .line 181
    array-length v4, v3

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 183
    :cond_2e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3b

    .line 185
    :cond_33
    iget-object v0, p0, Lmpl/Der$Node;->valueBytes:[B

    if-nez v0, :cond_3b

    # getter for: Lmpl/Der;->EMPTY:[B
    invoke-static {}, Lmpl/Der;->access$000()[B

    move-result-object v0

    .line 187
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lmpl/Der$Node;->tagBytes:[B

    invoke-static {v1, v0}, Lmpl/Der;->tlv([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public setValue([B)V
    .registers 3

    .line 149
    invoke-virtual {p0}, Lmpl/Der$Node;->isConstructed()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lmpl/Der$Node;->kids:[Lmpl/Der$Node;

    if-nez v0, :cond_20

    if-eqz p1, :cond_18

    .line 155
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lmpl/Der$Node;->valueBytes:[B

    .line 156
    invoke-direct {p0}, Lmpl/Der$Node;->markDirty()V

    return-void

    .line 153
    :cond_18
    new-instance p1, Lmpl/Der$DerException;

    const-string v0, "setValue: null value"

    invoke-direct {p1, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 150
    :cond_20
    new-instance p1, Lmpl/Der$DerException;

    const-string v0, "setValue: node is constructed"

    invoke-direct {p1, v0}, Lmpl/Der$DerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public tag()I
    .registers 3

    .line 94
    iget-object v0, p0, Lmpl/Der$Node;->tagBytes:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public tagBytes()[B
    .registers 2

    .line 99
    iget-object v0, p0, Lmpl/Der$Node;->tagBytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public value()[B
    .registers 2

    .line 120
    iget-object v0, p0, Lmpl/Der$Node;->valueBytes:[B

    if-nez v0, :cond_9

    # getter for: Lmpl/Der;->EMPTY:[B
    invoke-static {}, Lmpl/Der;->access$000()[B

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public valueLength()I
    .registers 2

    .line 124
    iget-object v0, p0, Lmpl/Der$Node;->valueBytes:[B

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    array-length v0, v0

    return v0
.end method
