.class public final Ll0/n0;
.super Lm/p0;


# direct methods
.method public constructor <init>(Lm/b;)V
    .registers 3

    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object v0

    invoke-virtual {p1}, Lm/b;->f()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lm/b;-><init>([BI)V

    return-void
.end method
