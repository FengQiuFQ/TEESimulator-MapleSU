.class public abstract Le1/d0;
.super Le1/b;


# instance fields
.field public final d:Le1/e0;


# direct methods
.method public constructor <init>(ZLe1/e0;)V
    .registers 3

    invoke-direct {p0, p1}, Le1/b;-><init>(Z)V

    iput-object p2, p0, Le1/d0;->d:Le1/e0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Le1/d0;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Le1/d0;

    iget-object p1, p1, Le1/d0;->d:Le1/e0;

    iget-object p0, p0, Le1/d0;->d:Le1/e0;

    if-nez p0, :cond_13

    if-nez p1, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1

    :cond_13
    invoke-virtual {p0, p1}, Le1/e0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Le1/d0;->d:Le1/e0;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Le1/e0;->hashCode()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
