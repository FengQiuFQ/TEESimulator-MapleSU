.class public final Lo/c;
.super Lm/n;


# instance fields
.field public final c:Ld0/i;

.field public final d:[Ll0/m;


# direct methods
.method public constructor <init>(Ld0/i;[Ll0/m;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/c;->c:Ld0/i;

    array-length p1, p2

    new-array p1, p1, [Ll0/m;

    iput-object p1, p0, Lo/c;->d:[Ll0/m;

    const/4 p0, 0x0

    array-length v0, p2

    invoke-static {p2, p0, p1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lm/x;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ld0/i;->h(Ljava/lang/Object;)Ld0/i;

    move-result-object v1

    iput-object v1, p0, Lo/c;->c:Ld0/i;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    new-array v1, v1, [Ll0/m;

    iput-object v1, p0, Lo/c;->d:[Ll0/m;

    :goto_1f
    iget-object v1, p0, Lo/c;->d:[Ll0/m;

    array-length v2, v1

    if-eq v0, v2, :cond_31

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    invoke-static {v2}, Ll0/m;->i(Ljava/lang/Object;)Ll0/m;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_31
    return-void
.end method

.method public static h(Ljava/lang/Object;)Lo/c;
    .registers 2

    instance-of v0, p0, Lo/c;

    if-eqz v0, :cond_7

    check-cast p0, Lo/c;

    return-object p0

    :cond_7
    if-eqz p0, :cond_13

    new-instance v0, Lo/c;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/c;-><init>(Lm/x;)V

    return-object v0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/a1;

    new-instance v1, Lm/a1;

    iget-object v2, p0, Lo/c;->d:[Ll0/m;

    invoke-direct {v1, v2}, Lm/a1;-><init>([Lm/f;)V

    iget-object p0, p0, Lo/c;->c:Ld0/i;

    invoke-direct {v0, p0, v1}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/a1;->q:I

    return-object v0
.end method
