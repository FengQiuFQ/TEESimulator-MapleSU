.class public final Lq3/n;
.super La3/a;


# instance fields
.field public final q:Ln4/b;


# direct methods
.method public constructor <init>(Lq3/l;Ln4/b;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    iput-object p2, p0, Lq3/n;->q:Ln4/b;

    return-void
.end method

.method public constructor <init>(Lq3/l;[B)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    iget-object p1, p1, Lq3/l;->b:Lq3/k;

    invoke-virtual {p1}, Lq3/k;->b()I

    move-result p1

    array-length v1, p2

    mul-int/lit8 v2, p1, 0x2

    if-ne v1, v2, :cond_20

    new-instance v1, Ln4/b;

    invoke-static {p2, v0, p1}, Lm4/d;->q([BII)[B

    move-result-object v0

    invoke-static {p2, p1, v2}, Lm4/d;->q([BII)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-direct {v1, v0, p2, p1}, Ln4/b;-><init>([BI[B)V

    iput-object v1, p0, Lq3/n;->q:Ln4/b;

    return-void

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()[B
    .registers 1

    iget-object p0, p0, Lq3/n;->q:Ln4/b;

    iget-object p0, p0, Ln4/b;->b:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    iget-object p0, p0, Lq3/n;->q:Ln4/b;

    iget-object v0, p0, Ln4/b;->b:[B

    iget-object p0, p0, Ln4/b;->c:[B

    invoke-static {v0, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0
.end method
