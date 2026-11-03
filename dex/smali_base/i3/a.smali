.class public final Li3/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# static fields
.field public static final m:[B


# instance fields
.field public g:Li3/g;

.field public h:Li3/f;

.field public i:Ljava/security/SecureRandom;

.field public j:Li3/b;

.field public k:Ls0/e0;

.field public l:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Li3/a;->m:[B

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .registers 9

    invoke-virtual {p0}, Li3/a;->c()Ls0/g0;

    move-result-object v4

    iget-object v0, p0, Li3/a;->j:Li3/b;

    array-length v3, p1

    iget-object p0, p0, Li3/a;->g:Li3/g;

    iget-object v5, p0, Li3/g;->q:[B

    iget-object v6, p0, Li3/g;->x:[B

    iget p0, v0, Li3/b;->f:I

    iget v1, v0, Li3/b;->d:I

    mul-int/2addr p0, v1

    add-int/lit8 p0, p0, 0x40

    iget v1, v0, Li3/b;->n:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array v1, p0, [B

    const/4 p0, 0x0

    invoke-virtual {v4, v1, p0}, Ls0/g0;->doFinal([BI)I

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Li3/b;->a([B[BILs0/g0;[B[B)Z

    move-result p0

    return p0
.end method

.method public final b()[B
    .registers 10

    invoke-virtual {p0}, Li3/a;->c()Ls0/g0;

    move-result-object v2

    const/16 v0, 0x20

    new-array v8, v0, [B

    iget-object v0, p0, Li3/a;->i:Ljava/security/SecureRandom;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_f
    iget-object v0, p0, Li3/a;->j:Li3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x40

    new-array v1, v0, [B

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ls0/g0;->b([BII)I

    iget-object v0, p0, Li3/a;->j:Li3/b;

    iget-object p0, p0, Li3/a;->h:Li3/f;

    iget-object v3, p0, Li3/f;->q:[B

    iget-object v4, p0, Li3/f;->x:[B

    iget-object v5, p0, Li3/f;->B1:[B

    iget-object v6, p0, Li3/f;->z1:[B

    iget-object v7, p0, Li3/f;->A1:[B

    invoke-virtual/range {v0 .. v8}, Li3/b;->c([BLs0/g0;[B[B[B[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final c()Ls0/g0;
    .registers 6

    iget-object v0, p0, Li3/a;->k:Ls0/e0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x40

    new-array v1, v0, [B

    iget-object v2, p0, Li3/a;->k:Ls0/e0;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ls0/e0;->doFinal([BI)I

    iget-object v2, p0, Li3/a;->j:Li3/b;

    new-instance v4, Ls0/g0;

    iget-object v2, v2, Li3/b;->b:Ls0/g0;

    invoke-direct {v4, v2}, Ls0/n;-><init>(Ls0/n;)V

    iget-object p0, p0, Li3/a;->l:[B

    array-length v2, p0

    invoke-virtual {v4, p0, v3, v2}, Ls0/n;->f([BII)V

    invoke-virtual {v4, v1, v3, v0}, Ls0/n;->f([BII)V

    return-object v4
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 11

    instance-of v0, p2, Le1/r0;

    if-eqz v0, :cond_1c

    check-cast p2, Le1/r0;

    iget-object v0, p2, Le1/r0;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object p2, p2, Le1/r0;->c:Lorg/bouncycastle/crypto/g;

    array-length v1, v0

    const/16 v2, 0xff

    if-gt v1, v2, :cond_14

    goto :goto_1e

    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "context too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c
    sget-object v0, Li3/a;->m:[B

    :goto_1e
    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_62

    iput-object v4, p0, Li3/a;->g:Li3/g;

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_38

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Li3/f;

    iput-object p1, p0, Li3/a;->h:Li3/f;

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Li3/a;->i:Ljava/security/SecureRandom;

    goto :goto_3e

    :cond_38
    check-cast p2, Li3/f;

    iput-object p2, p0, Li3/a;->h:Li3/f;

    iput-object v4, p0, Li3/a;->i:Ljava/security/SecureRandom;

    :goto_3e
    iget-object p1, p0, Li3/a;->h:Li3/f;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    iget-object p2, p0, Li3/a;->i:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2}, Li3/e;->a(Ljava/security/SecureRandom;)Li3/b;

    move-result-object p2

    iput-object p2, p0, Li3/a;->j:Li3/b;

    iget-object v4, p0, Li3/a;->h:Li3/f;

    iget-object v4, v4, Li3/f;->y:[B

    iget-object p2, p2, Li3/b;->b:Ls0/g0;

    invoke-virtual {p2, v4, v2, v1}, Ls0/n;->f([BII)V

    invoke-virtual {p2, v3}, Ls0/n;->update(B)V

    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ls0/n;->update(B)V

    array-length v1, v0

    invoke-virtual {p2, v0, v2, v1}, Ls0/n;->f([BII)V

    goto :goto_98

    :cond_62
    check-cast p2, Li3/g;

    iput-object p2, p0, Li3/a;->g:Li3/g;

    iput-object v4, p0, Li3/a;->h:Li3/f;

    iput-object v4, p0, Li3/a;->i:Ljava/security/SecureRandom;

    iget-object p1, p2, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    invoke-virtual {p1, v4}, Li3/e;->a(Ljava/security/SecureRandom;)Li3/b;

    move-result-object p2

    iput-object p2, p0, Li3/a;->j:Li3/b;

    iget-object v4, p0, Li3/a;->g:Li3/g;

    iget-object v5, v4, Li3/g;->q:[B

    iget-object v4, v4, Li3/g;->x:[B

    new-array v6, v1, [B

    iget-object p2, p2, Li3/b;->b:Ls0/g0;

    array-length v7, v5

    invoke-virtual {p2, v5, v2, v7}, Ls0/n;->f([BII)V

    array-length v5, v4

    invoke-virtual {p2, v4, v2, v5}, Ls0/n;->f([BII)V

    invoke-virtual {p2, v6, v2, v1}, Ls0/g0;->b([BII)I

    invoke-virtual {p2, v6, v2, v1}, Ls0/n;->f([BII)V

    invoke-virtual {p2, v3}, Ls0/n;->update(B)V

    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ls0/n;->update(B)V

    array-length v1, v0

    invoke-virtual {p2, v0, v2, v1}, Ls0/n;->f([BII)V

    :goto_98
    iget p1, p1, Li3/e;->c:I

    if-eqz p1, :cond_a7

    if-ne p1, v3, :cond_9f

    goto :goto_a7

    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown parameters type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a7
    :goto_a7
    new-instance p1, Ls0/e0;

    invoke-direct {p1}, Ls0/e0;-><init>()V

    iput-object p1, p0, Li3/a;->k:Ls0/e0;

    const-string p1, "SHA-512"

    invoke-static {p1}, Lz2/a;->a(Ljava/lang/String;)Lm/q;

    move-result-object p1

    :try_start_b4
    invoke-virtual {p1}, Lm/n;->g()[B

    move-result-object p1

    iput-object p1, p0, Li3/a;->l:[B
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_ba} :catch_bb

    return-void

    :catch_bb
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "oid encoding failed: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Li3/a;->k:Ls0/e0;

    invoke-virtual {p0, p1}, Ls0/o;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Li3/a;->k:Ls0/e0;

    invoke-virtual {p0, p1, p2, p3}, Ls0/o;->update([BII)V

    return-void
.end method
