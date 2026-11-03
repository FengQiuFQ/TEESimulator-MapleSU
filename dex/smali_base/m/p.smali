.class public final Lm/p;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm4/d;->u([B)I

    move-result v0

    iput v0, p0, Lm/p;->a:I

    iput-object p1, p0, Lm/p;->b:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lm/p;

    if-eqz v0, :cond_f

    check-cast p1, Lm/p;

    iget-object p1, p1, Lm/p;->b:[B

    iget-object p0, p0, Lm/p;->b:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget p0, p0, Lm/p;->a:I

    return p0
.end method
