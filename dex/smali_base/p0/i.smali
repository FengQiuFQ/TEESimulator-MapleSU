.class public final Lp0/i;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/c;


# instance fields
.field public a:Lorg/bouncycastle/crypto/j0;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lp0/i;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/bouncycastle/crypto/g;)Ljava/math/BigInteger;
    .registers 4

    iget v0, p0, Lp0/i;->b:I

    new-array v0, v0, [B

    iget-object p0, p0, Lp0/i;->a:Lorg/bouncycastle/crypto/j0;

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/j0;->i(Lorg/bouncycastle/crypto/g;[BI)V

    new-instance p0, Ljava/math/BigInteger;

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method public final getFieldSize()I
    .registers 1

    iget p0, p0, Lp0/i;->b:I

    return p0
.end method

.method public final init(Lorg/bouncycastle/crypto/g;)V
    .registers 4

    instance-of v0, p1, Le1/c1;

    if-eqz v0, :cond_11

    const/16 v0, 0x20

    iput v0, p0, Lp0/i;->b:I

    new-instance v0, Lb1/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lb1/a;-><init>(I)V

    :goto_e
    iput-object v0, p0, Lp0/i;->a:Lorg/bouncycastle/crypto/j0;

    goto :goto_21

    :cond_11
    instance-of v0, p1, Le1/e1;

    if-eqz v0, :cond_2a

    const/16 v0, 0x38

    iput v0, p0, Lp0/i;->b:I

    new-instance v0, Lb1/a;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lb1/a;-><init>(I)V

    goto :goto_e

    :goto_21
    move-object v0, p1

    check-cast v0, Le1/b;

    iget-object p0, p0, Lp0/i;->a:Lorg/bouncycastle/crypto/j0;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/j0;->init(Lorg/bouncycastle/crypto/g;)V

    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key is neither X25519 nor X448"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
