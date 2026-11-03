.class public final Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final event:Ljava/lang/String;

.field private final txId:Ljava/lang/Long;

.field private final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/Long;Ljava/lang/String;)V
    .registers 5

    const-string v0, "event"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    iput-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;ILjava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->copy(ILjava/lang/Long;Ljava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    return p0
.end method

.method public final component2()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/Long;Ljava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;
    .registers 4

    const-string p0, "event"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;

    invoke-direct {p0, p1, p2, p3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;-><init>(ILjava/lang/Long;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    iget-object p1, p1, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v2

    :cond_29
    return v0
.end method

.method public final getEvent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    return-object p0
.end method

.method public final getTxId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    return-object p0
.end method

.method public final getUid()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->uid:I

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->txId:Ljava/lang/Long;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils$ReplyDiagnostic;->event:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReplyDiagnostic(uid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", txId="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", event="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v2, p0, v0}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
