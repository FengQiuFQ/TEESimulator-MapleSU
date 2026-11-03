.class public final Le1/p;
.super Ljava/lang/Object;


# instance fields
.field public final a:[B

.field public final b:I


# direct methods
.method public constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/p;->a:[B

    iput p2, p0, Le1/p;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Le1/p;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Le1/p;

    iget v0, p1, Le1/p;->b:I

    iget v2, p0, Le1/p;->b:I

    if-eq v0, v2, :cond_f

    return v1

    :cond_f
    iget-object p0, p0, Le1/p;->a:[B

    iget-object p1, p1, Le1/p;->a:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Le1/p;->a:[B

    invoke-static {v0}, Lm4/d;->u([B)I

    move-result v0

    iget p0, p0, Le1/p;->b:I

    xor-int/2addr p0, v0

    return p0
.end method
