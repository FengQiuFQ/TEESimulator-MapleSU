.class public final Lorg/matrix/TEESimulator/pki/CertGenConfig;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final activeDatetime:J

.field private final algorithm:I

.field private final attestVersion:I

.field private final attestationApplicationId:[B

.field private final attestationChallenge:[B

.field private final bootHash:[B

.field private final bootKey:[B

.field private final bootPatchLevel:I

.field private final callerNonce:Z

.field private final certNotAfter:J

.field private final certNotBefore:J

.field private final certSerial:[B

.field private final certSubject:[B

.field private final creationDatetime:J

.field private final debugLogging:Z

.field private final digests:[I

.field private final ecCurve:I

.field private final idBrand:[B

.field private final idDevice:[B

.field private final idImei:[B

.field private final idManufacturer:[B

.field private final idMeid:[B

.field private final idModel:[B

.field private final idProduct:[B

.field private final idSecondImei:[B

.field private final idSerial:[B

.field private final keySize:I

.field private final keyboxCertChain:[B

.field private final keyboxPrivateKey:[B

.field private final keymasterVersion:I

.field private final moduleHash:[B

.field private final noAuthRequired:Z

.field private final originationExpireDatetime:J

.field private final osPatchLevel:I

.field private final osVersion:I

.field private final purposes:[I

.field private final rsaPublicExponent:J

.field private final securityLevel:I

.field private final uid:I

.field private final unlockedDeviceRequired:Z

.field private final usageCountLimit:I

.field private final usageExpireDatetime:J

.field private final vendorPatchLevel:I


# direct methods
.method public constructor <init>(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)V
    .registers 57

    move-object/from16 v0, p15

    move-object/from16 v1, p16

    move-object/from16 v2, p24

    move-object/from16 v3, p25

    move-object/from16 v4, p28

    const-string v5, "purposes"

    invoke-static {v5, p7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "digests"

    invoke-static {v5, p8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "keyboxPrivateKey"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "keyboxCertChain"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "bootKey"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "bootHash"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "attestationApplicationId"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    iput p2, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    iput p3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    iput-wide p4, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    iput-object p6, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    iput-object p7, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    iput-object p8, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    move-object p1, p9

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    move-object/from16 p1, p10

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    move-wide/from16 p1, p11

    iput-wide p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    move-wide/from16 p1, p13

    iput-wide p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    iput-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    iput-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    move/from16 p1, p17

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    move/from16 p1, p18

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    move/from16 p1, p19

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    move/from16 p1, p20

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    move/from16 p1, p21

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    move/from16 p1, p22

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    move/from16 p1, p23

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    iput-object v2, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    iput-object v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    move-wide/from16 p1, p26

    iput-wide p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    iput-object v4, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    move-object/from16 p1, p29

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    move-object/from16 p1, p30

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    move-object/from16 p1, p31

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    move-object/from16 p1, p32

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    move-object/from16 p1, p33

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    move-object/from16 p1, p34

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    move-object/from16 p1, p35

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    move-object/from16 p1, p36

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    move-object/from16 p1, p37

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    move-object/from16 p1, p38

    iput-object p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    move-wide/from16 p1, p39

    iput-wide p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    move-wide/from16 p1, p41

    iput-wide p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    move-wide/from16 p1, p43

    iput-wide p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    move/from16 p1, p45

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    move/from16 p1, p46

    iput-boolean p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    move/from16 p1, p47

    iput-boolean p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    move/from16 p1, p48

    iput-boolean p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    move/from16 p1, p49

    iput p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    move/from16 p1, p50

    iput-boolean p1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZIILkotlin/jvm/internal/f;)V
    .registers 109

    move/from16 v0, p52

    and-int/lit8 v1, v0, 0x4

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_b

    move-wide/from16 v43, v2

    goto :goto_d

    :cond_b
    move-wide/from16 v43, p39

    :goto_d
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_14

    move-wide/from16 v45, v2

    goto :goto_16

    :cond_14
    move-wide/from16 v45, p41

    :goto_16
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1d

    move-wide/from16 v47, v2

    goto :goto_1f

    :cond_1d
    move-wide/from16 v47, p43

    :goto_1f
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_27

    const/4 v1, -0x1

    move/from16 v49, v1

    goto :goto_29

    :cond_27
    move/from16 v49, p45

    :goto_29
    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_31

    move/from16 v50, v2

    goto :goto_33

    :cond_31
    move/from16 v50, p46

    :goto_33
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3a

    move/from16 v51, v2

    goto :goto_3c

    :cond_3a
    move/from16 v51, p47

    :goto_3c
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8e

    const/4 v0, 0x1

    move/from16 v52, v0

    :goto_43
    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-wide/from16 v15, p11

    move-wide/from16 v17, p13

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move/from16 v21, p17

    move/from16 v22, p18

    move/from16 v23, p19

    move/from16 v24, p20

    move/from16 v25, p21

    move/from16 v26, p22

    move/from16 v27, p23

    move-object/from16 v28, p24

    move-object/from16 v29, p25

    move-wide/from16 v30, p26

    move-object/from16 v32, p28

    move-object/from16 v33, p29

    move-object/from16 v34, p30

    move-object/from16 v35, p31

    move-object/from16 v36, p32

    move-object/from16 v37, p33

    move-object/from16 v38, p34

    move-object/from16 v39, p35

    move-object/from16 v40, p36

    move-object/from16 v41, p37

    move-object/from16 v42, p38

    move/from16 v53, p49

    move/from16 v54, p50

    goto :goto_91

    :cond_8e
    move/from16 v52, p48

    goto :goto_43

    :goto_91
    invoke-direct/range {v4 .. v54}, Lorg/matrix/TEESimulator/pki/CertGenConfig;-><init>(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/matrix/TEESimulator/pki/CertGenConfig;IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZIILjava/lang/Object;)Lorg/matrix/TEESimulator/pki/CertGenConfig;
    .registers 71

    move-object/from16 v0, p0

    move/from16 v1, p51

    move/from16 v2, p52

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_d

    iget v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    goto :goto_f

    :cond_d
    move/from16 v3, p1

    :goto_f
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_16

    iget v4, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    goto :goto_18

    :cond_16
    move/from16 v4, p2

    :goto_18
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_1f

    iget v5, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    goto :goto_21

    :cond_1f
    move/from16 v5, p3

    :goto_21
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_28

    iget-wide v6, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    goto :goto_2a

    :cond_28
    move-wide/from16 v6, p4

    :goto_2a
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_31

    iget-object v8, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    goto :goto_33

    :cond_31
    move-object/from16 v8, p6

    :goto_33
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_3a

    iget-object v9, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    goto :goto_3c

    :cond_3a
    move-object/from16 v9, p7

    :goto_3c
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_43

    iget-object v10, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    goto :goto_45

    :cond_43
    move-object/from16 v10, p8

    :goto_45
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_4c

    iget-object v11, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    goto :goto_4e

    :cond_4c
    move-object/from16 v11, p9

    :goto_4e
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_55

    iget-object v12, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    goto :goto_57

    :cond_55
    move-object/from16 v12, p10

    :goto_57
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_5e

    iget-wide v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    goto :goto_60

    :cond_5e
    move-wide/from16 v13, p11

    :goto_60
    and-int/lit16 v15, v1, 0x400

    move/from16 p1, v3

    move/from16 p2, v4

    if-eqz v15, :cond_6b

    iget-wide v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    goto :goto_6d

    :cond_6b
    move-wide/from16 v3, p13

    :goto_6d
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_74

    iget-object v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    goto :goto_76

    :cond_74
    move-object/from16 v15, p15

    :goto_76
    move-wide/from16 p3, v3

    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_7f

    iget-object v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    goto :goto_81

    :cond_7f
    move-object/from16 v3, p16

    :goto_81
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_88

    iget v4, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    goto :goto_8a

    :cond_88
    move/from16 v4, p17

    :goto_8a
    move-object/from16 p5, v3

    and-int/lit16 v3, v1, 0x4000

    if-eqz v3, :cond_93

    iget v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    goto :goto_95

    :cond_93
    move/from16 v3, p18

    :goto_95
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_9f

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    goto :goto_a1

    :cond_9f
    move/from16 v1, p19

    :goto_a1
    const/high16 v16, 0x10000

    and-int v16, p51, v16

    move/from16 p6, v1

    if-eqz v16, :cond_ac

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    goto :goto_ae

    :cond_ac
    move/from16 v1, p20

    :goto_ae
    const/high16 v16, 0x20000

    and-int v16, p51, v16

    move/from16 p7, v1

    if-eqz v16, :cond_b9

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    goto :goto_bb

    :cond_b9
    move/from16 v1, p21

    :goto_bb
    const/high16 v16, 0x40000

    and-int v16, p51, v16

    move/from16 p8, v1

    if-eqz v16, :cond_c6

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    goto :goto_c8

    :cond_c6
    move/from16 v1, p22

    :goto_c8
    const/high16 v16, 0x80000

    and-int v16, p51, v16

    move/from16 p9, v1

    if-eqz v16, :cond_d3

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    goto :goto_d5

    :cond_d3
    move/from16 v1, p23

    :goto_d5
    const/high16 v16, 0x100000

    and-int v16, p51, v16

    move/from16 p10, v1

    if-eqz v16, :cond_e0

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    goto :goto_e2

    :cond_e0
    move-object/from16 v1, p24

    :goto_e2
    const/high16 v16, 0x200000

    and-int v16, p51, v16

    move-object/from16 p11, v1

    if-eqz v16, :cond_ed

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    goto :goto_ef

    :cond_ed
    move-object/from16 v1, p25

    :goto_ef
    const/high16 v16, 0x400000

    and-int v16, p51, v16

    move/from16 p13, v3

    move/from16 p12, v4

    if-eqz v16, :cond_fc

    iget-wide v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    goto :goto_fe

    :cond_fc
    move-wide/from16 v3, p26

    :goto_fe
    const/high16 v16, 0x800000

    and-int v16, p51, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_109

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    goto :goto_10b

    :cond_109
    move-object/from16 v1, p28

    :goto_10b
    const/high16 v16, 0x1000000

    and-int v16, p51, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_116

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    goto :goto_118

    :cond_116
    move-object/from16 v1, p29

    :goto_118
    const/high16 v16, 0x2000000

    and-int v16, p51, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_123

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    goto :goto_125

    :cond_123
    move-object/from16 v1, p30

    :goto_125
    const/high16 v16, 0x4000000

    and-int v16, p51, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_130

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    goto :goto_132

    :cond_130
    move-object/from16 v1, p31

    :goto_132
    const/high16 v16, 0x8000000

    and-int v16, p51, v16

    move-object/from16 p18, v1

    if-eqz v16, :cond_13d

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    goto :goto_13f

    :cond_13d
    move-object/from16 v1, p32

    :goto_13f
    const/high16 v16, 0x10000000

    and-int v16, p51, v16

    move-object/from16 p19, v1

    if-eqz v16, :cond_14a

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    goto :goto_14c

    :cond_14a
    move-object/from16 v1, p33

    :goto_14c
    const/high16 v16, 0x20000000

    and-int v16, p51, v16

    move-object/from16 p20, v1

    if-eqz v16, :cond_157

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    goto :goto_159

    :cond_157
    move-object/from16 v1, p34

    :goto_159
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p51, v16

    move-object/from16 p21, v1

    if-eqz v16, :cond_164

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    goto :goto_166

    :cond_164
    move-object/from16 v1, p35

    :goto_166
    const/high16 v16, -0x80000000

    and-int v16, p51, v16

    move-object/from16 p22, v1

    if-eqz v16, :cond_171

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    goto :goto_173

    :cond_171
    move-object/from16 v1, p36

    :goto_173
    and-int/lit8 v16, v2, 0x1

    move-object/from16 p23, v1

    if-eqz v16, :cond_17c

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    goto :goto_17e

    :cond_17c
    move-object/from16 v1, p37

    :goto_17e
    and-int/lit8 v16, v2, 0x2

    move-object/from16 p24, v1

    if-eqz v16, :cond_187

    iget-object v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    goto :goto_189

    :cond_187
    move-object/from16 v1, p38

    :goto_189
    and-int/lit8 v16, v2, 0x4

    move-wide/from16 p25, v3

    if-eqz v16, :cond_192

    iget-wide v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    goto :goto_194

    :cond_192
    move-wide/from16 v3, p39

    :goto_194
    and-int/lit8 v16, v2, 0x8

    move-wide/from16 p27, v3

    if-eqz v16, :cond_19d

    iget-wide v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    goto :goto_19f

    :cond_19d
    move-wide/from16 v3, p41

    :goto_19f
    and-int/lit8 v16, v2, 0x10

    move-wide/from16 p29, v3

    if-eqz v16, :cond_1a8

    iget-wide v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    goto :goto_1aa

    :cond_1a8
    move-wide/from16 v3, p43

    :goto_1aa
    and-int/lit8 v16, v2, 0x20

    move-object/from16 p31, v1

    if-eqz v16, :cond_1b3

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    goto :goto_1b5

    :cond_1b3
    move/from16 v1, p45

    :goto_1b5
    and-int/lit8 v16, v2, 0x40

    move/from16 p32, v1

    if-eqz v16, :cond_1be

    iget-boolean v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    goto :goto_1c0

    :cond_1be
    move/from16 v1, p46

    :goto_1c0
    move/from16 p33, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_1c9

    iget-boolean v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    goto :goto_1cb

    :cond_1c9
    move/from16 v1, p47

    :goto_1cb
    move/from16 p34, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_1d4

    iget-boolean v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    goto :goto_1d6

    :cond_1d4
    move/from16 v1, p48

    :goto_1d6
    move/from16 p35, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_1df

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    goto :goto_1e1

    :cond_1df
    move/from16 v1, p49

    :goto_1e1
    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_240

    iget-boolean v2, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    move/from16 p51, v2

    :goto_1e9
    move-object/from16 p36, p22

    move-object/from16 p37, p23

    move-object/from16 p38, p24

    move-wide/from16 p40, p27

    move-wide/from16 p42, p29

    move-object/from16 p39, p31

    move/from16 p46, p32

    move/from16 p47, p33

    move/from16 p48, p34

    move/from16 p49, p35

    move/from16 p50, v1

    move-wide/from16 p44, v3

    move/from16 p22, p8

    move/from16 p23, p9

    move/from16 p24, p10

    move-object/from16 p29, p15

    move-object/from16 p30, p16

    move-object/from16 p31, p17

    move-object/from16 p32, p18

    move-object/from16 p33, p19

    move-object/from16 p34, p20

    move-object/from16 p35, p21

    move-wide/from16 p27, p25

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p16, v15

    move-object/from16 p17, p5

    move/from16 p20, p6

    move/from16 p21, p7

    move-object/from16 p25, p11

    move/from16 p18, p12

    move/from16 p19, p13

    move-object/from16 p26, p14

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-object/from16 p11, v12

    move-wide/from16 p12, v13

    move-wide/from16 p14, p3

    move/from16 p4, v5

    move/from16 p3, p2

    move/from16 p2, p1

    move-object/from16 p1, v0

    goto :goto_243

    :cond_240
    move/from16 p51, p50

    goto :goto_1e9

    :goto_243
    invoke-virtual/range {p1 .. p51}, Lorg/matrix/TEESimulator/pki/CertGenConfig;->copy(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)Lorg/matrix/TEESimulator/pki/CertGenConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    return p0
.end method

.method public final component10()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    return-wide v0
.end method

.method public final component11()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    return-wide v0
.end method

.method public final component12()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    return-object p0
.end method

.method public final component13()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    return-object p0
.end method

.method public final component14()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    return p0
.end method

.method public final component15()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    return p0
.end method

.method public final component16()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    return p0
.end method

.method public final component17()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    return p0
.end method

.method public final component18()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    return p0
.end method

.method public final component19()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    return p0
.end method

.method public final component2()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    return p0
.end method

.method public final component20()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    return p0
.end method

.method public final component21()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    return-object p0
.end method

.method public final component22()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    return-object p0
.end method

.method public final component23()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    return-wide v0
.end method

.method public final component24()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    return-object p0
.end method

.method public final component25()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    return-object p0
.end method

.method public final component26()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    return-object p0
.end method

.method public final component27()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    return-object p0
.end method

.method public final component28()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    return-object p0
.end method

.method public final component29()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    return p0
.end method

.method public final component30()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    return-object p0
.end method

.method public final component31()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    return-object p0
.end method

.method public final component32()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    return-object p0
.end method

.method public final component33()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    return-object p0
.end method

.method public final component34()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    return-object p0
.end method

.method public final component35()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    return-wide v0
.end method

.method public final component36()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    return-wide v0
.end method

.method public final component37()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    return-wide v0
.end method

.method public final component38()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    return p0
.end method

.method public final component39()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    return p0
.end method

.method public final component4()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    return-wide v0
.end method

.method public final component40()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    return p0
.end method

.method public final component41()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    return p0
.end method

.method public final component42()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    return p0
.end method

.method public final component43()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    return p0
.end method

.method public final component5()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    return-object p0
.end method

.method public final component6()[I
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    return-object p0
.end method

.method public final component7()[I
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    return-object p0
.end method

.method public final component8()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    return-object p0
.end method

.method public final component9()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    return-object p0
.end method

.method public final copy(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)Lorg/matrix/TEESimulator/pki/CertGenConfig;
    .registers 103

    const-string v0, "purposes"

    move-object/from16 v8, p7

    invoke-static {v0, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "digests"

    move-object/from16 v9, p8

    invoke-static {v0, v9}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "keyboxPrivateKey"

    move-object/from16 v1, p15

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "keyboxCertChain"

    move-object/from16 v2, p16

    invoke-static {v0, v2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bootKey"

    move-object/from16 v3, p24

    invoke-static {v0, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bootHash"

    move-object/from16 v4, p25

    invoke-static {v0, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "attestationApplicationId"

    move-object/from16 v5, p28

    invoke-static {v0, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/matrix/TEESimulator/pki/CertGenConfig;

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide/from16 v12, p11

    move-wide/from16 v14, p13

    move-object/from16 v16, p15

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move-wide/from16 v27, p26

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-wide/from16 v40, p39

    move-wide/from16 v42, p41

    move-wide/from16 v44, p43

    move/from16 v46, p45

    move/from16 v47, p46

    move/from16 v48, p47

    move/from16 v49, p48

    move/from16 v50, p49

    move/from16 v51, p50

    move-object/from16 v17, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v29, v5

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v1 .. v51}, Lorg/matrix/TEESimulator/pki/CertGenConfig;-><init>(IIIJ[B[I[I[B[BJJ[B[BIIIIIII[B[BJ[B[B[B[B[B[B[B[B[B[B[BJJJIZZZIZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;

    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v2

    :cond_35
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    return v2

    :cond_40
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    return v2

    :cond_4b
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    return v2

    :cond_56
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    return v2

    :cond_61
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6a

    return v2

    :cond_6a
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_73

    return v2

    :cond_73
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7e

    return v2

    :cond_7e
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    return v2

    :cond_89
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    if-eq v1, v3, :cond_90

    return v2

    :cond_90
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    if-eq v1, v3, :cond_97

    return v2

    :cond_97
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    if-eq v1, v3, :cond_9e

    return v2

    :cond_9e
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    if-eq v1, v3, :cond_a5

    return v2

    :cond_a5
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    if-eq v1, v3, :cond_ac

    return v2

    :cond_ac
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    if-eq v1, v3, :cond_b3

    return v2

    :cond_b3
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    if-eq v1, v3, :cond_ba

    return v2

    :cond_ba
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c5

    return v2

    :cond_c5
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d0

    return v2

    :cond_d0
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d9

    return v2

    :cond_d9
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    return v2

    :cond_e4
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ef

    return v2

    :cond_ef
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fa

    return v2

    :cond_fa
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_105

    return v2

    :cond_105
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    return v2

    :cond_110
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11b

    return v2

    :cond_11b
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_126

    return v2

    :cond_126
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_131

    return v2

    :cond_131
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13c

    return v2

    :cond_13c
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_147

    return v2

    :cond_147
    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    iget-object v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_152

    return v2

    :cond_152
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_15b

    return v2

    :cond_15b
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_164

    return v2

    :cond_164
    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    iget-wide v5, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16d

    return v2

    :cond_16d
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    if-eq v1, v3, :cond_174

    return v2

    :cond_174
    iget-boolean v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    iget-boolean v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    if-eq v1, v3, :cond_17b

    return v2

    :cond_17b
    iget-boolean v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    iget-boolean v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    if-eq v1, v3, :cond_182

    return v2

    :cond_182
    iget-boolean v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    iget-boolean v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    if-eq v1, v3, :cond_189

    return v2

    :cond_189
    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    iget v3, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    if-eq v1, v3, :cond_190

    return v2

    :cond_190
    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    iget-boolean p1, p1, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    if-eq p0, p1, :cond_197

    return v2

    :cond_197
    return v0
.end method

.method public final getActiveDatetime()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    return-wide v0
.end method

.method public final getAlgorithm()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    return p0
.end method

.method public final getAttestVersion()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    return p0
.end method

.method public final getAttestationApplicationId()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    return-object p0
.end method

.method public final getAttestationChallenge()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    return-object p0
.end method

.method public final getBootHash()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    return-object p0
.end method

.method public final getBootKey()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    return-object p0
.end method

.method public final getBootPatchLevel()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    return p0
.end method

.method public final getCallerNonce()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    return p0
.end method

.method public final getCertNotAfter()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    return-wide v0
.end method

.method public final getCertNotBefore()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    return-wide v0
.end method

.method public final getCertSerial()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    return-object p0
.end method

.method public final getCertSubject()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    return-object p0
.end method

.method public final getCreationDatetime()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    return-wide v0
.end method

.method public final getDebugLogging()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    return p0
.end method

.method public final getDigests()[I
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    return-object p0
.end method

.method public final getEcCurve()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    return p0
.end method

.method public final getIdBrand()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    return-object p0
.end method

.method public final getIdDevice()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    return-object p0
.end method

.method public final getIdImei()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    return-object p0
.end method

.method public final getIdManufacturer()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    return-object p0
.end method

.method public final getIdMeid()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    return-object p0
.end method

.method public final getIdModel()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    return-object p0
.end method

.method public final getIdProduct()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    return-object p0
.end method

.method public final getIdSecondImei()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    return-object p0
.end method

.method public final getIdSerial()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    return-object p0
.end method

.method public final getKeySize()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    return p0
.end method

.method public final getKeyboxCertChain()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    return-object p0
.end method

.method public final getKeyboxPrivateKey()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    return-object p0
.end method

.method public final getKeymasterVersion()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    return p0
.end method

.method public final getModuleHash()[B
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    return-object p0
.end method

.method public final getNoAuthRequired()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    return p0
.end method

.method public final getOriginationExpireDatetime()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    return-wide v0
.end method

.method public final getOsPatchLevel()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    return p0
.end method

.method public final getOsVersion()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    return p0
.end method

.method public final getPurposes()[I
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    return-object p0
.end method

.method public final getRsaPublicExponent()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    return-wide v0
.end method

.method public final getSecurityLevel()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    return p0
.end method

.method public final getUid()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    return p0
.end method

.method public final getUnlockedDeviceRequired()Z
    .registers 1

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    return p0
.end method

.method public final getUsageCountLimit()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    return p0
.end method

.method public final getUsageExpireDatetime()J
    .registers 3

    iget-wide v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    return-wide v0
.end method

.method public final getVendorPatchLevel()I
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    return p0
.end method

.method public hashCode()I
    .registers 6

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    move v0, v2

    goto :goto_2e

    :cond_2a
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_2e
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    if-nez v0, :cond_49

    move v0, v2

    goto :goto_4d

    :cond_49
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_4d
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    if-nez v0, :cond_56

    move v0, v2

    goto :goto_5a

    :cond_56
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    :goto_5a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    if-nez v1, :cond_ea

    move v1, v2

    goto :goto_ee

    :cond_ea
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_ee
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    if-nez v1, :cond_f7

    move v1, v2

    goto :goto_fb

    :cond_f7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_fb
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    if-nez v1, :cond_104

    move v1, v2

    goto :goto_108

    :cond_104
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_108
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    if-nez v1, :cond_111

    move v1, v2

    goto :goto_115

    :cond_111
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_115
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    if-nez v1, :cond_11e

    move v1, v2

    goto :goto_122

    :cond_11e
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_122
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    if-nez v1, :cond_12b

    move v1, v2

    goto :goto_12f

    :cond_12b
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_12f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    if-nez v1, :cond_138

    move v1, v2

    goto :goto_13c

    :cond_138
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_13c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    if-nez v1, :cond_145

    move v1, v2

    goto :goto_149

    :cond_145
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_149
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    if-nez v1, :cond_152

    move v1, v2

    goto :goto_156

    :cond_152
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    :goto_156
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    if-nez v1, :cond_15e

    goto :goto_162

    :cond_15e
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    :goto_162
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 52

    move-object/from16 v0, p0

    iget v1, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->algorithm:I

    iget v2, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keySize:I

    iget v3, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->ecCurve:I

    iget-wide v4, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->rsaPublicExponent:J

    iget-object v6, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationChallenge:[B

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->purposes:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->digests:[I

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSerial:[B

    invoke-static {v9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certSubject:[B

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    iget-wide v11, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotBefore:J

    iget-wide v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->certNotAfter:J

    iget-object v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxPrivateKey:[B

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    iget-object v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keyboxCertChain:[B

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->securityLevel:I

    move/from16 v18, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestVersion:I

    move/from16 v19, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->keymasterVersion:I

    move/from16 v20, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osVersion:I

    move/from16 v21, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->osPatchLevel:I

    move/from16 v22, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->vendorPatchLevel:I

    move/from16 v23, v15

    iget v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootPatchLevel:I

    move/from16 v24, v15

    iget-object v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootKey:[B

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v25, v15

    iget-object v15, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->bootHash:[B

    invoke-static {v15}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v26, v13

    iget-wide v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->creationDatetime:J

    move-wide/from16 v28, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->attestationApplicationId:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->moduleHash:[B

    invoke-static {v14}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v30, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idBrand:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v31, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idDevice:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v32, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idProduct:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v33, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSerial:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v34, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idImei:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v35, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idMeid:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v36, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idManufacturer:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v37, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idModel:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v38, v13

    iget-object v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->idSecondImei:[B

    invoke-static {v13}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v40, v13

    move-object/from16 v39, v14

    iget-wide v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->activeDatetime:J

    move-wide/from16 v41, v13

    iget-wide v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->originationExpireDatetime:J

    move-wide/from16 v43, v13

    iget-wide v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageExpireDatetime:J

    move-wide/from16 v45, v13

    iget v13, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->usageCountLimit:I

    iget-boolean v14, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->callerNonce:Z

    move/from16 v47, v14

    iget-boolean v14, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->unlockedDeviceRequired:Z

    move/from16 v48, v14

    iget-boolean v14, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->noAuthRequired:Z

    move/from16 v49, v14

    iget v14, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->uid:I

    iget-boolean v0, v0, Lorg/matrix/TEESimulator/pki/CertGenConfig;->debugLogging:Z

    move/from16 p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    move/from16 v50, v14

    const-string v14, "CertGenConfig(algorithm="

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ecCurve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rsaPublicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attestationChallenge="

    const-string v2, ", purposes="

    invoke-static {v0, v1, v6, v2, v7}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", digests="

    const-string v2, ", certSerial="

    invoke-static {v0, v1, v8, v2, v9}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", certSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", certNotBefore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", certNotAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", keyboxPrivateKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", keyboxCertChain="

    const-string v2, ", securityLevel="

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static {v0, v3, v1, v4, v2}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", attestVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keymasterVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", osPatchLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vendorPatchLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bootPatchLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bootKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bootHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", creationDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attestationApplicationId="

    const-string v2, ", moduleHash="

    move-object/from16 v3, v30

    move-object/from16 v4, v39

    invoke-static {v0, v1, v3, v2, v4}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", idBrand="

    const-string v2, ", idDevice="

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-static {v0, v1, v3, v2, v4}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", idProduct="

    const-string v2, ", idSerial="

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v3, v2, v4}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", idImei="

    const-string v2, ", idMeid="

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-static {v0, v1, v3, v2, v4}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", idManufacturer="

    const-string v2, ", idModel="

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    invoke-static {v0, v1, v3, v2, v4}, Lb/b;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", idSecondImei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activeDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", originationExpireDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", usageExpireDatetime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v45

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", usageCountLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callerNonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unlockedDeviceRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", noAuthRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", debugLogging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
