.class public final Ll0/a0;
.super Lm/n;


# static fields
.field public static final synthetic x:I


# instance fields
.field public c:Ll0/y;

.field public d:Lm/l;

.field public q:Lm/l;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/a0;->c:Ll0/y;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/a0;->d:Lm/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1, v2}, Lm/l;->u(I)Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Lm/d1;

    invoke-direct {v3, v2, v2, v1}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v3}, Lm/g;->a(Lm/f;)V

    :cond_1e
    iget-object p0, p0, Ll0/a0;->q:Lm/l;

    if-eqz p0, :cond_2b

    new-instance v1, Lm/d1;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, p0}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_2b
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
