.class public final Lt4/e;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field public final a:[Lm/f;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Lm/f;


# direct methods
.method public constructor <init>([Lm/f;Ljava/util/LinkedHashMap;Lm/u;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4/e;->a:[Lm/f;

    iput-object p2, p0, Lt4/e;->b:Ljava/util/LinkedHashMap;

    iput-object p3, p0, Lt4/e;->c:Lm/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_3

    goto :goto_2c

    :cond_3
    instance-of v0, p1, Lt4/e;

    if-nez v0, :cond_8

    goto :goto_2a

    :cond_8
    check-cast p1, Lt4/e;

    iget-object v0, p0, Lt4/e;->a:[Lm/f;

    iget-object v1, p1, Lt4/e;->a:[Lm/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_2a

    :cond_15
    iget-object v0, p0, Lt4/e;->b:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lt4/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_2a

    :cond_20
    iget-object p0, p0, Lt4/e;->c:Lm/f;

    iget-object p1, p1, Lt4/e;->c:Lm/f;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    :goto_2a
    const/4 p0, 0x0

    return p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lt4/e;->a:[Lm/f;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lt4/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lt4/e;->c:Lm/f;

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_1b
    add-int/2addr v1, p0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lt4/e;->a:[Lm/f;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParsedAttestation(allFields="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", teeEnforcedMap="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lt4/e;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rootOfTrust="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lt4/e;->c:Lm/f;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
