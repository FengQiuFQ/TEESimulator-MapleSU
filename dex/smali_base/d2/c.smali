.class public final Ld2/c;
.super Ljavax/crypto/spec/DHParameterSpec;


# instance fields
.field public final c:Ljava/math/BigInteger;

.field public final d:Ljava/math/BigInteger;

.field public final q:I

.field public final x:Le1/j;


# direct methods
.method public constructor <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 7

    invoke-direct {p0, p3, p5, p2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object p4, p0, Ld2/c;->c:Ljava/math/BigInteger;

    iput-object p6, p0, Ld2/c;->d:Ljava/math/BigInteger;

    iput p1, p0, Ld2/c;->q:I

    return-void
.end method

.method public constructor <init>(Le1/g;)V
    .registers 9

    iget-object v3, p1, Le1/g;->d:Ljava/math/BigInteger;

    iget-object v4, p1, Le1/g;->q:Ljava/math/BigInteger;

    iget-object v5, p1, Le1/g;->c:Ljava/math/BigInteger;

    iget-object v6, p1, Le1/g;->x:Ljava/math/BigInteger;

    iget v1, p1, Le1/g;->y:I

    iget v2, p1, Le1/g;->z1:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ld2/c;-><init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iget-object p0, p1, Le1/g;->A1:Le1/j;

    iput-object p0, v0, Ld2/c;->x:Le1/j;

    return-void
.end method


# virtual methods
.method public final a()Le1/g;
    .registers 9

    new-instance v0, Le1/g;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Ld2/c;->d:Ljava/math/BigInteger;

    iget-object v7, p0, Ld2/c;->x:Le1/j;

    iget-object v3, p0, Ld2/c;->c:Ljava/math/BigInteger;

    iget v4, p0, Ld2/c;->q:I

    invoke-direct/range {v0 .. v7}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    return-object v0
.end method
