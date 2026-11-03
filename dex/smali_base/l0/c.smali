.class public final Ll0/c;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public final c:Lm/n;

.field public final d:Lm/u;


# direct methods
.method public constructor <init>(Ll0/y0;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/c;->c:Lm/n;

    new-instance v0, Lm/d1;

    const/16 v1, 0x80

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3, p1}, Lm/a0;-><init>(IIILm/f;)V

    iput-object v0, p0, Ll0/c;->d:Lm/u;

    return-void
.end method

.method public constructor <init>(Ll0/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/c;->c:Lm/n;

    invoke-virtual {p1}, Ll0/z;->d()Lm/u;

    move-result-object p1

    iput-object p1, p0, Ll0/c;->d:Lm/u;

    return-void
.end method

.method public static h(Lm/f;)Ll0/c;
    .registers 4

    if-eqz p0, :cond_5c

    instance-of v0, p0, Ll0/c;

    if-eqz v0, :cond_7

    goto :goto_5c

    :cond_7
    instance-of v0, p0, Ll0/y0;

    if-eqz v0, :cond_15

    new-instance v0, Ll0/c;

    invoke-static {p0}, Ll0/y0;->h(Ljava/lang/Object;)Ll0/y0;

    move-result-object p0

    invoke-direct {v0, p0}, Ll0/c;-><init>(Ll0/y0;)V

    return-object v0

    :cond_15
    instance-of v0, p0, Ll0/z;

    if-eqz v0, :cond_21

    new-instance v0, Ll0/c;

    check-cast p0, Ll0/z;

    invoke-direct {v0, p0}, Ll0/c;-><init>(Ll0/z;)V

    return-object v0

    :cond_21
    instance-of v0, p0, Lm/a0;

    if-eqz v0, :cond_3a

    new-instance v0, Ll0/c;

    check-cast p0, Lm/a0;

    const/4 v1, 0x0

    sget-object v2, Lm/x;->d:Lm/a;

    invoke-virtual {v2, p0, v1}, Lm/a;->d(Lm/a0;Z)Lm/u;

    move-result-object p0

    check-cast p0, Lm/x;

    invoke-static {p0}, Ll0/y0;->h(Ljava/lang/Object;)Ll0/y0;

    move-result-object p0

    invoke-direct {v0, p0}, Ll0/c;-><init>(Ll0/y0;)V

    return-object v0

    :cond_3a
    instance-of v0, p0, Lm/x;

    if-eqz v0, :cond_48

    new-instance v0, Ll0/c;

    invoke-static {p0}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object p0

    invoke-direct {v0, p0}, Ll0/c;-><init>(Ll0/z;)V

    return-object v0

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown object in factory: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    :goto_5c
    check-cast p0, Ll0/c;

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/c;->d:Lm/u;

    return-object p0
.end method
