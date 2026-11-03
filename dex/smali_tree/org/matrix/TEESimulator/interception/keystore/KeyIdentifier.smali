.class public final Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    const-string v0, "alias"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;ILjava/lang/String;ILjava/lang/Object;)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->copy(ILjava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;
    .registers 3

    const-string p0, "alias"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    iget-object p1, p1, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getAlias()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public final getUid()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    return p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->uid:I

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->alias:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeyIdentifier(uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", alias="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
