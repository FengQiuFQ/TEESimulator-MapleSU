.class public final Lr3/c;
.super Le1/b;


# instance fields
.field public final d:[B

.field public final q:Lr3/a;


# direct methods
.method public constructor <init>(Lr3/a;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lr3/c;->d:[B

    iput-object p1, p0, Lr3/c;->q:Lr3/a;

    return-void
.end method
