.class public final Li1/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# instance fields
.field public final g:La1/d;

.field public final h:[B

.field public i:Z

.field public j:Le1/a0;

.field public k:Le1/b0;


# direct methods
.method public constructor <init>([B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La1/d;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La1/d;-><init>(BI)V

    iput-object v0, p0, Li1/f;->g:La1/d;

    if-eqz p1, :cond_15

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li1/f;->h:[B

    return-void

    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'context\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a([B)Z
    .registers 4

    iget-boolean v0, p0, Li1/f;->i:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Li1/f;->k:Le1/b0;

    if-eqz v0, :cond_11

    iget-object v1, p0, Li1/f;->g:La1/d;

    iget-object p0, p0, Li1/f;->h:[B

    invoke-virtual {v1, v0, p0, p1}, La1/d;->f(Le1/b0;[B[B)Z

    move-result p0

    return p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ed448Signer not initialised for verification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .registers 3

    iget-boolean v0, p0, Li1/f;->i:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Li1/f;->j:Le1/a0;

    if-eqz v0, :cond_11

    iget-object v1, p0, Li1/f;->g:La1/d;

    iget-object p0, p0, Li1/f;->h:[B

    invoke-virtual {v1, v0, p0}, La1/d;->c(Le1/a0;[B)[B

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Ed448Signer not initialised for signature generation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    iput-boolean p1, p0, Li1/f;->i:Z

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_a

    check-cast p2, Le1/t0;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    move-object p1, p2

    check-cast p1, Le1/a0;

    iput-object p1, p0, Li1/f;->j:Le1/a0;

    iput-object v0, p0, Li1/f;->k:Le1/b0;

    goto :goto_1c

    :cond_15
    iput-object v0, p0, Li1/f;->j:Le1/a0;

    move-object p1, p2

    check-cast p1, Le1/b0;

    iput-object p1, p0, Li1/f;->k:Le1/b0;

    :goto_1c
    instance-of p1, p2, Lorg/bouncycastle/crypto/j;

    if-nez p1, :cond_29

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    iget-object p0, p0, Li1/f;->g:La1/d;

    invoke-virtual {p0}, La1/d;->reset()V

    return-void

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "params should not be CryptoServicePurpose"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update(B)V
    .registers 2

    iget-object p0, p0, Li1/f;->g:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Li1/f;->g:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
