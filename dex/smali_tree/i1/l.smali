.class public final Li1/l;
.super Ljava/lang/Object;

# interfaces
.implements Li1/b;


# static fields
.field public static final c:Ljava/math/BigInteger;


# instance fields
.field public a:Ljava/math/BigInteger;

.field public b:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Li1/l;->c:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a()Ljava/math/BigInteger;
    .registers 4

    iget-object v0, p0, Li1/l;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :cond_6
    iget-object v1, p0, Li1/l;->b:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lm4/a;->c(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Li1/l;->c:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Li1/l;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_6

    return-object v1
.end method

.method public final b(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .registers 3

    iput-object p1, p0, Li1/l;->a:Ljava/math/BigInteger;

    iput-object p2, p0, Li1/l;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method public final c()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 4

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Operation not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
