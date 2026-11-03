.class public final Lr2/d;
.super Ljava/lang/Object;

# interfaces
.implements Lr2/a;


# instance fields
.field public final a:Lr2/a;

.field public final b:Lr2/c;


# direct methods
.method public constructor <init>(Lr2/a;Lr2/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr2/d;->a:Lr2/a;

    iput-object p2, p0, Lr2/d;->b:Lr2/c;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lr2/d;->a:Lr2/a;

    invoke-interface {v0}, Lr2/a;->a()I

    move-result v0

    iget-object p0, p0, Lr2/d;->b:Lr2/c;

    iget-object p0, p0, Lr2/c;->a:[I

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget p0, p0, v1

    mul-int/2addr p0, v0

    return p0
.end method

.method public final b()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lr2/d;->a:Lr2/a;

    invoke-interface {p0}, Lr2/a;->b()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lr2/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lr2/d;

    iget-object v1, p0, Lr2/d;->a:Lr2/a;

    iget-object v3, p1, Lr2/d;->a:Lr2/a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object p0, p0, Lr2/d;->b:Lr2/c;

    iget-object p1, p1, Lr2/d;->b:Lr2/c;

    invoke-virtual {p0, p1}, Lr2/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lr2/d;->a:Lr2/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lr2/d;->b:Lr2/c;

    invoke-virtual {p0}, Lr2/c;->hashCode()I

    move-result p0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
