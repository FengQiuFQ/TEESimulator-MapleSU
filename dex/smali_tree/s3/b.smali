.class public final Ls3/b;
.super Ls3/a;


# instance fields
.field public final q:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ls3/a;-><init>(ZLjava/lang/String;)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ls3/b;->q:[B

    return-void
.end method
