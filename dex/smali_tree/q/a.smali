.class public final Lq/a;
.super Lm/n;


# instance fields
.field public final c:Lm/q;

.field public final d:Lm/n;

.field public final q:Z


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_56

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_56

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    check-cast v0, Lm/q;

    iput-object v0, p0, Lq/a;->c:Lm/q;

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    if-le v0, v1, :cond_4e

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-static {v0}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v0

    invoke-static {v0}, Lq4/k;->v(Lm/a0;)V

    invoke-virtual {v0}, Lm/a0;->w()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, v0, Lm/a0;->q:I

    if-nez v2, :cond_3e

    invoke-virtual {v0}, Lm/a0;->u()Lm/n;

    move-result-object v0

    :goto_3b
    iput-object v0, p0, Lq/a;->d:Lm/n;

    goto :goto_50

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad tag for \'content\'"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    const/4 v0, 0x0

    goto :goto_3b

    :goto_50
    instance-of p1, p1, Lm/h0;

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lq/a;->q:Z

    return-void

    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad sequence size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 6

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Lq/a;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-boolean v1, p0, Lq/a;->q:Z

    iget-object p0, p0, Lq/a;->d:Lm/n;

    if-eqz p0, :cond_24

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    new-instance v4, Lm/p1;

    invoke-direct {v4, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    :goto_1a
    invoke-virtual {v0, v4}, Lm/g;->a(Lm/f;)V

    goto :goto_24

    :cond_1e
    new-instance v4, Lm/k0;

    invoke-direct {v4, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    goto :goto_1a

    :cond_24
    :goto_24
    if-eqz v1, :cond_2f

    new-instance p0, Lm/n1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/n1;->q:I

    return-object p0

    :cond_2f
    new-instance p0, Lm/h0;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    return-object p0
.end method
