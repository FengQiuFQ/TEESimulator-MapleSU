.class public final Lr2/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>([I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm4/d;->f([I)[I

    move-result-object p1

    iput-object p1, p0, Lr2/c;->a:[I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lr2/c;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lr2/c;

    iget-object p0, p0, Lr2/c;->a:[I

    iget-object p1, p1, Lr2/c;->a:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 4

    iget-object p0, p0, Lr2/c;->a:[I

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    array-length v0, p0

    add-int/lit8 v1, v0, 0x1

    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_13

    mul-int/lit16 v1, v1, 0x101

    aget v2, p0, v0

    xor-int/2addr v1, v2

    goto :goto_9

    :cond_13
    return v1
.end method
