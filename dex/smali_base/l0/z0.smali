.class public final Ll0/z0;
.super Ljava/lang/Object;


# instance fields
.field public a:Lm/l;

.field public b:Ll0/b;

.field public c:Lj0/c;

.field public d:Ll0/x0;

.field public e:Ll0/x0;

.field public f:Lj0/c;

.field public g:Ll0/p0;

.field public h:Ll0/w;

.field public i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/l;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Lm/l;-><init>(J)V

    const/16 v1, 0x80

    and-int/lit16 v2, v1, 0xc0

    if-ne v2, v1, :cond_10

    instance-of v0, v0, Lm/e;

    return-void

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid tag class: "

    invoke-static {v1, v2}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ll0/u0;
    .registers 9

    iget-object v0, p0, Ll0/z0;->a:Lm/l;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Ll0/z0;->b:Ll0/b;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Ll0/z0;->c:Lj0/c;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Ll0/z0;->d:Ll0/x0;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Ll0/z0;->e:Ll0/x0;

    if-eqz v0, :cond_9a

    iget-object v0, p0, Ll0/z0;->f:Lj0/c;

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Ll0/z0;->i:Z

    if-eqz v0, :cond_9a

    :cond_1c
    iget-object v0, p0, Ll0/z0;->g:Ll0/p0;

    if-eqz v0, :cond_9a

    new-instance v0, Ll0/u0;

    new-instance v1, Lm/l;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    iget-object v2, p0, Ll0/z0;->a:Lm/l;

    iget-object v3, p0, Ll0/z0;->b:Ll0/b;

    iget-object v4, p0, Ll0/z0;->c:Lj0/c;

    new-instance v5, Ll0/a1;

    iget-object v6, p0, Ll0/z0;->d:Ll0/x0;

    iget-object v7, p0, Ll0/z0;->e:Ll0/x0;

    invoke-direct {v5, v6, v7}, Ll0/a1;-><init>(Ll0/x0;Ll0/x0;)V

    iget-object v6, p0, Ll0/z0;->f:Lj0/c;

    if-eqz v6, :cond_3d

    goto :goto_49

    :cond_3d
    new-instance v6, Lm/a1;

    invoke-direct {v6}, Lm/x;-><init>()V

    const/4 v7, -0x1

    iput v7, v6, Lm/a1;->q:I

    invoke-static {v6}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v6

    :goto_49
    iget-object v7, p0, Ll0/z0;->g:Ll0/p0;

    iget-object p0, p0, Ll0/z0;->h:Ll0/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    if-eqz v2, :cond_92

    if-eqz v3, :cond_8a

    if-eqz v4, :cond_82

    if-eqz v6, :cond_7a

    if-eqz v7, :cond_72

    iput-object v1, v0, Ll0/u0;->d:Lm/l;

    iput-object v2, v0, Ll0/u0;->q:Lm/l;

    iput-object v3, v0, Ll0/u0;->x:Ll0/b;

    iput-object v4, v0, Ll0/u0;->y:Lj0/c;

    iput-object v5, v0, Ll0/u0;->z1:Ll0/a1;

    iput-object v6, v0, Ll0/u0;->A1:Lj0/c;

    iput-object v7, v0, Ll0/u0;->B1:Ll0/p0;

    const/4 v1, 0x0

    iput-object v1, v0, Ll0/u0;->C1:Lm/b;

    iput-object v1, v0, Ll0/u0;->D1:Lm/b;

    iput-object p0, v0, Ll0/u0;->E1:Ll0/w;

    iput-object v1, v0, Ll0/u0;->c:Lm/x;

    return-object v0

    :cond_72
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'subjectPublicKeyInfo\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'subject\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'issuer\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'signature\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_92
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "\'serialNumber\' cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
