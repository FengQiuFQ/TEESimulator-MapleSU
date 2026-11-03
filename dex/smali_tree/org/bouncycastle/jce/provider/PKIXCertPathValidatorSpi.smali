.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;


# instance fields
.field private final helper:Le2/b;

.field private final isForCRLCheck:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Le2/b;

    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    return-void
.end method

.method public static checkCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 3

    instance-of v0, p0, Lb2/b;

    const-string v1, "unable to process TBSCertificate"

    if-eqz v0, :cond_18

    :try_start_6
    check-cast p0, Lb2/b;

    invoke-interface {p0}, Lb2/b;->getTBSCertificateNative()Ll0/u0;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_c} :catch_11

    if-eqz p0, :cond_f

    return-void

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :catch_11
    move-exception p0

    :goto_12
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Ll0/u0;->h(Ljava/lang/Object;)Ll0/u0;
    :try_end_1f
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_18 .. :try_end_1f} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_1f} :catch_22

    return-void

    :catch_20
    move-exception p0

    goto :goto_2d

    :catch_22
    move-exception p0

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2d
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Ljava/security/cert/PKIXParameters;

    if-eqz v3, :cond_17

    new-instance v3, La2/t;

    check-cast v2, Ljava/security/cert/PKIXParameters;

    invoke-direct {v3, v2}, La2/t;-><init>(Ljava/security/cert/PKIXParameters;)V

    new-instance v2, La2/u;

    invoke-direct {v2, v3}, La2/u;-><init>(La2/t;)V

    goto :goto_26

    :cond_17
    instance-of v3, v2, La2/s;

    if-eqz v3, :cond_20

    check-cast v2, La2/s;

    iget-object v2, v2, La2/s;->c:La2/u;

    goto :goto_26

    :cond_20
    instance-of v3, v2, La2/u;

    if-eqz v3, :cond_39e

    check-cast v2, La2/u;

    :goto_26
    iget-object v3, v2, La2/u;->D1:Ljava/util/Set;

    iget-object v4, v2, La2/u;->c:Ljava/security/cert/PKIXParameters;

    if-eqz v3, :cond_396

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v12, 0x0

    if-nez v3, :cond_38c

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(La2/u;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v13

    const/4 v14, 0x1

    :try_start_49
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v14

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    iget-object v7, v2, La2/u;->D1:Ljava/util/Set;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v15

    if-eqz v15, :cond_369

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_67
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_49 .. :try_end_67} :catch_365

    new-instance v4, La2/t;

    invoke-direct {v4, v2}, La2/t;-><init>(La2/u;)V

    invoke-static {v15}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, v4, La2/t;->j:Ljava/util/Set;

    new-instance v2, La2/u;

    invoke-direct {v2, v4}, La2/u;-><init>(La2/t;)V

    add-int/lit8 v4, v11, 0x1

    new-array v6, v4, [Ljava/util/ArrayList;

    const/4 v7, 0x0

    move v8, v7

    :goto_7d
    if-ge v8, v4, :cond_89

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    :cond_89
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const-string v9, "2.5.29.32.0"

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v16, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    const-string v22, "2.5.29.32.0"

    const/16 v23, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v19, v8

    invoke-direct/range {v16 .. v23}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v8, v16

    aget-object v9, v6, v7

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v9}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    iget-object v5, v2, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v17

    if-eqz v17, :cond_c8

    move/from16 v17, v7

    goto :goto_ca

    :cond_c8
    move/from16 v17, v4

    :goto_ca
    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v18

    if-eqz v18, :cond_d3

    move/from16 v18, v7

    goto :goto_d5

    :cond_d3
    move/from16 v18, v4

    :goto_d5
    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v19

    if-eqz v19, :cond_dc

    move v4, v7

    :cond_dc
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v19

    if-eqz v19, :cond_ef

    :try_start_e2
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;

    move-result-object v20

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v21

    goto :goto_f7

    :catch_eb
    move-exception v0

    const/4 v4, -0x1

    goto/16 :goto_35d

    :cond_ef
    invoke-static {v15}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lj0/c;

    move-result-object v20

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v21
    :try_end_f7
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_f7} :catch_eb

    :goto_f7
    :try_start_f7
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Ll0/b;

    move-result-object v22
    :try_end_fb
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f7 .. :try_end_fb} :catch_353

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v22, v14

    iget-object v14, v2, La2/u;->d:La2/q;

    if-eqz v14, :cond_11f

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v7, v23

    check-cast v7, Ljava/security/cert/X509Certificate;

    iget-object v14, v14, La2/q;->c:Ljava/security/cert/CertSelector;

    invoke-interface {v14, v7}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_116

    const/4 v7, 0x0

    goto :goto_11f

    :cond_116
    new-instance v0, Lg2/b;

    const-string v2, "Target certificate in certification path does not match targetConstraints."

    const/4 v7, 0x0

    invoke-direct {v0, v2, v12, v1, v7}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_11f
    :goto_11f
    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_127
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_13a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v12, v23

    check-cast v12, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v12, v7}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    const/4 v12, 0x0

    goto :goto_127

    :cond_13a
    iget-boolean v5, v2, La2/u;->C1:Z

    if-eqz v5, :cond_14b

    new-instance v5, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    iget-object v12, v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Le2/b;

    invoke-direct {v5, v12}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Le2/b;)V

    move-object/from16 v30, v5

    move v5, v4

    move-object/from16 v4, v30

    goto :goto_14d

    :cond_14b
    move v5, v4

    const/4 v4, 0x0

    :goto_14d
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move/from16 p2, v12

    move v12, v5

    move/from16 v5, p2

    move-object/from16 v23, v13

    move/from16 p2, v17

    move-object/from16 v17, v8

    move v13, v11

    const/4 v8, 0x0

    :goto_160
    if-ltz v5, :cond_2c8

    sub-int v8, v11, v5

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v25, v10

    move-object/from16 v10, v24

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v7, v24, -0x1

    if-ne v5, v7, :cond_179

    move/from16 v7, v22

    goto :goto_17a

    :cond_179
    const/4 v7, 0x0

    :goto_17a
    :try_start_17a
    invoke-static {v10}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_17d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_17a .. :try_end_17d} :catch_2b8

    move-object/from16 v26, v14

    move/from16 v14, p2

    move-object/from16 p2, v26

    move-object/from16 v26, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v21

    move/from16 v21, v13

    move v13, v8

    move-object/from16 v8, v20

    move-object/from16 v20, v15

    move-object v15, v9

    move-object/from16 v9, v26

    const/16 v26, 0x0

    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;La2/u;Ljava/util/Date;La2/n;ILjava/security/PublicKey;ZLj0/c;Ljava/security/cert/X509Certificate;)V

    move-object/from16 v24, v4

    move-object/from16 v27, v6

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object v9, v2

    move-object v8, v3

    move v2, v5

    iget-boolean v3, v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    invoke-static {v1, v2, v15, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    iget-boolean v7, v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v5, v19

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v4

    invoke-static {v1, v2, v4, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    if-eq v13, v11, :cond_292

    if-eqz v10, :cond_1e6

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    move-object/from16 v16, v3

    move/from16 v3, v22

    if-ne v7, v3, :cond_1e8

    if-ne v13, v3, :cond_1dd

    invoke-virtual/range {v20 .. v20}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1dd

    move-object/from16 v3, p2

    move/from16 v13, v21

    goto/16 :goto_298

    :cond_1dd
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Version 1 certificates can\'t be used as CA ones."

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_1e6
    move-object/from16 v16, v3

    :cond_1e8
    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    invoke-static {v1, v2, v5, v4, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v3

    invoke-static {v1, v2, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    invoke-static {v1, v2, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v1, v2, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v7

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v6

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v4

    invoke-static {v1, v2, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v7

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v6

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    move/from16 v13, v21

    invoke-static {v1, v2, v13}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v12

    invoke-static {v1, v2, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v13

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    invoke-interface {v10}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v12

    new-instance v14, Ljava/util/HashSet;

    if-eqz v12, :cond_25a

    invoke-direct {v14, v12}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v12, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_257
    move-object/from16 v12, p2

    goto :goto_25e

    :cond_25a
    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    goto :goto_257

    :goto_25e
    invoke-static {v1, v2, v14, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    invoke-static {v10}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lj0/c;

    move-result-object v14

    move-object/from16 p2, v3

    :try_start_267
    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    move/from16 v17, v4

    iget-object v4, v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Le2/b;

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILe2/b;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_273
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_267 .. :try_end_273} :catch_289

    invoke-static {v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Ll0/b;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v21, v3

    move-object/from16 v19, v10

    move-object v3, v12

    move-object/from16 v28, v14

    move/from16 v14, v17

    move-object/from16 v17, p2

    move v12, v7

    :goto_286
    move/from16 v18, v6

    goto :goto_29f

    :catch_289
    move-exception v0

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Next working key could not be retrieved."

    invoke-direct {v3, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_292
    move-object/from16 v16, v3

    move/from16 v13, v21

    move-object/from16 v3, p2

    :goto_298
    move-object/from16 v17, v4

    move-object/from16 v21, v27

    move-object/from16 v19, v29

    goto :goto_286

    :goto_29f
    add-int/lit8 v2, v2, -0x1

    move-object v6, v5

    move/from16 p2, v14

    move-object/from16 v4, v24

    move/from16 v7, v26

    const/16 v22, 0x1

    move v5, v2

    move-object v14, v3

    move-object v3, v8

    move-object v2, v9

    move-object v8, v10

    move-object v9, v15

    move-object/from16 v15, v20

    move-object/from16 v10, v25

    move-object/from16 v20, v28

    goto/16 :goto_160

    :catch_2b8
    move-exception v0

    move v2, v5

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v3, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2c8
    move-object v9, v2

    move v2, v5

    move-object v5, v6

    move-object v3, v14

    move-object/from16 v20, v15

    move-object/from16 v4, v17

    move/from16 v14, p2

    invoke-static {v14, v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v0

    move-object v6, v4

    add-int/lit8 v4, v2, 0x1

    invoke-static {v1, v4, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v0

    invoke-interface {v8}, Ljava/security/cert/X509Extension;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    new-instance v10, Ljava/util/HashSet;

    if-eqz v7, :cond_329

    invoke-direct {v10, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    sget-object v7, Ll0/v;->N1:Lm/q;

    invoke-virtual {v7}, Lm/q;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_32c

    :cond_329
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    :goto_32c
    invoke-static {v1, v4, v3, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    move v12, v2

    move-object v2, v9

    move-object/from16 v7, v16

    move-object/from16 v3, v23

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;La2/u;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v2

    if-gtz v0, :cond_347

    if-eqz v2, :cond_33e

    goto :goto_347

    :cond_33e
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Path processing failed on policy."

    const/4 v4, 0x0

    invoke-direct {v0, v2, v4, v1, v12}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_347
    :goto_347
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-direct {v0, v3, v2, v1}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    :catch_353
    move-exception v0

    new-instance v2, Lg2/b;

    const-string v3, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v4, -0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v2

    :goto_35d
    new-instance v2, Lg2/b;

    const-string v3, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v2, v3, v0, v1, v4}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_365
    move-exception v0

    move-object/from16 v25, v10

    goto :goto_376

    :cond_369
    move-object/from16 v25, v10

    const/4 v4, -0x1

    :try_start_36c
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Trust anchor for certification path not found."

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0
    :try_end_375
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_36c .. :try_end_375} :catch_375

    :catch_375
    move-exception v0

    :goto_376
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v4

    const/16 v22, 0x1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_38c
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Certification path is empty."

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    :cond_396
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameters must be a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " instance."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
