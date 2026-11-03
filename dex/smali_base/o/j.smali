.class public final Lo/j;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public final c:I

.field public final d:Lm/n;


# direct methods
.method public constructor <init>(Lm/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lm/x;

    const/4 v1, 0x0

    if-nez v0, :cond_38

    instance-of v0, p1, Lo/k;

    if-eqz v0, :cond_d

    goto :goto_38

    :cond_d
    instance-of v0, p1, Lm/a0;

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    iput v0, p0, Lo/j;->c:I

    check-cast p1, Lm/a0;

    invoke-virtual {p1}, Lm/a0;->u()Lm/n;

    move-result-object p1

    instance-of v0, p1, Lo/m;

    if-eqz v0, :cond_22

    move-object v1, p1

    check-cast v1, Lo/m;

    goto :goto_2d

    :cond_22
    if-eqz p1, :cond_2d

    new-instance v1, Lo/m;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/m;-><init>(Lm/x;)V

    :cond_2d
    :goto_2d
    iput-object v1, p0, Lo/j;->d:Lm/n;

    return-void

    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown check object in integrity check."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    const/4 v0, 0x0

    iput v0, p0, Lo/j;->c:I

    instance-of v0, p1, Lo/k;

    if-eqz v0, :cond_43

    move-object v1, p1

    check-cast v1, Lo/k;

    goto :goto_4e

    :cond_43
    if-eqz p1, :cond_4e

    new-instance v1, Lo/k;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/k;-><init>(Lm/x;)V

    :cond_4e
    :goto_4e
    iput-object v1, p0, Lo/j;->d:Lm/n;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    iget-object p0, p0, Lo/j;->d:Lm/n;

    instance-of v0, p0, Lo/m;

    if-eqz v0, :cond_e

    new-instance v0, Lm/d1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p0}, Lm/a0;-><init>(ZILm/f;)V

    return-object v0

    :cond_e
    invoke-virtual {p0}, Lm/n;->d()Lm/u;

    move-result-object p0

    return-object p0
.end method
