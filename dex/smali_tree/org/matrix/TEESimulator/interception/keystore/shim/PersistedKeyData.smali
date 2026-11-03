.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final algorithm:I

.field private final alias:Ljava/lang/String;

.field private final certChainBytes:Ljava/util/List;

.field private final digests:Ljava/util/List;

.field private final ecCurve:I

.field private final isAttestationKey:Z

.field private final keySize:I

.field private final metadataBytes:[B

.field private final nspace:J

.field private final privateKeyBytes:[B

.field private final purposes:Ljava/util/List;

.field private final securityLevel:I

.field private final symmetricAlgorithm:Ljava/lang/String;

.field private final symmetricKeyBytes:[B

.field private final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;)V
    .registers 25

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    move-object/from16 v2, p12

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    const-string v7, "alias"

    invoke-static {v7, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "purposes"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "digests"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "privateKeyBytes"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "certChainBytes"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "metadataBytes"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "symmetricKeyBytes"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "symmetricAlgorithm"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    iput-wide p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    iput p5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    iput-boolean p6, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    iput p7, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    move/from16 p1, p8

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    move/from16 p1, p9

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    iput-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    iput-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    iput-object v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    iput-object v3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    iput-object v4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    iput-object v5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    iput-object v6, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;ILjava/lang/Object;)Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;
    .registers 35

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_b

    iget v2, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    goto :goto_d

    :cond_b
    move/from16 v2, p1

    :goto_d
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_14

    iget-object v3, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    goto :goto_16

    :cond_14
    move-object/from16 v3, p2

    :goto_16
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1d

    iget-wide v4, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    goto :goto_1f

    :cond_1d
    move-wide/from16 v4, p3

    :goto_1f
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_26

    iget v6, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    goto :goto_28

    :cond_26
    move/from16 v6, p5

    :goto_28
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_2f

    iget-boolean v7, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    goto :goto_31

    :cond_2f
    move/from16 v7, p6

    :goto_31
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_38

    iget v8, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    goto :goto_3a

    :cond_38
    move/from16 v8, p7

    :goto_3a
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_41

    iget v9, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    goto :goto_43

    :cond_41
    move/from16 v9, p8

    :goto_43
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_4a

    iget v10, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    goto :goto_4c

    :cond_4a
    move/from16 v10, p9

    :goto_4c
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_53

    iget-object v11, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    goto :goto_55

    :cond_53
    move-object/from16 v11, p10

    :goto_55
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_5c

    iget-object v12, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    goto :goto_5e

    :cond_5c
    move-object/from16 v12, p11

    :goto_5e
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_65

    iget-object v13, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    goto :goto_67

    :cond_65
    move-object/from16 v13, p12

    :goto_67
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_6e

    iget-object v14, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    goto :goto_70

    :cond_6e
    move-object/from16 v14, p13

    :goto_70
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_77

    iget-object v15, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    goto :goto_79

    :cond_77
    move-object/from16 v15, p14

    :goto_79
    move/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_82

    iget-object v2, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    goto :goto_84

    :cond_82
    move-object/from16 v2, p15

    :goto_84
    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_ab

    iget-object v1, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    move-object/from16 p17, v1

    :goto_8c
    move/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-wide/from16 p4, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    goto :goto_ae

    :cond_ab
    move-object/from16 p17, p16

    goto :goto_8c

    :goto_ae
    invoke-virtual/range {p1 .. p17}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->copy(ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    return p0
.end method

.method public final component10()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    return-object p0
.end method

.method public final component11()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    return-object p0
.end method

.method public final component12()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    return-object p0
.end method

.method public final component13()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    return-object p0
.end method

.method public final component14()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    return-wide v0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    return p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    return p0
.end method

.method public final component6()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    return p0
.end method

.method public final component7()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    return p0
.end method

.method public final component8()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    return p0
.end method

.method public final component9()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;)Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;
    .registers 35

    const-string v0, "alias"

    move-object/from16 v3, p2

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "purposes"

    move-object/from16 v11, p10

    invoke-static {v0, v11}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "digests"

    move-object/from16 v12, p11

    invoke-static {v0, v12}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "privateKeyBytes"

    move-object/from16 v13, p12

    invoke-static {v0, v13}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "certChainBytes"

    move-object/from16 v14, p13

    invoke-static {v0, v14}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "metadataBytes"

    move-object/from16 v15, p14

    invoke-static {v0, v15}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "symmetricKeyBytes"

    move-object/from16 v1, p15

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "symmetricAlgorithm"

    move-object/from16 v2, p16

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v16, p15

    move-object/from16 v17, v2

    move/from16 v2, p1

    invoke-direct/range {v1 .. v17}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;-><init>(ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_27

    return v2

    :cond_27
    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    if-eq v1, v3, :cond_2e

    return v2

    :cond_2e
    iget-boolean v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    iget-boolean v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    if-eq v1, v3, :cond_35

    return v2

    :cond_35
    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    if-eq v1, v3, :cond_3c

    return v2

    :cond_3c
    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    if-eq v1, v3, :cond_43

    return v2

    :cond_43
    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    iget v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    if-eq v1, v3, :cond_4a

    return v2

    :cond_4a
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    return v2

    :cond_55
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    return v2

    :cond_60
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    return v2

    :cond_6b
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    return v2

    :cond_76
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_81

    return v2

    :cond_81
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    return v2

    :cond_8c
    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    iget-object p1, p1, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_97

    return v2

    :cond_97
    return v0
.end method

.method public final getAlgorithm()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    return p0
.end method

.method public final getAlias()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    return-object p0
.end method

.method public final getCertChainBytes()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    return-object p0
.end method

.method public final getDigests()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    return-object p0
.end method

.method public final getEcCurve()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    return p0
.end method

.method public final getKeySize()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    return p0
.end method

.method public final getMetadataBytes()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    return-object p0
.end method

.method public final getNspace()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    return-wide v0
.end method

.method public final getPrivateKeyBytes()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    return-object p0
.end method

.method public final getPurposes()Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    return-object p0
.end method

.method public final getSecurityLevel()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    return p0
.end method

.method public final getSymmetricAlgorithm()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    return-object p0
.end method

.method public final getSymmetricKeyBytes()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    return-object p0
.end method

.method public final getUid()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final isAttestationKey()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p0

    iget v1, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->uid:I

    iget-object v2, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->alias:Ljava/lang/String;

    iget-wide v3, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->nspace:J

    iget v5, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->securityLevel:I

    iget-boolean v6, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey:Z

    iget v7, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->algorithm:I

    iget v8, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->keySize:I

    iget v9, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->ecCurve:I

    iget-object v10, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->purposes:Ljava/util/List;

    iget-object v11, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->digests:Ljava/util/List;

    iget-object v12, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->privateKeyBytes:[B

    invoke-static {v12}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->certChainBytes:Ljava/util/List;

    iget-object v14, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->metadataBytes:[B

    invoke-static {v14}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricKeyBytes:[B

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->symmetricAlgorithm:Ljava/lang/String;

    move-object/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v16, v14

    const-string v14, "PersistedKeyData(uid="

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", nspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", securityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isAttestationKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", algorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ecCurve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", purposes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", digests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", privateKeyBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certChainBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metadataBytes="

    const-string v2, ", symmetricKeyBytes="

    move-object/from16 v3, v16

    invoke-static {v0, v1, v3, v2, v15}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", symmetricAlgorithm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
