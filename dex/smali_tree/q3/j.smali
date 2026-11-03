.class public final Lq3/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b;


# instance fields
.field public g:Ljava/security/SecureRandom;

.field public h:Lq3/l;


# virtual methods
.method public final g()Lorg/bouncycastle/crypto/m;
    .registers 7

    iget-object v0, p0, Lq3/j;->h:Lq3/l;

    iget-object v0, v0, Lq3/l;->b:Lq3/k;

    invoke-virtual {v0}, Lq3/k;->a()Lq3/h;

    move-result-object v0

    iget v1, v0, Lq3/h;->a:I

    new-array v2, v1, [B

    iget-object v3, p0, Lq3/j;->g:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v3, v1, [B

    iget-object v4, p0, Lq3/j;->g:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-array v1, v1, [B

    iget-object v4, p0, Lq3/j;->g:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v4, Ln4/b;

    const/4 v5, 0x3

    invoke-direct {v4, v2, v5, v3}, Ln4/b;-><init>([BI[B)V

    invoke-virtual {v0, v1}, Lq3/h;->g([B)V

    new-instance v3, Ln4/b;

    new-instance v5, Lq2/a;

    invoke-direct {v5, v0, v2, v1}, Lq2/a;-><init>(Lq3/h;[B[B)V

    iget-object v0, v5, Lq2/a;->e:Ljava/lang/Object;

    check-cast v0, [B

    const/4 v2, 0x2

    invoke-direct {v3, v1, v2, v0}, Ln4/b;-><init>([BI[B)V

    new-instance v0, Lorg/bouncycastle/crypto/m;

    new-instance v1, Lq3/n;

    iget-object p0, p0, Lq3/j;->h:Lq3/l;

    invoke-direct {v1, p0, v3}, Lq3/n;-><init>(Lq3/l;Ln4/b;)V

    new-instance v2, Lq3/m;

    invoke-direct {v2, p0, v4, v3}, Lq3/m;-><init>(Lq3/l;Ln4/b;Ln4/b;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final m(Lorg/bouncycastle/crypto/z;)V
    .registers 3

    iget-object v0, p1, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast v0, Ljava/security/SecureRandom;

    iput-object v0, p0, Lq3/j;->g:Ljava/security/SecureRandom;

    check-cast p1, Lq3/i;

    iget-object p1, p1, Lq3/i;->i:Lq3/l;

    iput-object p1, p0, Lq3/j;->h:Lq3/l;

    return-void
.end method
