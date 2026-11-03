.class public final Lb0/c;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public c:I

.field public d:Lm/n;


# virtual methods
.method public final d()Lm/u;
    .registers 5

    new-instance v0, Lm/d1;

    iget v1, p0, Lb0/c;->c:I

    iget-object p0, p0, Lb0/c;->d:Lm/n;

    const/16 v2, 0x80

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v1, p0}, Lm/a0;-><init>(IIILm/f;)V

    return-object v0
.end method
