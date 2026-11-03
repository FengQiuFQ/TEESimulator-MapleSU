.class public final Lu3/a;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lu3/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lc3/a;Lm/b;)Lc3/c;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lm/b;->u()[B

    move-result-object v0

    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    new-instance v1, Lc3/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v1, p0, v2, v0}, Lc3/c;-><init>(Lc3/a;[B[B)V

    return-object v1

    :cond_2c
    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    new-instance v1, Lc3/c;

    invoke-direct {v1, p0, v0}, Lc3/c;-><init>(Lc3/a;[B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    return-object v1

    :catch_38
    new-instance v0, Lc3/c;

    invoke-virtual {p1}, Lm/b;->u()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lc3/c;-><init>(Lc3/a;[B)V

    return-object v0
.end method

.method public static b(Li3/e;Lm/b;)Li3/g;
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Lm/b;->u()[B

    move-result-object v0

    invoke-static {v0}, Lm/u;->o([B)Lm/u;

    move-result-object v0

    instance-of v1, v0, Lm/x;

    if-eqz v1, :cond_2c

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    new-instance v1, Li3/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-direct {v1, p0, v2, v0}, Li3/g;-><init>(Li3/e;[B[B)V

    return-object v1

    :cond_2c
    invoke-static {v0}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    new-instance v1, Li3/g;

    invoke-direct {v1, p0, v0}, Li3/g;-><init>(Li3/e;[B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    return-object v1

    :catch_38
    new-instance v0, Li3/g;

    invoke-virtual {p1}, Lm/b;->u()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Li3/g;-><init>(Li3/e;[B)V

    return-object v0
.end method
