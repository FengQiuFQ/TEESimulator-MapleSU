.class public final Lm/t0;
.super Lm/u;

# interfaces
.implements Lm/z;


# static fields
.field public static final d:Lm/a;


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/t0;

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/t0;->d:Lm/a;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    iput-object p1, p0, Lm/t0;->c:[B

    return-void

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'contents\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lm/t0;->c:[B

    invoke-static {p0}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lm/u;)Z
    .registers 3

    instance-of v0, p1, Lm/t0;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lm/t0;

    iget-object p0, p0, Lm/t0;->c:[B

    iget-object p1, p1, Lm/t0;->c:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lm/t0;->c:[B

    invoke-static {p0}, Lm4/d;->u([B)I

    move-result p0

    return p0
.end method

.method public final i(Lb1/a;Z)V
    .registers 4

    const/16 v0, 0x19

    iget-object p0, p0, Lm/t0;->c:[B

    invoke-virtual {p1, v0, p2, p0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    iget-object p0, p0, Lm/t0;->c:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method
