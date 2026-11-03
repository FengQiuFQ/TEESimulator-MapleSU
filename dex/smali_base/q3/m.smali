.class public final Lq3/m;
.super La3/a;


# instance fields
.field public final q:Ln4/b;

.field public final x:Ln4/b;


# direct methods
.method public constructor <init>(Lq3/l;Ln4/b;Ln4/b;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    iput-object p2, p0, Lq3/m;->q:Ln4/b;

    iput-object p3, p0, Lq3/m;->x:Ln4/b;

    return-void
.end method

.method public constructor <init>(Lq3/l;[B)V
    .registers 9

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    iget-object p1, p1, Lq3/l;->b:Lq3/k;

    invoke-virtual {p1}, Lq3/k;->b()I

    move-result p1

    array-length v0, p2

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_35

    new-instance v0, Ln4/b;

    const/4 v2, 0x0

    invoke-static {p2, v2, p1}, Lm4/d;->q([BII)[B

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-static {p2, p1, v3}, Lm4/d;->q([BII)[B

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5, v4}, Ln4/b;-><init>([BI[B)V

    iput-object v0, p0, Lq3/m;->q:Ln4/b;

    new-instance v0, Ln4/b;

    mul-int/lit8 p1, p1, 0x3

    invoke-static {p2, v3, p1}, Lm4/d;->q([BII)[B

    move-result-object v2

    invoke-static {p2, p1, v1}, Lm4/d;->q([BII)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {v0, v2, p2, p1}, Ln4/b;-><init>([BI[B)V

    iput-object v0, p0, Lq3/m;->x:Ln4/b;

    return-void

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "private key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 4

    iget-object v0, p0, Lq3/m;->q:Ln4/b;

    iget-object v1, v0, Ln4/b;->b:[B

    iget-object v0, v0, Ln4/b;->c:[B

    iget-object p0, p0, Lq3/m;->x:Ln4/b;

    iget-object v2, p0, Ln4/b;->b:[B

    iget-object p0, p0, Ln4/b;->c:[B

    filled-new-array {v1, v0, v2, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lm4/d;->m([[B)[B

    move-result-object p0

    return-object p0
.end method
