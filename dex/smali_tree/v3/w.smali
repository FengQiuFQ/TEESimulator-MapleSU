.class public final Lv3/w;
.super Ls3/a;

# interfaces
.implements Lm4/c;


# instance fields
.field public final q:Lv3/t;

.field public final x:I

.field public final y:[B

.field public final z1:[B


# direct methods
.method public constructor <init>(Li1/g;)V
    .registers 7

    iget-object v0, p1, Li1/g;->a:Ljava/lang/Object;

    check-cast v0, Lv3/t;

    iget-object v1, v0, Lv3/t;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Ls3/a;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lv3/w;->q:Lv3/t;

    iget v1, v0, Lv3/t;->f:I

    iget-object v3, p1, Li1/g;->d:Ljava/lang/Object;

    check-cast v3, [B

    if-eqz v3, :cond_4b

    array-length p1, v3

    add-int v0, v1, v1

    if-ne p1, v0, :cond_28

    iput v2, p0, Lv3/w;->x:I

    invoke-static {v3, v2, v1}, Ls2/b;->t([BII)[B

    move-result-object p1

    iput-object p1, p0, Lv3/w;->y:[B

    invoke-static {v3, v1, v1}, Ls2/b;->t([BII)[B

    move-result-object p1

    iput-object p1, p0, Lv3/w;->z1:[B

    return-void

    :cond_28
    array-length p1, v3

    add-int/lit8 v0, v1, 0x4

    add-int v4, v0, v1

    if-ne p1, v4, :cond_43

    invoke-static {v2, v3}, Lm4/d;->b(I[B)I

    move-result p1

    iput p1, p0, Lv3/w;->x:I

    const/4 p1, 0x4

    invoke-static {v3, p1, v1}, Ls2/b;->t([BII)[B

    move-result-object p1

    iput-object p1, p0, Lv3/w;->y:[B

    invoke-static {v3, v0, v1}, Ls2/b;->t([BII)[B

    move-result-object p1

    iput-object p1, p0, Lv3/w;->z1:[B

    return-void

    :cond_43
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key has wrong size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4b
    iget-object v0, v0, Lv3/t;->a:Lv3/e;

    if-eqz v0, :cond_54

    iget v0, v0, Lv3/e;->a:I

    iput v0, p0, Lv3/w;->x:I

    goto :goto_56

    :cond_54
    iput v2, p0, Lv3/w;->x:I

    :goto_56
    iget-object v0, p1, Li1/g;->b:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_6a

    array-length v2, v0

    if-ne v2, v1, :cond_62

    iput-object v0, p0, Lv3/w;->y:[B

    goto :goto_6e

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length of root must be equal to length of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    new-array v0, v1, [B

    iput-object v0, p0, Lv3/w;->y:[B

    :goto_6e
    iget-object p1, p1, Li1/g;->c:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_82

    array-length v0, p1

    if-ne v0, v1, :cond_7a

    iput-object p1, p0, Lv3/w;->z1:[B

    return-void

    :cond_7a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length of publicSeed must be equal to length of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    new-array p1, v1, [B

    iput-object p1, p0, Lv3/w;->z1:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 5

    iget-object v0, p0, Lv3/w;->q:Lv3/t;

    iget v0, v0, Lv3/t;->f:I

    const/4 v1, 0x0

    iget v2, p0, Lv3/w;->x:I

    if-eqz v2, :cond_13

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    new-array v3, v3, [B

    invoke-static {v3, v2, v1}, Lm4/d;->w([BII)V

    const/4 v1, 0x4

    goto :goto_17

    :cond_13
    add-int v2, v0, v0

    new-array v3, v2, [B

    :goto_17
    iget-object v2, p0, Lv3/w;->y:[B

    invoke-static {v3, v1, v2}, Ls2/b;->n([BI[B)V

    add-int/2addr v1, v0

    iget-object p0, p0, Lv3/w;->z1:[B

    invoke-static {v3, v1, p0}, Ls2/b;->n([BI[B)V

    return-object v3
.end method
