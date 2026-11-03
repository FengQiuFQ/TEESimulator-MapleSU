.class public Lorg/bouncycastle/jcajce/provider/util/DigestFactory;
.super Ljava/lang/Object;


# static fields
.field private static md5:Ljava/util/Set;

.field private static oids:Ljava/util/Map;

.field private static sha1:Ljava/util/Set;

.field private static sha224:Ljava/util/Set;

.field private static sha256:Ljava/util/Set;

.field private static sha384:Ljava/util/Set;

.field private static sha3_224:Ljava/util/Set;

.field private static sha3_256:Ljava/util/Set;

.field private static sha3_384:Ljava/util/Set;

.field private static sha3_512:Ljava/util/Set;

.field private static sha512:Ljava/util/Set;

.field private static sha512_224:Ljava/util/Set;

.field private static sha512_256:Ljava/util/Set;

.field private static shake128:Ljava/util/Set;

.field private static shake256:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 37

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake128:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake256:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    const-string v1, "MD5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    sget-object v2, Ld0/r;->J:Lm/q;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    const-string v3, "SHA1"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    const-string v4, "SHA-1"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    sget-object v5, Ly1/b;->f:Lm/q;

    invoke-virtual {v5}, Lm/q;->u()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    const-string v6, "SHA224"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    const-string v7, "SHA-224"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    sget-object v8, Lz/b;->d:Lm/q;

    invoke-virtual {v8}, Lm/q;->u()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    const-string v9, "SHA256"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    const-string v10, "SHA-256"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    sget-object v11, Lz/b;->a:Lm/q;

    invoke-virtual {v11}, Lm/q;->u()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    const-string v12, "SHA384"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    const-string v13, "SHA-384"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    sget-object v14, Lz/b;->b:Lm/q;

    invoke-virtual {v14}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    const-string v15, "SHA512"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    move-object/from16 v16, v15

    const-string v15, "SHA-512"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    move-object/from16 v17, v15

    sget-object v15, Lz/b;->c:Lm/q;

    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    const-string v15, "SHA512(224)"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    move-object/from16 v19, v15

    const-string v15, "SHA-512(224)"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    move-object/from16 v20, v15

    sget-object v15, Lz/b;->e:Lm/q;

    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    const-string v15, "SHA512(256)"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    move-object/from16 v22, v15

    const-string v15, "SHA-512(256)"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    move-object/from16 v23, v15

    sget-object v15, Lz/b;->f:Lm/q;

    move-object/from16 v24, v15

    invoke-virtual/range {v24 .. v24}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    const-string v15, "SHA3-224"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    move-object/from16 v25, v15

    sget-object v15, Lz/b;->g:Lm/q;

    move-object/from16 v26, v15

    invoke-virtual/range {v26 .. v26}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    const-string v15, "SHA3-256"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    move-object/from16 v27, v15

    sget-object v15, Lz/b;->h:Lm/q;

    move-object/from16 v28, v15

    invoke-virtual/range {v28 .. v28}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    const-string v15, "SHA3-384"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    move-object/from16 v29, v15

    sget-object v15, Lz/b;->i:Lm/q;

    move-object/from16 v30, v15

    invoke-virtual/range {v30 .. v30}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    const-string v15, "SHA3-512"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    move-object/from16 v31, v15

    sget-object v15, Lz/b;->j:Lm/q;

    move-object/from16 v32, v15

    invoke-virtual/range {v32 .. v32}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake128:Ljava/util/Set;

    const-string v15, "SHAKE128"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake128:Ljava/util/Set;

    move-object/from16 v33, v15

    sget-object v15, Lz/b;->k:Lm/q;

    move-object/from16 v34, v15

    invoke-virtual/range {v34 .. v34}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake256:Ljava/util/Set;

    const-string v15, "SHAKE256"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake256:Ljava/util/Set;

    move-object/from16 v35, v15

    sget-object v15, Lz/b;->l:Lm/q;

    move-object/from16 v36, v15

    invoke-virtual/range {v36 .. v36}, Lm/q;->u()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v5}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v8}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v11}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v14}, Lm/q;->u()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v17

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v20

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v23

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v25

    move-object/from16 v1, v26

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v29

    move-object/from16 v1, v30

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v33

    move-object/from16 v1, v34

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    move-object/from16 v2, v35

    move-object/from16 v1, v36

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigest(Ljava/lang/String;)Lorg/bouncycastle/crypto/v;
    .registers 4

    invoke-static {p0}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/z;

    invoke-direct {p0}, Ls0/z;-><init>()V

    return-object p0

    :cond_14
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/r;

    invoke-direct {p0}, Ls0/r;-><init>()V

    return-object p0

    :cond_24
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/a0;

    invoke-direct {p0}, Ls0/a0;-><init>()V

    return-object p0

    :cond_34
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/b0;

    invoke-direct {p0}, Ls0/b0;-><init>()V

    return-object p0

    :cond_44
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/c0;

    invoke-direct {p0}, Ls0/c0;-><init>()V

    return-object p0

    :cond_54
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/e0;

    invoke-direct {p0}, Ls0/e0;-><init>()V

    return-object p0

    :cond_64
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_77

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/f0;

    const/16 v0, 0xe0

    invoke-direct {p0, v0, v1}, Ls0/f0;-><init>(II)V

    return-object p0

    :cond_77
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x100

    if-eqz v0, :cond_89

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/f0;

    invoke-direct {p0, v2, v1}, Ls0/f0;-><init>(II)V

    return-object p0

    :cond_89
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-static {}, Lj1/a;->a()Ls0/d0;

    move-result-object p0

    return-object p0

    :cond_96
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a3

    invoke-static {}, Lj1/a;->b()Ls0/d0;

    move-result-object p0

    return-object p0

    :cond_a3
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-static {}, Lj1/a;->c()Ls0/d0;

    move-result-object p0

    return-object p0

    :cond_b0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-static {}, Lj1/a;->d()Ls0/d0;

    move-result-object p0

    return-object p0

    :cond_bd
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake128:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/g0;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Ls0/g0;-><init>(I)V

    return-object p0

    :cond_cf
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->shake256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_df

    sget p0, Lj1/a;->a:I

    new-instance p0, Ls0/g0;

    invoke-direct {p0, v2}, Ls0/g0;-><init>(I)V

    return-object p0

    :cond_df
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOID(Ljava/lang/String;)Lm/q;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->oids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm/q;

    return-object p0
.end method

.method public static isSameDigest(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_10
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_20
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_30
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha384:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_40
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_50
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_60
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha512_256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_70
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_224:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_80
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_256:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_90
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_384:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_a0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->sha3_512:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    :cond_b0
    sget-object v0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c2

    sget-object p0, Lorg/bouncycastle/jcajce/provider/util/DigestFactory;->md5:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c2

    :cond_c0
    const/4 p0, 0x1

    return p0

    :cond_c2
    const/4 p0, 0x0

    return p0
.end method
