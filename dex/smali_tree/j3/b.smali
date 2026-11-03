.class public final Lj3/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/b;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public final a(Lj3/h;)Lu3/c;
    .registers 10

    const/16 v0, 0x20

    new-array v1, v0, [B

    iget-object p0, p0, Lj3/b;->a:Ljava/security/SecureRandom;

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, p1, La3/a;->d:Ljava/lang/Object;

    check-cast v2, Lj3/f;

    invoke-virtual {v2}, Lj3/f;->a()Lj3/a;

    move-result-object v2

    iput-object p0, v2, Lj3/a;->a:Ljava/security/SecureRandom;

    iget-object p0, p1, Lj3/h;->q:[B

    iget-object p1, p1, Lj3/h;->x:[B

    invoke-static {p0, p1}, Lm4/d;->j([B[B)[B

    move-result-object p0

    const/16 p1, 0x40

    new-array v3, p1, [B

    new-array v4, p1, [B

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v2, Lj3/a;->p:Li1/g;

    iget-object v6, v1, Li1/g;->c:Ljava/lang/Object;

    check-cast v6, Ls0/d0;

    array-length v7, p0

    invoke-virtual {v6, p0, v5, v7}, Ls0/n;->f([BII)V

    invoke-virtual {v6, v3, v0}, Ls0/d0;->doFinal([BI)I

    iget-object v1, v1, Li1/g;->b:Ljava/lang/Object;

    check-cast v1, Ls0/d0;

    invoke-virtual {v1, v3, v5, p1}, Ls0/n;->f([BII)V

    invoke-virtual {v1, v4, v5}, Ls0/d0;->doFinal([BI)I

    iget-object v1, v2, Lj3/a;->b:Lj3/c;

    invoke-static {v3, v5, v0}, Lm4/d;->q([BII)[B

    move-result-object v3

    invoke-static {v4, v0, p1}, Lm4/d;->q([BII)[B

    move-result-object p1

    invoke-virtual {v1, p0, v3, p1}, Lj3/c;->a([B[B[B)[B

    move-result-object p0

    iget p1, v2, Lj3/a;->o:I

    new-array v0, p1, [B

    invoke-static {v4, v5, v0, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v0, p0}, [[B

    move-result-object p0

    new-instance p1, Lu3/c;

    aget-object v0, p0, v5

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-direct {p1, v0, p0}, Lu3/c;-><init>([B[B)V

    return-object p1
.end method
