.class public final Lv2/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashSet;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 177

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv2/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lv2/a;->b:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lv2/a;->c:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lv2/a;->d:Ljava/util/HashMap;

    sget-object v2, Ld0/r;->b:Lm/q;

    const-string v3, "MD2WITHRSAENCRYPTION"

    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v3, "MD2WITHRSA"

    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ld0/r;->f:Lm/q;

    const-string v4, "MD5WITHRSAENCRYPTION"

    invoke-static {v4, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v4, "MD5WITHRSA"

    invoke-static {v4, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v4, Ld0/r;->g:Lm/q;

    const-string v5, "SHA1WITHRSAENCRYPTION"

    invoke-static {v5, v4}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v5, "SHA1WITHRSA"

    invoke-static {v5, v4}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v5, Ld0/r;->o:Lm/q;

    const-string v6, "SHA224WITHRSAENCRYPTION"

    invoke-static {v6, v5}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v6, "SHA224WITHRSA"

    invoke-static {v6, v5}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v6, Ld0/r;->l:Lm/q;

    const-string v7, "SHA256WITHRSAENCRYPTION"

    invoke-static {v7, v6}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v7, "SHA256WITHRSA"

    invoke-static {v7, v6}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v7, Ld0/r;->m:Lm/q;

    const-string v8, "SHA384WITHRSAENCRYPTION"

    invoke-static {v8, v7}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v8, "SHA384WITHRSA"

    invoke-static {v8, v7}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ld0/r;->n:Lm/q;

    const-string v9, "SHA512WITHRSAENCRYPTION"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SHA512WITHRSA"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Ld0/r;->p:Lm/q;

    const-string v10, "SHA512(224)WITHRSAENCRYPTION"

    invoke-static {v10, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v10, "SHA512(224)WITHRSA"

    invoke-static {v10, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Ld0/r;->r:Lm/q;

    const-string v11, "SHA512(256)WITHRSAENCRYPTION"

    invoke-static {v11, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v11, "SHA512(256)WITHRSA"

    invoke-static {v11, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Ld0/r;->k:Lm/q;

    const-string v12, "SHA1WITHRSAANDMGF1"

    invoke-static {v12, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v13, "SHA224WITHRSAANDMGF1"

    invoke-static {v13, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHA256WITHRSAANDMGF1"

    invoke-static {v14, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v15, "SHA384WITHRSAANDMGF1"

    invoke-static {v15, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    move-object/from16 v16, v3

    const-string v3, "SHA512WITHRSAANDMGF1"

    invoke-static {v3, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    move-object/from16 v17, v2

    const-string v2, "SHA3-224WITHRSAANDMGF1"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    move-object/from16 v18, v2

    const-string v2, "SHA3-256WITHRSAANDMGF1"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    move-object/from16 v19, v2

    const-string v2, "SHA3-384WITHRSAANDMGF1"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    move-object/from16 v20, v2

    const-string v2, "SHA3-512WITHRSAANDMGF1"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lg0/b;->d:Lm/q;

    move-object/from16 v21, v2

    const-string v2, "RIPEMD160WITHRSAENCRYPTION"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "RIPEMD160WITHRSA"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lg0/b;->e:Lm/q;

    move-object/from16 v22, v3

    const-string v3, "RIPEMD128WITHRSAENCRYPTION"

    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v3, "RIPEMD128WITHRSA"

    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lg0/b;->f:Lm/q;

    move-object/from16 v23, v15

    const-string v15, "RIPEMD256WITHRSAENCRYPTION"

    invoke-static {v15, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v15, "RIPEMD256WITHRSA"

    invoke-static {v15, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v15, Lm0/m;->s1:Lm/q;

    move-object/from16 v24, v14

    const-string v14, "SHA1WITHDSA"

    invoke-static {v14, v15}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "DSAWITHSHA1"

    invoke-static {v14, v15}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lz/b;->V:Lm/q;

    move-object/from16 v25, v13

    const-string v13, "SHA224WITHDSA"

    invoke-static {v13, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v13, Lz/b;->W:Lm/q;

    move-object/from16 v26, v12

    const-string v12, "SHA256WITHDSA"

    invoke-static {v12, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lz/b;->X:Lm/q;

    move-object/from16 v27, v2

    const-string v2, "SHA384WITHDSA"

    invoke-static {v2, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lz/b;->Y:Lm/q;

    move-object/from16 v28, v3

    const-string v3, "SHA512WITHDSA"

    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->Z:Lm/q;

    move-object/from16 v29, v10

    const-string v10, "SHA3-224WITHDSA"

    invoke-static {v10, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Lz/b;->a0:Lm/q;

    move-object/from16 v30, v11

    const-string v11, "SHA3-256WITHDSA"

    invoke-static {v11, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lz/b;->b0:Lm/q;

    move-object/from16 v31, v6

    const-string v6, "SHA3-384WITHDSA"

    invoke-static {v6, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v6, Lz/b;->c0:Lm/q;

    move-object/from16 v32, v7

    const-string v7, "SHA3-512WITHDSA"

    invoke-static {v7, v6}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v7, Lz/b;->d0:Lm/q;

    move-object/from16 v33, v8

    const-string v8, "SHA3-224WITHECDSA"

    invoke-static {v8, v7}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->e0:Lm/q;

    move-object/from16 v34, v9

    const-string v9, "SHA3-256WITHECDSA"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lz/b;->f0:Lm/q;

    move-object/from16 v35, v5

    const-string v5, "SHA3-384WITHECDSA"

    invoke-static {v5, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v5, Lz/b;->g0:Lm/q;

    move-object/from16 v36, v1

    const-string v1, "SHA3-512WITHECDSA"

    invoke-static {v1, v5}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->h0:Lm/q;

    move-object/from16 v37, v4

    const-string v4, "SHA3-224WITHRSA"

    invoke-static {v4, v1}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v4, Lz/b;->i0:Lm/q;

    move-object/from16 v38, v5

    const-string v5, "SHA3-256WITHRSA"

    invoke-static {v5, v4}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v5, Lz/b;->j0:Lm/q;

    move-object/from16 v39, v6

    const-string v6, "SHA3-384WITHRSA"

    invoke-static {v6, v5}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v6, Lz/b;->k0:Lm/q;

    move-object/from16 v40, v7

    const-string v7, "SHA3-512WITHRSA"

    invoke-static {v7, v6}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v7, "SHA3-224WITHRSAENCRYPTION"

    invoke-static {v7, v1}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v7, "SHA3-256WITHRSAENCRYPTION"

    invoke-static {v7, v4}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v7, "SHA3-384WITHRSAENCRYPTION"

    invoke-static {v7, v5}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v7, "SHA3-512WITHRSAENCRYPTION"

    invoke-static {v7, v6}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v7, Lm0/m;->L0:Lm/q;

    move-object/from16 v41, v6

    const-string v6, "SHA1WITHECDSA"

    invoke-static {v6, v7}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v6, "ECDSAWITHSHA1"

    invoke-static {v6, v7}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v6, Lm0/m;->O0:Lm/q;

    move-object/from16 v42, v5

    const-string v5, "SHA224WITHECDSA"

    invoke-static {v5, v6}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v5, Lm0/m;->P0:Lm/q;

    move-object/from16 v43, v4

    const-string v4, "SHA256WITHECDSA"

    invoke-static {v4, v5}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v4, Lm0/m;->Q0:Lm/q;

    move-object/from16 v44, v1

    const-string v1, "SHA384WITHECDSA"

    invoke-static {v1, v4}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lm0/m;->R0:Lm/q;

    move-object/from16 v45, v8

    const-string v8, "SHA512WITHECDSA"

    invoke-static {v8, v1}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lr/a;->m:Lm/q;

    move-object/from16 v46, v9

    const-string v9, "GOST3411WITHGOST3410"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "GOST3411WITHGOST3410-94"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lr/a;->n:Lm/q;

    move-object/from16 v47, v8

    const-string v8, "GOST3411WITHECGOST3410"

    invoke-static {v8, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v8, "GOST3411WITHECGOST3410-2001"

    invoke-static {v8, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v8, "GOST3411WITHGOST3410-2001"

    invoke-static {v8, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Le0/a;->c:Lm/q;

    move-object/from16 v48, v9

    const-string v9, "GOST3411WITHECGOST3410-2012-256"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Le0/a;->d:Lm/q;

    move-object/from16 v49, v2

    const-string v2, "GOST3411WITHECGOST3410-2012-512"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "GOST3411WITHGOST3410-2012-256"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "GOST3411WITHGOST3410-2012-512"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "GOST3411-2012-256WITHGOST3410-2012-256"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "GOST3411-2012-512WITHGOST3410-2012-512"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "SHA1WITHCVC-ECDSA"

    move-object/from16 v50, v9

    sget-object v9, Ls/a;->a:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "SHA224WITHCVC-ECDSA"

    sget-object v9, Ls/a;->b:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "SHA256WITHCVC-ECDSA"

    sget-object v9, Ls/a;->c:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "SHA384WITHCVC-ECDSA"

    sget-object v9, Ls/a;->d:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "SHA512WITHCVC-ECDSA"

    sget-object v9, Ls/a;->e:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lo/a;->i:Lm/q;

    const-string v9, "SHA3-512WITHSPHINCS256"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lo/a;->h:Lm/q;

    move-object/from16 v51, v2

    const-string v2, "SHA512WITHSPHINCS256"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "SHA1WITHPLAIN-ECDSA"

    move-object/from16 v52, v9

    sget-object v9, Lp/a;->a:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "RIPEMD160WITHPLAIN-ECDSA"

    sget-object v9, Lp/a;->f:Lm/q;

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lp/a;->b:Lm/q;

    const-string v9, "SHA224WITHPLAIN-ECDSA"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lp/a;->c:Lm/q;

    move-object/from16 v53, v8

    const-string v8, "SHA256WITHPLAIN-ECDSA"

    invoke-static {v8, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lp/a;->d:Lm/q;

    move-object/from16 v54, v2

    const-string v2, "SHA384WITHPLAIN-ECDSA"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lp/a;->e:Lm/q;

    move-object/from16 v55, v8

    const-string v8, "SHA512WITHPLAIN-ECDSA"

    invoke-static {v8, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lp/a;->g:Lm/q;

    move-object/from16 v56, v2

    const-string v2, "SHA3-224WITHPLAIN-ECDSA"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lp/a;->h:Lm/q;

    move-object/from16 v57, v8

    const-string v8, "SHA3-256WITHPLAIN-ECDSA"

    invoke-static {v8, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lp/a;->i:Lm/q;

    move-object/from16 v58, v2

    const-string v2, "SHA3-384WITHPLAIN-ECDSA"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lp/a;->j:Lm/q;

    move-object/from16 v59, v8

    const-string v8, "SHA3-512WITHPLAIN-ECDSA"

    invoke-static {v8, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lt/a;->a:Lm/q;

    move-object/from16 v60, v2

    const-string v2, "ED25519"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lt/a;->b:Lm/q;

    move-object/from16 v61, v8

    const-string v8, "ED448"

    invoke-static {v8, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ll0/e1;->z0:Lm/q;

    move-object/from16 v62, v2

    const-string v2, "SHAKE128WITHRSAPSS"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Ll0/e1;->A0:Lm/q;

    move-object/from16 v63, v9

    const-string v9, "SHAKE256WITHRSAPSS"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SHAKE128WITHRSASSA-PSS"

    invoke-static {v9, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SHAKE256WITHRSASSA-PSS"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Ll0/e1;->B0:Lm/q;

    move-object/from16 v64, v2

    const-string v2, "SHAKE128WITHECDSA"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Ll0/e1;->C0:Lm/q;

    move-object/from16 v65, v8

    const-string v8, "SHAKE256WITHECDSA"

    invoke-static {v8, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lu/b;->r:Lm/q;

    move-object/from16 v66, v2

    const-string v2, "SHA256WITHSM2"

    invoke-static {v2, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lu/b;->q:Lm/q;

    move-object/from16 v67, v9

    const-string v9, "SM3WITHSM2"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lo/a;->k:Lm/q;

    move-object/from16 v68, v2

    const-string v2, "SHA256WITHXMSS"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lo/a;->l:Lm/q;

    move-object/from16 v69, v8

    const-string v8, "SHA512WITHXMSS"

    invoke-static {v8, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->s:Lm/q;

    move-object/from16 v70, v3

    const-string v3, "SHAKE128WITHXMSS"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->t:Lm/q;

    move-object/from16 v71, v10

    const-string v10, "SHAKE256WITHXMSS"

    invoke-static {v10, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v10, "SHAKE128(512)WITHXMSS"

    move-object/from16 v72, v11

    sget-object v11, Lo/a;->m:Lm/q;

    invoke-static {v10, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v10, "SHAKE256(1024)WITHXMSS"

    sget-object v11, Lo/a;->n:Lm/q;

    invoke-static {v10, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Lo/a;->v:Lm/q;

    const-string v11, "SHA256WITHXMSSMT"

    invoke-static {v11, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lo/a;->w:Lm/q;

    move-object/from16 v73, v12

    const-string v12, "SHA512WITHXMSSMT"

    invoke-static {v12, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->D:Lm/q;

    move-object/from16 v74, v13

    const-string v13, "SHAKE128WITHXMSSMT"

    invoke-static {v13, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v13, Lo/a;->E:Lm/q;

    move-object/from16 v75, v14

    const-string v14, "SHAKE256WITHXMSSMT"

    invoke-static {v14, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHA256WITHXMSS-SHA256"

    invoke-static {v14, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHA512WITHXMSS-SHA512"

    invoke-static {v14, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHAKE128WITHXMSS-SHAKE128"

    invoke-static {v14, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHAKE256WITHXMSS-SHAKE256"

    invoke-static {v14, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHA256WITHXMSSMT-SHA256"

    invoke-static {v14, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHA512WITHXMSSMT-SHA512"

    invoke-static {v14, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHAKE128WITHXMSSMT-SHAKE128"

    invoke-static {v14, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHAKE256WITHXMSSMT-SHAKE256"

    invoke-static {v14, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v14, "SHAKE128(512)WITHXMSSMT-SHAKE128"

    move-object/from16 v76, v11

    sget-object v11, Lo/a;->x:Lm/q;

    invoke-static {v14, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v11, "SHAKE256(1024)WITHXMSSMT-SHAKE256"

    sget-object v14, Lo/a;->y:Lm/q;

    invoke-static {v11, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Ld0/r;->f0:Lm/q;

    const-string v14, "LMS"

    invoke-static {v14, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lw/a;->a:Lm/q;

    move-object/from16 v77, v12

    const-string v12, "XMSS"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->o:Lm/q;

    move-object/from16 v78, v14

    const-string v14, "XMSS-SHA256"

    invoke-static {v14, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lo/a;->p:Lm/q;

    move-object/from16 v79, v12

    const-string v12, "XMSS-SHA512"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->q:Lm/q;

    move-object/from16 v80, v14

    const-string v14, "XMSS-SHAKE128"

    invoke-static {v14, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lo/a;->r:Lm/q;

    move-object/from16 v81, v12

    const-string v12, "XMSS-SHAKE256"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lw/a;->b:Lm/q;

    move-object/from16 v82, v14

    const-string v14, "XMSSMT"

    invoke-static {v14, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lo/a;->z:Lm/q;

    move-object/from16 v83, v12

    const-string v12, "XMSSMT-SHA256"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->A:Lm/q;

    move-object/from16 v84, v14

    const-string v14, "XMSSMT-SHA512"

    invoke-static {v14, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lo/a;->B:Lm/q;

    move-object/from16 v85, v12

    const-string v12, "XMSSMT-SHAKE128"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->C:Lm/q;

    move-object/from16 v86, v14

    const-string v14, "XMSSMT-SHAKE256"

    invoke-static {v14, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lo/a;->H:Lm/q;

    move-object/from16 v87, v12

    const-string v12, "SPHINCS+"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v12, "SPHINCSPLUS"

    invoke-static {v12, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->u0:Lm/q;

    move-object/from16 v88, v13

    const-string v13, "SPHINCS+-SHA2-128S"

    invoke-static {v13, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v13, Lo/a;->t0:Lm/q;

    move-object/from16 v89, v2

    const-string v2, "SPHINCS+-SHA2-128F"

    invoke-static {v2, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lo/a;->w0:Lm/q;

    move-object/from16 v90, v3

    const-string v3, "SPHINCS+-SHA2-192S"

    invoke-static {v3, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->v0:Lm/q;

    move-object/from16 v91, v8

    const-string v8, "SPHINCS+-SHA2-192F"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->y0:Lm/q;

    move-object/from16 v92, v10

    const-string v10, "SPHINCS+-SHA2-256S"

    invoke-static {v10, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Lo/a;->x0:Lm/q;

    move-object/from16 v93, v9

    const-string v9, "SPHINCS+-SHA2-256F"

    invoke-static {v9, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lo/a;->A0:Lm/q;

    move-object/from16 v94, v11

    const-string v11, "SPHINCS+-SHAKE-128S"

    invoke-static {v11, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lo/a;->z0:Lm/q;

    move-object/from16 v95, v10

    const-string v10, "SPHINCS+-SHAKE-128F"

    invoke-static {v10, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Lo/a;->C0:Lm/q;

    move-object/from16 v96, v3

    const-string v3, "SPHINCS+-SHAKE-192S"

    invoke-static {v3, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->B0:Lm/q;

    move-object/from16 v97, v8

    const-string v8, "SPHINCS+-SHAKE-192F"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->E0:Lm/q;

    move-object/from16 v98, v3

    const-string v3, "SPHINCS+-SHAKE-256S"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->D0:Lm/q;

    move-object/from16 v99, v8

    const-string v8, "SPHINCS+-SHAKE-256F"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->M:Lm/q;

    move-object/from16 v100, v3

    const-string v3, "SPHINCS+-HARAKA-128S-ROBUST"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->N:Lm/q;

    move-object/from16 v101, v10

    const-string v10, "SPHINCS+-HARAKA-128F-ROBUST"

    invoke-static {v10, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Lo/a;->S:Lm/q;

    move-object/from16 v102, v2

    const-string v2, "SPHINCS+-HARAKA-192S-ROBUST"

    invoke-static {v2, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lo/a;->T:Lm/q;

    move-object/from16 v103, v9

    const-string v9, "SPHINCS+-HARAKA-192F-ROBUST"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lo/a;->Y:Lm/q;

    move-object/from16 v104, v11

    const-string v11, "SPHINCS+-HARAKA-256S-ROBUST"

    invoke-static {v11, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lo/a;->Z:Lm/q;

    move-object/from16 v105, v13

    const-string v13, "SPHINCS+-HARAKA-256F-ROBUST"

    invoke-static {v13, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v13, "SPHINCS+-HARAKA-128S-SIMPLE"

    move-object/from16 v106, v9

    sget-object v9, Lo/a;->e0:Lm/q;

    invoke-static {v13, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SPHINCS+-HARAKA-128F-SIMPLE"

    sget-object v13, Lo/a;->f0:Lm/q;

    invoke-static {v9, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SPHINCS+-HARAKA-192S-SIMPLE"

    sget-object v13, Lo/a;->k0:Lm/q;

    invoke-static {v9, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SPHINCS+-HARAKA-192F-SIMPLE"

    sget-object v13, Lo/a;->l0:Lm/q;

    invoke-static {v9, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SPHINCS+-HARAKA-256S-SIMPLE"

    sget-object v13, Lo/a;->q0:Lm/q;

    invoke-static {v9, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v9, "SPHINCS+-HARAKA-256F-SIMPLE"

    sget-object v13, Lo/a;->r0:Lm/q;

    invoke-static {v9, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lz/b;->l0:Lm/q;

    const-string v13, "DILITHIUM2"

    invoke-static {v13, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v13, Lz/b;->m0:Lm/q;

    move-object/from16 v107, v11

    const-string v11, "DILITHIUM3"

    invoke-static {v11, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lz/b;->n0:Lm/q;

    move-object/from16 v108, v12

    const-string v12, "DILITHIUM5"

    invoke-static {v12, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->g1:Lm/q;

    move-object/from16 v109, v2

    const-string v2, "DILITHIUM2-AES"

    invoke-static {v2, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lo/a;->h1:Lm/q;

    move-object/from16 v110, v12

    const-string v12, "DILITHIUM3-AES"

    invoke-static {v12, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lo/a;->i1:Lm/q;

    move-object/from16 v111, v2

    const-string v2, "DILITHIUM5-AES"

    invoke-static {v2, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "ML-DSA-44"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "ML-DSA-65"

    invoke-static {v2, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    const-string v2, "ML-DSA-87"

    invoke-static {v2, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lz/b;->o0:Lm/q;

    move-object/from16 v112, v9

    const-string v9, "ML-DSA-44-WITH-SHA512"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lz/b;->p0:Lm/q;

    move-object/from16 v113, v2

    const-string v2, "ML-DSA-65-WITH-SHA512"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lz/b;->q0:Lm/q;

    move-object/from16 v114, v9

    const-string v9, "ML-DSA-87-WITH-SHA512"

    invoke-static {v9, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v9, Lz/b;->r0:Lm/q;

    move-object/from16 v115, v2

    const-string v2, "SLH-DSA-SHA2-128S"

    invoke-static {v2, v9}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v2, Lz/b;->s0:Lm/q;

    move-object/from16 v116, v11

    const-string v11, "SLH-DSA-SHA2-128F"

    invoke-static {v11, v2}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v11, Lz/b;->t0:Lm/q;

    move-object/from16 v117, v13

    const-string v13, "SLH-DSA-SHA2-192S"

    invoke-static {v13, v11}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v13, Lz/b;->u0:Lm/q;

    move-object/from16 v118, v12

    const-string v12, "SLH-DSA-SHA2-192F"

    invoke-static {v12, v13}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v12, Lz/b;->v0:Lm/q;

    move-object/from16 v119, v10

    const-string v10, "SLH-DSA-SHA2-256S"

    invoke-static {v10, v12}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v10, Lz/b;->w0:Lm/q;

    move-object/from16 v120, v3

    const-string v3, "SLH-DSA-SHA2-256F"

    invoke-static {v3, v10}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->x0:Lm/q;

    move-object/from16 v121, v8

    const-string v8, "SLH-DSA-SHAKE-128S"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->y0:Lm/q;

    move-object/from16 v122, v14

    const-string v14, "SLH-DSA-SHAKE-128F"

    invoke-static {v14, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v14, Lz/b;->z0:Lm/q;

    move-object/from16 v123, v3

    const-string v3, "SLH-DSA-SHAKE-192S"

    invoke-static {v3, v14}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->A0:Lm/q;

    move-object/from16 v124, v8

    const-string v8, "SLH-DSA-SHAKE-192F"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->B0:Lm/q;

    move-object/from16 v125, v3

    const-string v3, "SLH-DSA-SHAKE-256S"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->C0:Lm/q;

    move-object/from16 v126, v8

    const-string v8, "SLH-DSA-SHAKE-256F"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->D0:Lm/q;

    move-object/from16 v127, v3

    const-string v3, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->E0:Lm/q;

    move-object/from16 v128, v8

    const-string v8, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->F0:Lm/q;

    move-object/from16 v129, v3

    const-string v3, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->G0:Lm/q;

    move-object/from16 v130, v8

    const-string v8, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->H0:Lm/q;

    move-object/from16 v131, v3

    const-string v3, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->I0:Lm/q;

    move-object/from16 v132, v8

    const-string v8, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->J0:Lm/q;

    move-object/from16 v133, v3

    const-string v3, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->K0:Lm/q;

    move-object/from16 v134, v8

    const-string v8, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->L0:Lm/q;

    move-object/from16 v135, v3

    const-string v3, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->M0:Lm/q;

    move-object/from16 v136, v8

    const-string v8, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lz/b;->N0:Lm/q;

    move-object/from16 v137, v3

    const-string v3, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lz/b;->O0:Lm/q;

    move-object/from16 v138, v8

    const-string v8, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->a1:Lm/q;

    move-object/from16 v139, v3

    const-string v3, "FALCON-512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->b1:Lm/q;

    move-object/from16 v140, v8

    const-string v8, "FALCON-1024"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->T0:Lm/q;

    move-object/from16 v141, v3

    const-string v3, "PICNIC"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->U0:Lm/q;

    move-object/from16 v142, v8

    const-string v8, "SHA512WITHPICNIC"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lo/a;->W0:Lm/q;

    move-object/from16 v143, v3

    const-string v3, "SHA3-512WITHPICNIC"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lo/a;->V0:Lm/q;

    move-object/from16 v144, v8

    const-string v8, "SHAKE256WITHPICNIC"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->b:Lm/q;

    move-object/from16 v145, v3

    const-string v3, "HASHMLDSA44-RSA2048-PSS-SHA256"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->c:Lm/q;

    move-object/from16 v146, v8

    const-string v8, "HASHMLDSA44-RSA2048-PKCS15-SHA256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->d:Lm/q;

    move-object/from16 v147, v3

    const-string v3, "HASHMLDSA44-ED25519-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->e:Lm/q;

    move-object/from16 v148, v8

    const-string v8, "HASHMLDSA44-ECDSA-P256-SHA256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->f:Lm/q;

    move-object/from16 v149, v3

    const-string v3, "HASHMLDSA65-RSA3072-PSS-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->g:Lm/q;

    move-object/from16 v150, v8

    const-string v8, "HASHMLDSA65-RSA3072-PKCS15-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->h:Lm/q;

    move-object/from16 v151, v3

    const-string v3, "HASHMLDSA65-RSA4096-PSS-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->i:Lm/q;

    move-object/from16 v152, v8

    const-string v8, "HASHMLDSA65-RSA4096-PKCS15-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->j:Lm/q;

    move-object/from16 v153, v3

    const-string v3, "HASHMLDSA65-ECDSA-P384-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->k:Lm/q;

    move-object/from16 v154, v8

    const-string v8, "HASHMLDSA65-ECDSA-BRAINPOOLP256R1-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->l:Lm/q;

    move-object/from16 v155, v3

    const-string v3, "HASHMLDSA65-ED25519-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->m:Lm/q;

    move-object/from16 v156, v8

    const-string v8, "HASHMLDSA87-ECDSA-P384-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Ly/a;->n:Lm/q;

    move-object/from16 v157, v3

    const-string v3, "HASHMLDSA87-ECDSA-BRAINPOOLP384R1-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Ly/a;->o:Lm/q;

    move-object/from16 v158, v8

    const-string v8, "HASHMLDSA87-ED448-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->a:Lm/q;

    move-object/from16 v159, v3

    const-string v3, "MLDSA44-RSA2048-PSS-SHA256"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->b:Lm/q;

    move-object/from16 v160, v8

    const-string v8, "MLDSA44-RSA2048-PKCS15-SHA256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->c:Lm/q;

    move-object/from16 v161, v3

    const-string v3, "MLDSA44-ED25519-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->d:Lm/q;

    move-object/from16 v162, v8

    const-string v8, "MLDSA44-ECDSA-P256-SHA256"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->e:Lm/q;

    move-object/from16 v163, v3

    const-string v3, "MLDSA65-RSA3072-PSS-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->f:Lm/q;

    move-object/from16 v164, v8

    const-string v8, "MLDSA65-RSA3072-PKCS15-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->g:Lm/q;

    move-object/from16 v165, v3

    const-string v3, "MLDSA65-RSA4096-PSS-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->h:Lm/q;

    move-object/from16 v166, v8

    const-string v8, "MLDSA65-RSA4096-PKCS15-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->i:Lm/q;

    move-object/from16 v167, v3

    const-string v3, "MLDSA65-ECDSA-P256-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->j:Lm/q;

    move-object/from16 v168, v8

    const-string v8, "MLDSA65-ECDSA-P384-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->k:Lm/q;

    move-object/from16 v169, v3

    const-string v3, "MLDSA65-ECDSA-BRAINPOOLP256R1-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->l:Lm/q;

    move-object/from16 v170, v8

    const-string v8, "MLDSA65-ED25519-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->m:Lm/q;

    move-object/from16 v171, v3

    const-string v3, "MLDSA87-ECDSA-P384-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->n:Lm/q;

    move-object/from16 v172, v8

    const-string v8, "MLDSA87-ECDSA-BRAINPOOLP384R1-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->o:Lm/q;

    move-object/from16 v173, v3

    const-string v3, "MLDSA87-ED448-SHAKE256"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->q:Lm/q;

    move-object/from16 v174, v8

    const-string v8, "MLDSA87-RSA4096-PSS-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v8, Lv/a;->r:Lm/q;

    move-object/from16 v175, v3

    const-string v3, "MLDSA87-ECDSA-P521-SHA512"

    invoke-static {v3, v8}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    sget-object v3, Lv/a;->p:Lm/q;

    move-object/from16 v176, v8

    const-string v8, "MLDSA87-RSA3072-PSS-SHA512"

    invoke-static {v8, v3}, Lv2/a;->a(Ljava/lang/String;Lm/q;)V

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v5, v4, v1, v15}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    sget-object v1, Lc0/a;->b:Lm/q;

    move-object/from16 v6, v73

    move-object/from16 v5, v74

    move-object/from16 v4, v75

    invoke-static {v0, v1, v4, v5, v6}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v1, v49

    move-object/from16 v7, v70

    move-object/from16 v8, v71

    move-object/from16 v15, v72

    invoke-static {v0, v1, v7, v8, v15}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v15, v39

    move-object/from16 v8, v40

    move-object/from16 v7, v45

    move-object/from16 v1, v46

    invoke-static {v0, v15, v8, v7, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v1, v38

    move-object/from16 v7, v54

    move-object/from16 v15, v55

    move-object/from16 v8, v63

    invoke-static {v0, v1, v7, v8, v15}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v7, v56

    move-object/from16 v8, v57

    move-object/from16 v15, v58

    move-object/from16 v1, v59

    invoke-static {v0, v7, v8, v15, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v1, v47

    move-object/from16 v7, v48

    move-object/from16 v8, v53

    move-object/from16 v15, v60

    invoke-static {v0, v15, v1, v7, v8}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v15, v50

    move-object/from16 v8, v51

    move-object/from16 v7, v52

    invoke-static {v0, v15, v7, v8, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    invoke-static {v0, v2, v11, v13, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v7, v123

    move-object/from16 v8, v124

    invoke-static {v0, v10, v7, v8, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v50, v10

    move-object/from16 v47, v14

    move-object/from16 v14, v125

    move-object/from16 v8, v126

    move-object/from16 v7, v127

    move-object/from16 v10, v129

    invoke-static {v0, v14, v8, v7, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v10, v128

    move-object/from16 v7, v130

    move-object/from16 v8, v131

    move-object/from16 v14, v132

    invoke-static {v0, v10, v7, v8, v14}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v14, v133

    move-object/from16 v8, v134

    move-object/from16 v7, v135

    move-object/from16 v10, v136

    invoke-static {v0, v14, v8, v7, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v10, v122

    move-object/from16 v7, v137

    move-object/from16 v8, v138

    move-object/from16 v14, v139

    invoke-static {v0, v7, v8, v14, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    sget-object v10, Lo/a;->I:Lm/q;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v14, Lo/a;->J:Lm/q;

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v8, Lo/a;->K:Lm/q;

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lo/a;->L:Lm/q;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v51, v12

    move-object/from16 v12, v121

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v120

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v12, Lo/a;->O:Lm/q;

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v52, v13

    sget-object v13, Lo/a;->P:Lm/q;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v54, v11

    sget-object v11, Lo/a;->Q:Lm/q;

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v55, v2

    sget-object v2, Lo/a;->R:Lm/q;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v56, v9

    move-object/from16 v9, v119

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v109

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v9, Lo/a;->U:Lm/q;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v57, v9

    sget-object v9, Lo/a;->V:Lm/q;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v58, v9

    sget-object v9, Lo/a;->W:Lm/q;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v59, v9

    sget-object v9, Lo/a;->X:Lm/q;

    move-object/from16 v60, v2

    move-object/from16 v63, v11

    move-object/from16 v73, v13

    move-object/from16 v11, v106

    move-object/from16 v13, v107

    move-object/from16 v2, v108

    invoke-static {v0, v9, v11, v13, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v74, v9

    move-object/from16 v13, v102

    move-object/from16 v2, v103

    move-object/from16 v9, v104

    move-object/from16 v11, v105

    invoke-static {v0, v11, v2, v9, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v13, v96

    move-object/from16 v9, v97

    move-object/from16 v11, v98

    move-object/from16 v2, v101

    invoke-static {v0, v13, v2, v11, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v9, v95

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v99

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v100

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v9, Lo/a;->c1:Lm/q;

    move-object/from16 v11, v110

    move-object/from16 v2, v111

    move-object/from16 v13, v118

    invoke-static {v0, v9, v11, v2, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v94

    move-object/from16 v9, v112

    move-object/from16 v13, v116

    move-object/from16 v11, v117

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v113

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v114

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v115

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lo/a;->X0:Lm/q;

    move-object/from16 v13, v140

    move-object/from16 v11, v141

    move-object/from16 v9, v142

    invoke-static {v0, v2, v13, v11, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v93

    move-object/from16 v9, v143

    move-object/from16 v11, v144

    move-object/from16 v13, v145

    invoke-static {v0, v9, v11, v13, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v89

    move-object/from16 v11, v90

    move-object/from16 v9, v91

    move-object/from16 v13, v92

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v76

    move-object/from16 v9, v77

    move-object/from16 v11, v88

    invoke-static {v0, v2, v9, v11, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v79

    move-object/from16 v9, v80

    move-object/from16 v13, v81

    invoke-static {v0, v11, v2, v9, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v82

    move-object/from16 v9, v84

    move-object/from16 v11, v85

    move-object/from16 v13, v86

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v87

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v78

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v83

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lo/a;->F:Lm/q;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lo/a;->G:Lm/q;

    move-object/from16 v9, v61

    move-object/from16 v13, v68

    move-object/from16 v11, v69

    invoke-static {v0, v2, v11, v13, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v62

    move-object/from16 v13, v64

    move-object/from16 v9, v65

    move-object/from16 v11, v67

    invoke-static {v0, v2, v9, v13, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v66

    move-object/from16 v11, v146

    move-object/from16 v13, v147

    move-object/from16 v9, v148

    invoke-static {v0, v2, v11, v13, v9}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v9, v149

    move-object/from16 v11, v150

    move-object/from16 v13, v151

    move-object/from16 v2, v152

    invoke-static {v0, v9, v11, v13, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v153

    move-object/from16 v9, v154

    move-object/from16 v11, v155

    move-object/from16 v13, v156

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v157

    move-object/from16 v9, v158

    move-object/from16 v11, v159

    move-object/from16 v13, v160

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v161

    move-object/from16 v9, v162

    move-object/from16 v11, v163

    move-object/from16 v13, v164

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v165

    move-object/from16 v9, v166

    move-object/from16 v11, v167

    move-object/from16 v13, v168

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v169

    move-object/from16 v9, v170

    move-object/from16 v11, v171

    move-object/from16 v13, v172

    invoke-static {v0, v2, v9, v11, v13}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v173

    move-object/from16 v9, v174

    move-object/from16 v11, v175

    invoke-static {v0, v2, v9, v3, v11}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v2, v176

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v35

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v31

    move-object/from16 v11, v32

    move-object/from16 v13, v33

    move-object/from16 v31, v12

    move-object/from16 v12, v34

    invoke-static {v0, v9, v11, v13, v12}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v32, v7

    move-object/from16 v7, v29

    move-object/from16 v29, v10

    move-object/from16 v10, v28

    move-object/from16 v28, v14

    move-object/from16 v14, v27

    move-object/from16 v27, v8

    move-object/from16 v8, v30

    invoke-static {v0, v7, v14, v8, v10}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->k(Ljava/util/HashSet;Lm/q;Lm/q;Lm/q;Lm/q;)V

    move-object/from16 v30, v15

    move-object/from16 v15, v44

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v33, v1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v34, v10

    move-object/from16 v10, v42

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v35, v8

    move-object/from16 v8, v41

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ll0/b;

    move-object/from16 v36, v14

    sget-object v14, Lc0/a;->a:Lm/q;

    sget-object v2, Lm/v0;->d:Lm/v0;

    invoke-direct {v0, v14, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v41, v14

    const/16 v14, 0x14

    invoke-static {v14, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v14, v26

    invoke-static {v14, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v14, Lz/b;->d:Lm/q;

    invoke-direct {v0, v14, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v26, v8

    const/16 v8, 0x1c

    invoke-static {v8, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v8, v25

    invoke-static {v8, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v8, Lz/b;->a:Lm/q;

    invoke-direct {v0, v8, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v25, v10

    const/16 v10, 0x20

    invoke-static {v10, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v10, v24

    invoke-static {v10, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v10, Lz/b;->b:Lm/q;

    invoke-direct {v0, v10, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v24, v1

    const/16 v1, 0x30

    invoke-static {v1, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-static {v1, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v1, Lz/b;->c:Lm/q;

    invoke-direct {v0, v1, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v23, v15

    const/16 v15, 0x40

    invoke-static {v15, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v15, v22

    invoke-static {v15, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v15, Lz/b;->g:Lm/q;

    invoke-direct {v0, v15, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v22, v15

    const/16 v15, 0x1c

    invoke-static {v15, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v15, v18

    invoke-static {v15, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v15, Lz/b;->h:Lm/q;

    invoke-direct {v0, v15, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v18, v15

    const/16 v15, 0x20

    invoke-static {v15, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v15, v19

    invoke-static {v15, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v15, Lz/b;->i:Lm/q;

    invoke-direct {v0, v15, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    move-object/from16 v19, v15

    const/16 v15, 0x30

    invoke-static {v15, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v15, v20

    invoke-static {v15, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    new-instance v0, Ll0/b;

    sget-object v15, Lz/b;->j:Lm/q;

    invoke-direct {v0, v15, v2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    const/16 v2, 0x40

    invoke-static {v2, v0}, Lv2/a;->d(ILl0/b;)Ld0/y;

    move-result-object v0

    move-object/from16 v2, v21

    invoke-static {v2, v0}, Lv2/a;->c(Ljava/lang/String;Ld0/y;)V

    invoke-static {v3, v14}, Lv2/a;->b(Lm/q;Lm/q;)V

    invoke-static {v9, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    invoke-static {v11, v10}, Lv2/a;->b(Lm/q;Lm/q;)V

    invoke-static {v13, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lz/b;->e:Lm/q;

    invoke-static {v12, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lz/b;->f:Lm/q;

    invoke-static {v7, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    invoke-static {v4, v14}, Lv2/a;->b(Lm/q;Lm/q;)V

    invoke-static {v5, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    invoke-static {v6, v10}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v0, v49

    invoke-static {v0, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v0, v22

    move-object/from16 v7, v70

    invoke-static {v7, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v18

    move-object/from16 v2, v71

    invoke-static {v2, v3}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v4, v19

    move-object/from16 v2, v72

    invoke-static {v2, v4}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v39

    invoke-static {v2, v15}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v40

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v45

    invoke-static {v7, v3}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v46

    invoke-static {v2, v4}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v38

    invoke-static {v2, v15}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v23

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v0, v24

    invoke-static {v0, v3}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v10, v25

    invoke-static {v10, v4}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v0, v26

    invoke-static {v0, v15}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Ld0/r;->H:Lm/q;

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Ld0/r;->e:Lm/q;

    sget-object v2, Ld0/r;->I:Lm/q;

    invoke-static {v0, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Ld0/r;->J:Lm/q;

    move-object/from16 v2, v16

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v37

    move-object/from16 v0, v41

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lg0/b;->b:Lm/q;

    move-object/from16 v14, v36

    invoke-static {v14, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lg0/b;->a:Lm/q;

    move-object/from16 v2, v35

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lg0/b;->c:Lm/q;

    move-object/from16 v10, v34

    invoke-static {v10, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lr/a;->a:Lm/q;

    move-object/from16 v2, v33

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v48

    invoke-static {v7, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Le0/a;->a:Lm/q;

    move-object/from16 v2, v53

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Le0/a;->b:Lm/q;

    move-object/from16 v15, v30

    invoke-static {v15, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v0, v29

    invoke-static {v0, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v0, v28

    invoke-static {v0, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v0, Lz/b;->l:Lm/q;

    move-object/from16 v2, v27

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v32

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v31

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v73

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v63

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v60

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v57

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v58

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v59

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v74

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->a0:Lm/q;

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->b0:Lm/q;

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->c0:Lm/q;

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->d0:Lm/q;

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->g0:Lm/q;

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->h0:Lm/q;

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->i0:Lm/q;

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->j0:Lm/q;

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->m0:Lm/q;

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->n0:Lm/q;

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->o0:Lm/q;

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lo/a;->p0:Lm/q;

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v108

    invoke-static {v2, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v11, v105

    invoke-static {v11, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v103

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v9, v104

    invoke-static {v9, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v13, v102

    invoke-static {v13, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v13, v96

    invoke-static {v13, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v2, v101

    invoke-static {v2, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v11, v98

    invoke-static {v11, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v9, v97

    invoke-static {v9, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v9, v95

    invoke-static {v9, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v9, v99

    invoke-static {v9, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v9, v100

    invoke-static {v9, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v11, v69

    invoke-static {v11, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lu/b;->o:Lm/q;

    move-object/from16 v13, v68

    invoke-static {v13, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    sget-object v2, Lz/b;->k:Lm/q;

    move-object/from16 v9, v65

    invoke-static {v9, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v13, v64

    invoke-static {v13, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v11, v67

    invoke-static {v11, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v66

    invoke-static {v3, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v9, v112

    invoke-static {v9, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v11, v117

    invoke-static {v11, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v13, v116

    invoke-static {v13, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v113

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v114

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v115

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v56

    invoke-static {v3, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v55

    invoke-static {v3, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v54

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v52

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v51

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v50

    invoke-static {v3, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v123

    invoke-static {v7, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v124

    invoke-static {v3, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v47

    invoke-static {v3, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v14, v125

    invoke-static {v14, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v3, v126

    invoke-static {v3, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v127

    invoke-static {v7, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v10, v129

    invoke-static {v10, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v10, v128

    invoke-static {v10, v8}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v130

    invoke-static {v7, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v8, v131

    invoke-static {v8, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v14, v132

    invoke-static {v14, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v14, v133

    invoke-static {v14, v1}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v8, v134

    invoke-static {v8, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v135

    invoke-static {v7, v2}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v10, v136

    invoke-static {v10, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v7, v137

    invoke-static {v7, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v8, v138

    invoke-static {v8, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    move-object/from16 v14, v139

    invoke-static {v14, v0}, Lv2/a;->b(Lm/q;Lm/q;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lm/q;)V
    .registers 4

    sget-object v0, Lv2/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algorithmName already present in addAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lm/q;Lm/q;)V
    .registers 4

    sget-object v0, Lv2/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "signatureOid already present in addDigestOid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ld0/y;)V
    .registers 4

    sget-object v0, Lv2/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algorithmName already present in addParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(ILl0/b;)Ld0/y;
    .registers 7

    new-instance v0, Ld0/y;

    new-instance v1, Ll0/b;

    sget-object v2, Ld0/r;->i:Lm/q;

    invoke-direct {v1, v2, p1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    new-instance v2, Lm/l;

    int-to-long v3, p0

    invoke-direct {v2, v3, v4}, Lm/l;-><init>(J)V

    sget-object p0, Ld0/y;->B1:Lm/l;

    invoke-direct {v0, p1, v1, v2, p0}, Ld0/y;-><init>(Ll0/b;Ll0/b;Lm/l;Lm/l;)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ll0/b;
    .registers 3

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lv2/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    if-eqz v1, :cond_2e

    sget-object p0, Lv2/a;->b:Ljava/util/HashSet;

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    new-instance p0, Ll0/b;

    invoke-direct {p0, v1}, Ll0/b;-><init>(Lm/q;)V

    return-object p0

    :cond_1c
    sget-object p0, Lv2/a;->c:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/f;

    if-nez p0, :cond_28

    sget-object p0, Lm/v0;->d:Lm/v0;

    :cond_28
    new-instance v0, Ll0/b;

    invoke-direct {v0, v1, p0}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown signature type requested: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
