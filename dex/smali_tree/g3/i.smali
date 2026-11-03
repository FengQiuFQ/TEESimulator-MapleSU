.class public final Lg3/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg3/i;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lg3/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Lg3/i;

    iget p1, p1, Lg3/i;->a:I

    iget p0, p0, Lg3/i;->a:I

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    return v1
.end method

.method public final hashCode()I
    .registers 1

    iget p0, p0, Lg3/i;->a:I

    return p0
.end method
