.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;
.super Ljava/lang/Object;


# static fields
.field private static algorithmNames:Ljava/util/Map;

.field private static kpgInitSpecs:Ljava/util/Map;

.field private static pairings:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 44

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lq1/a;->f:Lm/q;

    const-string v2, "ML-DSA-44"

    const-string v3, "RSASSA-PSS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v4, Lq1/a;->g:Lm/q;

    const-string v5, "sha256WithRSAEncryption"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v6, Lq1/a;->h:Lm/q;

    const-string v7, "Ed25519"

    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v8, Lq1/a;->i:Lm/q;

    const-string v9, "SHA256withECDSA"

    filled-new-array {v2, v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v2, Lq1/a;->j:Lm/q;

    const-string v10, "ML-DSA-65"

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v11, Lq1/a;->k:Lm/q;

    filled-new-array {v10, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v5, Lq1/a;->l:Lm/q;

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v12, Lq1/a;->m:Lm/q;

    const-string v13, "sha384WithRSAEncryption"

    filled-new-array {v10, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lq1/a;->n:Lm/q;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v14, Lq1/a;->o:Lm/q;

    const-string v15, "SHA384withECDSA"

    move-object/from16 v16, v13

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v13, Lq1/a;->p:Lm/q;

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v13, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v9, Lq1/a;->q:Lm/q;

    filled-new-array {v10, v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v7, Lq1/a;->r:Lm/q;

    const-string v10, "ML-DSA-87"

    move-object/from16 v17, v9

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v9, Lq1/a;->s:Lm/q;

    filled-new-array {v10, v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lq1/a;->t:Lm/q;

    move-object/from16 v18, v9

    const-string v9, "Ed448"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v15, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v9, Lq1/a;->u:Lm/q;

    move-object/from16 v19, v15

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v15, Lq1/a;->v:Lm/q;

    filled-new-array {v10, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v3, Lq1/a;->w:Lm/q;

    move-object/from16 v20, v9

    const-string v9, "SHA512withECDSA"

    filled-new-array {v10, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v9, Lv1/c;->x:Lm/q;

    new-instance v10, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v21, v3

    sget-object v3, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    move-object/from16 v22, v15

    const/16 v15, 0x800

    invoke-direct {v10, v15, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    const/4 v15, 0x2

    move-object/from16 v23, v10

    new-array v10, v15, [Ljava/security/spec/AlgorithmParameterSpec;

    const/16 v24, 0x0

    const/4 v15, 0x0

    aput-object v15, v10, v24

    const/16 v26, 0x1

    aput-object v23, v10, v26

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v10, Lv1/c;->y:Lm/q;

    move-object/from16 v23, v15

    new-instance v15, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v27, v9

    const/16 v9, 0x800

    invoke-direct {v15, v9, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object/from16 v28, v15

    const/4 v9, 0x2

    new-array v15, v9, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v23, v15, v24

    aput-object v28, v15, v26

    invoke-interface {v0, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v9, Lv1/c;->z:Lm/q;

    move-object/from16 v15, v23

    move-object/from16 v23, v10

    filled-new-array {v15, v15}, [Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v10, Lv1/c;->A:Lm/q;

    move-object/from16 v28, v15

    new-instance v15, Li2/b;

    move-object/from16 v29, v9

    const-string v9, "P-256"

    invoke-direct {v15, v9}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v31, v7

    move-object/from16 v30, v15

    const/4 v15, 0x2

    new-array v7, v15, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v7, v24

    aput-object v30, v7, v26

    invoke-interface {v0, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v7, Lv1/c;->B:Lm/q;

    new-instance v15, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v30, v10

    const/16 v10, 0xc00

    invoke-direct {v15, v10, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object/from16 v25, v15

    const/4 v10, 0x2

    new-array v15, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v15, v24

    aput-object v25, v15, v26

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v15, Lv1/c;->C:Lm/q;

    move-object/from16 v32, v7

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v33, v13

    const/16 v13, 0xc00

    invoke-direct {v7, v13, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v13, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v13, v24

    aput-object v7, v13, v26

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v7, Lv1/c;->D:Lm/q;

    new-instance v13, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v34, v15

    const/16 v15, 0x1000

    invoke-direct {v13, v15, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v15, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v15, v24

    aput-object v13, v15, v26

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v13, Lv1/c;->E:Lm/q;

    new-instance v15, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v35, v7

    const/16 v7, 0x1000

    invoke-direct {v15, v7, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v7, v24

    aput-object v15, v7, v26

    invoke-interface {v0, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v7, Lv1/c;->F:Lm/q;

    new-instance v15, Li2/b;

    move-object/from16 v36, v13

    const-string v13, "P-384"

    invoke-direct {v15, v13}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v15

    new-array v15, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v15, v24

    aput-object v25, v15, v26

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v15, Lv1/c;->G:Lm/q;

    new-instance v10, Li2/b;

    move-object/from16 v37, v7

    const-string v7, "brainpoolP256r1"

    invoke-direct {v10, v7}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v39, v7

    move-object/from16 v38, v10

    const/4 v10, 0x2

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v28, v7, v24

    aput-object v38, v7, v26

    invoke-interface {v0, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v7, Lv1/c;->H:Lm/q;

    move-object/from16 v10, v28

    move-object/from16 v28, v15

    filled-new-array {v10, v10}, [Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v15

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v15, Lv1/c;->I:Lm/q;

    move-object/from16 v38, v10

    new-instance v10, Li2/b;

    invoke-direct {v10, v13}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v25, v7

    move-object/from16 v40, v10

    const/4 v10, 0x2

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v38, v7, v24

    aput-object v40, v7, v26

    invoke-interface {v0, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v7, Lv1/c;->J:Lm/q;

    new-instance v10, Li2/b;

    move-object/from16 v41, v15

    const-string v15, "brainpoolP384r1"

    invoke-direct {v10, v15}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v42, v10

    move-object/from16 v40, v15

    const/4 v10, 0x2

    new-array v15, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v38, v15, v24

    aput-object v42, v15, v26

    invoke-interface {v0, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v15, Lv1/c;->K:Lm/q;

    move-object/from16 v10, v38

    move-object/from16 v38, v7

    filled-new-array {v10, v10}, [Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    invoke-interface {v0, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v43, v10

    const/16 v10, 0x800

    invoke-direct {v7, v10, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object/from16 v42, v7

    const/4 v10, 0x2

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v7, v24

    aput-object v42, v7, v26

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    move-object/from16 v42, v1

    const/16 v1, 0x800

    invoke-direct {v7, v1, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v1, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v1, v24

    aput-object v7, v1, v26

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    move-object/from16 v1, v43

    filled-new-array {v1, v1}, [Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v7, Li2/b;

    invoke-direct {v7, v9}, Li2/b;-><init>(Ljava/lang/String;)V

    new-array v1, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v1, v24

    aput-object v7, v1, v26

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v7, 0xc00

    invoke-direct {v1, v7, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v7, v24

    aput-object v1, v7, v26

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v7, 0xc00

    invoke-direct {v1, v7, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v7, v24

    aput-object v1, v7, v26

    invoke-interface {v0, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v7, 0x1000

    invoke-direct {v1, v7, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v7, v24

    aput-object v1, v7, v26

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v7, 0x1000

    invoke-direct {v1, v7, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v7, v24

    aput-object v1, v7, v26

    invoke-interface {v0, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v1, Li2/b;

    invoke-direct {v1, v9}, Li2/b;-><init>(Ljava/lang/String;)V

    new-array v7, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v7, v24

    aput-object v1, v7, v26

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v7, Li2/b;

    invoke-direct {v7, v13}, Li2/b;-><init>(Ljava/lang/String;)V

    new-array v9, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v9, v24

    aput-object v7, v9, v26

    invoke-interface {v0, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v7, Li2/b;

    move-object/from16 v9, v39

    invoke-direct {v7, v9}, Li2/b;-><init>(Ljava/lang/String;)V

    new-array v9, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v9, v24

    aput-object v7, v9, v26

    move-object/from16 v7, v33

    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    move-object/from16 v9, v43

    filled-new-array {v9, v9}, [Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v10

    move-object/from16 v9, v17

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v10, Li2/b;

    invoke-direct {v10, v13}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v10

    const/4 v13, 0x2

    new-array v10, v13, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v10, v24

    aput-object v16, v10, v26

    move-object/from16 v13, v31

    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v10, Li2/b;

    move-object/from16 v13, v40

    invoke-direct {v10, v13}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v10

    const/4 v13, 0x2

    new-array v10, v13, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v10, v24

    aput-object v16, v10, v26

    move-object/from16 v13, v18

    invoke-interface {v0, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    move-object/from16 v10, v43

    filled-new-array {v10, v10}, [Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v13

    move-object/from16 v10, v19

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v13, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v10, 0x1000

    invoke-direct {v13, v10, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object/from16 v16, v13

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v13, v24

    aput-object v16, v13, v26

    move-object/from16 v10, v22

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v13, Li2/b;

    const-string v10, "P-521"

    invoke-direct {v13, v10}, Li2/b;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v13

    const/4 v10, 0x2

    new-array v13, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v13, v24

    aput-object v16, v13, v26

    move-object/from16 v10, v21

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v13, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/16 v10, 0xc00

    invoke-direct {v13, v10, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    const/4 v10, 0x2

    new-array v3, v10, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v43, v3, v24

    aput-object v13, v3, v26

    move-object/from16 v10, v20

    invoke-interface {v0, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA44-RSA2048-PSS-SHA256"

    move-object/from16 v13, v27

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA44-RSA2048-PKCS15-SHA256"

    move-object/from16 v13, v23

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA44-Ed25519-SHA512"

    move-object/from16 v13, v29

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA44-ECDSA-P256-SHA256"

    move-object/from16 v13, v30

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-RSA3072-PSS-SHA512"

    move-object/from16 v13, v32

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-RSA3072-PKCS15-SHA512"

    move-object/from16 v13, v34

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-RSA4096-PSS-SHA512"

    move-object/from16 v13, v35

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-RSA4096-PKCS15-SHA512"

    move-object/from16 v13, v36

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-ECDSA-P384-SHA512"

    move-object/from16 v13, v37

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-ECDSA-brainpoolP256r1-SHA512"

    move-object/from16 v13, v28

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA65-Ed25519-SHA512"

    move-object/from16 v13, v25

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA87-ECDSA-P384-SHA512"

    move-object/from16 v13, v41

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA87-ECDSA-brainpoolP384r1-SHA512"

    move-object/from16 v13, v38

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "HashMLDSA87-Ed448-SHA512"

    invoke-interface {v0, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "MLDSA44-RSA2048-PSS-SHA256"

    move-object/from16 v13, v42

    invoke-interface {v0, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "MLDSA44-RSA2048-PKCS15-SHA256"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "MLDSA44-Ed25519-SHA512"

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "MLDSA44-ECDSA-P256-SHA256"

    invoke-interface {v0, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v3, "MLDSA65-RSA3072-PSS-SHA512"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "MLDSA65-RSA3072-PKCS15-SHA512"

    invoke-interface {v0, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "MLDSA65-RSA4096-PSS-SHA512"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "MLDSA65-RSA4096-PKCS15-SHA512"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v2, "MLDSA65-ECDSA-P256-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA65-ECDSA-P384-SHA512"

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA65-ECDSA-brainpoolP256r1-SHA512"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA65-Ed25519-SHA512"

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA87-ECDSA-P384-SHA512"

    move-object/from16 v13, v31

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA87-ECDSA-brainpoolP384r1-SHA512"

    move-object/from16 v13, v18

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA87-Ed448-SHAKE256"

    move-object/from16 v2, v19

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA87-RSA4096-PSS-SHA512"

    move-object/from16 v2, v22

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA87-ECDSA-P521-SHA512"

    move-object/from16 v2, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    const-string v1, "MLDSA87-RSA3072-PSS-SHA512"

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithmName(Lm/q;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    return-object v0

    :cond_9
    const-string v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_13

    const-string p0, "EC"

    :cond_13
    return-object p0
.end method

.method public static getDigest(Lm/q;)Lorg/bouncycastle/crypto/v;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p0, Ls0/b0;

    invoke-direct {p0}, Ls0/b0;-><init>()V

    return-object p0

    :cond_16
    const-string v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance p0, Ls0/c0;

    invoke-direct {p0}, Ls0/c0;-><init>()V

    return-object p0

    :cond_24
    const-string v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ls0/e0;

    invoke-direct {p0}, Ls0/e0;-><init>()V

    return-object p0

    :cond_32
    new-instance p0, Ls0/g0;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Ls0/g0;-><init>(I)V

    return-object p0
.end method

.method public static getKeyPairSpecs(Lm/q;)[Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method public static getPairing(Lm/q;)[Ljava/lang/String;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedIdentifiers()Ljava/util/Set;
    .registers 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isAlgorithmSupported(Lm/q;)Z
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
