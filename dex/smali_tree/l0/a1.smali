.class public final Ll0/a1;
.super Lm/n;


# instance fields
.field public final c:Ll0/x0;

.field public final d:Ll0/x0;


# direct methods
.method public constructor <init>(Ll0/x0;Ll0/x0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_14

    if-eqz p2, :cond_c

    iput-object p1, p0, Ll0/a1;->c:Ll0/x0;

    iput-object p2, p0, Ll0/a1;->d:Ll0/x0;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'notAfter\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'notBefore\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lm/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    move-result-object v0

    iput-object v0, p0, Ll0/a1;->c:Ll0/x0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Ll0/x0;->i(Lm/f;)Ll0/x0;

    move-result-object p1

    iput-object p1, p0, Ll0/a1;->d:Ll0/x0;

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad sequence size: "

    invoke-static {v0, p1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ll0/a1;->c:Ll0/x0;

    iget-object p0, p0, Ll0/a1;->d:Ll0/x0;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
