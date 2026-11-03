.class public final Ll0/b;
.super Lm/n;


# instance fields
.field public c:Lm/q;

.field public d:Lm/f;


# direct methods
.method public constructor <init>(Lm/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/b;->c:Lm/q;

    return-void
.end method

.method public constructor <init>(Lm/q;Lm/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/b;->c:Lm/q;

    iput-object p2, p0, Ll0/b;->d:Lm/f;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll0/b;
    .registers 6

    instance-of v0, p0, Ll0/b;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/b;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    new-instance v1, Ll0/b;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3c

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    const/4 v4, 0x2

    if-gt v2, v4, :cond_3c

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v2

    iput-object v2, v1, Ll0/b;->c:Lm/q;

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v2

    if-ne v2, v4, :cond_39

    invoke-virtual {p0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    iput-object p0, v1, Ll0/b;->d:Lm/f;

    return-object v1

    :cond_39
    iput-object v0, v1, Ll0/b;->d:Lm/f;

    return-object v1

    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    return-object v0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/b;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ll0/b;->d:Lm/f;

    if-eqz p0, :cond_12

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    :cond_12
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
