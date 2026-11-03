.class public final Ly2/b;
.super Lm/n;


# instance fields
.field public c:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/b;->c:[B

    return-void
.end method

.method public static h(Lm/f;)Ly2/b;
    .registers 3

    instance-of v0, p0, Ly2/b;

    if-eqz v0, :cond_7

    check-cast p0, Ly2/b;

    return-object p0

    :cond_7
    if-eqz p0, :cond_24

    new-instance v0, Ly2/b;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p0

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iput-object p0, v0, Ly2/b;->c:[B

    return-object v0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    new-instance v1, Lm/x0;

    iget-object p0, p0, Ly2/b;->c:[B

    invoke-direct {v1, p0}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
