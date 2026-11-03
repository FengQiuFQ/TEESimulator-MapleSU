.class public final Ls0/k0;
.super Ljava/lang/Object;


# instance fields
.field public a:[J

.field public b:Z


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls0/k0;->a:[J

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    const/16 v1, 0x38

    ushr-long/2addr v3, v1

    const-wide/16 v5, 0x3f

    and-long/2addr v3, v5

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " first: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls0/k0;->a:[J

    aget-wide v3, v1, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    move v1, v2

    goto :goto_2a

    :cond_29
    move v1, v3

    :goto_2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", final: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ls0/k0;->a:[J

    aget-wide v7, p0, v2

    const-wide/high16 v9, -0x8000000000000000L

    and-long/2addr v7, v9

    cmp-long p0, v7, v5

    if-eqz p0, :cond_3e

    goto :goto_3f

    :cond_3e
    move v2, v3

    :goto_3f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
