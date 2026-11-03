.class public final Lk3/a;
.super Le1/b;


# instance fields
.field public final d:[S


# direct methods
.method public constructor <init>([S)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    invoke-static {p1}, Lm4/d;->i([S)[S

    move-result-object p1

    iput-object p1, p0, Lk3/a;->d:[S

    return-void
.end method
