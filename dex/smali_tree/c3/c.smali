.class public final Lc3/c;
.super La3/a;


# instance fields
.field public final q:[B

.field public final x:[B


# direct methods
.method public constructor <init>(Lc3/a;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    const/16 p1, 0x20

    invoke-static {p2, v0, p1}, Lm4/d;->q([BII)[B

    move-result-object v0

    iput-object v0, p0, Lc3/c;->q:[B

    array-length v0, p2

    invoke-static {p2, p1, v0}, Lm4/d;->q([BII)[B

    move-result-object p1

    iput-object p1, p0, Lc3/c;->x:[B

    return-void
.end method

.method public constructor <init>(Lc3/a;[B[B)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/c;->q:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lc3/c;->x:[B

    return-void
.end method
