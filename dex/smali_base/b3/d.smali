.class public final Lb3/d;
.super La3/a;


# instance fields
.field public final q:[B


# direct methods
.method public constructor <init>(Lb3/b;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, La3/a;-><init>(ZLjava/lang/Object;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lb3/d;->q:[B

    return-void
.end method
