.class public abstract Le1/e;
.super Le1/b;


# instance fields
.field public final d:Le1/g;


# direct methods
.method public constructor <init>(ZLe1/g;)V
    .registers 3

    invoke-direct {p0, p1}, Le1/b;-><init>(Z)V

    iput-object p2, p0, Le1/e;->d:Le1/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Le1/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Le1/e;

    iget-object p1, p1, Le1/e;->d:Le1/g;

    iget-object p0, p0, Le1/e;->d:Le1/g;

    if-nez p0, :cond_13

    if-nez p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1

    :cond_13
    invoke-virtual {p0, p1}, Le1/g;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget-boolean v0, p0, Le1/b;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Le1/e;->d:Le1/g;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Le1/g;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_e
    return v0
.end method
