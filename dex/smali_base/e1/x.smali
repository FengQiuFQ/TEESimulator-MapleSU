.class public final Le1/x;
.super Le1/u;


# instance fields
.field public final q:Lk2/p;


# direct methods
.method public constructor <init>(Lk2/p;Le1/r;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Le1/u;-><init>(ZLe1/r;)V

    iget-object p2, p2, Le1/r;->g:Lk2/h;

    invoke-static {p2, p1}, Le1/r;->a(Lk2/h;Lk2/p;)Lk2/p;

    move-result-object p1

    iput-object p1, p0, Le1/x;->q:Lk2/p;

    return-void
.end method
