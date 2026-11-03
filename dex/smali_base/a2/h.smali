.class public La2/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field public final c:[C

.field public final d:Z


# direct methods
.method public constructor <init>([CZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    new-array p1, v0, [C

    :cond_8
    array-length v1, p1

    new-array v1, v1, [C

    iput-object v1, p0, La2/h;->c:[C

    iput-boolean p2, p0, La2/h;->d:Z

    array-length p0, p1

    invoke-static {p1, v0, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS12"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 2

    iget-boolean v0, p0, La2/h;->d:Z

    iget-object p0, p0, La2/h;->c:[C

    if-eqz v0, :cond_d

    array-length v0, p0

    if-nez v0, :cond_d

    const/4 p0, 0x2

    new-array p0, p0, [B

    return-object p0

    :cond_d
    invoke-static {p0}, Lorg/bouncycastle/crypto/e0;->PKCS12PasswordToBytes([C)[B

    move-result-object p0

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "PKCS12"

    return-object p0
.end method
