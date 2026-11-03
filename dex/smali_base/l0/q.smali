.class public final Ll0/q;
.super Lm/n;


# instance fields
.field public final A1:Ll0/w;

.field public final B1:Lm/b;

.field public final c:Lm/l;

.field public final d:Ll0/b;

.field public final q:Lj0/c;

.field public final x:Ll0/a1;

.field public final y:Lj0/c;

.field public final z1:Ll0/p0;


# direct methods
.method public constructor <init>(Lm/l;Ll0/b;Lj0/c;Ll0/a1;Lj0/c;Ll0/p0;Ll0/w;Lm/b;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    if-eqz p6, :cond_22

    if-eqz p8, :cond_1a

    iput-object p1, p0, Ll0/q;->c:Lm/l;

    iput-object p2, p0, Ll0/q;->d:Ll0/b;

    iput-object p3, p0, Ll0/q;->q:Lj0/c;

    iput-object p4, p0, Ll0/q;->x:Ll0/a1;

    iput-object p5, p0, Ll0/q;->y:Lj0/c;

    iput-object p6, p0, Ll0/q;->z1:Ll0/p0;

    iput-object p7, p0, Ll0/q;->A1:Ll0/w;

    iput-object p8, p0, Ll0/q;->B1:Lm/b;

    return-void

    :cond_1a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'signatureValue\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'subjectPublicKeyInfo\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'serialNumber\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lm/x;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_18
    instance-of v10, v2, Lm/a0;

    sget-object v11, Lm/x;->d:Lm/a;

    if-eqz v10, :cond_68

    invoke-static {v2}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v2

    iget v10, v2, Lm/a0;->q:I

    if-eqz v10, :cond_54

    if-eq v10, v1, :cond_47

    if-eq v10, v3, :cond_3b

    const/4 v12, 0x3

    if-eq v10, v12, :cond_2e

    goto :goto_5e

    :cond_2e
    sget-object v9, Lj0/c;->z1:Lk0/b;

    invoke-virtual {v11, v2, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/x;

    invoke-static {v2}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v9

    goto :goto_5e

    :cond_3b
    new-instance v8, Ll0/a1;

    invoke-virtual {v11, v2, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/x;

    invoke-direct {v8, v2}, Ll0/a1;-><init>(Lm/x;)V

    goto :goto_5e

    :cond_47
    sget-object v7, Lj0/c;->z1:Lk0/b;

    invoke-virtual {v11, v2, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/x;

    invoke-static {v2}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v7

    goto :goto_5e

    :cond_54
    invoke-virtual {v11, v2, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v2

    check-cast v2, Lm/x;

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v6

    :goto_5e
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p1, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    move-object v13, v5

    move v5, v2

    move-object v2, v13

    goto :goto_18

    :cond_68
    invoke-static {v2}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v2

    invoke-virtual {p1, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    :goto_70
    instance-of v10, v3, Lm/a0;

    if-eqz v10, :cond_93

    invoke-static {v3}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v3

    iget v10, v3, Lm/a0;->q:I

    const/4 v12, 0x4

    if-eq v10, v12, :cond_7e

    goto :goto_89

    :cond_7e
    invoke-virtual {v11, v3, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object v3

    check-cast v3, Lm/x;

    invoke-static {v3}, Ll0/w;->j(Lm/f;)Ll0/w;

    move-result-object v3

    move-object v4, v3

    :goto_89
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    move-object v13, v5

    move v5, v3

    move-object v3, v13

    goto :goto_70

    :cond_93
    invoke-static {v3}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p1

    iput-object v0, p0, Ll0/q;->c:Lm/l;

    iput-object v6, p0, Ll0/q;->d:Ll0/b;

    iput-object v7, p0, Ll0/q;->q:Lj0/c;

    iput-object v8, p0, Ll0/q;->x:Ll0/a1;

    iput-object v9, p0, Ll0/q;->y:Lj0/c;

    iput-object v2, p0, Ll0/q;->z1:Ll0/p0;

    iput-object v4, p0, Ll0/q;->A1:Ll0/w;

    iput-object p1, p0, Ll0/q;->B1:Lm/b;

    return-void
.end method

.method public static h(Lm/g;ILm/n;)V
    .registers 5

    if-eqz p2, :cond_b

    new-instance v0, Lm/d1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lm/a0;-><init>(ZILm/f;)V

    invoke-virtual {p0, v0}, Lm/g;->a(Lm/f;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ll0/q;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Ll0/q;->d:Ll0/b;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ll0/q;->h(Lm/g;ILm/n;)V

    iget-object v1, p0, Ll0/q;->q:Lj0/c;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Ll0/q;->h(Lm/g;ILm/n;)V

    const/4 v1, 0x2

    iget-object v2, p0, Ll0/q;->x:Ll0/a1;

    invoke-static {v0, v1, v2}, Ll0/q;->h(Lm/g;ILm/n;)V

    const/4 v1, 0x3

    iget-object v2, p0, Ll0/q;->y:Lj0/c;

    invoke-static {v0, v1, v2}, Ll0/q;->h(Lm/g;ILm/n;)V

    iget-object v1, p0, Ll0/q;->z1:Ll0/p0;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    const/4 v1, 0x4

    iget-object v2, p0, Ll0/q;->A1:Ll0/w;

    invoke-static {v0, v1, v2}, Ll0/q;->h(Lm/g;ILm/n;)V

    iget-object p0, p0, Ll0/q;->B1:Lm/b;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
