.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;
.super Ljava/security/SignatureSpi;


# static fields
.field private static final ML_DSA_44:Ljava/lang/String; = "ML-DSA-44"

.field private static final ML_DSA_65:Ljava/lang/String; = "ML-DSA-65"

.field private static final ML_DSA_87:Ljava/lang/String; = "ML-DSA-87"

.field private static final algorithmsParameterSpecs:Ljava/util/HashMap;

.field private static final canonicalNames:Ljava/util/Map;

.field private static final domainSeparators:Ljava/util/HashMap;

.field private static final prefix:[B


# instance fields
.field private algorithm:Lm/q;

.field private algs:[Ljava/lang/String;

.field private baseDigest:Lorg/bouncycastle/crypto/v;

.field private componentSignatures:[Ljava/security/Signature;

.field private compositeKey:Ljava/security/Key;

.field private contextSpec:Ld2/b;

.field private domain:[B

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private helper:Le2/b;

.field private final isPrehash:Z

.field private preHashDigest:Lorg/bouncycastle/crypto/v;

.field private final random:Ljava/security/SecureRandom;

.field private unprimed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 19

    const-string v0, "436f6d706f73697465416c676f726974686d5369676e61747572657332303235"

    invoke-static {v0}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->prefix:[B

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->canonicalNames:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domainSeparators:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmsParameterSpecs:Ljava/util/HashMap;

    const-string v3, "MLDSA44"

    const-string v4, "ML-DSA-44"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MLDSA65"

    const-string v5, "ML-DSA-65"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "MLDSA87"

    const-string v6, "ML-DSA-87"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lz/b;->l0:Lm/q;

    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lz/b;->m0:Lm/q;

    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lz/b;->n0:Lm/q;

    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lq1/a;->f:Lm/q;

    const-string v3, "434f4d505349472d4d4c44534134342d525341323034382d5053532d534841323536"

    invoke-static {v3}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lq1/a;->g:Lm/q;

    const-string v4, "434f4d505349472d4d4c44534134342d525341323034382d504b435331352d534841323536"

    invoke-static {v4}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lq1/a;->h:Lm/q;

    const-string v4, "434f4d505349472d4d4c44534134342d456432353531392d534841353132"

    invoke-static {v4}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lq1/a;->i:Lm/q;

    const-string v4, "434f4d505349472d4d4c44534134342d45434453412d503235362d534841323536"

    invoke-static {v4}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lq1/a;->j:Lm/q;

    const-string v4, "434f4d505349472d4d4c44534136352d525341333037322d5053532d534841353132"

    invoke-static {v4}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lq1/a;->k:Lm/q;

    const-string v5, "434f4d505349472d4d4c44534136352d525341333037322d504b435331352d534841353132"

    invoke-static {v5}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lq1/a;->l:Lm/q;

    const-string v5, "434f4d505349472d4d4c44534136352d525341343039362d5053532d534841353132"

    invoke-static {v5}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->m:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534136352d525341343039362d504b435331352d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->n:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534136352d45434453412d503235362d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->o:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534136352d45434453412d503338342d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->p:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534136352d45434453412d42503235362d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->q:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534136352d456432353531392d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->s:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534138372d45434453412d42503338342d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->t:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534138372d45643434382d5348414b45323536"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lq1/a;->u:Lm/q;

    const-string v6, "434f4d505349472d4d4c44534138372d525341333037322d5053532d534841353132"

    invoke-static {v6}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lq1/a;->v:Lm/q;

    const-string v7, "434f4d505349472d4d4c44534138372d525341343039362d5053532d534841353132"

    invoke-static {v7}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lq1/a;->r:Lm/q;

    const-string v8, "434f4d505349472d4d4c44534138372d45434453412d503338342d534841353132"

    invoke-static {v8}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lq1/a;->w:Lm/q;

    const-string v8, "434f4d505349472d4d4c44534138372d45434453412d503532312d534841353132"

    invoke-static {v8}, Ln4/c;->a(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Ljava/security/spec/PSSParameterSpec;

    new-instance v12, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-256"

    invoke-direct {v12, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x20

    const/4 v14, 0x1

    const-string v10, "SHA-256"

    const-string v11, "MGF1"

    invoke-direct/range {v9 .. v14}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v2, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/security/spec/PSSParameterSpec;

    new-instance v13, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v13, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x20

    const/4 v15, 0x1

    const-string v11, "SHA-256"

    const-string v12, "MGF1"

    invoke-direct/range {v10 .. v15}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/security/spec/PSSParameterSpec;

    new-instance v14, Ljava/security/spec/MGF1ParameterSpec;

    const-string v0, "SHA-384"

    invoke-direct {v14, v0}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v15, 0x30

    const/16 v16, 0x1

    const-string v12, "SHA-384"

    const-string v13, "MGF1"

    invoke-direct/range {v11 .. v16}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v2, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/security/spec/PSSParameterSpec;

    new-instance v15, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v15, v0}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x30

    const/16 v17, 0x1

    const-string v13, "SHA-384"

    const-string v14, "MGF1"

    invoke-direct/range {v12 .. v17}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v2, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ljava/security/spec/PSSParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/16 v17, 0x20

    const/16 v18, 0x1

    const-string v14, "SHA-256"

    const-string v15, "MGF1"

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v18}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-virtual {v2, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lm/q;Lorg/bouncycastle/crypto/v;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;-><init>(Lm/q;Lorg/bouncycastle/crypto/v;Z)V

    return-void
.end method

.method public constructor <init>(Lm/q;Lorg/bouncycastle/crypto/v;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->random:Ljava/security/SecureRandom;

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->helper:Le2/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithm:Lm/q;

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->isPrehash:Z

    if-eqz p1, :cond_41

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->baseDigest:Lorg/bouncycastle/crypto/v;

    if-eqz p3, :cond_2a

    new-instance p3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result p2

    invoke-direct {p3, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;-><init>(I)V

    move-object p2, p3

    :cond_2a
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    sget-object p2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domainSeparators:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domain:[B

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getPairing(Lm/q;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Ljava/security/Signature;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    :cond_41
    return-void
.end method

.method private baseSigInit()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    new-instance v2, Ld2/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domain:[B

    invoke-direct {v2, v3}, Ld2/b;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithmsParameterSpecs:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithm:Lm/q;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_23

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_23
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_23} :catch_26

    :cond_23
    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    return-void

    :catch_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "unable to set context on ML-DSA"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createComponentSignatures(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_19

    :goto_3
    :try_start_3
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v1, p2

    if-eq v0, v1, :cond_4c

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->getDefaultSignature(Ljava/lang/String;Ljava/lang/Object;)Ljava/security/Signature;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    :goto_19
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v1, v1

    if-eq v0, v1, :cond_4c

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    if-nez v1, :cond_37

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->getDefaultSignature(Ljava/lang/String;Ljava/lang/Object;)Ljava/security/Signature;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_49

    :cond_37
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    invoke-static {v2, v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_49
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_49} :catch_4d

    :goto_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_4c
    return-void

    :catch_4d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private getCanonicalName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->canonicalNames:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    return-object p1
.end method

.method private getDefaultSignature(Ljava/lang/String;Ljava/lang/Object;)Ljava/security/Signature;
    .registers 3

    instance-of p2, p2, Lb2/a;

    if-eqz p2, :cond_b

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->helper:Le2/b;

    invoke-interface {p0, p1}, Le2/b;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method private processPreHashedMessage([B)V
    .registers 9

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->baseDigest:Lorg/bouncycastle/crypto/v;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    :try_start_8
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lorg/bouncycastle/crypto/v;->doFinal([BI)I
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_e} :catch_43

    move v2, v3

    :goto_f
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v5, v4

    if-ge v2, v5, :cond_42

    aget-object v4, v4, v2

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->prefix:[B

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domain:[B

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->contextSpec:Ld2/b;

    if-nez v5, :cond_28

    invoke-virtual {v4, v3}, Ljava/security/Signature;->update(B)V

    goto :goto_36

    :cond_28
    iget-object v5, v5, Ld2/b;->c:[B

    invoke-static {v5}, Lm4/d;->e([B)[B

    move-result-object v5

    array-length v6, v5

    int-to-byte v6, v6

    invoke-virtual {v4, v6}, Ljava/security/Signature;->update(B)V

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    :goto_36
    if-eqz p1, :cond_3c

    array-length v5, p1

    invoke-virtual {v4, p1, v3, v5}, Ljava/security/Signature;->update([BII)V

    :cond_3c
    invoke-virtual {v4, v1, v3, v0}, Ljava/security/Signature;->update([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_42
    return-void

    :catch_43
    move-exception p0

    new-instance p1, Ljava/security/SignatureException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sigInitSign()V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->compositeKey:Ljava/security/Key;

    check-cast v0, La2/c;

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-object v2, v2, v1

    iget-object v3, v0, La2/c;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    invoke-virtual {v2, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    return-void
.end method

.method private sigInitVerify()V
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->compositeKey:Ljava/security/Key;

    check-cast v0, La2/d;

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    aget-object v2, v2, v1

    iget-object v3, v0, La2/d;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-virtual {v2, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    return-void
.end method

.method public static splitCompositeSignature([BI)[[B
    .registers 6

    new-array v0, p1, [B

    array-length v1, p0

    sub-int/2addr v1, p1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p0, p1, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    filled-new-array {v0, v2}, [[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineGetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 3

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_23

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->contextSpec:Ld2/b;

    if-eqz v0, :cond_23

    :try_start_8
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->helper:Le2/b;

    const-string v1, "CONTEXT"

    invoke-interface {v0, v1}, Le2/b;->h(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->contextSpec:Ld2/b;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_23

    :catch_18
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_23
    :goto_23
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object p0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .registers 5

    instance-of v0, p1, La2/c;

    if-eqz v0, :cond_58

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->compositeKey:Ljava/security/Key;

    check-cast p1, La2/c;

    iget-object v0, p1, La2/c;->d:Ll0/b;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithm:Lm/q;

    if-eqz v1, :cond_1f

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-virtual {v0, v1}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_4e

    :cond_17
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "provided composite public key cannot be used with the composite signature algorithm"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    iget-object v0, v0, Ll0/b;->c:Lm/q;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithm:Lm/q;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getDigest(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->baseDigest:Lorg/bouncycastle/crypto/v;

    iget-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->isPrehash:Z

    if-eqz v2, :cond_37

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;-><init>(I)V

    move-object v1, v2

    :cond_37
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domainSeparators:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domain:[B

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getPairing(Lm/q;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/security/Signature;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    :goto_4e
    iget-object p1, p1, La2/c;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->createComponentSignatures(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->sigInitSign()V

    return-void

    :cond_58
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Private key is not composite."

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .registers 5

    instance-of v0, p1, La2/d;

    if-eqz v0, :cond_65

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->compositeKey:Ljava/security/Key;

    move-object v0, p1

    check-cast v0, La2/d;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithm:Lm/q;

    if-eqz v1, :cond_20

    iget-object p1, v0, La2/d;->d:Ll0/b;

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    invoke-virtual {p1, v1}, Lm/u;->n(Lm/u;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_5b

    :cond_18
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "provided composite public key cannot be used with the composite signature algorithm"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    check-cast p1, La2/d;

    invoke-virtual {p1}, La2/d;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    iget-object p1, p1, Ll0/p0;->c:Ll0/b;

    iget-object p1, p1, Ll0/b;->c:Lm/q;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algorithm:Lm/q;

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getDigest(Lm/q;)Lorg/bouncycastle/crypto/v;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->baseDigest:Lorg/bouncycastle/crypto/v;

    iget-boolean v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->isPrehash:Z

    if-eqz v2, :cond_44

    new-instance v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/v;->getDigestSize()I

    move-result v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi$NullDigest;-><init>(I)V

    move-object v1, v2

    :cond_44
    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domainSeparators:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->domain:[B

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getPairing(Lm/q;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Ljava/security/Signature;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    :goto_5b
    iget-object p1, v0, La2/d;->c:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->createComponentSignatures(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->sigInitVerify()V

    return-void

    :cond_65
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "public key is not composite"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "engineSetParameter unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    if-eqz v0, :cond_77

    instance-of v0, p1, Ld2/b;

    const-string v1, "keys invalid on reset: "

    if-eqz v0, :cond_34

    check-cast p1, Ld2/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->contextSpec:Ld2/b;

    :try_start_e
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->compositeKey:Ljava/security/Key;

    instance-of p1, p1, Ljava/security/PublicKey;

    if-eqz p1, :cond_1a

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->sigInitVerify()V

    return-void

    :catch_18
    move-exception p0

    goto :goto_1e

    :cond_1a
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->sigInitSign()V
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_1d} :catch_18

    return-void

    :goto_1e
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_34
    new-instance v0, Le2/d;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Le2/d;-><init>(Ljava/security/spec/AlgorithmParameterSpec;I)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_6f

    new-instance v0, Ld2/b;

    invoke-direct {v0, p1}, Ld2/b;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->contextSpec:Ld2/b;

    :try_start_49
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->compositeKey:Ljava/security/Key;

    instance-of p1, p1, Ljava/security/PublicKey;

    if-eqz p1, :cond_55

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->sigInitVerify()V

    goto :goto_6f

    :catch_53
    move-exception p0

    goto :goto_59

    :cond_55
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->sigInitSign()V
    :try_end_58
    .catch Ljava/security/InvalidKeyException; {:try_start_49 .. :try_end_58} :catch_53

    goto :goto_6f

    :goto_59
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_6f
    :goto_6f
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "unknown parameterSpec passed to composite signature"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_77
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "attempt to set parameter after update"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineSign()[B
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->processPreHashedMessage([B)V

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object p0

    array-length v2, v0

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, p0

    invoke-static {p0, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public engineUpdate(B)V
    .registers 5

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->baseSigInit()V

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/v;->update(B)V

    return-void

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v2, v1

    if-ge v0, v2, :cond_1d

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/security/Signature;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    return-void
.end method

.method public engineUpdate([BII)V
    .registers 7

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->unprimed:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->baseSigInit()V

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    if-eqz v0, :cond_f

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/v;->update([BII)V

    return-void

    :cond_f
    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v2, v1

    if-ge v0, v2, :cond_1d

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1d
    return-void
.end method

.method public engineVerify([B)Z
    .registers 7

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "44"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_10

    const/16 v0, 0x974

    goto :goto_2f

    :cond_10
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "65"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1f

    const/16 v0, 0xced

    goto :goto_2f

    :cond_1f
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->algs:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "87"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2e

    const/16 v0, 0x1213

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    invoke-static {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->splitCompositeSignature([BI)[[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->preHashDigest:Lorg/bouncycastle/crypto/v;

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->processPreHashedMessage([B)V

    :cond_3b
    move v0, v1

    :goto_3c
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/SignatureSpi;->componentSignatures:[Ljava/security/Signature;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_50

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_4d

    move v0, v4

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_50
    xor-int/lit8 p0, v0, 0x1

    return p0
.end method
