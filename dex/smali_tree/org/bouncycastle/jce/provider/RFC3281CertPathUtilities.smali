.class Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;


# static fields
.field private static final AUTHORITY_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field private static final NO_REV_AVAIL:Ljava/lang/String;

.field private static final TARGET_INFORMATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ll0/v;->S1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    sget-object v0, Ll0/v;->R1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    sget-object v0, Ll0/v;->I1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    sget-object v0, Ll0/v;->Q1:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static additionalChecks(Lq4/f;Ljava/util/Set;Ljava/util/Set;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "."

    if-eqz v0, :cond_28

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lq4/m;

    invoke-virtual {v2, v0}, Lq4/m;->b(Ljava/lang/String;)[Lq4/d;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_4

    :cond_1c
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate contains prohibited attribute: "

    invoke-static {p1, v0, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, p0

    check-cast v0, Lq4/m;

    invoke-virtual {v0, p2}, Lq4/m;->b(Ljava/lang/String;)[Lq4/d;

    move-result-object v0

    if-eqz v0, :cond_42

    goto :goto_2c

    :cond_42
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate does not contain necessary attribute: "

    invoke-static {p1, p2, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    return-void
.end method

.method private static checkCRL(Ll0/s;Lq4/f;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Le2/b;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    sget-object v0, Ll0/c1;->q:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, p1

    check-cast v11, Lq4/m;

    invoke-virtual {v11, v0}, Lq4/m;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_18

    goto/16 :goto_bd

    :cond_18
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_bf

    new-instance v2, La2/o;

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, La2/o;-><init>(La2/u;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    move-object v6, v3

    move-object v12, v4

    invoke-static {v2, v1, v11, v6, v12}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(La2/o;Ll0/s;Ljava/lang/Object;La2/u;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v0, 0x0

    move v15, v0

    move-object v0, v14

    :goto_40
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_bb

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_bb

    :try_start_54
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-static {v2, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Ll0/s;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5
    :try_end_62
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_54 .. :try_end_62} :catch_b8

    if-nez v5, :cond_65

    goto :goto_40

    :cond_65
    move-object v5, v4

    const/4 v4, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    move-object/from16 v8, p9

    move-object v3, v11

    move-object v11, v7

    move-object/from16 v7, p8

    :try_start_6f
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;La2/u;Ljava/util/List;Le2/b;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lq4/m;->q:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-ltz v4, :cond_b0

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Ll0/s;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Ll0/s;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    invoke-static {v14, v2, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;La2/u;)V

    invoke-static {v12, v14, v3, v9, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;La2/u;)V

    invoke-static {v12, v2, v3, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_aa

    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    goto :goto_aa

    :catch_a8
    move-exception v0

    goto :goto_ae

    :cond_aa
    :goto_aa
    invoke-virtual {v10, v11}, Lorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V

    const/4 v15, 0x1

    :goto_ae
    move-object v11, v3

    goto :goto_40

    :cond_b0
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "No valid CRL for current time found."

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6f .. :try_end_b8} :catch_a8

    :catch_b8
    move-exception v0

    move-object v3, v11

    goto :goto_ae

    :cond_bb
    if-eqz v15, :cond_be

    :goto_bd
    return-void

    :cond_be
    throw v0

    :cond_bf
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "Validation time is in future."

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkCRLs(Lq4/f;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Le2/b;)V
    .registers 24

    move-object/from16 v0, p1

    iget-boolean v1, v0, La2/u;->C1:Z

    if-eqz v1, :cond_175

    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    move-object/from16 v3, p0

    check-cast v3, Lq4/m;

    invoke-virtual {v3, v1}, Lq4/m;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_15c

    :try_start_12
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object v1

    invoke-static {v1}, Ll0/k;->i(Ljava/lang/Object;)Ll0/k;

    move-result-object v1
    :try_end_1c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_12 .. :try_end_1c} :catch_153

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_21
    iget-object v4, v0, La2/u;->B1:Ljava/util/Map;

    move-object/from16 v6, p3

    move-object/from16 v11, p6

    invoke-static {v1, v4, v6, v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Ll0/k;Ljava/util/Map;Ljava/util/Date;Le2/b;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_21 .. :try_end_2e} :catch_14a

    new-instance v4, La2/t;

    invoke-direct {v4, v0}, La2/t;-><init>(La2/u;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    move-object v5, v2

    check-cast v5, La2/j;

    iget-object v7, v4, La2/t;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :cond_46
    new-instance v2, La2/u;

    invoke-direct {v2, v4}, La2/u;-><init>(La2/t;)V

    new-instance v8, Lorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v8}, Lorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    new-instance v9, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v9}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    const-string v12, "No valid CRL for distribution point found."

    const/4 v13, 0x1

    const/4 v0, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xb

    if-eqz v1, :cond_9e

    :try_start_5e
    invoke-virtual {v1}, Ll0/k;->h()[Ll0/s;

    move-result-object v1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_62} :catch_95

    move/from16 v16, v0

    :goto_64
    :try_start_64
    array-length v4, v1

    if-ge v0, v4, :cond_8b

    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v4

    if-ne v4, v15, :cond_8b

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v4
    :try_end_71
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_64 .. :try_end_71} :catch_8d

    if-nez v4, :cond_8b

    move-object v4, v2

    :try_start_74
    aget-object v2, v1, v0

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Ll0/s;Lq4/f;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Le2/b;)V
    :try_end_7f
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_74 .. :try_end_7f} :catch_89

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p3

    move-object/from16 v11, p6

    move-object v2, v4

    move/from16 v16, v13

    goto :goto_64

    :catch_89
    move-exception v0

    goto :goto_8f

    :cond_8b
    move-object v4, v2

    goto :goto_a1

    :catch_8d
    move-exception v0

    move-object v4, v2

    :goto_8f
    new-instance v14, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v14, v12, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a1

    :catch_95
    move-exception v0

    new-instance v1, Lg2/b;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_9e
    move-object v4, v2

    move/from16 v16, v0

    :goto_a1
    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_e4

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_e4

    :try_start_ad
    invoke-static {v3}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lj0/c;

    move-result-object v0
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b1} :catch_d6

    :try_start_b1
    new-instance v2, Ll0/s;

    new-instance v1, Ll0/t;

    new-instance v5, Ll0/z;

    new-instance v6, Ll0/y;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v0}, Ll0/y;-><init>(ILm/n;)V

    invoke-direct {v5, v6}, Ll0/z;-><init>(Ll0/y;)V

    invoke-direct {v1, v5}, Ll0/t;-><init>(Ll0/z;)V

    invoke-direct {v2, v1}, Ll0/s;-><init>(Ll0/t;)V

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v2 .. v11}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Ll0/s;Lq4/f;La2/u;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Le2/b;)V

    goto :goto_e6

    :catch_d4
    move-exception v0

    goto :goto_df

    :catch_d6
    move-exception v0

    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_df
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b1 .. :try_end_df} :catch_d4

    :goto_df
    new-instance v14, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v14, v12, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e4
    move/from16 v13, v16

    :goto_e6
    if-eqz v13, :cond_142

    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_10e

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v1, 0xc

    if-nez v0, :cond_ff

    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v15, :cond_ff

    invoke-virtual {v8, v1}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    :cond_ff
    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v1, :cond_106

    goto :goto_175

    :cond_106
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Attribute certificate status could not be determined."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attribute certificate revocation after "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", reason: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_142
    new-instance v0, Lg2/b;

    const-string v1, "No valid CRL found."

    invoke-direct {v0, v1, v14}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_14a
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_153
    move-exception v0

    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "CRL distribution point extension could not be read."

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_15c
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lq4/m;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_16d

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lq4/m;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_16d

    goto :goto_175

    :cond_16d
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_175
    :goto_175
    return-void
