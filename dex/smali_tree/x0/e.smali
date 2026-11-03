.class public final Lx0/e;
.super Ljava/lang/Object;


# static fields
.field public static final d:Ljava/math/BigInteger;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lx0/e;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final a()Le1/g;
    .registers 11

    iget v0, p0, Lx0/e;->a:I

    iget v1, p0, Lx0/e;->b:I

    iget-object v2, p0, Lx0/e;->c:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lx0/f;->a(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v1, 0x1

    aget-object v5, v0, v1

    iget-object p0, p0, Lx0/e;->c:Ljava/security/SecureRandom;

    invoke-static {v3, p0}, Lx0/f;->b(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    new-instance v2, Le1/g;

    const/16 v6, 0xa0

    const/4 v7, 0x0

    sget-object v8, Lx0/e;->d:Ljava/math/BigInteger;

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    return-object v2
.end method
