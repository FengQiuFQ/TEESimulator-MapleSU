.class public final Li3/g;
.super La3/a;


# instance fields
.field public final q:[B

.field public final x:[B


# direct methods
.method public constructor <init>(Li3/e;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Li3/g;->q:[B

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Li3/g;->x:[B

    array-length p0, p1

    if-eqz p0, :cond_17

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "encoding too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Li3/e;[B[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_15

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/g;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li3/g;->x:[B

    return-void

    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "t1 cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "rho cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 2

    iget-object v0, p0, Li3/g;->q:[B

    iget-object p0, p0, Li3/g;->x:[B

    invoke-static {v0, p0}, Lm4/d;->j([B[B)[B

    move-result-object p0

    return-object p0
.end method
