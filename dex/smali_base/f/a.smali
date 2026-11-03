.class public final Lf/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public final synthetic c:Lf/b;


# direct methods
.method public constructor <init>(Lf/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/a;->c:Lf/b;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lf/a;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lf/a;->b:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lf/a;->c:Lf/b;

    iget-object v0, v0, Lf/b;->a:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/a;->a:Ljava/lang/String;

    if-nez v0, :cond_17

    iput-boolean v1, p0, Lf/a;->b:Z

    :cond_17
    iget-object p0, p0, Lf/a;->a:Ljava/lang/String;

    if-eqz p0, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Lf/a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lf/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lf/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    return-object v0

    :cond_f
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
