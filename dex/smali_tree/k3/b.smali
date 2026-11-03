.class public final Lk3/b;
.super Le1/b;


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lk3/b;->d:[B

    return-void
.end method
