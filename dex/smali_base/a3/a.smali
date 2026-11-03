.class public abstract La3/a;
.super Le1/b;


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf3/a;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    iput-object p1, p0, La3/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1}, Le1/b;-><init>(Z)V

    iput-object p2, p0, La3/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLo3/c;)V
    .registers 3

    invoke-direct {p0, p1}, Le1/b;-><init>(Z)V

    iput-object p2, p0, La3/a;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Lf3/a;
    .registers 1

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lf3/a;

    return-object p0
.end method

.method public b()Lh3/a;
    .registers 1

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lh3/a;

    return-object p0
.end method

.method public c()Lo3/c;
    .registers 1

    iget-object p0, p0, La3/a;->d:Ljava/lang/Object;

    check-cast p0, Lo3/c;

    return-object p0
.end method