.end method

.method public static processAttrCert1(Lq4/f;La2/u;)Ljava/security/cert/CertPath;
    .registers 13

    const-string v0, "Support class could not be created."

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p0, Lq4/m;

    invoke-virtual {p0}, Lq4/m;->d()Lq4/a;

    move-result-object v2

    iget-object v2, v2, Lq4/a;->c:Ll0/b0;

    iget-object v2, v2, Ll0/b0;->c:Ll0/c0;

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    iget-object v2, v2, Ll0/c0;->c:Ll0/z;

    invoke-static {v2}, Lq4/a;->c(Ll0/z;)[Ljava/security/Principal;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    move-object v2, v3

    :goto_1c
    const-string v4, "Public key certificate for attribute certificate cannot be searched."

    const-string v5, "Unable to encode X500 principal."

    const/4 v6, 0x0

    if-eqz v2, :cond_99

    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {p0}, Lq4/m;->d()Lq4/a;

    move-result-object v7

    iget-object v7, v7, Lq4/a;->c:Ll0/b0;

    iget-object v7, v7, Ll0/b0;->c:Ll0/c0;

    if-eqz v7, :cond_39

    iget-object v7, v7, Ll0/c0;->d:Lm/l;

    invoke-virtual {v7}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_3a

    :cond_39
    move-object v7, v3

    :goto_3a
    invoke-virtual {v2, v7}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {p0}, Lq4/m;->d()Lq4/a;

    move-result-object v7

    iget-object v7, v7, Lq4/a;->c:Ll0/b0;

    iget-object v7, v7, Ll0/b0;->c:Ll0/c0;

    if-eqz v7, :cond_4e

    iget-object v7, v7, Ll0/c0;->c:Ll0/z;

    invoke-static {v7}, Lq4/a;->c(Ll0/z;)[Ljava/security/Principal;

    move-result-object v7

    goto :goto_4f

    :cond_4e
    move-object v7, v3

    :goto_4f
    move v8, v6

    :goto_50
    array-length v9, v7

    if-ge v8, v9, :cond_8a

    :try_start_53
    aget-object v9, v7, v8

    instance-of v10, v9, Ljavax/security/auth/x500/X500Principal;

    if-eqz v10, :cond_67

    check-cast v9, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V

    goto :goto_67

    :catch_63
    move-exception p0

    goto :goto_7e

    :catch_65
    move-exception p0

    goto :goto_84

    :cond_67
    :goto_67
    invoke-virtual {v2}, Ljava/security/cert/X509CertSelector;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/CertSelector;

    new-instance v10, La2/q;

    invoke-direct {v10, v9}, La2/q;-><init>(Ljava/security/cert/CertSelector;)V

    iget-object v9, p1, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v9}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v1, v10, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;La2/q;Ljava/util/List;)V
    :try_end_7b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_53 .. :try_end_7b} :catch_65
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_7b} :catch_63

    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :goto_7e
    new-instance p1, Lg2/b;

    invoke-direct {p1, v5, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_84
    new-instance p1, Lg2/b;

    invoke-direct {p1, v4, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_8a
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_91

    goto :goto_99

    :cond_91
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_99
    :goto_99
    invoke-virtual {p0}, Lq4/m;->d()Lq4/a;

    move-result-object v2

    invoke-virtual {v2}, Lq4/a;->b()[Ljava/security/Principal;

    move-result-object v2

    if-eqz v2, :cond_f9

    new-instance v2, Lq4/i;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-virtual {p0}, Lq4/m;->d()Lq4/a;

    move-result-object p0

    invoke-virtual {p0}, Lq4/a;->b()[Ljava/security/Principal;

    move-result-object p0

    :goto_b0
    array-length v7, p0

    if-ge v6, v7, :cond_ea

    :try_start_b3
    aget-object v7, p0, v6

    instance-of v8, v7, Ljavax/security/auth/x500/X500Principal;

    if-eqz v8, :cond_c7

    check-cast v7, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V

    goto :goto_c7

    :catch_c3
    move-exception p0

    goto :goto_de

    :catch_c5
    move-exception p0

    goto :goto_e4

    :cond_c7
    :goto_c7
    invoke-virtual {v2}, Lq4/i;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/CertSelector;

    new-instance v8, La2/q;

    invoke-direct {v8, v7}, La2/q;-><init>(Ljava/security/cert/CertSelector;)V

    iget-object v7, p1, La2/u;->c:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v7

    invoke-static {v1, v8, v7}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;La2/q;Ljava/util/List;)V
    :try_end_db
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b3 .. :try_end_db} :catch_c5
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_db} :catch_c3

    add-int/lit8 v6, v6, 0x1

    goto :goto_b0

    :goto_de
    new-instance p1, Lg2/b;

    invoke-direct {p1, v5, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_e4
    new-instance p1, Lg2/b;

    invoke-direct {p1, v4, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_ea
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_f1

    goto :goto_f9

    :cond_f1
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f9
    :goto_f9
    new-instance p0, La2/t;

    invoke-direct {p0, p1}, La2/t;-><init>(La2/u;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, v3

    :goto_103
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_165

    new-instance v2, Lq4/i;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v2}, Lq4/i;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/CertSelector;

    new-instance v4, La2/q;

    invoke-direct {v4, v2}, La2/q;-><init>(Ljava/security/cert/CertSelector;)V

    iput-object v4, p0, La2/t;->d:La2/q;

    :try_start_124
    const-string v2, "PKIX"

    const-string v4, "BC"

    invoke-static {v2, v4}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v2
    :try_end_12c
    .catch Ljava/security/NoSuchProviderException; {:try_start_124 .. :try_end_12c} :catch_157
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_124 .. :try_end_12c} :catch_155

    :try_start_12c
    new-instance v4, La2/r;

    new-instance v5, La2/u;

    invoke-direct {v5, p0}, La2/u;-><init>(La2/t;)V

    invoke-direct {v4, v5}, La2/r;-><init>(La2/u;)V

    new-instance v5, La2/s;

    invoke-direct {v5, v4}, La2/s;-><init>(La2/r;)V

    invoke-virtual {v2, v5}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1
    :try_end_13f
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_12c .. :try_end_13f} :catch_140
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12c .. :try_end_13f} :catch_142

    goto :goto_103

    :catch_140
    move-exception v2

    goto :goto_14d

    :catch_142
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_14d
    new-instance v3, Lg2/b;

    const-string v4, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v3, v4, v2}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_103

    :catch_155
    move-exception p0

    goto :goto_159

    :catch_157
    move-exception p0

    goto :goto_15f

    :goto_159
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_15f
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_165
    if-nez v3, :cond_16c

    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object p0

    return-object p0

    :cond_16c
    throw v3
