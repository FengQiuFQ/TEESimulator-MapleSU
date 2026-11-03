.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/SymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 30

    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Mappings;->PREFIX:Ljava/lang/String;

    const-string v3, "$AlgParams"

    const-string v4, "AlgorithmParameters.DSTU7624"

    invoke-static {v1, v2, v3, v0, v4}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v1, Lh0/e;->r:Lm/q;

    const-string v4, "AlgorithmParameters"

    invoke-static {v0, v2, v3, v4, v1}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v5, Lh0/e;->s:Lm/q;

    invoke-static {v0, v2, v3, v4, v5}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v6, Lh0/e;->t:Lm/q;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v6, v3}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "$AlgParamGen128"

    const-string v7, "AlgorithmParameterGenerator.DSTU7624"

    invoke-static {v3, v2, v4, v0, v7}, Lb/b;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v2, v4}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlgorithmParameterGenerator"

    invoke-static {v0, v4, v3, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$AlgParamGen256"

    invoke-static {v7, v4, v3, v5, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "$AlgParamGen512"

    invoke-static {v3, v2, v7}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v4, v3, v2, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_128"

    const-string v7, "Cipher.DSTU7624"

    invoke-static {v3, v4, v0, v7, v2}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "Cipher.DSTU7624-128"

    invoke-static {v3, v4, v0, v7, v2}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_256"

    const-string v7, "Cipher.DSTU7624-256"

    invoke-static {v3, v4, v0, v7, v2}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ECB_512"

    const-string v7, "Cipher.DSTU7624-512"

    invoke-static {v3, v4, v0, v7}, Lb/b;->x(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    sget-object v3, Lh0/e;->i:Lm/q;

    const-string v4, "$ECB128"

    const-string v7, "Cipher"

    invoke-static {v0, v2, v4, v7, v3}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v4, Lh0/e;->j:Lm/q;

    const-string v8, "$ECB256"

    invoke-static {v0, v2, v8, v7, v4}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v8, Lh0/e;->k:Lm/q;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "$ECB512"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v8, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "$CBC128"

    invoke-static {v9, v2, v10}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v7, v9, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$CBC256"

    invoke-static {v10, v7, v9, v5, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "$CBC512"

    invoke-static {v9, v2, v10}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v7, v6, v9}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    sget-object v9, Lh0/e;->u:Lm/q;

    const-string v10, "$OFB128"

    invoke-static {v0, v2, v10, v7, v9}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v10, Lh0/e;->v:Lm/q;

    const-string v11, "$OFB256"

    invoke-static {v0, v2, v11, v7, v10}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v11, Lh0/e;->w:Lm/q;

    const-string v12, "$OFB512"

    invoke-static {v0, v2, v12, v7, v11}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v12, Lh0/e;->o:Lm/q;

    const-string v13, "$CFB128"

    invoke-static {v0, v2, v13, v7, v12}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v13, Lh0/e;->p:Lm/q;

    const-string v14, "$CFB256"

    invoke-static {v0, v2, v14, v7, v13}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v14, Lh0/e;->q:Lm/q;

    const-string v15, "$CFB512"

    invoke-static {v0, v2, v15, v7, v14}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v15, Lh0/e;->l:Lm/q;

    move-object/from16 p0, v14

    const-string v14, "$CTR128"

    invoke-static {v0, v2, v14, v7, v15}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v14, Lh0/e;->m:Lm/q;

    move-object/from16 v16, v15

    const-string v15, "$CTR256"

    invoke-static {v0, v2, v15, v7, v14}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v15, Lh0/e;->n:Lm/q;

    move-object/from16 v17, v14

    const-string v14, "$CTR512"

    invoke-static {v0, v2, v14, v7, v15}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v14, Lh0/e;->A:Lm/q;

    move-object/from16 v18, v15

    const-string v15, "$CCM128"

    invoke-static {v0, v2, v15, v7, v14}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v15, Lh0/e;->B:Lm/q;

    move-object/from16 v19, v14

    const-string v14, "$CCM256"

    invoke-static {v0, v2, v14, v7, v15}, Lb/b;->A(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)V

    sget-object v14, Lh0/e;->C:Lm/q;

    move-object/from16 v20, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v13

    const-string v13, "$CCM512"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v7, v14, v13}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "$Wrap"

    const-string v15, "Cipher.DSTU7624KW"

    invoke-static {v7, v2, v13, v0, v15}, Lb/b;->w(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;)V

    const-string v7, "$Wrap128"

    const-string v13, "Alg.Alias.Cipher.DSTU7624WRAP"

    const-string v15, "DSTU7624KW"

    invoke-static {v13, v15, v0, v2, v7}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v13, "Cipher.DSTU7624-128KW"

    const-string v15, "Alg.Alias.Cipher."

    invoke-static {v0, v13, v7, v15}, Lb/b;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v13, Lh0/e;->D:Lm/q;

    move-object/from16 v22, v14

    invoke-virtual {v13}, Lm/q;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-128KW"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "$Wrap256"

    move-object/from16 v23, v12

    const-string v12, "Alg.Alias.Cipher.DSTU7624-128WRAP"

    invoke-static {v12, v14, v0, v2, v7}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "Cipher.DSTU7624-256KW"

    invoke-static {v0, v12, v7, v15}, Lb/b;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v12, Lh0/e;->E:Lm/q;

    invoke-virtual {v12}, Lm/q;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-256KW"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "$Wrap512"

    move-object/from16 v24, v11

    const-string v11, "Alg.Alias.Cipher.DSTU7624-256WRAP"

    invoke-static {v11, v14, v0, v2, v7}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "Cipher.DSTU7624-512KW"

    invoke-static {v0, v11, v7, v15}, Lb/b;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v11, Lh0/e;->F:Lm/q;

    invoke-virtual {v11}, Lm/q;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-512KW"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "$GMAC"

    const-string v15, "Alg.Alias.Cipher.DSTU7624-512WRAP"

    invoke-static {v15, v14, v0, v2, v7}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "$GMAC128"

    const-string v15, "Mac.DSTU7624GMAC"

    invoke-static {v15, v7, v0, v2, v14}, Lb/b;->i(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624-128GMAC"

    const-string v15, "Alg.Alias.Mac."

    invoke-static {v0, v14, v7, v15}, Lb/b;->q(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v14, Lh0/e;->x:Lm/q;

    move-object/from16 v25, v14

    invoke-virtual/range {v25 .. v25}, Lm/q;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-128GMAC"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$GMAC256"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624-256GMAC"

    invoke-interface {v0, v14, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lh0/e;->y:Lm/q;

    move-object/from16 v26, v14

    invoke-virtual/range {v26 .. v26}, Lm/q;->u()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "DSTU7624-256GMAC"

    invoke-interface {v0, v7, v14}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "$GMAC512"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Mac.DSTU7624-512GMAC"

    invoke-interface {v0, v14, v7}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lh0/e;->z:Lm/q;

    invoke-virtual {v14}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v15, "DSTU7624-512GMAC"

    invoke-interface {v0, v7, v15}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "$KeyGen"

    move-object/from16 v27, v14

    const-string v14, "KeyGenerator.DSTU7624"

    invoke-static {v7, v15, v0, v14, v2}, Lb/b;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "$KeyGen128"

    const-string v15, "KeyGenerator"

    invoke-static {v14, v15, v7, v13, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, "$KeyGen256"

    invoke-static {v7, v2, v13}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v15, v7, v2, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "$KeyGen512"

    invoke-static {v12, v15, v7, v11, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v7, v2, v14}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v15, v7, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13, v15, v3, v4, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v3, v2, v12}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v15, v3, v2, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v14, v15, v3, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v13}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v15, v1, v2, v5}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12, v15, v1, v6, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v14}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v15, v1, v2, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v13, v15, v1, v10, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v12}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-static {v0, v15, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v23

    invoke-static {v14, v15, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v13}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v21

    invoke-static {v0, v15, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-static {v12, v15, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v14}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v16

    invoke-static {v0, v15, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v17

    invoke-static {v13, v15, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v12}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v18

    invoke-static {v0, v15, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v19

    invoke-static {v14, v15, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v13}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v0, v15, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v22

    invoke-static {v12, v15, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v14}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v25

    invoke-static {v0, v15, v1, v2, v3}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->f(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lm/q;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v3, v26

    invoke-static {v13, v15, v1, v3, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Lm/q;Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v2, v12}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v0, v15, v2, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    return-void
.end method
