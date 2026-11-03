.class public final Lm0/k;
.super Lm/n;

# interfaces
.implements Lm0/m;


# instance fields
.field public c:Lm/q;

.field public d:Lm/u;


# direct methods
.method public constructor <init>(IIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lm0/m;->I0:Lm/q;

    iput-object v0, p0, Lm0/k;->c:Lm/q;

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    new-instance v2, Lm/l;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lm/l;-><init>(J)V

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    const/4 p1, -0x1

    const-string v2, "inconsistent k values"

    if-nez p3, :cond_32

    if-nez p4, :cond_2c

    sget-object p3, Lm0/m;->J0:Lm/q;

    invoke-virtual {v0, p3}, Lm/g;->a(Lm/f;)V

    new-instance p3, Lm/l;

    int-to-long v1, p2

    invoke-direct {p3, v1, v2}, Lm/l;-><init>(J)V

    invoke-virtual {v0, p3}, Lm/g;->a(Lm/f;)V

    goto :goto_65

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    if-le p3, p2, :cond_6f

    if-le p4, p3, :cond_6f

    sget-object v2, Lm0/m;->K0:Lm/q;

    invoke-virtual {v0, v2}, Lm/g;->a(Lm/f;)V

    new-instance v2, Lm/g;

    invoke-direct {v2, v1}, Lm/g;-><init>(I)V

    new-instance v1, Lm/l;

    int-to-long v3, p2

    invoke-direct {v1, v3, v4}, Lm/l;-><init>(J)V

    invoke-virtual {v2, v1}, Lm/g;->a(Lm/f;)V

    new-instance p2, Lm/l;

    int-to-long v3, p3

    invoke-direct {p2, v3, v4}, Lm/l;-><init>(J)V

    invoke-virtual {v2, p2}, Lm/g;->a(Lm/f;)V

    new-instance p2, Lm/l;

    int-to-long p3, p4

    invoke-direct {p2, p3, p4}, Lm/l;-><init>(J)V

    invoke-virtual {v2, p2}, Lm/g;->a(Lm/f;)V

    new-instance p2, Lm/a1;

    invoke-direct {p2, v2}, Lm/x;-><init>(Lm/g;)V

    iput p1, p2, Lm/a1;->q:I

    invoke-virtual {v0, p2}, Lm/g;->a(Lm/f;)V

    :goto_65
    new-instance p2, Lm/a1;

    invoke-direct {p2, v0}, Lm/x;-><init>(Lm/g;)V

    iput p1, p2, Lm/a1;->q:I

    iput-object p2, p0, Lm0/k;->d:Lm/u;

    return-void

    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lm0/k;->c:Lm/q;

    iget-object p0, p0, Lm0/k;->d:Lm/u;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
