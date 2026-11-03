.class public final Lf2/c;
.super Ll0/d1;

# interfaces
.implements Ljava/security/Principal;


# direct methods
.method public constructor <init>(Lj0/c;)V
    .registers 2

    iget-object p1, p1, Lj0/c;->y:Lm/a1;

    invoke-direct {p0, p1}, Ll0/d1;-><init>(Lm/x;)V

    return-void
.end method

.method public constructor <init>(Ll0/d1;)V
    .registers 2

    invoke-virtual {p1}, Ll0/d1;->d()Lm/u;

    move-result-object p1

    check-cast p1, Lm/x;

    invoke-direct {p0, p1}, Ll0/d1;-><init>(Lm/x;)V

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
