.class public final Ll/h;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 10

    iget v0, p0, Ll/h;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    if-ne v0, v2, :cond_9

    return v2

    :cond_9
    return v1

    :cond_a
    iget v0, p0, Ll/h;->e:I

    const/4 v3, 0x2

    if-gez v0, :cond_12

    iput v3, p0, Ll/h;->b:I

    return v1

    :cond_12
    iget-object v0, p0, Ll/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v4, p0, Ll/h;->c:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    :goto_1e
    if-ge v4, v5, :cond_43

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    const/16 v8, 0xa

    if-eq v6, v8, :cond_2f

    if-eq v6, v7, :cond_2f

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_2f
    if-ne v6, v7, :cond_40

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_40

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_40

    goto :goto_41

    :cond_40
    move v3, v2

    :goto_41
    move v1, v4

    goto :goto_44

    :cond_43
    const/4 v3, -0x1

    :goto_44
    iput v2, p0, Ll/h;->b:I

    iput v3, p0, Ll/h;->e:I

    iput v1, p0, Ll/h;->d:I

    return v2
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    invoke-virtual {p0}, Ll/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    iput v0, p0, Ll/h;->b:I

    iget v0, p0, Ll/h;->d:I

    iget v1, p0, Ll/h;->c:I

    iget v2, p0, Ll/h;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Ll/h;->c:I

    iget-object p0, p0, Ll/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
