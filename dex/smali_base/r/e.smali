.class public final Lr/e;
.super Lm/n;


# instance fields
.field public final c:Lm/l;

.field public final d:Lm/l;

.field public final q:Lm/l;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/l;

    invoke-direct {v0, p1}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lr/e;->c:Lm/l;

    new-instance p1, Lm/l;

    invoke-direct {p1, p2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lr/e;->d:Lm/l;

    new-instance p1, Lm/l;

    invoke-direct {p1, p3}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lr/e;->q:Lm/l;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    const/16 v2, 0x400

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lr/e;->c:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object v1, p0, Lr/e;->d:Lm/l;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Lr/e;->q:Lm/l;

    invoke-virtual {v0, p0}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
