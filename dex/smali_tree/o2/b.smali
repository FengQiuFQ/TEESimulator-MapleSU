.class public final Lo2/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lb1/b;

.field public final b:Lb1/a;


# direct methods
.method public constructor <init>(Lk2/d;Lb1/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lo2/b;->a:Lb1/b;

    new-instance v0, Lb1/a;

    iget-object p2, p2, Lb1/b;->h:Ljava/lang/Object;

    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2}, Lk2/h;->j(Ljava/math/BigInteger;)Lk2/b0;

    move-result-object p1

    const/4 p2, 0x5

    invoke-direct {v0, p2, p1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lo2/b;->b:Lb1/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 6

    iget-object p0, p0, Lo2/b;->a:Lb1/b;

    iget-object p0, p0, Lb1/b;->i:Ljava/lang/Object;

    check-cast p0, Lo2/c;

    iget v0, p0, Lo2/c;->g:I

    iget-object v1, p0, Lo2/c;->e:Ljava/math/BigInteger;

    invoke-static {v0, p1, v1}, Lt4/d;->q(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lo2/c;->f:Ljava/math/BigInteger;

    invoke-static {v0, p1, v2}, Lt4/d;->q(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lo2/c;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lo2/c;->c:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v2, p0, Lo2/c;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object p0, p0, Lo2/c;->d:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
