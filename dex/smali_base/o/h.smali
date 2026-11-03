.class public final Lo/h;
.super Lm/n;


# instance fields
.field public final c:Lm/n;

.field public final d:Lo/j;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_69

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object v0

    instance-of v2, v0, Lo/b;

    if-eqz v2, :cond_18

    :goto_13
    check-cast v0, Lm/n;

    :goto_15
    iput-object v0, p0, Lo/h;->c:Lm/n;

    goto :goto_38

    :cond_18
    instance-of v2, v0, Lo/i;

    if-eqz v2, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v2

    if-ne v2, v1, :cond_33

    new-instance v1, Lo/b;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-direct {v1, v0}, Lo/b;-><init>(Lm/x;)V

    iput-object v1, p0, Lo/h;->c:Lm/n;

    goto :goto_38

    :cond_33
    invoke-static {v0}, Lo/i;->h(Ljava/lang/Object;)Lo/i;

    move-result-object v0

    goto :goto_15

    :goto_38
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    instance-of v0, p1, Lo/j;

    if-eqz v0, :cond_44

    check-cast p1, Lo/j;

    goto :goto_66

    :cond_44
    instance-of v0, p1, [B

    if-eqz v0, :cond_5d

    :try_start_48
    new-instance v0, Lo/j;

    check-cast p1, [B

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/j;-><init>(Lm/f;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_53} :catch_55

    :goto_53
    move-object p1, v0

    goto :goto_66

    :catch_55
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to parse integrity check details."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5d
    if-eqz p1, :cond_65

    new-instance v0, Lo/j;

    invoke-direct {v0, p1}, Lo/j;-><init>(Lm/f;)V

    goto :goto_53

    :cond_65
    const/4 p1, 0x0

    :goto_66
    iput-object p1, p0, Lo/h;->d:Lo/j;

    return-void

    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "malformed sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lo/h;->c:Lm/n;

    iget-object p0, p0, Lo/h;->d:Lo/j;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
