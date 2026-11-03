.class public final Lr3/b;
.super Le1/b;


# instance fields
.field public final d:[B

.field public final q:Lr3/a;


# direct methods
.method public constructor <init>(Lr3/a;[B)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p2

    iput-object p2, p0, Lr3/b;->d:[B

    iput-object p1, p0, Lr3/b;->q:Lr3/a;

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 1

    iget-object p0, p0, Lr3/b;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
