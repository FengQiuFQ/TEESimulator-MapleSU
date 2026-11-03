.class public final Li3/h;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# static fields
.field public static final l:[B


# instance fields
.field public g:Li3/g;

.field public h:Li3/f;

.field public i:Ljava/security/SecureRandom;

.field public j:Li3/b;

.field public k:Ls0/g0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Li3/h;->l:[B

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .registers 9

    iget-object v0, p0, Li3/h;->j:Li3/b;

    array-length v3, p1

    iget-object v4, p0, Li3/h;->k:Ls0/g0;

    iget-object v1, p0, Li3/h;->g:Li3/g;

    iget-object v5, v1, Li3/g;->q:[B

    iget-object v6, v1, Li3/g;->x:[B

    iget v1, v0, Li3/b;->f:I

    iget v2, v0, Li3/b;->d:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x40

    iget v2, v0, Li3/b;->n:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v4, v1, v2}, Ls0/g0;->doFinal([BI)I

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Li3/b;->a([B[BILs0/g0;[B[B)Z

    move-result p1

    invoke-virtual {p0}, Li3/h;->d()V

    return p1
.end method

.method public final b()[B
    .registers 11

    const/16 v0, 0x20

    new-array v9, v0, [B

    iget-object v0, p0, Li3/h;->i:Ljava/security/SecureRandom;

    if-eqz v0, :cond_b

    invoke-virtual {v0, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_b
    iget-object v0, p0, Li3/h;->j:Li3/b;

    iget-object v1, p0, Li3/h;->k:Ls0/g0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x40

    new-array v2, v0, [B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ls0/g0;->b([BII)I

    iget-object v1, p0, Li3/h;->j:Li3/b;

    iget-object v3, p0, Li3/h;->k:Ls0/g0;

    iget-object v0, p0, Li3/h;->h:Li3/f;

    iget-object v4, v0, Li3/f;->q:[B

    iget-object v5, v0, Li3/f;->x:[B

    iget-object v6, v0, Li3/f;->B1:[B

    iget-object v7, v0, Li3/f;->z1:[B

    iget-object v8, v0, Li3/f;->A1:[B

    invoke-virtual/range {v1 .. v9}, Li3/b;->c([BLs0/g0;[B[B[B[B[B[B)[B

    move-result-object v0

    invoke-virtual {p0}, Li3/h;->d()V

    return-object v0
.end method

.method public final c([B)[B
    .registers 12

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2e

    const/16 v0, 0x20

    new-array v9, v0, [B

    iget-object v0, p0, Li3/h;->i:Ljava/security/SecureRandom;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_10
    iget-object v0, p0, Li3/h;->k:Ls0/g0;

    invoke-virtual {v0}, Ls0/n;->reset()V

    iget-object v1, p0, Li3/h;->j:Li3/b;

    iget-object v3, p0, Li3/h;->k:Ls0/g0;

    iget-object v0, p0, Li3/h;->h:Li3/f;

    iget-object v4, v0, Li3/f;->q:[B

    iget-object v5, v0, Li3/f;->x:[B

    iget-object v6, v0, Li3/f;->B1:[B

    iget-object v7, v0, Li3/f;->z1:[B

    iget-object v8, v0, Li3/f;->A1:[B

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Li3/b;->c([BLs0/g0;[B[B[B[B[B[B)[B

    move-result-object p1

    invoke-virtual {p0}, Li3/h;->d()V

    return-object p1

    :cond_2e
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "mu value must be 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Li3/h;->j:Li3/b;

    new-instance v1, Ls0/g0;

    iget-object v0, v0, Li3/b;->b:Ls0/g0;

    invoke-direct {v1, v0}, Ls0/n;-><init>(Ls0/n;)V

    iput-object v1, p0, Li3/h;->k:Ls0/g0;

    return-void
.end method

.method public final e([B[B)Z
    .registers 12

    array-length v0, p1

    const/16 v1, 0x40

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Li3/h;->k:Ls0/g0;

    invoke-virtual {v0}, Ls0/n;->reset()V

    iget-object v2, p0, Li3/h;->j:Li3/b;

    array-length v5, p2

    iget-object v6, p0, Li3/h;->k:Ls0/g0;

    iget-object v0, p0, Li3/h;->g:Li3/g;

    iget-object v7, v0, Li3/g;->q:[B

    iget-object v8, v0, Li3/g;->x:[B

    iget v0, v2, Li3/b;->f:I

    iget v3, v2, Li3/b;->d:I

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    iget v1, v2, Li3/b;->n:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v3, v0, [B

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Li3/b;->a([B[BILs0/g0;[B[B)Z

    move-result p1

    invoke-virtual {p0}, Li3/h;->d()V

    return p1

    :cond_31
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "mu value must be 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 10

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
    sget-object v0, Li3/h;->l:[B

    :goto_1e
    const/16 v1, 0x40

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_61

    iput-object v3, p0, Li3/h;->g:Li3/g;

    instance-of p1, p2, Le1/t0;

    if-eqz p1, :cond_37

    check-cast p2, Le1/t0;

    iget-object p1, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Li3/f;

    iput-object p1, p0, Li3/h;->h:Li3/f;

    iget-object p1, p2, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Li3/h;->i:Ljava/security/SecureRandom;

    goto :goto_3d

    :cond_37
    check-cast p2, Li3/f;

    iput-object p2, p0, Li3/h;->h:Li3/f;

    iput-object v3, p0, Li3/h;->i:Ljava/security/SecureRandom;

    :goto_3d
    iget-object p1, p0, Li3/h;->h:Li3/f;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    iget-object p2, p0, Li3/h;->i:Ljava/security/SecureRandom;

    invoke-virtual {p1, p2}, Li3/e;->a(Ljava/security/SecureRandom;)Li3/b;

    move-result-object p2

    iput-object p2, p0, Li3/h;->j:Li3/b;

    iget-object v3, p0, Li3/h;->h:Li3/f;

    iget-object v3, v3, Li3/f;->y:[B

    iget-object p2, p2, Li3/b;->b:Ls0/g0;

    invoke-virtual {p2, v3, v2, v1}, Ls0/n;->f([BII)V

    invoke-virtual {p2, v2}, Ls0/n;->update(B)V

    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ls0/n;->update(B)V

    array-length v1, v0

    invoke-virtual {p2, v0, v2, v1}, Ls0/n;->f([BII)V

    goto :goto_97

    :cond_61
    check-cast p2, Li3/g;

    iput-object p2, p0, Li3/h;->g:Li3/g;

    iput-object v3, p0, Li3/h;->h:Li3/f;

    iput-object v3, p0, Li3/h;->i:Ljava/security/SecureRandom;

    iget-object p1, p2, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Li3/e;

    invoke-virtual {p1, v3}, Li3/e;->a(Ljava/security/SecureRandom;)Li3/b;

    move-result-object p2

    iput-object p2, p0, Li3/h;->j:Li3/b;

    iget-object v3, p0, Li3/h;->g:Li3/g;

    iget-object v4, v3, Li3/g;->q:[B

    iget-object v3, v3, Li3/g;->x:[B

    new-array v5, v1, [B

    iget-object p2, p2, Li3/b;->b:Ls0/g0;

    array-length v6, v4

    invoke-virtual {p2, v4, v2, v6}, Ls0/n;->f([BII)V

    array-length v4, v3

    invoke-virtual {p2, v3, v2, v4}, Ls0/n;->f([BII)V

    invoke-virtual {p2, v5, v2, v1}, Ls0/g0;->b([BII)I

    invoke-virtual {p2, v5, v2, v1}, Ls0/n;->f([BII)V

    invoke-virtual {p2, v2}, Ls0/n;->update(B)V

    array-length v1, v0

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ls0/n;->update(B)V

    array-length v1, v0

    invoke-virtual {p2, v0, v2, v1}, Ls0/n;->f([BII)V

    :goto_97
    iget p1, p1, Li3/e;->c:I

    if-nez p1, :cond_9f

    invoke-virtual {p0}, Li3/h;->d()V

    return-void

    :cond_9f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\"pure\" ml-dsa must use non pre-hash parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Li3/h;->k:Ls0/g0;

    invoke-virtual {p0, p1}, Ls0/n;->update(B)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Li3/h;->k:Ls0/g0;

    invoke-virtual {p0, p1, p2, p3}, Ls0/n;->f([BII)V

    return-void
.end method
