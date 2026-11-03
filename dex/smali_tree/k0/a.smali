.class public final Lk0/a;
.super Lk0/b;


# static fields
.field public static final n:Lk0/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lk0/a;

    invoke-direct {v0}, Lk0/b;-><init>()V

    sput-object v0, Lk0/a;->n:Lk0/a;

    return-void
.end method


# virtual methods
.method public final c(Lj0/c;Lj0/c;)Z
    .registers 6

    iget-object p0, p1, Lj0/c;->x:[Lj0/b;

    array-length p0, p0

    iget-object v0, p2, Lj0/c;->x:[Lj0/b;

    array-length v0, v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_a

    goto :goto_20

    :cond_a
    invoke-virtual {p1}, Lj0/c;->j()[Lj0/b;

    move-result-object p0

    invoke-virtual {p2}, Lj0/c;->j()[Lj0/b;

    move-result-object p1

    move p2, v1

    :goto_13
    array-length v0, p0

    if-eq p2, v0, :cond_24

    aget-object v0, p0, p2

    aget-object v2, p1, p2

    invoke-static {v0, v2}, Lq4/k;->F0(Lj0/b;Lj0/b;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_20
    return v1

    :cond_21
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_24
    const/4 p0, 0x1

    return p0
.end method
