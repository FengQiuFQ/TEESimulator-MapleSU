.class public final Lm/o;
.super Lm/u;


# static fields
.field public static final d:Lm/a;


# instance fields
.field public final c:Lm/t0;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/o;

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/o;->d:Lm/a;

    return-void
.end method

.method public constructor <init>(Lm/t0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/o;->c:Lm/t0;

    return-void
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/o;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/o;

    iget-object p0, p0, Lm/o;->c:Lm/t0;

    iget-object p1, p1, Lm/o;->c:Lm/t0;

    invoke-virtual {p0, p1}, Lm/t0;->h(Lm/u;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/o;->c:Lm/t0;

    iget-object p0, p0, Lm/t0;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Lb1/a;->I(IZ)V

    const/16 p2, 0x19

    iget-object p0, p0, Lm/o;->c:Lm/t0;

    iget-object p0, p0, Lm/t0;->c:[B

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    iget-object p0, p0, Lm/o;->c:Lm/t0;

    invoke-virtual {p0, p1}, Lm/t0;->l(Z)I

    move-result p0

    return p0
.end method

.method public final p()Lm/u;
    .registers 2

    iget-object v0, p0, Lm/o;->c:Lm/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final q()Lm/u;
    .registers 2

    iget-object v0, p0, Lm/o;->c:Lm/t0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
