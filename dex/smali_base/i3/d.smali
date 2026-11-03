.class public final Li3/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public g:Li3/e;

.field public h:Ljava/security/SecureRandom;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Li3/d;->g:Li3/e;

    iget-object v2, v0, Li3/d;->h:Ljava/security/SecureRandom;

    invoke-virtual {v1, v2}, Li3/e;->a(Ljava/security/SecureRandom;)Li3/b;

    move-result-object v1

    const/16 v2, 0x20

    new-array v2, v2, [B

    iget-object v3, v1, Li3/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v1, v2}, Li3/b;->b([B)[[B

    move-result-object v1

    new-instance v2, Li3/g;

    iget-object v3, v0, Li3/d;->g:Li3/e;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    const/4 v6, 0x6

    aget-object v7, v1, v6

    invoke-direct {v2, v3, v5, v7}, Li3/g;-><init>(Li3/e;[B[B)V

    new-instance v8, Li3/f;

    iget-object v9, v0, Li3/d;->g:Li3/e;

    aget-object v10, v1, v4

    const/4 v0, 0x1

    aget-object v11, v1, v0

    const/4 v0, 0x2

    aget-object v12, v1, v0

    const/4 v0, 0x3

    aget-object v13, v1, v0

    const/4 v0, 0x4

    aget-object v14, v1, v0

    const/4 v0, 0x5

    aget-object v15, v1, v0

    aget-object v16, v1, v6

    const/4 v0, 0x7

    aget-object v17, v1, v0

    invoke-direct/range {v8 .. v17}, Li3/f;-><init>(Li3/e;[B[B[B[B[B[B[B[B)V

    new-instance v0, Lorg/bouncycastle/crypto/m;

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 3

    move-object v0, p1

    check-cast v0, Li3/c;

    iget-object v0, v0, Li3/c;->i:Li3/e;

    iput-object v0, p0, Li3/d;->g:Li3/e;

    iget-object p1, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p1, Ljava/security/SecureRandom;

    iput-object p1, p0, Li3/d;->h:Ljava/security/SecureRandom;

    return-void
.end method
