.class Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;


# static fields
.field public static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;

.field private static final revChkClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-class v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    sget-object v0, Ll0/v;->J1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    sget-object v0, Ll0/v;->K1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    sget-object v0, Ll0/v;->P1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    sget-object v0, Ll0/v;->F1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    sget-object v0, Ll0/v;->O1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    sget-object v0, Ll0/v;->E1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    sget-object v0, Ll0/v;->M1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Ll0/v;->B1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Ll0/v;->I1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    sget-object v0, Ll0/v;->z1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    sget-object v0, Ll0/v;->H1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    sget-object v0, Ll0/v;->L1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    sget-object v0, Ll0/v;->y:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    sget-object v0, Ll0/v;->C1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    const-string v10, "privilegeWithdrawn"

    const-string v11, "aACompromise"

    const-string v1, "unspecified"

    const-string v2, "keyCompromise"

    const-string v3, "cACompromise"

    const-string v4, "affiliationChanged"

    const-string v5, "superseded"

    const-string v6, "cessationOfOperation"

    const-string v7, "certificateHold"

    const-string v8, "unknown"

    const-string v9, "removeFromCRL"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(La2/o;Ll0/s;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Le2/b;)V
    .registers 29

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v3, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-gtz v0, :cond_aa

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v6, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(La2/o;Ll0/s;Ljava/lang/Object;La2/u;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v0, 0x0

    move v14, v0

    move-object v0, v13

    :goto_26
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a6

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v15, 0xb

    if-ne v2, v15, :cond_a6

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_a6

    :try_start_3a
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-static {v2, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Ll0/s;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v4

    invoke-virtual {v4, v11}, Lorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_26

    :cond_4b
    move-object/from16 v5, p7

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v16, v4

    move-object/from16 v4, p6

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;La2/u;Ljava/util/List;Le2/b;)Ljava/util/Set;

    move-result-object v15

    invoke-static {v2, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-ltz v4, :cond_9e

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Ll0/s;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Ll0/s;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v13, v2, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;La2/u;)V

    invoke-static {v9, v13, v3, v10, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;La2/u;)V

    invoke-static {v9, v2, v3, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8f

    const/16 v4, 0xb

    invoke-virtual {v10, v4}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_8f
    move-object/from16 v4, v16

    goto :goto_94

    :catch_92
    move-exception v0

    goto :goto_26

    :goto_94
    invoke-virtual {v11, v4}, Lorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V

    const-string v4, "CRL contains unsupported critical extensions."

    invoke-static {v2, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLCriticalExtensions(Ljava/security/cert/X509CRL;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_26

    :cond_9e
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL for current time found."

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3a .. :try_end_a6} :catch_92

    :cond_a6
    if-eqz v14, :cond_a9

    return-void

    :cond_a9
    throw v0

    :cond_aa
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkCRLs(La2/o;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Le2/b;)V
    .registers 28

    move-object/from16 v3, p1

    :try_start_2
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v9, p4

    invoke-static {v9, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/k;->i(Ljava/lang/Object;)Ll0/k;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_16e

    new-instance v1, La2/t;

    invoke-direct {v1, v3}, La2/t;-><init>(La2/u;)V

    :try_start_13
    iget-object v2, v3, La2/u;->B1:Ljava/util/Map;

    move-object/from16 v8, p3

    move-object/from16 v12, p8

    invoke-static {v0, v2, v8, v12}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Ll0/k;Ljava/util/Map;Ljava/util/Date;Le2/b;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La2/j;

    iget-object v5, v1, La2/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_13 .. :try_end_32} :catch_165

    goto :goto_21

    :cond_33
    new-instance v12, Lorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    new-instance v10, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v10}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    new-instance v6, La2/u;

    invoke-direct {v6, v1}, La2/u;-><init>(La2/t;)V

    const/16 v16, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v4, 0x0

    if-eqz v0, :cond_97

    :try_start_4a
    invoke-virtual {v0}, Ll0/k;->h()[Ll0/s;

    move-result-object v5
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4e} :catch_8e

    move/from16 v17, v1

    move-object v0, v4

    :goto_51
    array-length v4, v5

    if-ge v1, v4, :cond_8c

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v4

    if-ne v4, v2, :cond_8c

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v4

    if-nez v4, :cond_8c

    move-object v4, v5

    :try_start_61
    aget-object v5, v4, v1
    :try_end_63
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_61 .. :try_end_63} :catch_7e

    move-object/from16 v7, p2

    move-object/from16 v11, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v18, v4

    move-object v13, v10

    move-object/from16 v4, p0

    move-object/from16 v10, p5

    :try_start_72
    invoke-static/range {v4 .. v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(La2/o;Ll0/s;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Le2/b;)V
    :try_end_75
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_72 .. :try_end_75} :catch_7a

    move-object v9, v12

    move-object v10, v13

    move/from16 v17, v16

    goto :goto_82

    :catch_7a
    move-exception v0

    move-object v10, v13

    :goto_7c
    move-object v9, v12

    goto :goto_82

    :catch_7e
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_7c

    :goto_82
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v8, p3

    move-object v12, v9

    move-object/from16 v5, v18

    move-object/from16 v9, p4

    goto :goto_51

    :cond_8c
    move-object v9, v12

    goto :goto_9b

    :catch_8e
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_97
    move-object v9, v12

    move/from16 v17, v1

    move-object v0, v4

    :goto_9b
    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    if-ne v1, v2, :cond_dc

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v1

    if-nez v1, :cond_dc

    :try_start_a7
    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;

    move-result-object v1
    :try_end_ab
    .catch Ljava/lang/RuntimeException; {:try_start_a7 .. :try_end_ab} :catch_de
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a7 .. :try_end_ab} :catch_db

    move v4, v2

    :try_start_ac
    new-instance v2, Ll0/s;

    new-instance v5, Ll0/t;

    new-instance v6, Ll0/z;

    new-instance v7, Ll0/y;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v1}, Ll0/y;-><init>(ILm/n;)V

    invoke-direct {v6, v7}, Ll0/z;-><init>(Ll0/y;)V

    invoke-direct {v5, v6}, Ll0/t;-><init>(Ll0/z;)V

    invoke-direct {v2, v5}, Ll0/s;-><init>(Ll0/t;)V
    :try_end_c1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_ac .. :try_end_c1} :catch_d8

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move v13, v4

    move-object/from16 v4, p2

    :try_start_d2
    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(La2/o;Ll0/s;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Le2/b;)V

    goto :goto_ea

    :catch_d6
    move-exception v0

    goto :goto_e8

    :catch_d8
    move-exception v0

    move v13, v4

    goto :goto_e8

    :catch_db
    move-exception v0

    :cond_dc
    move v13, v2

    goto :goto_e8

    :catch_de
    move-exception v0

    move v13, v2

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_d2 .. :try_end_e8} :catch_d6

    :goto_e8
    move/from16 v16, v17

    :goto_ea
    if-nez v16, :cond_f7

    if-eqz v0, :cond_ef

    throw v0

    :cond_ef
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL found."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_f7
    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v13, :cond_11d

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_10e

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v13, :cond_10e

    invoke-virtual {v9, v1}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_10e
    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_115

    return-void

    :cond_115
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Certificate status could not be determined."

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11d
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Certificate revocation after "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_165
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_16e
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL distribution point extension could not be read."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 15

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v4, v0, p1

    :try_start_10
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0
    :try_end_1a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_10 .. :try_end_1a} :catch_145

    if-eqz v0, :cond_144

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    move v5, v3

    :goto_23
    invoke-virtual {v0}, Lm/x;->size()I

    move-result v6

    if-ge v5, v6, :cond_5a

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    check-cast v6, Lm/x;

    invoke-virtual {v6, v3}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    check-cast v7, Lm/q;

    invoke-virtual {v7}, Lm/q;->u()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lm/x;->v(I)Lm/f;

    move-result-object v6

    check-cast v6, Lm/q;

    invoke-virtual {v6}, Lm/q;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashSet;

    if-nez v8, :cond_54

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_5a
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_62
    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_144

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/util/HashSet;

    if-gtz p4, :cond_aa

    aget-object v2, p2, v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :cond_84
    :goto_84
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_a5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v6, v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_84

    :cond_a5
    invoke-static {p3, p2, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removeChildlessPolicyNodes(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    goto :goto_62

    :cond_aa
    aget-object v2, p2, v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findValidPolicy(Ljava/util/Iterator;Ljava/lang/String;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-eqz v2, :cond_ba

    invoke-virtual {v2, v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setExpectedPolicies(Ljava/util/Set;)V

    goto :goto_62

    :cond_ba
    aget-object v2, p2, v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "2.5.29.32.0"

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findValidPolicy(Ljava/util/Iterator;Ljava/lang/String;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-nez v2, :cond_c9

    goto :goto_62

    :cond_c9
    :try_start_c9
    sget-object v6, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v6
    :try_end_d3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_c9 .. :try_end_d3} :catch_13a

    invoke-virtual {v6}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v6

    :cond_d7
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_10d

    :try_start_dd
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ll0/l0;->h(Ljava/lang/Object;)Ll0/l0;

    move-result-object v7
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e5} :catch_103

    iget-object v9, v7, Ll0/l0;->c:Lm/q;

    invoke-virtual {v9}, Lm/q;->u()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d7

    :try_start_f1
    iget-object v6, v7, Ll0/l0;->d:Lm/x;

    invoke-static {v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lm/x;)Ljava/util/Set;

    move-result-object v6
    :try_end_f7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f1 .. :try_end_f7} :catch_f9

    :goto_f7
    move-object v7, v6

    goto :goto_10f

    :catch_f9
    move-exception v0

    move-object p2, v0

    new-instance p3, Lg2/b;

    const-string p4, "Policy qualifier info set could not be decoded."

    invoke-direct {p3, p4, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_103
    move-exception v0

    move-object p2, v0

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string p4, "Policy information could not be decoded."

    invoke-direct {p3, p4, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_10d
    const/4 v6, 0x0

    goto :goto_f7

    :goto_10f
    sget-object v6, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v1, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->hasCriticalExtension(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v9

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    new-instance v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v6, v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v3, p2, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_62

    :catch_13a
    move-exception v0

    move-object p2, v0

    new-instance p3, Lg2/b;

    const-string p4, "Certificate policies extension could not be decoded."

    invoke-direct {p3, p4, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_144
    return-object p3

    :catch_145
    move-exception v0

    move-object p2, v0

    new-instance p3, Lg2/b;

    const-string p4, "Policy mappings extension could not be decoded."

    invoke-direct {p3, p4, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p3
.end method

.method public static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .registers 9

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0
    :try_end_14
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_14} :catch_6b

    if-eqz v0, :cond_6a

    const/4 v1, 0x0

    move v2, v1

    :goto_18
    invoke-virtual {v0}, Lm/x;->size()I

    move-result v3

    if-ge v2, v3, :cond_6a

    :try_start_1e
    invoke-virtual {v0, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v3

    invoke-virtual {v3, v1}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v3

    invoke-static {v3}, Lm/q;->v(Ljava/lang/Object;)Lm/q;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_61

    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.5.29.32.0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_59

    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_51
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "SubjectDomainPolicy is anyPolicy"

    invoke-direct {v0, v1, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_59
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v0, v1, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_61
    move-exception v0

    new-instance v1, Lg2/b;

    const-string v2, "Policy mappings extension contents could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_6a
    return-void

    :catch_6b
    move-exception v0

    new-instance v1, Lg2/b;

    const-string v2, "Policy mappings extension could not be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public static prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .registers 9

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {v0}, Ll0/h0;->i(Lm/x;)Ll0/h0;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1b} :catch_1c

    goto :goto_1f

    :catch_1c
    move-exception p2

    goto :goto_5f

    :cond_1e
    move-object v0, v1

    :goto_1f
    if-eqz v0, :cond_5e

    iget-object v2, v0, Ll0/h0;->c:[Ll0/a0;

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    array-length v4, v2

    new-array v5, v4, [Ll0/a0;

    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    :cond_2d
    move-object v5, v1

    :goto_2e
    if-eqz v5, :cond_3d

    :try_start_30
    invoke-virtual {p2, v5}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Ll0/a0;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3d

    :catch_34
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_3d
    :goto_3d
    iget-object v0, v0, Ll0/h0;->d:[Ll0/a0;

    if-eqz v0, :cond_48

    array-length v1, v0

    new-array v2, v1, [Ll0/a0;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_48
    if-eqz v1, :cond_5e

    :goto_4a
    array-length v0, v1

    if-eq v3, v0, :cond_5e

    :try_start_4d
    aget-object v0, v1, v3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Ll0/a0;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_52} :catch_55

    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    :catch_55
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_5e
    return-void

    :goto_5f
    new-instance v0, Lg2/b;

    const-string v1, "Name constraints extension could not be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .registers 3

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-nez p0, :cond_14

    if-eqz p2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    return p2
.end method

.method public static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .registers 3

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-nez p0, :cond_14

    if-eqz p2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    return p2
.end method

.method public static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .registers 3

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p0

    if-nez p0, :cond_14

    if-eqz p2, :cond_14

    add-int/lit8 p2, p2, -0x1

    :cond_14
    return p2
.end method

.method public static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .registers 6

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_4c

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4b

    :try_start_20
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v1

    iget v2, v1, Lm/a0;->q:I

    if-nez v2, :cond_1a

    sget-object v0, Lm/l;->q:Lm/a;

    invoke-static {v1}, Lq4/k;->v(Lm/a0;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/a;->a(Lm/u;)V

    check-cast v1, Lm/l;

    invoke-virtual {v1}, Lm/l;->y()I

    move-result p0
    :try_end_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_3f} :catch_42

    if-ge p0, p2, :cond_4b

    return p0

    :catch_42
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4b
    return p2

    :catch_4c
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Policy constraints extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .registers 7

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_4d

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4c

    :try_start_20
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lm/a0;->v(Ljava/lang/Object;)Lm/a0;

    move-result-object v1

    iget v2, v1, Lm/a0;->q:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    sget-object v0, Lm/l;->q:Lm/a;

    invoke-static {v1}, Lq4/k;->v(Lm/a0;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/a;->a(Lm/u;)V

    check-cast v1, Lm/l;

    invoke-virtual {v1}, Lm/l;->y()I

    move-result p0
    :try_end_40
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_40} :catch_43

    if-ge p0, p2, :cond_4c

    return p0

    :catch_43
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4c
    return p2

    :catch_4d
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Policy constraints extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_1e

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Lm/l;->y()I

    move-result p0

    if-ge p0, p2, :cond_1d

    return p0

    :cond_1d
    return p2

    :catch_1e
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_2e

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ll0/j;->i()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Not a CA certificate"

    invoke-direct {v0, v2, v1, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_26
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v0, v2, v1, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :catch_2e
    move-exception v0

    new-instance v1, Lg2/b;

    const-string v2, "Basic constraints extension cannot be decoded."

    invoke-direct {v1, v2, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_1e

    if-lez p2, :cond_15

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_15
    new-instance p2, Lg2/b;

    const-string v0, "Max path length not greater than zero"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p2

    :cond_1e
    return p2
.end method

.method public static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_2a

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ll0/j;->i()Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Ll0/j;->d:Lm/l;

    if-eqz p0, :cond_29

    invoke-virtual {p0}, Lm/l;->w()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_29
    return p2

    :catch_2a
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Basic constraints extension cannot be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_22

    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_19

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_19

    goto :goto_22

    :cond_19
    new-instance v0, Lg2/b;

    const-string v1, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_22
    :goto_22
    return-void
.end method

.method public static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .registers 6

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    :try_start_14
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    :catch_1e
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_2d
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_34

    return-void

    :cond_34
    new-instance p3, Lg2/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate has unsupported critical extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p3, p2, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p3
.end method

.method public static processCRLB1(Ll0/s;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 9

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-static {v0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object v0

    iget-boolean v0, v0, Ll0/d0;->y:Z

    if-eqz v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    :try_start_15
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lj0/c;

    move-result-object v3

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1d} :catch_82

    iget-object p0, p0, Ll0/s;->q:Ll0/z;

    if-eqz p0, :cond_67

    invoke-virtual {p0}, Ll0/z;->i()[Ll0/y;

    move-result-object p0

    move p1, v2

    :goto_26
    array-length p2, p0

    if-ge v2, p2, :cond_4e

    aget-object p2, p0, v2

    iget v4, p2, Ll0/y;->d:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4b

    :try_start_30
    iget-object p2, p2, Ll0/y;->c:Lm/f;

    invoke-interface {p2}, Lm/f;->d()Lm/u;

    move-result-object p2

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_3e} :catch_42

    if-eqz p2, :cond_4b

    move p1, v1

    goto :goto_4b

    :catch_42
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_4b
    :goto_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_4e
    if-eqz p1, :cond_5b

    if-eqz v0, :cond_53

    goto :goto_5b

    :cond_53
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5b
    :goto_5b
    if-eqz p1, :cond_5f

    move v1, p1

    goto :goto_77

    :cond_5f
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_67
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lj0/c;

    move-result-object p0

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_77

    :cond_76
    move v1, v2

    :goto_77
    if-eqz v1, :cond_7a

    return-void

    :cond_7a
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot find matching CRL issuer for certificate."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_82
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception encoding CRL issuer: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static processCRLB2(Ll0/s;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .registers 12

    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_183

    if-eqz v0, :cond_182

    iget-object v1, v0, Ll0/d0;->c:Ll0/t;

    if-eqz v1, :cond_131

    invoke-static {v0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object v1

    iget-object v1, v1, Ll0/d0;->c:Ll0/t;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, v1, Ll0/t;->d:I

    iget-object v4, v1, Ll0/t;->c:Lm/n;

    const/4 v5, 0x0

    if-nez v3, :cond_36

    invoke-static {v4}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v3

    invoke-virtual {v3}, Ll0/z;->i()[Ll0/y;

    move-result-object v3

    move v6, v5

    :goto_2b
    array-length v7, v3

    if-ge v6, v7, :cond_36

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    :cond_36
    iget v1, v1, Ll0/t;->d:I

    const/4 v3, -0x1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7d

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V

    :try_start_41
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lj0/c;

    move-result-object p2

    invoke-static {p2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p2

    invoke-virtual {p2}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p2

    :goto_4d
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm/f;

    invoke-virtual {v1, v7}, Lm/g;->a(Lm/f;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5c} :catch_74

    goto :goto_4d

    :cond_5d
    invoke-virtual {v1, v4}, Lm/g;->a(Lm/f;)V

    new-instance p2, Ll0/y;

    new-instance v4, Lm/a1;

    invoke-direct {v4, v1}, Lm/x;-><init>(Lm/g;)V

    iput v3, v4, Lm/a1;->q:I

    invoke-static {v4}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v1

    invoke-direct {p2, v1}, Ll0/y;-><init>(Lj0/c;)V

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :catch_74
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Could not read CRL issuer."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7d
    :goto_7d
    iget-object p2, p0, Ll0/s;->c:Ll0/t;

    iget-object p0, p0, Ll0/s;->q:Ll0/z;

    const-string v1, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz p2, :cond_10e

    iget v4, p2, Ll0/t;->d:I

    iget-object p2, p2, Ll0/t;->c:Lm/n;

    if-nez v4, :cond_94

    invoke-static {p2}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v7

    invoke-virtual {v7}, Ll0/z;->i()[Ll0/y;

    move-result-object v7

    goto :goto_95

    :cond_94
    const/4 v7, 0x0

    :goto_95
    if-ne v4, v6, :cond_f7

    if-eqz p0, :cond_9f

    invoke-virtual {p0}, Ll0/z;->i()[Ll0/y;

    move-result-object p0

    :goto_9d
    move-object v7, p0

    goto :goto_ad

    :cond_9f
    new-array p0, v6, [Ll0/y;

    :try_start_a1
    new-instance v4, Ll0/y;

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lj0/c;

    move-result-object v6

    invoke-direct {v4, v6}, Ll0/y;-><init>(Lj0/c;)V

    aput-object v4, p0, v5
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ac} :catch_ee

    goto :goto_9d

    :goto_ad
    move p0, v5

    :goto_ae
    array-length v4, v7

    if-ge p0, v4, :cond_f7

    aget-object v4, v7, p0

    iget-object v4, v4, Ll0/y;->c:Lm/f;

    invoke-interface {v4}, Lm/f;->d()Lm/u;

    move-result-object v4

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-virtual {v4}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v4

    new-instance v6, Lm/g;

    invoke-direct {v6}, Lm/g;-><init>()V

    :goto_c6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_d6

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm/f;

    invoke-virtual {v6, v8}, Lm/g;->a(Lm/f;)V

    goto :goto_c6

    :cond_d6
    invoke-virtual {v6, p2}, Lm/g;->a(Lm/f;)V

    new-instance v4, Ll0/y;

    new-instance v8, Lm/a1;

    invoke-direct {v8, v6}, Lm/x;-><init>(Lm/g;)V

    iput v3, v8, Lm/a1;->q:I

    invoke-static {v8}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v6

    invoke-direct {v4, v6}, Ll0/y;-><init>(Lj0/c;)V

    aput-object v4, v7, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_ae

    :catch_ee
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Could not read certificate issuer."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_f7
    if-eqz v7, :cond_108

    :goto_f9
    array-length p0, v7

    if-ge v5, p0, :cond_108

    aget-object p0, v7, v5

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_105

    goto :goto_131

    :cond_105
    add-int/lit8 v5, v5, 0x1

    goto :goto_f9

    :cond_108
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10e
    if-eqz p0, :cond_129

    invoke-virtual {p0}, Ll0/z;->i()[Ll0/y;

    move-result-object p0

    :goto_114
    array-length p2, p0

    if-ge v5, p2, :cond_123

    aget-object p2, p0, v5

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_120

    goto :goto_131

    :cond_120
    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    :cond_123
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_129
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_131
    :goto_131
    :try_start_131
    move-object p0, p1

    check-cast p0, Ljava/security/cert/X509Extension;

    sget-object p2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {p0, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object p0

    invoke-static {p0}, Ll0/j;->h(Ljava/lang/Object;)Ll0/j;

    move-result-object p0
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_13e} :catch_179

    instance-of p1, p1, Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_16c

    iget-boolean p1, v0, Ll0/d0;->d:Z

    if-eqz p1, :cond_157

    if-eqz p0, :cond_157

    invoke-virtual {p0}, Ll0/j;->i()Z

    move-result p1

    if-nez p1, :cond_14f

    goto :goto_157

    :cond_14f
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "CA Cert CRL only contains user certificates."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_157
    :goto_157
    iget-boolean p1, v0, Ll0/d0;->q:Z

    if-eqz p1, :cond_16c

    if-eqz p0, :cond_164

    invoke-virtual {p0}, Ll0/j;->i()Z

    move-result p0

    if-eqz p0, :cond_164

    goto :goto_16c

    :cond_164
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "End CRL only contains CA certificates."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16c
    :goto_16c
    iget-boolean p0, v0, Ll0/d0;->z1:Z

    if-nez p0, :cond_171

    goto :goto_182

    :cond_171
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_179
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Basic constraints extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_182
    :goto_182
    return-void

    :catch_183
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;La2/u;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-interface {p0}, Ljava/security/cert/X509Extension;->hasUnsupportedCriticalExtension()Z

    move-result p0

    if-nez p0, :cond_1f

    :try_start_9
    sget-object p0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object p0

    invoke-static {p0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_16

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :catch_16
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1f
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "delta CRL has unsupported critical extensions"

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static processCRLD(Ljava/security/cert/X509CRL;Ll0/s;)Lorg/bouncycastle/jce/provider/ReasonsMask;
    .registers 4

    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object p0

    invoke-static {p0}, Ll0/d0;->i(Ljava/lang/Object;)Ll0/d0;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_53

    if-eqz p0, :cond_25

    iget-object v0, p0, Ll0/d0;->x:Ll0/n0;

    if-eqz v0, :cond_25

    iget-object v1, p1, Ll0/s;->d:Ll0/n0;

    if-eqz v1, :cond_25

    new-instance p0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    iget-object p1, p1, Ll0/s;->d:Ll0/n0;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Ll0/n0;)V

    new-instance p1, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {p1, v0}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Ll0/n0;)V

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;->intersect(Lorg/bouncycastle/jce/provider/ReasonsMask;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object p0

    return-object p0

    :cond_25
    if-eqz p0, :cond_2b

    iget-object v0, p0, Ll0/d0;->x:Ll0/n0;

    if-nez v0, :cond_32

    :cond_2b
    iget-object v0, p1, Ll0/s;->d:Ll0/n0;

    if-nez v0, :cond_32

    sget-object p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    return-object p0

    :cond_32
    iget-object v0, p1, Ll0/s;->d:Ll0/n0;

    if-nez v0, :cond_39

    sget-object p1, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_41

    :cond_39
    new-instance v0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    iget-object p1, p1, Ll0/s;->d:Ll0/n0;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Ll0/n0;)V

    move-object p1, v0

    :goto_41
    if-nez p0, :cond_46

    sget-object p0, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_4e

    :cond_46
    new-instance v0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    iget-object p0, p0, Ll0/d0;->x:Ll0/n0;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Ll0/n0;)V

    move-object p0, v0

    :goto_4e
    invoke-virtual {p1, p0}, Lorg/bouncycastle/jce/provider/ReasonsMask;->intersect(Lorg/bouncycastle/jce/provider/ReasonsMask;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object p0

    return-object p0

    :catch_53
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v0, "Issuing distribution point extension could not be decoded."

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;La2/u;Ljava/util/List;Le2/b;)Ljava/util/Set;
    .registers 15

    new-instance p1, Ljava/security/cert/X509CertSelector;

    invoke-direct {p1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_5
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lj0/c;

    move-result-object p0

    invoke-virtual {p0}, Lm/n;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_143

    invoke-virtual {p1}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/CertSelector;

    new-instance p1, La2/q;

    invoke-direct {p1, p0}, La2/q;-><init>(Ljava/security/cert/CertSelector;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    :try_start_20
    iget-object v0, p4, La2/u;->y:Ljava/util/List;

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;La2/q;Ljava/util/List;)V

    iget-object v0, p4, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;La2/q;Ljava/util/List;)V
    :try_end_2e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_20 .. :try_end_2e} :catch_13a

    invoke-virtual {p0, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_3f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_d1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_5a
    :try_start_5a
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    if-eqz v4, :cond_64

    new-instance v4, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;

    invoke-direct {v4, v3}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;-><init>(Z)V

    goto :goto_69

    :cond_64
    new-instance v4, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    invoke-direct {v4, v3}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    :goto_69
    new-instance v5, Ljava/security/cert/X509CertSelector;

    invoke-direct {v5}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {v5, v1}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    new-instance v6, La2/t;

    invoke-direct {v6, p4}, La2/t;-><init>(La2/u;)V

    invoke-virtual {v5}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/CertSelector;

    new-instance v7, La2/q;

    invoke-direct {v7, v5}, La2/q;-><init>(Ljava/security/cert/CertSelector;)V

    iput-object v7, v6, La2/t;->d:La2/q;

    invoke-interface {p5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8c

    iput-boolean v2, v6, La2/t;->i:Z

    goto :goto_8e

    :cond_8c
    iput-boolean v3, v6, La2/t;->i:Z

    :goto_8e
    new-instance v3, La2/r;

    new-instance v5, La2/u;

    invoke-direct {v5, v6}, La2/u;-><init>(La2/t;)V

    invoke-direct {v3, v5}, La2/r;-><init>(La2/u;)V

    new-instance v5, La2/s;

    invoke-direct {v5, v3}, La2/s;-><init>(La2/r;)V

    invoke-virtual {v4, v5}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v2, p6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILe2/b;)Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5a .. :try_end_b3} :catch_c8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5a .. :try_end_b3} :catch_bf
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_b3} :catch_b4

    goto :goto_3f

    :catch_b4
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_bf
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_c8
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "CertPath for CRL signer failed to validate."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_d1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 p2, 0x0

    move p3, v2

    :goto_d8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_11e

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/security/cert/X509Certificate;

    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p4

    if-nez p4, :cond_10c

    const-string p4, "org.bouncycastle.x509.allow_ca_without_crl_sign"

    :try_start_ec
    invoke-static {p4}, Lm4/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_f4

    move p4, v3

    goto :goto_fa

    :cond_f4
    invoke-static {p4}, Lm4/h;->e(Ljava/lang/String;)Z

    move-result p4
    :try_end_f8
    .catch Ljava/security/AccessControlException; {:try_start_ec .. :try_end_f8} :catch_f9

    goto :goto_fa

    :catch_f9
    move p4, v2

    :goto_fa
    if-eqz p4, :cond_104

    :cond_fc
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    :cond_104
    new-instance p2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p4, "No key usage extension on CRL issuer certificate."

    invoke-direct {p2, p4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    goto :goto_11b

    :cond_10c
    array-length p5, p4

    const/4 p6, 0x6

    if-le p5, p6, :cond_114

    aget-boolean p4, p4, p6

    if-nez p4, :cond_fc

    :cond_114
    new-instance p2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p4, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {p2, p4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    :goto_11b
    add-int/lit8 p3, p3, 0x1

    goto :goto_d8

    :cond_11e
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12f

    if-eqz p2, :cond_127

    goto :goto_12f

    :cond_127
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot find a valid issuer certificate."

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12f
    :goto_12f
    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_139

    if-nez p2, :cond_138

    goto :goto_139

    :cond_138
    throw p2

    :cond_139
    :goto_139
    return-object p0

    :catch_13a
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Issuer certificate for CRL cannot be searched."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_143
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p2, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .registers 4

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PublicKey;

    :try_start_11
    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_15

    return-object v0

    :catch_15
    move-exception v0

    goto :goto_5

    :cond_17
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot verify CRL."

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .registers 5

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509CRL;

    :try_start_12
    invoke-virtual {v1, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v1

    goto :goto_6

    :cond_18
    if-nez v1, :cond_1b

    return-object v0

    :cond_1b
    new-instance p0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string p1, "Cannot verify delta CRL."

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;La2/u;)V
    .registers 5

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V
    .registers 6

    invoke-virtual {p3}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    :cond_b
    return-void
.end method

.method public static processCertA(Ljava/security/cert/CertPath;La2/u;Ljava/util/Date;La2/n;ILjava/security/PublicKey;ZLj0/c;Ljava/security/cert/X509Certificate;)V
    .registers 18

    move-object/from16 v7, p7

    const-string v1, "Could not validate certificate: "

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    if-nez p6, :cond_24

    :try_start_11
    iget-object v2, p1, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, p5, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/security/GeneralSecurityException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception v0

    new-instance v1, Lg2/b;

    const-string v2, "Could not validate certificate signature."

    invoke-direct {v1, v2, v0, p0, p4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v1

    :cond_24
    :goto_24
    :try_start_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {p2, v2, p0, p4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v2
    :try_end_2c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_24 .. :try_end_2c} :catch_9d

    :try_start_2c
    invoke-virtual {v8, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_2f
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2c .. :try_end_2f} :catch_86
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2c .. :try_end_2f} :catch_6f

    if-eqz p3, :cond_42

    new-instance v0, La2/o;

    move-object v3, p0

    move-object v1, p1

    move v4, p4

    move-object v6, p5

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v6}, La2/o;-><init>(La2/u;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    invoke-interface {p3, v0}, La2/n;->initialize(La2/o;)V

    invoke-interface {p3, v8}, La2/n;->check(Ljava/security/cert/Certificate;)V

    :cond_42
    invoke-static {v8}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;

    move-result-object v0

    invoke-virtual {v0, v7}, Lj0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    return-void

    :cond_4d
    new-instance v1, Lg2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "IssuerName("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") does not match SubjectName("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") of signing certificate."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p0, p4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v1

    :catch_6f
    move-exception v0

    new-instance v2, Lg2/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p0, p4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_86
    move-exception v0

    new-instance v2, Lg2/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, p0, p4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_9d
    move-exception v0

    new-instance v1, Lg2/b;

    const-string v2, "Could not validate time of certificate."

    invoke-direct {v1, v2, v0, p0, p4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v1
.end method

.method public static processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V
    .registers 16

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int v2, v0, p1

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_1a

    if-lt v2, v0, :cond_cc

    if-nez p3, :cond_cc

    :cond_1a
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;

    move-result-object p3

    :try_start_1e
    invoke-static {p3}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p3
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_df

    :try_start_22
    invoke-virtual {p2, p3}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lm/x;)V

    invoke-virtual {p2, p3}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lm/x;)V
    :try_end_28
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_22 .. :try_end_28} :catch_d6

    :try_start_28
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Ll0/z;->h(Ljava/lang/Object;)Ll0/z;

    move-result-object v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_cd

    invoke-static {p3}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p3

    sget-object v1, Lk0/b;->h:Lm/q;

    iget-object p3, p3, Lj0/c;->x:[Lj0/b;

    array-length v2, p3

    new-array v3, v2, [Lj0/b;

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_40
    array-length v7, p3

    if-eq v5, v7, :cond_69

    aget-object v7, p3, v5

    iget-object v8, v7, Lj0/b;->c:Lm/y;

    iget-object v9, v8, Lm/y;->c:[Lm/f;

    array-length v9, v9

    move v10, v4

    :goto_4b
    if-ge v10, v9, :cond_66

    iget-object v11, v8, Lm/y;->c:[Lm/f;

    aget-object v11, v11, v10

    invoke-static {v11}, Lj0/a;->h(Lm/f;)Lj0/a;

    move-result-object v11

    iget-object v11, v11, Lj0/a;->c:Lm/q;

    invoke-virtual {v11, v1}, Lm/u;->n(Lm/u;)Z

    move-result v11

    if-eqz v11, :cond_63

    add-int/lit8 v8, v6, 0x1

    aput-object v7, v3, v6

    move v6, v8

    goto :goto_66

    :cond_63
    add-int/lit8 v10, v10, 0x1

    goto :goto_4b

    :cond_66
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_69
    if-ge v6, v2, :cond_71

    new-array p3, v6, [Lj0/b;

    invoke-static {v3, v4, p3, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, p3

    :cond_71
    move p3, v4

    :goto_72
    array-length v1, v3

    if-eq p3, v1, :cond_a4

    aget-object v1, v3, p3

    invoke-virtual {v1}, Lj0/b;->h()Lj0/a;

    move-result-object v1

    iget-object v1, v1, Lj0/a;->d:Lm/f;

    check-cast v1, Lm/z;

    invoke-interface {v1}, Lm/z;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ll0/y;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x1

    iput v5, v2, Ll0/y;->d:I

    new-instance v5, Lm/u0;

    invoke-direct {v5, v1}, Lm/u0;-><init>(Ljava/lang/String;)V

    iput-object v5, v2, Ll0/y;->c:Lm/f;

    :try_start_92
    invoke-virtual {p2, v2}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Ll0/y;)V

    invoke-virtual {p2, v2}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Ll0/y;)V
    :try_end_98
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_92 .. :try_end_98} :catch_9b

    add-int/lit8 p3, p3, 0x1

    goto :goto_72

    :catch_9b
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subtree check for certificate subject alternative email failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_a4
    if-eqz v0, :cond_cc

    :try_start_a6
    invoke-virtual {v0}, Ll0/z;->i()[Ll0/y;

    move-result-object p3
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_aa} :catch_c3

    :goto_aa
    array-length v0, p3

    if-ge v4, v0, :cond_cc

    :try_start_ad
    aget-object v0, p3, v4

    invoke-virtual {p2, v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Ll0/y;)V

    aget-object v0, p3, v4

    invoke-virtual {p2, v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Ll0/y;)V
    :try_end_b7
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_ad .. :try_end_b7} :catch_ba

    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    :catch_ba
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subtree check for certificate subject alternative name failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_c3
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subject alternative name contents could not be decoded."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_cc
    return-void

    :catch_cd
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subject alternative name extension could not be decoded."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_d6
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Subtree check for certificate subject failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :catch_df
    move-exception p2

    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Exception extracting subject name when checking subtrees."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3
.end method

.method public static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 21

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v8, v4, p1

    :try_start_16
    sget-object v6, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v6

    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v6
    :try_end_20
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_16 .. :try_end_20} :catch_155

    if-eqz v6, :cond_153

    if-eqz v2, :cond_153

    invoke-virtual {v6}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v7

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    :cond_2d
    :goto_2d
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    const-string v11, "2.5.29.32.0"

    if-eqz v10, :cond_69

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ll0/l0;->h(Ljava/lang/Object;)Ll0/l0;

    move-result-object v10

    iget-object v12, v10, Ll0/l0;->c:Lm/q;

    invoke-virtual {v12}, Lm/q;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lm/q;->u()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2d

    :try_start_50
    iget-object v10, v10, Ll0/l0;->d:Lm/x;

    invoke-static {v10}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lm/x;)Ljava/util/Set;

    move-result-object v10
    :try_end_56
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_50 .. :try_end_56} :catch_60

    invoke-static {v8, v3, v12, v10}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lm/q;Ljava/util/Set;)Z

    move-result v11

    if-nez v11, :cond_2d

    invoke-static {v8, v3, v12, v10}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lm/q;Ljava/util/Set;)V

    goto :goto_2d

    :catch_60
    move-exception v0

    new-instance v2, Lg2/b;

    const-string v3, "Policy qualifier info set could not be build."

    invoke-direct {v2, v3, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_69
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9a

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_76

    goto :goto_9a

    :cond_76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :cond_7f
    :goto_7f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_93

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    :cond_93
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_a0

    :cond_9a
    :goto_9a
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_a0
    const/4 p0, 0x0

    if-gtz p5, :cond_ad

    if-lt v8, v4, :cond_a7

    if-eqz p6, :cond_131

    :cond_a7
    invoke-static {v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_131

    :cond_ad
    invoke-virtual {v6}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v0

    :cond_b1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_131

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ll0/l0;->h(Ljava/lang/Object;)Ll0/l0;

    move-result-object v1

    iget-object v4, v1, Ll0/l0;->c:Lm/q;

    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    iget-object v0, v1, Ll0/l0;->d:Lm/x;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lm/x;)Ljava/util/Set;

    move-result-object v11

    add-int/lit8 v0, v8, -0x1

    aget-object v0, v3, v0

    move v1, p0

    :goto_d6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_131

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_eb
    :goto_eb
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_fd

    check-cast v6, Ljava/lang/String;

    :goto_fb
    move-object v12, v6

    goto :goto_108

    :cond_fd
    instance-of v7, v6, Lm/q;

    if-eqz v7, :cond_eb

    check-cast v6, Lm/q;

    invoke-virtual {v6}, Lm/q;->u()Ljava/lang/String;

    move-result-object v6

    goto :goto_fb

    :goto_108
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6, v12}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findValidPolicy(Ljava/util/Iterator;Ljava/lang/String;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v6

    if-nez v6, :cond_eb

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v10, v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v7, v3, v8

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_eb

    :cond_12e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d6

    :cond_131
    invoke-static {v2, v3, v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removeChildlessPolicyNodes(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v5, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->hasCriticalExtension(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_152

    aget-object v1, v3, v8

    :goto_13f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_152

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_13f

    :cond_152
    return-object v0

    :cond_153
    const/4 p0, 0x0

    return-object p0

    :catch_155
    move-exception v0

    new-instance v2, Lg2/b;

    const-string v3, "Could not read certificate policies extension from certificate."

    invoke-direct {v2, v3, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v2
.end method

.method public static processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 5

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0
    :try_end_14
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_14} :catch_19

    if-nez p0, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    return-object p2

    :catch_19
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Could not read certificate policies extension from certificate."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .registers 5

    if-gtz p3, :cond_e

    if-eqz p2, :cond_5

    goto :goto_e

    :cond_5
    new-instance p2, Lg2/b;

    const-string p3, "No valid policy tree found when one expected."

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p2

    :cond_e
    :goto_e
    return-void
.end method

.method public static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .registers 2

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-nez p1, :cond_a

    if-eqz p0, :cond_a

    add-int/lit8 p0, p0, -0x1

    :cond_a
    return p0
.end method

.method public static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .registers 7

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    :try_start_a
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v0

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0
    :try_end_14
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_14} :catch_4b

    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/a0;

    iget v2, v1, Lm/a0;->q:I

    if-eqz v2, :cond_2b

    goto :goto_1a

    :cond_2b
    :try_start_2b
    sget-object v2, Lm/l;->q:Lm/a;

    invoke-static {v1}, Lq4/k;->v(Lm/a0;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lm/a0;->t(ZLm/a;)Lm/u;

    move-result-object v1

    invoke-virtual {v2, v1}, Lm/a;->a(Lm/u;)V

    check-cast v1, Lm/l;

    invoke-virtual {v1}, Lm/l;->y()I

    move-result v1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3e} :catch_41

    if-nez v1, :cond_1a

    return v3

    :catch_41
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_4a
    return p2

    :catch_4b
    move-exception p2

    new-instance v0, Lg2/b;

    const-string v1, "Policy constraints could not be decoded."

    invoke-direct {v0, v1, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0
.end method

.method public static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .registers 6

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    :try_start_14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v0, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_e

    :catch_1e
    move-exception p2

    goto :goto_22

    :catch_20
    move-exception p2

    goto :goto_2a

    :goto_22
    new-instance p3, Ljava/security/cert/CertPathValidatorException;

    const-string v0, "Additional certificate path checker failed."

    invoke-direct {p3, v0, p2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p3

    :goto_2a
    new-instance p3, Lg2/b;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, v0, p2, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p3

    :cond_34
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3b

    return-void

    :cond_3b
    new-instance p2, Lg2/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Certificate has unsupported critical extension: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p0, p1}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p2
.end method

.method public static wrapupCertG(Ljava/security/cert/CertPath;La2/u;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 13

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Explicit policy requested but none available."

    const/4 v2, 0x0

    if-nez p5, :cond_1c

    iget-object p1, p1, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result p1

    if-nez p1, :cond_16

    return-object v2

    :cond_16
    new-instance p1, Lg2/b;

    invoke-direct {p1, v1, v2, p0, p3}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_1c
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v3

    const-string v4, "2.5.29.32.0"

    const/4 v5, 0x0

    if-eqz v3, :cond_91

    iget-object p1, p1, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result p1

    if-eqz p1, :cond_90

    invoke-interface {p6}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8a

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move p1, v5

    :goto_39
    array-length p2, p4

    if-ge p1, p2, :cond_6d

    aget-object p2, p4, p1

    move p3, v5

    :goto_3f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_6a

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_59
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_67
    add-int/lit8 p3, p3, 0x1

    goto :goto_3f

    :cond_6a
    add-int/lit8 p1, p1, 0x1

    goto :goto_39

    :cond_6d
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_85

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_71

    :cond_85
    invoke-static {p5, p4, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removeChildlessPolicyNodes(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p0

    return-object p0

    :cond_8a
    new-instance p1, Lg2/b;

    invoke-direct {p1, v1, v2, p0, p3}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw p1

    :cond_90
    return-object p5

    :cond_91
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    move p1, v5

    :goto_97
    array-length p3, p4

    if-ge p1, p3, :cond_d7

    aget-object p3, p4, p1

    move p6, v5

    :goto_9d
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge p6, v1, :cond_d4

    invoke-interface {p3, p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    :cond_b7
    :goto_b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    :cond_d1
    add-int/lit8 p6, p6, 0x1

    goto :goto_9d

    :cond_d4
    add-int/lit8 p1, p1, 0x1

    goto :goto_97

    :cond_d7
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_db
    :goto_db
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_db

    invoke-static {p5, p4, p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p1

    move-object p5, p1

    goto :goto_db

    :cond_f7
    invoke-static {p5, p4, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removeChildlessPolicyNodes(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p0

    return-object p0
.end method
