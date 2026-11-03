.class public final Lh3/b;
.super La3/a;


# instance fields
.field public final q:[B


# direct methods
.method public constructor <init>(Lh3/a;[B)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lh3/b;->q:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Lh3/b;->q:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
