.class public final Ld0/x;
.super Lm/n;


# instance fields
.field public c:Ljava/math/BigInteger;

.field public d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/x;->c:Ljava/math/BigInteger;

    iput-object p2, p0, Ld0/x;->d:Ljava/math/BigInteger;

    return-void
.end method

.method public static h(Ljava/lang/Object;)Ld0/x;
    .registers 4

    instance-of v0, p0, Ld0/x;

    if-eqz v0, :cond_7

    check-cast p0, Ld0/x;

    return-object p0

    :cond_7
    if-eqz p0, :cond_4b

    new-instance v0, Ld0/x;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a

    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Ld0/x;->c:Ljava/math/BigInteger;

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object p0

    iput-object p0, v0, Ld0/x;->d:Ljava/math/BigInteger;

    return-object v0

    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad sequence size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->d(Lm/x;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/a1;

    new-instance v1, Lm/l;

    iget-object v2, p0, Ld0/x;->c:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    new-instance v2, Lm/l;

    iget-object p0, p0, Ld0/x;->d:Ljava/math/BigInteger;

    invoke-direct {v2, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/a1;->q:I

    return-object v0
.end method
