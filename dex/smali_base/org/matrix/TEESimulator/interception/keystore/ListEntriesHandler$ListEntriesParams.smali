.class final Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final domain:I

.field private final namespace:J

.field private final startPastAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    iput-wide p2, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    iput-object p4, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;IJLjava/lang/String;ILjava/lang/Object;)Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-wide p2, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-object p4, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->copy(IJLjava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    return p0
.end method

.method public final component2()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(IJLjava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;
    .registers 5

    new-instance p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;-><init>(IJLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c

    return v2

    :cond_1c
    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    iget-object p1, p1, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27

    return v2

    :cond_27
    return v0
.end method

.method public final getDomain()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    return p0
.end method

.method public final getNamespace()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    return-wide v0
.end method

.method public final getStartPastAlias()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_1b
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->domain:I

    iget-wide v1, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->namespace:J

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/ListEntriesHandler$ListEntriesParams;->startPastAlias:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ListEntriesParams(domain="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", namespace="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", startPastAlias="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
