.class public final Ld0/b;
.super Lm/n;


# instance fields
.field public c:[Ld0/f;

.field public d:Z


# virtual methods
.method public final d()Lm/u;
    .registers 2

    iget-object v0, p0, Ld0/b;->c:[Ld0/f;

    iget-boolean p0, p0, Ld0/b;->d:Z

    if-eqz p0, :cond_c

    new-instance p0, Lm/h0;

    invoke-direct {p0, v0}, Lm/x;-><init>([Lm/f;)V

    return-object p0

    :cond_c
    new-instance p0, Lm/n1;

    invoke-direct {p0, v0}, Lm/x;-><init>([Lm/f;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/n1;->q:I

    return-object p0
.end method
