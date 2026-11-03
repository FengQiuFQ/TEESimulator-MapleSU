.class public final Ll1/a;
.super Lm/n;


# instance fields
.field public c:[B

.field public d:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ll1/a;->c:[B

    iput p2, p0, Ll1/a;->d:I

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll1/a;
    .registers 4

    instance-of v0, p0, Ll1/a;

    if-eqz v0, :cond_7

    check-cast p0, Ll1/a;

    return-object p0

    :cond_7
    if-eqz p0, :cond_39

    new-instance v0, Ll1/a;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v1

    iget-object v1, v1, Lm/r;->c:[B

    iput-object v1, v0, Ll1/a;->c:[B

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_36

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/l;->y()I

    move-result p0

    :goto_33
    iput p0, v0, Ll1/a;->d:I

    return-object v0

    :cond_36
    const/16 p0, 0xc

    goto :goto_33

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ll1/a;->c:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget p0, p0, Ll1/a;->d:I

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1f

    new-instance v1, Lm/l;

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_1f
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
