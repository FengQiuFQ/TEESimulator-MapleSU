.class public final Lu3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/security/auth/Destroyable;


# instance fields
.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:[B

.field public final q:[B


# direct methods
.method public constructor <init>([B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lu3/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lu3/c;->d:[B

    iput-object p2, p0, Lu3/c;->q:[B

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 2

    iget-object v0, p0, Lu3/c;->q:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object p0, p0, Lu3/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "data has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()[B
    .registers 2

    iget-object v0, p0, Lu3/c;->d:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v0

    iget-object p0, p0, Lu3/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_f

    return-object v0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "data has been destroyed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final destroy()V
    .registers 3

    iget-object v0, p0, Lu3/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lu3/c;->d:[B

    invoke-static {v0}, Lm4/d;->d([B)V

    iget-object p0, p0, Lu3/c;->q:[B

    invoke-static {p0}, Lm4/d;->d([B)V

    :cond_13
    return-void
.end method

.method public final isDestroyed()Z
    .registers 1

    iget-object p0, p0, Lu3/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
