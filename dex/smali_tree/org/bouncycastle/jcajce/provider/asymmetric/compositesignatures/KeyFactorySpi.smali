.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;


# static fields
.field private static componentKeySizes:Ljava/util/Map;

.field private static final ecDsaBrainpoolP256r1:Ll0/b;

.field private static final ecDsaBrainpoolP384r1:Ll0/b;

.field private static final ecDsaP256:Ll0/b;

.field private static final ecDsaP384:Ll0/b;

.field private static final ecDsaP521:Ll0/b;

.field private static final ed25519:Ll0/b;

.field private static final ed448:Ll0/b;

.field private static final falcon512Identifier:Ll0/b;

.field private static final mlDsa44:Ll0/b;

.field private static final mlDsa65:Ll0/b;

.field private static final mlDsa87:Ll0/b;

.field private static pairings:Ljava/util/Map;

.field private static final rsa:Ll0/b;


# instance fields
.field private helper:Le2/b;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    new-instance v0, Ll0/b;

    sget-object v1, Lz/b;->l0:Lm/q;

    invoke-direct {v0, v1}, Ll0/b;-><init>(Lm/q;)V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->mlDsa44:Ll0/b;

    new-instance v1, Ll0/b;

    sget-object v2, Lz/b;->m0:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->mlDsa65:Ll0/b;

    new-instance v2, Ll0/b;

    sget-object v3, Lz/b;->n0:Lm/q;

    invoke-direct {v2, v3}, Ll0/b;-><init>(Lm/q;)V

    sput-object v2, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->mlDsa87:Ll0/b;

    new-instance v3, Ll0/b;

    sget-object v4, Lo/a;->a1:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    sput-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->falcon512Identifier:Ll0/b;

    new-instance v3, Ll0/b;

    sget-object v4, Lo1/a;->c:Lm/q;

    invoke-direct {v3, v4}, Ll0/b;-><init>(Lm/q;)V

    sput-object v3, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed25519:Ll0/b;

    new-instance v4, Ll0/b;

    sget-object v5, Lm0/m;->M0:Lm/q;

    new-instance v6, Lm0/f;

    sget-object v7, Lf0/e;->H:Lm/q;

    invoke-direct {v6, v7}, Lm0/f;-><init>(Lm/q;)V

    invoke-direct {v4, v5, v6}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v4, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecDsaP256:Ll0/b;

    new-instance v6, Ll0/b;

    new-instance v7, Lm0/f;

    sget-object v8, Lg0/b;->o:Lm/q;

    invoke-direct {v7, v8}, Lm0/f;-><init>(Lm/q;)V

    invoke-direct {v6, v5, v7}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v6, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecDsaBrainpoolP256r1:Ll0/b;

    new-instance v7, Ll0/b;

    sget-object v8, Ld0/r;->a:Lm/q;

    invoke-direct {v7, v8}, Ll0/b;-><init>(Lm/q;)V

    sput-object v7, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->rsa:Ll0/b;

    new-instance v8, Ll0/b;

    sget-object v9, Lo1/a;->d:Lm/q;

    invoke-direct {v8, v9}, Ll0/b;-><init>(Lm/q;)V

    sput-object v8, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ed448:Ll0/b;

    new-instance v9, Ll0/b;

    new-instance v10, Lm0/f;

    sget-object v11, Lf0/e;->A:Lm/q;

    invoke-direct {v10, v11}, Lm0/f;-><init>(Lm/q;)V

    invoke-direct {v9, v5, v10}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v9, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecDsaP384:Ll0/b;

    new-instance v10, Ll0/b;

    new-instance v11, Lm0/f;

    sget-object v12, Lf0/e;->B:Lm/q;

    invoke-direct {v11, v12}, Lm0/f;-><init>(Lm/q;)V

    invoke-direct {v10, v5, v11}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v10, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecDsaP521:Ll0/b;

    new-instance v11, Ll0/b;

    new-instance v12, Lm0/f;

    sget-object v13, Lg0/b;->s:Lm/q;

    invoke-direct {v12, v13}, Lm0/f;-><init>(Lm/q;)V

    invoke-direct {v11, v5, v12}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    sput-object v11, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->ecDsaBrainpoolP384r1:Ll0/b;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v12, Lq1/a;->f:Lm/q;

    filled-new-array {v0, v7}, [Ll0/b;

    move-result-object v13

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v13, Lq1/a;->g:Lm/q;

    filled-new-array {v0, v7}, [Ll0/b;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v14, Lq1/a;->h:Lm/q;

    filled-new-array {v0, v3}, [Ll0/b;

    move-result-object v15

    invoke-interface {v5, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v15, Lq1/a;->i:Lm/q;

    filled-new-array {v0, v4}, [Ll0/b;

    move-result-object v0

    invoke-interface {v5, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v5, Lq1/a;->j:Lm/q;

    move-object/from16 v16, v15

    filled-new-array {v1, v7}, [Ll0/b;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v15, Lq1/a;->k:Lm/q;

    move-object/from16 v17, v5

    filled-new-array {v1, v7}, [Ll0/b;

    move-result-object v5

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v5, Lq1/a;->l:Lm/q;

    move-object/from16 v18, v15

    filled-new-array {v1, v7}, [Ll0/b;

    move-result-object v15

    invoke-interface {v0, v5, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v15, Lq1/a;->m:Lm/q;

    move-object/from16 v19, v5

    filled-new-array {v1, v7}, [Ll0/b;

    move-result-object v5

    invoke-interface {v0, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v5, Lq1/a;->n:Lm/q;

    filled-new-array {v1, v4}, [Ll0/b;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v4, Lq1/a;->o:Lm/q;

    move-object/from16 v20, v5

    filled-new-array {v1, v9}, [Ll0/b;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v5, Lq1/a;->p:Lm/q;

    filled-new-array {v1, v6}, [Ll0/b;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v6, Lq1/a;->q:Lm/q;

    filled-new-array {v1, v3}, [Ll0/b;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v1, Lq1/a;->r:Lm/q;

    filled-new-array {v2, v9}, [Ll0/b;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v3, Lq1/a;->s:Lm/q;

    filled-new-array {v2, v11}, [Ll0/b;

    move-result-object v9

    invoke-interface {v0, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v9, Lq1/a;->t:Lm/q;

    filled-new-array {v2, v8}, [Ll0/b;

    move-result-object v8

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v8, Lq1/a;->v:Lm/q;

    filled-new-array {v2, v7}, [Ll0/b;

    move-result-object v11

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v11, Lq1/a;->w:Lm/q;

    filled-new-array {v2, v10}, [Ll0/b;

    move-result-object v10

    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    sget-object v10, Lq1/a;->u:Lm/q;

    filled-new-array {v2, v7}, [Ll0/b;

    move-result-object v2

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v2, 0x10c

    const/16 v7, 0x520

    filled-new-array {v7, v2}, [I

    move-result-object v2

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v2, 0x11c

    filled-new-array {v7, v2}, [I

    move-result-object v2

    invoke-interface {v0, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v2, 0x20

    filled-new-array {v7, v2}, [I

    move-result-object v12

    invoke-interface {v0, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v12, 0x4c

    filled-new-array {v7, v12}, [I

    move-result-object v7

    move-object/from16 v13, v16

    invoke-interface {v0, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v7, 0x7a0

    const/16 v13, 0x100

    filled-new-array {v7, v13}, [I

    move-result-object v14

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    filled-new-array {v7, v13}, [I

    move-result-object v2

    move-object/from16 v14, v18

    invoke-interface {v0, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v2, 0x21e

    filled-new-array {v7, v2}, [I

    move-result-object v14

    move-object/from16 v13, v19

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    filled-new-array {v7, v2}, [I

    move-result-object v13

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    filled-new-array {v7, v12}, [I

    move-result-object v13

    move-object/from16 v14, v20

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v13, 0x57

    filled-new-array {v7, v13}, [I

    move-result-object v14

    invoke-interface {v0, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    filled-new-array {v7, v12}, [I

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v4, 0x20

    filled-new-array {v7, v4}, [I

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v4, 0xa20

    filled-new-array {v4, v13}, [I

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    filled-new-array {v4, v13}, [I

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v1, 0x39

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    filled-new-array {v4, v2}, [I

    move-result-object v1

    invoke-interface {v0, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v1, 0x100

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    const/16 v1, 0x5d

    filled-new-array {v4, v1}, [I

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;-><init>(Le2/b;)V

    return-void
.end method

.method public constructor <init>(Le2/b;)V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseKeyFactorySpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    return-void
.end method

.method private getKeyFactoriesFromIdentifier(Lm/q;)Ljava/util/List;
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getPairing(Lm/q;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_35

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le2/b;->l(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Le2/b;->l(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_35
    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p1, "Cannot create KeyFactories. Unsupported algorithm identifier."

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getKeysSpecs(Lm/q;[Lm/b;)[Ljava/security/spec/X509EncodedKeySpec;
    .registers 8

    array-length p0, p2

    new-array p0, p0, [Ljava/security/spec/X509EncodedKeySpec;

    array-length v0, p2

    new-array v0, v0, [Ll0/p0;

    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ll0/b;

    if-eqz p1, :cond_43

    new-instance v1, Ll0/p0;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aget-object v4, p2, v2

    invoke-direct {v1, v3, v4}, Ll0/p0;-><init>(Ll0/b;Lm/b;)V

    aput-object v1, v0, v2

    new-instance v1, Ll0/p0;

    const/4 v3, 0x1

    aget-object p1, p1, v3

    aget-object p2, p2, v3

    invoke-direct {v1, p1, p2}, Ll0/p0;-><init>(Ll0/b;Lm/b;)V

    aput-object v1, v0, v3

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v0, v2

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, p0, v2

    new-instance p1, Ljava/security/spec/X509EncodedKeySpec;

    aget-object p2, v0, v3

    invoke-virtual {p2}, Lm/n;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    aput-object p1, p0, v3

    return-object p0

    :cond_43
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot create key specs. Unsupported algorithm identifier."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    if-nez v0, :cond_b

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    :cond_b
    :try_start_b
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->generatePrivate(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0

    :cond_1c
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->generatePublic(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_35

    return-object p0

    :cond_2d
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Key not recognized"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_35
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key could not be parsed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    if-nez v0, :cond_b

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    :cond_b
    iget-object v0, p1, Ld0/t;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    sget-object v1, Lv1/c;->u:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_124

    sget-object v1, Lv1/c;->v:Lm/q;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto/16 :goto_124

    :cond_22
    :try_start_22
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeyFactoriesFromIdentifier(Lm/q;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Lm/g;

    invoke-direct {v1}, Lm/g;-><init>()V
    :try_end_2b
    .catch Ljava/security/GeneralSecurityException; {:try_start_22 .. :try_end_2b} :catch_119

    :try_start_2b
    invoke-virtual {p1}, Ld0/t;->j()Lm/u;

    move-result-object v3

    invoke-static {v3}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_35} :catch_36

    goto :goto_3c

    :catch_36
    :try_start_36
    invoke-virtual {p1}, Ld0/t;->i()Lm/x0;

    move-result-object v3

    iget-object v3, v3, Lm/r;->c:[B

    :goto_3c
    new-instance v4, Lm/x0;

    const/16 v5, 0x20

    invoke-static {v3, v2, v5}, Lm4/d;->q([BII)[B

    move-result-object v6

    invoke-direct {v4, v6}, Lm/r;-><init>([B)V

    invoke-virtual {v1, v4}, Lm/g;->a(Lm/f;)V

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyFactory;

    invoke-virtual {v4}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Ed25519"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_72

    new-instance v4, Lm/x0;

    new-array v6, v7, [B

    fill-array-data v6, :array_17e

    array-length v7, v3

    invoke-static {v3, v5, v7}, Lm4/d;->q([BII)[B

    move-result-object v3

    invoke-static {v6, v3}, Lm4/d;->j([B[B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lm/r;-><init>([B)V

    goto :goto_98

    :cond_72
    const-string v6, "Ed448"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    new-instance v4, Lm/x0;

    new-array v6, v7, [B

    fill-array-data v6, :array_184

    array-length v7, v3

    invoke-static {v3, v5, v7}, Lm4/d;->q([BII)[B

    move-result-object v3

    invoke-static {v6, v3}, Lm4/d;->j([B[B)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lm/r;-><init>([B)V

    goto :goto_98

    :cond_8e
    new-instance v4, Lm/x0;

    array-length v6, v3

    invoke-static {v3, v5, v6}, Lm4/d;->q([BII)[B

    move-result-object v3

    invoke-direct {v4, v3}, Lm/r;-><init>([B)V

    :goto_98
    invoke-virtual {v1, v4}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v1, -0x1

    iput v1, v3, Lm/a1;->q:I

    iget-object v4, v3, Lm/x;->c:[Lm/f;

    array-length v4, v4

    new-array v4, v4, [Ljava/security/PrivateKey;

    sget-object v5, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->pairings:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ll0/b;

    :goto_b0
    iget-object v6, v3, Lm/x;->c:[Lm/f;

    array-length v7, v6

    if-ge v2, v7, :cond_113

    aget-object v6, v6, v2

    instance-of v7, v6, Lm/r;

    if-eqz v7, :cond_f3

    new-instance v6, Lm/g;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Lm/g;-><init>(I)V

    iget-object v7, p1, Ld0/t;->c:Lm/l;

    invoke-virtual {v6, v7}, Lm/g;->a(Lm/f;)V

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Lm/g;->a(Lm/f;)V

    iget-object v7, v3, Lm/x;->c:[Lm/f;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lm/g;->a(Lm/f;)V

    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    new-instance v8, Lm/a1;

    invoke-direct {v8, v6}, Lm/x;-><init>(Lm/g;)V

    iput v1, v8, Lm/a1;->q:I

    invoke-static {v8}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object v6

    invoke-virtual {v6}, Lm/n;->getEncoded()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyFactory;

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    aput-object v6, v4, v2

    goto :goto_110

    :cond_f3
    invoke-static {v6}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v6

    new-instance v7, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {v6}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object v6

    invoke-virtual {v6}, Lm/n;->getEncoded()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/KeyFactory;

    invoke-virtual {v6, v7}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    aput-object v6, v4, v2

    :goto_110
    add-int/lit8 v2, v2, 0x1

    goto :goto_b0

    :cond_113
    new-instance p0, La2/c;

    invoke-direct {p0, v0, v4}, La2/c;-><init>(Lm/q;[Ljava/security/PrivateKey;)V
    :try_end_118
    .catch Ljava/security/GeneralSecurityException; {:try_start_36 .. :try_end_118} :catch_119

    return-object p0

    :catch_119
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_124
    :goto_124
    invoke-virtual {p1}, Ld0/t;->j()Lm/u;

    move-result-object p1

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/PrivateKey;

    :goto_132
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    if-eq v2, v1, :cond_176

    invoke-virtual {p1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v1

    invoke-static {v1}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object v1

    :try_start_144
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    iget-object v4, v1, Ld0/t;->d:Ll0/b;

    iget-object v4, v4, Ll0/b;->c:Lm/q;

    invoke-virtual {v4}, Lm/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Le2/b;->l(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    aput-object v1, v0, v2
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_161} :catch_164

    add-int/lit8 v2, v2, 0x1

    goto :goto_132

    :catch_164
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot decode generic composite: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_176
    new-instance p0, La2/c;

    sget-object p1, Lv1/c;->v:Lm/q;

    invoke-direct {p0, p1, v0}, La2/c;-><init>(Lm/q;[Ljava/security/PrivateKey;)V

    return-object p0

    :array_17e
    .array-data 1
        0x4t
        0x20t
    .end array-data

    nop

    :array_184
    .array-data 1
        0x4t
        0x39t
    .end array-data
.end method

.method public generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 11

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    if-nez v0, :cond_b

    new-instance v0, Le2/a;

    invoke-direct {v0}, Le2/a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    :cond_b
    iget-object v0, p1, Ll0/p0;->c:Ll0/b;

    iget-object p1, p1, Ll0/p0;->d:Lm/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    :try_start_14
    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object v2

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1c} :catch_1d

    goto :goto_22

    :catch_1d
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->split(Lm/q;Lm/b;)[[B

    move-result-object v1

    const/4 v2, 0x0

    :goto_22
    sget-object v3, Lv1/c;->u:Lm/q;

    invoke-virtual {v3, v0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_9e

    sget-object v3, Lv1/c;->v:Lm/q;

    invoke-virtual {v3, v0}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_9e

    :cond_34
    if-nez v2, :cond_38

    :try_start_36
    array-length p1, v1

    goto :goto_3c

    :cond_38
    invoke-virtual {v2}, Lm/x;->size()I

    move-result p1

    :goto_3c
    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeyFactoriesFromIdentifier(Lm/q;)Ljava/util/List;

    move-result-object v3

    new-array v5, p1, [Lm/b;

    move v6, v4

    :goto_43
    if-ge v6, p1, :cond_74

    if-eqz v2, :cond_68

    invoke-virtual {v2, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    instance-of v7, v7, Lm/x0;

    if-eqz v7, :cond_5f

    new-instance v7, Lm/p0;

    invoke-virtual {v2, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v8

    check-cast v8, Lm/x0;

    iget-object v8, v8, Lm/r;->c:[B

    invoke-direct {v7, v8, v4}, Lm/b;-><init>([BI)V

    aput-object v7, v5, v6

    goto :goto_71

    :cond_5f
    invoke-virtual {v2, v6}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    check-cast v7, Lm/p0;

    aput-object v7, v5, v6

    goto :goto_71

    :cond_68
    new-instance v7, Lm/p0;

    aget-object v8, v1, v6

    invoke-direct {v7, v8, v4}, Lm/b;-><init>([BI)V

    aput-object v7, v5, v6

    :goto_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_43

    :cond_74
    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->getKeysSpecs(Lm/q;[Lm/b;)[Ljava/security/spec/X509EncodedKeySpec;

    move-result-object p0

    new-array v1, p1, [Ljava/security/PublicKey;

    :goto_7a
    if-ge v4, p1, :cond_8d

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyFactory;

    aget-object v5, p0, v4

    invoke-virtual {v2, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    :cond_8d
    new-instance p0, La2/d;

    invoke-direct {p0, v0, v1}, La2/d;-><init>(Lm/q;[Ljava/security/PublicKey;)V
    :try_end_92
    .catch Ljava/security/GeneralSecurityException; {:try_start_36 .. :try_end_92} :catch_93

    return-object p0

    :catch_93
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9e
    :goto_9e
    invoke-virtual {p1}, Lm/b;->s()[B

    move-result-object p1

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/PublicKey;

    :goto_ac
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    if-eq v4, v1, :cond_ec

    invoke-virtual {p1, v4}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v1

    :try_start_ba
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->helper:Le2/b;

    iget-object v3, v1, Ll0/p0;->c:Ll0/b;

    iget-object v3, v3, Ll0/b;->c:Lm/q;

    invoke-virtual {v3}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le2/b;->l(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1}, Lm/n;->getEncoded()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    aput-object v1, v0, v4
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_d7} :catch_da

    add-int/lit8 v4, v4, 0x1

    goto :goto_ac

    :catch_da
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cannot decode generic composite: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_ec
    new-instance p0, La2/d;

    sget-object p1, Lv1/c;->v:Lm/q;

    invoke-direct {p0, p1, v0}, La2/d;-><init>(Lm/q;[Ljava/security/PublicKey;)V

    return-object p0
.end method

.method public split(Lm/q;Lm/b;)[[B
    .registers 6

    sget-object p0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/KeyFactorySpi;->componentKeySizes:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-virtual {p2}, Lm/b;->u()[B

    move-result-object p1

    const/4 p2, 0x0

    aget v0, p0, p2

    new-array v1, v0, [B

    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v2, v2, [B

    filled-new-array {v1, v2}, [[B

    move-result-object v1

    aget-object v2, v1, p2

    invoke-static {p1, p2, v2, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget p0, p0, p2

    const/4 v0, 0x1

    aget-object v0, v1, v0

    array-length v2, v0

    invoke-static {p1, p0, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
