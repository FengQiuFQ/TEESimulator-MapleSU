.class public final Lf3/b;
.super La3/a;


# instance fields
.field public final q:[B


# direct methods
.method public constructor <init>(Lf3/a;[B)V
    .registers 3

    invoke-direct {p0, p1}, La3/a;-><init>(Lf3/a;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lf3/b;->q:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Lf3/b;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
