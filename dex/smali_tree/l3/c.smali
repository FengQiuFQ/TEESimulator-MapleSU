.class public final Ll3/c;
.super La3/a;


# instance fields
.field public final q:[B


# direct methods
.method public constructor <init>(Ll3/a;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ll3/c;->q:[B

    return-void
.end method
