.class public final Lm3/f;
.super La3/a;


# instance fields
.field public final q:[B


# direct methods
.method public constructor <init>(Lm3/d;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lm3/f;->q:[B

    return-void
.end method
