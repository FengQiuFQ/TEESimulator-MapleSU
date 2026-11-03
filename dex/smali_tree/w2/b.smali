.class public final Lw2/b;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/util/HashMap;

.field public static final c:Lv2/b;


# instance fields
.field public final a:Le2/b;


# direct methods
.method static constructor <clinit>()V
    .registers 19

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lw2/b;->b:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lv2/b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sput-object v6, Lw2/b;->c:Lv2/b;

    sget-object v6, Lc0/a;->a:Lm/q;

    const-string v7, "SHA1"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lz/b;->d:Lm/q;

    const-string v8, "SHA224"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lz/b;->a:Lm/q;

    const-string v9, "SHA256"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lz/b;->b:Lm/q;

    const-string v10, "SHA384"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lz/b;->c:Lm/q;

    const-string v11, "SHA512"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lg0/b;->b:Lm/q;

    const-string v12, "RIPEMD128"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lg0/b;->a:Lm/q;

    const-string v12, "RIPEMD160"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lg0/b;->c:Lm/q;

    const-string v12, "RIPEMD256"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/r;->a:Lm/q;

    const-string v11, "RSA/ECB/PKCS1Padding"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lc0/a;->d:Lm/q;

    const-string v11, "Elgamal/ECB/PKCS1Padding"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/r;->h:Lm/q;

    const-string v11, "RSA/ECB/OAEPPadding"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lr/a;->l:Lm/q;

    const-string v11, "ECGOST3410"

    invoke-virtual {v1, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/r;->c0:Lm/q;

    const-string v1, "DESEDEWrap"

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Ld0/r;->d0:Lm/q;

    const-string v11, "RC2Wrap"

    invoke-virtual {v2, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->B:Lm/q;

    const-string v11, "AESWrap"

    invoke-virtual {v2, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v12, Lz/b;->J:Lm/q;

    invoke-virtual {v2, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v13, Lz/b;->R:Lm/q;

    invoke-virtual {v2, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, La0/a;->a:Lm/q;

    const-string v14, "CamelliaWrap"

    invoke-virtual {v2, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, La0/a;->b:Lm/q;

    invoke-virtual {v2, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v10

    sget-object v10, La0/a;->c:Lm/q;

    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v14, Lx/a;->a:Lm/q;

    move-object/from16 v17, v9

    const-string v9, "SEEDWrap"

    invoke-virtual {v2, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Ld0/r;->E:Lm/q;

    move-object/from16 v18, v8

    const-string v8, "DESede"

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz/b;->w:Lm/q;

    const-string v1, "AES"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz/b;->y:Lm/q;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz/b;->G:Lm/q;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lz/b;->O:Lm/q;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ld0/r;->F:Lm/q;

    const-string v1, "RC2"

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v6}, La3/e;->g(Ljava/util/HashMap;Lm/q;)V

    invoke-static {v5, v7}, La3/e;->g(Ljava/util/HashMap;Lm/q;)V

    move-object/from16 v0, v18

    invoke-static {v5, v0}, La3/e;->g(Ljava/util/HashMap;Lm/q;)V

    move-object/from16 v0, v17

    invoke-static {v5, v0}, La3/e;->g(Ljava/util/HashMap;Lm/q;)V

    move-object/from16 v0, v16

    invoke-static {v5, v0}, La3/e;->g(Ljava/util/HashMap;Lm/q;)V

    return-void
.end method

.method public constructor <init>(Le2/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw2/b;->a:Le2/b;

    return-void
.end method


# virtual methods
.method public final a(Ll0/b;)Ljava/security/Signature;
    .registers 9

    iget-object p0, p0, Lw2/b;->a:Le2/b;

    sget-object v0, Lw2/b;->c:Lv2/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Ll0/b;->d:Lm/f;

    iget-object v1, p1, Ll0/b;->c:Lm/q;

    const-string v2, "WITHRSAANDMGF1"

    if-eqz v0, :cond_8c

    sget-object v3, Lm/v0;->d:Lm/v0;

    invoke-virtual {v3, v0}, Lm/u;->m(Lm/f;)Z

    move-result v3

    if-nez v3, :cond_8c

    sget-object v3, Ld0/r;->k:Lm/q;

    invoke-virtual {v1, v3}, Lm/u;->n(Lm/u;)Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-static {v0}, Ld0/y;->h(Ljava/lang/Object;)Ld0/y;

    move-result-object v0

    iget-object v3, v0, Ld0/y;->d:Ll0/b;

    iget-object v0, v0, Ld0/y;->c:Ll0/b;

    iget-object v4, v3, Ll0/b;->c:Lm/q;

    sget-object v5, Ld0/r;->i:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_72

    iget-object v3, v3, Ll0/b;->d:Lm/f;

    invoke-static {v3}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v3

    iget-object v3, v3, Ll0/b;->c:Lm/q;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-virtual {v3, v0}, Lm/u;->n(Lm/u;)Z

    move-result v4

    if-eqz v4, :cond_55

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lv2/b;->b(Lm/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9f

    :cond_55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lv2/b;->b(Lm/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WITHRSAANDMGF1USING"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lv2/b;->b(Lm/q;)Ljava/lang/String;

    move-result-object v0

    :goto_6a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9f

    :cond_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-static {v0}, Lv2/b;->b(Lm/q;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WITHRSAAND"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Ll0/b;->c:Lm/q;

    invoke-virtual {v0}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_8c
    sget-object v0, Lv2/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_9f

    :cond_9b
    invoke-virtual {v1}, Lm/q;->u()Ljava/lang/String;

    move-result-object v0

    :goto_9f
    :try_start_9f
    invoke-interface {p0, v0}, Le2/b;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0
    :try_end_a3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9f .. :try_end_a3} :catch_a4

    goto :goto_cb

    :catch_a4
    move-exception v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x57

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WITHRSASSA-PSS"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Le2/b;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    :goto_cb
    sget-object v2, Ld0/r;->k:Lm/q;

    invoke-virtual {v1, v2}, Lm/u;->n(Lm/u;)Z

    move-result v1

    if-eqz v1, :cond_19f

    iget-object p1, p1, Ll0/b;->d:Lm/f;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    if-eqz p1, :cond_19f

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    if-nez v1, :cond_e3

    goto/16 :goto_19f

    :cond_e3
    invoke-static {p1}, Ld0/y;->h(Ljava/lang/Object;)Ld0/y;

    move-result-object v1

    iget-object v2, v1, Ld0/y;->d:Ll0/b;

    iget-object v3, v1, Ld0/y;->c:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    sget-object v4, Ld0/r;->i:Lm/q;

    invoke-virtual {v2, v4}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-nez v2, :cond_f7

    goto/16 :goto_175

    :cond_f7
    iget-object v2, v1, Ld0/y;->d:Ll0/b;

    iget-object v2, v2, Ll0/b;->d:Lm/f;

    invoke-static {v2}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v2

    invoke-virtual {v3, v2}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v4, v3, Ll0/b;->c:Lm/q;

    if-nez v2, :cond_108

    goto :goto_175

    :cond_108
    const-string v2, "SHAKE128-"

    const-string v5, "SHAKE256-"

    :try_start_10c
    iget-object v3, v3, Ll0/b;->d:Lm/f;

    sget-object v6, Lz/b;->r:Lm/q;

    invoke-virtual {v4, v6}, Lm/u;->n(Lm/u;)Z

    move-result v6

    if-eqz v6, :cond_131

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v3

    invoke-virtual {v3}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_12a
    invoke-interface {p0, v2}, Le2/b;->c(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    goto :goto_165

    :catch_12f
    move-exception v2

    goto :goto_153

    :cond_131
    sget-object v5, Lz/b;->q:Lm/q;

    invoke-virtual {v4, v5}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_14e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v2

    invoke-virtual {v2}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_12a

    :cond_14e
    invoke-static {v4}, Le2/c;->a(Lm/q;)Ljava/lang/String;

    move-result-object v2
    :try_end_152
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10c .. :try_end_152} :catch_12f

    goto :goto_12a

    :goto_153
    sget-object v3, Lw2/b;->b:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_19e

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0, v2}, Le2/b;->c(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    :goto_165
    iget-object v1, v1, Ld0/y;->q:Lm/l;

    invoke-virtual {v1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v2

    if-eq v1, v2, :cond_19f

    :goto_175
    :try_start_175
    const-string v1, "PSS"

    invoke-interface {p0, v1}, Le2/b;->h(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    invoke-virtual {p1}, Lm/n;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->init([B)V

    const-class p1, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {p0, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_18b} :catch_18c

    goto :goto_19f

    :catch_18c
    move-exception p0

    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to process PSS parameters: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_19e
    throw v2

    :cond_19f
    :goto_19f
    return-object v0

    :cond_1a0
    throw v3
.end method
