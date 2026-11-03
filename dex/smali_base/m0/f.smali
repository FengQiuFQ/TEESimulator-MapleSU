.class public final Lm0/f;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public final c:Lm/u;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lm/v0;->d:Lm/v0;

    iput-object v0, p0, Lm0/f;->c:Lm/u;

    return-void
.end method

.method public constructor <init>(Lm/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f;->c:Lm/u;

    return-void
.end method

.method public constructor <init>(Lm/u;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/f;->c:Lm/u;

    return-void
.end method

.method public constructor <init>(Lm0/h;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lm0/f;->c:Lm/u;

    invoke-virtual {p1}, Lm0/h;->d()Lm/u;

    move-result-object p1

    iput-object p1, p0, Lm0/f;->c:Lm/u;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Lm0/f;
    .registers 4

    if-eqz p0, :cond_3d

    instance-of v0, p0, Lm0/f;

    if-eqz v0, :cond_7

    goto :goto_3d

    :cond_7
    instance-of v0, p0, Lm/u;

    if-eqz v0, :cond_13

    new-instance v0, Lm0/f;

    check-cast p0, Lm/u;

    invoke-direct {v0, p0}, Lm0/f;-><init>(Lm/u;)V

    return-object v0

    :cond_13
    instance-of v0, p0, [B

    if-eqz v0, :cond_35

    :try_start_17
    new-instance v0, Lm0/f;

    check-cast p0, [B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    invoke-direct {v0, p0}, Lm0/f;-><init>(Lm/u;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23

    return-object v0

    :catch_23
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to parse encoded data: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown object in getInstance()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :goto_3d
    check-cast p0, Lm0/f;

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Lm0/f;->c:Lm/u;

    return-object p0
.end method
