.class public La2/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field public final c:[C

.field public final d:Lorg/bouncycastle/crypto/i0;


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/i0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_d

    :cond_7
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    :goto_d
    iput-object p1, p0, La2/g;->c:[C

    iput-object p2, p0, La2/g;->d:Lorg/bouncycastle/crypto/i0;

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "PBKDF2"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    iget-object v0, p0, La2/g;->d:Lorg/bouncycastle/crypto/i0;

    iget-object p0, p0, La2/g;->c:[C

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/i0;->a([C)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, La2/g;->d:Lorg/bouncycastle/crypto/i0;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/i0;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
