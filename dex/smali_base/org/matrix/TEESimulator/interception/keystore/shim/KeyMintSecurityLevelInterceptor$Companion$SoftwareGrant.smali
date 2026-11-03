.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final accessVector:I

.field private final granteeUid:I

.field private final ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;


# direct methods
.method public constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;II)V
    .registers 5

    const-string v0, "ownerKeyId"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iput p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    iput p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;IIILjava/lang/Object;)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->copy(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;II)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    return-object p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    return p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    return p0
.end method

.method public final copy(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;II)Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;
    .registers 4

    const-string p0, "ownerKeyId"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    invoke-direct {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;-><init>(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;II)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    iget p1, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    if-eq p0, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getAccessVector()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    return p0
.end method

.method public final getGranteeUid()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    return p0
.end method

.method public final getOwnerKeyId()Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->ownerKeyId:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->granteeUid:I

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;->accessVector:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SoftwareGrant(ownerKeyId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", granteeUid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", accessVector="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
