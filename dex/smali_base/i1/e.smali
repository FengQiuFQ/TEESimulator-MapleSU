.class public final Li1/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/m0;


# instance fields
.field public final g:La1/d;

.field public h:Z

.field public i:Le1/y;

.field public j:Le1/z;


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La1/d;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La1/d;-><init>(BI)V

    iput-object v0, p0, Li1/e;->g:La1/d;

    return-void
.end method


# virtual methods
.method public final a([B)Z
    .registers 3

    iget-boolean v0, p0, Li1/e;->h:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Li1/e;->j:Le1/z;

    if-eqz v0, :cond_f

    iget-object p0, p0, Li1/e;->g:La1/d;

    invoke-virtual {p0, v0, p1}, La1/d;->e(Le1/z;[B)Z

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Ed25519Signer not initialised for verification"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .registers 2

    iget-boolean v0, p0, Li1/e;->h:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Li1/e;->i:Le1/y;

    if-eqz v0, :cond_f

    iget-object p0, p0, Li1/e;->g:La1/d;

    invoke-virtual {p0, v0}, La1/d;->b(Le1/y;)[B

    move-result-object p0

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Ed25519Signer not initialised for signature generation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 4

    iput-boolean p1, p0, Li1/e;->h:Z

    instance-of v0, p2, Le1/t0;

    if-eqz v0, :cond_a

    check-cast p2, Le1/t0;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_a
    const/4 v0, 0x0

    if-eqz p1, :cond_15

    move-object p1, p2

    check-cast p1, Le1/y;

    iput-object p1, p0, Li1/e;->i:Le1/y;

    iput-object v0, p0, Li1/e;->j:Le1/z;

    goto :goto_1c

    :cond_15
    iput-object v0, p0, Li1/e;->i:Le1/y;

    move-object p1, p2

    check-cast p1, Le1/z;

    iput-object p1, p0, Li1/e;->j:Le1/z;

    :goto_1c
    instance-of p1, p2, Lorg/bouncycastle/crypto/j;

    if-nez p1, :cond_29

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    iget-object p0, p0, Li1/e;->g:La1/d;

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

    iget-object p0, p0, Li1/e;->g:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final update([BII)V
    .registers 4

    iget-object p0, p0, Li1/e;->g:La1/d;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
