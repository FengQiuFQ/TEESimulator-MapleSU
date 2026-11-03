.class public final Lj3/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public g:Lj3/f;

.field public h:Ljava/security/SecureRandom;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 16

    iget-object v0, p0, Lj3/e;->g:Lj3/f;

    invoke-virtual {v0}, Lj3/f;->a()Lj3/a;

    move-result-object v0

    iget-object v1, p0, Lj3/e;->h:Ljava/security/SecureRandom;

    iput-object v1, v0, Lj3/a;->a:Ljava/security/SecureRandom;

    const/16 v2, 0x20

    new-array v3, v2, [B

    new-array v2, v2, [B

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v1, v0, Lj3/a;->a:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v0, v3, v2}, Lj3/a;->b([B[B)[[B

    move-result-object v0

    new-instance v1, Lj3/h;

    iget-object v2, p0, Lj3/e;->g:Lj3/f;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-direct {v1, v2, v4, v6}, Lj3/h;-><init>(Lj3/f;[B[B)V

    new-instance v7, Lj3/g;

    iget-object v8, p0, Lj3/e;->g:Lj3/f;

    const/4 p0, 0x2

    aget-object v9, v0, p0

    const/4 p0, 0x3

    aget-object v10, v0, p0

    const/4 p0, 0x4

    aget-object v11, v0, p0

    aget-object v12, v0, v3

    aget-object v13, v0, v5

    const/4 p0, 0x5

    aget-object v14, v0, p0

    invoke-direct/range {v7 .. v14}, Lj3/g;-><init>(Lj3/f;[B[B[B[B[B[B)V

    new-instance p0, Lorg/bouncycastle/crypto/m;

    invoke-direct {p0, v1, v7}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Lj3/d;

    iget-object v0, v0, Lj3/d;->i:Lj3/f;

    iput-object v0, p0, Lj3/e;->g:Lj3/f;

    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    iput-object p1, p0, Lj3/e;->h:Ljava/security/SecureRandom;

    return-void
.end method
