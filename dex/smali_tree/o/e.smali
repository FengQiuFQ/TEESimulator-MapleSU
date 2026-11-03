.class public final Lo/e;
.super Lm/n;


# instance fields
.field public final c:Ll0/z;

.field public final d:Ll0/b;

.field public final q:[B


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_41

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v0

    iput-object v0, p0, Lo/e;->c:Ll0/z;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v0

    iput-object v0, p0, Lo/e;->d:Ll0/b;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    instance-of v1, v1, Lm/b;

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    if-eqz v1, :cond_38

    invoke-static {p1}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p1

    invoke-virtual {p1}, Lm/b;->u()[B

    move-result-object p1

    iput-object p1, p0, Lo/e;->q:[B

    return-void

    :cond_38
    invoke-static {p1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p1

    iget-object p1, p1, Lm/r;->c:[B

    iput-object p1, p0, Lo/e;->q:[B

    return-void

    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iget-object v1, p0, Lo/e;->c:Ll0/z;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lo/e;->d:Ll0/b;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object p0, p0, Lo/e;->q:[B

    invoke-direct {v1, p0}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
