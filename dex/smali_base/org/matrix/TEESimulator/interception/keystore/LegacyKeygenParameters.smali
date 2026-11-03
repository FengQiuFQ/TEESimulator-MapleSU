.class final Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final Companion:Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;


# instance fields
.field private final algorithm:I

.field private attestationChallenge:[B

.field private final certificateNotBefore:Ljava/util/Date;

.field private final digest:Ljava/util/List;

.field private final ecCurveName:Ljava/lang/String;

.field private final keySize:I

.field private final purpose:Ljava/util/List;

.field private final rsaPublicExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->Companion:Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters$Companion;

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 9

    const-string v0, "purpose"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "digest"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    iput p2, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    iput-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    iput-object p4, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    iput-object p5, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    iput-object p6, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    iput-object p7, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;IILjava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;ILjava/lang/Object;)Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;
    .registers 10

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget p1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget p2, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_12

    iget-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    :cond_12
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_18

    iget-object p4, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    :cond_18
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1e

    iget-object p5, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    :cond_1e
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_24

    iget-object p6, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    :cond_24
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2a

    iget-object p7, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    :cond_2a
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->copy(IILjava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    return p0
.end method

.method public final component3()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    return-object p0
.end method

.method public final component5()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    return-object p0
.end method

.method public final component6()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IILjava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;
    .registers 16

    const-string p0, "purpose"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "digest"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/Date;Ljava/math/BigInteger;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    return v2

    :cond_46
    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    iget-object p1, p1, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    return v2

    :cond_51
    return v0
.end method

.method public final getAlgorithm()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    return p0
.end method

.method public final getAttestationChallenge()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->attestationChallenge:[B

    return-object p0
.end method

.method public final getCertificateNotBefore()Ljava/util/Date;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    return-object p0
.end method

.method public final getDigest()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    return-object p0
.end method

.method public final getEcCurveName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    return-object p0
.end method

.method public final getKeySize()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    return p0
.end method

.method public final getPurpose()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    return-object p0
.end method

.method public final getRsaPublicExponent()Ljava/math/BigInteger;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    move v0, v2

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    :goto_2e
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    if-nez v0, :cond_37

    move v0, v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    :goto_3b
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    if-nez p0, :cond_43

    goto :goto_47

    :cond_43
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_47
    add-int/2addr v1, v2

    return v1
.end method

.method public final setAttestationChallenge([B)V
    .registers 2

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->attestationChallenge:[B

    return-void
.end method

.method public final toKeyMintAttestation()Lt4/l;
    .registers 11

    new-instance v0, Lt4/l;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    iget v2, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    if-nez v4, :cond_11

    const-string v4, ""

    :cond_11
    iget-object v5, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    iget-object v6, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    iget-object v7, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    iget-object v9, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->attestationChallenge:[B

    invoke-direct/range {v0 .. v9}, Lt4/l;-><init>(IILjava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/util/Date;[B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->algorithm:I

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->keySize:I

    iget-object v2, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->purpose:Ljava/util/List;

    iget-object v3, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->digest:Ljava/util/List;

    iget-object v4, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->certificateNotBefore:Ljava/util/Date;

    iget-object v5, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->rsaPublicExponent:Ljava/math/BigInteger;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/LegacyKeygenParameters;->ecCurveName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "LegacyKeygenParameters(algorithm="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", keySize="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", purpose="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", digest="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", certificateNotBefore="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rsaPublicExponent="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", ecCurveName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v6, p0, v0}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
