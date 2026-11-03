.class public final Ll0/p0;
.super Lm/n;


# instance fields
.field public c:Ll0/b;

.field public d:Lm/b;


# direct methods
.method public constructor <init>(Ll0/b;Lm/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ll0/p0;->d:Lm/b;

    iput-object p1, p0, Ll0/p0;->c:Ll0/b;

    return-void
.end method

.method public constructor <init>(Ll0/b;Lm/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/p0;

    invoke-interface {p2}, Lm/f;->d()Lm/u;

    move-result-object p2

    invoke-virtual {p2}, Lm/n;->g()[B

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lm/b;-><init>([BI)V

    iput-object v0, p0, Ll0/p0;->d:Lm/b;

    iput-object p1, p0, Ll0/p0;->c:Ll0/b;

    return-void
.end method

.method public constructor <init>(Ll0/b;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm/p0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lm/b;-><init>([BI)V

    iput-object v0, p0, Ll0/p0;->d:Lm/b;

    iput-object p1, p0, Ll0/p0;->c:Ll0/b;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ll0/p0;
    .registers 4

    instance-of v0, p0, Ll0/p0;

    if-eqz v0, :cond_7

    check-cast p0, Ll0/p0;

    return-object p0

    :cond_7
    if-eqz p0, :cond_43

    new-instance v0, Ll0/p0;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v1

    iput-object v1, v0, Ll0/p0;->c:Ll0/b;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object p0

    iput-object p0, v0, Ll0/p0;->d:Lm/b;

    return-object v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ll0/p0;->c:Ll0/b;

    iget-object p0, p0, Ll0/p0;->d:Lm/b;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method

.method public final i()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/p0;->d:Lm/b;

    invoke-virtual {p0}, Lm/b;->u()[B

    move-result-object p0

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    return-object p0
.end method
