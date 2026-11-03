.class public Li2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final c:Lk2/h;

.field public final d:[B

.field public final q:Lk2/p;

.field public final x:Ljava/math/BigInteger;

.field public final y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lk2/f;Lk2/p;Ljava/math/BigInteger;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/e;->c:Lk2/h;

    invoke-virtual {p2}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    iput-object p1, p0, Li2/e;->q:Lk2/p;

    iput-object p3, p0, Li2/e;->x:Ljava/math/BigInteger;

    const-wide/16 p1, 0x1

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Li2/e;->y:Ljava/math/BigInteger;

    const/4 p1, 0x0

    iput-object p1, p0, Li2/e;->d:[B

    return-void
.end method

.method public constructor <init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/e;->c:Lk2/h;

    invoke-virtual {p2}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    iput-object p1, p0, Li2/e;->q:Lk2/p;

    iput-object p3, p0, Li2/e;->x:Ljava/math/BigInteger;

    iput-object p4, p0, Li2/e;->y:Ljava/math/BigInteger;

    iput-object p5, p0, Li2/e;->d:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Li2/e;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Li2/e;

    iget-object v0, p0, Li2/e;->c:Lk2/h;

    iget-object v2, p1, Li2/e;->c:Lk2/h;

    invoke-virtual {v0, v2}, Lk2/h;->i(Lk2/h;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Li2/e;->q:Lk2/p;

    iget-object p1, p1, Li2/e;->q:Lk2/p;

    invoke-virtual {p0, p1}, Lk2/p;->d(Lk2/p;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Li2/e;->c:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->hashCode()I

    move-result v0

    iget-object p0, p0, Li2/e;->q:Lk2/p;

    invoke-virtual {p0}, Lk2/p;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