.end method

.method public static processAttrCert2(Ljava/security/cert/CertPath;La2/u;)Ljava/security/cert/CertPathValidatorResult;
    .registers 5

    const-string v0, "Support class could not be created."

    :try_start_2
    const-string v1, "PKIX"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_a} :catch_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_a} :catch_23

    :try_start_a
    invoke-virtual {v0, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_e} :catch_1a
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1a
    move-exception p0

    new-instance p1, Lg2/b;

    const-string v0, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :catch_23
    move-exception p0

    goto :goto_27

    :catch_25
    move-exception p0

    goto :goto_2d

    :goto_27
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_2d
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static processAttrCert3(Ljava/security/cert/X509Certificate;La2/u;)V
    .registers 4

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object p1

    if-eqz p1, :cond_1f

    array-length v0, p1

    if-lez v0, :cond_e

    const/4 v0, 0x0

    aget-boolean v0, p1, v0

    if-nez v0, :cond_1f

    :cond_e
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_17

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_17

    goto :goto_1f

    :cond_17
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_27

    return-void

    :cond_27
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static processAttrCert4(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .registers 6

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    const-string v3, "RFC2253"

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2f
    const/4 v0, 0x1

    goto :goto_5

    :cond_31
    if-eqz v0, :cond_34

    return-void

    :cond_34
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    const-string p1, "Attribute certificate issuer is not directly trusted."

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static processAttrCert5(Lq4/f;Ljava/util/Date;)V
    .registers 3

    const-string v0, "Attribute certificate is not valid."

    :try_start_2
    check-cast p0, Lq4/m;

    invoke-virtual {p0, p1}, Lq4/m;->a(Ljava/util/Date;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_2 .. :try_end_7} :catch_a
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    goto :goto_c

    :catch_a
    move-exception p0

    goto :goto_12

    :goto_c
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :goto_12
    new-instance p1, Lg2/b;

    invoke-direct {p1, v0, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public static processAttrCert7(Lq4/f;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;La2/u;Ljava/util/Set;)V
    .registers 6

    const-string p1, "Target information extension could not be read."

    check-cast p0, Lq4/m;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lq4/m;->c(Z)Ljava/util/HashSet;

    move-result-object p2

    sget-object p3, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :try_start_11
    invoke-static {p0, p3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lm/u;

    move-result-object p0

    if-eqz p0, :cond_2b

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;
    :try_end_1a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_11 .. :try_end_1a} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_1a} :catch_1b

    goto :goto_2b

    :catch_1b
    move-exception p0

    goto :goto_1f

    :catch_1d
    move-exception p0

    goto :goto_25

    :goto_1f
    new-instance p2, Lg2/b;

    invoke-direct {p2, p1, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :goto_25
    new-instance p2, Lg2/b;

    invoke-direct {p2, p1, p0}, Lg2/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_2b
    :goto_2b
    invoke-virtual {p2, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_53

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3f

    return-void

    :cond_3f
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Attribute certificate contains unsupported critical extensions: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method
