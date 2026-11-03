.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/shim/h;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/a;
.implements Lh/l;
.implements Lh/p;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final d()Ljava/lang/Object;
    .registers 9

    const-string p0, "getEncoded(...)"

    const-string v0, "SHA-256"

    invoke-static {}, Lt4/j;->b()Lt4/h;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, v1, Lt4/h;->a:[B

    if-eqz v1, :cond_11

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v1

    :cond_11
    const/4 v1, 0x0

    :try_start_12
    const-string v2, "android.security.keystore.KeyStoreManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstance"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "MODULE_HASH"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "getSupplementaryAttestationInfo"

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.ByteArray"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, [B

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2
    :try_end_53
    .catchall {:try_start_12 .. :try_end_53} :catchall_54

    goto :goto_5b

    :catchall_54
    move-exception v2

    new-instance v3, La/d;

    invoke-direct {v3, v2}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v2, v3

    :goto_5b
    instance-of v3, v2, La/d;

    if-eqz v3, :cond_60

    goto :goto_61

    :cond_60
    move-object v1, v2

    :goto_61
    check-cast v1, [B

    if-eqz v1, :cond_69

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    goto/16 :goto_145

    :cond_69
    sget-object v1, Lz4/f;->a:La/f;

    :try_start_6b
    sget-object v1, Lz4/f;->k:La/f;

    invoke-virtual {v1}, La/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_80
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La/c;

    iget-object v4, v3, La/c;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, La/c;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    new-instance v3, Lm/x0;

    sget-object v7, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const-string v7, "getBytes(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lm/r;-><init>([B)V

    new-instance v4, Lm/l;

    invoke-direct {v4, v5, v6}, Lm/l;-><init>(J)V

    new-instance v5, Lm/g;

    invoke-direct {v5}, Lm/g;-><init>()V

    invoke-virtual {v5, v3}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v5, v4}, Lm/g;->a(Lm/f;)V

    new-instance v4, Lm/a1;

    invoke-direct {v4, v5}, Lm/x;-><init>(Lm/g;)V

    const/4 v5, -0x1

    iput v5, v4, Lm/a1;->q:I

    new-instance v5, Lz4/e;

    invoke-virtual {v3}, Lm/n;->getEncoded()[B

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Lm/n;->getEncoded()[B

    move-result-object v4

    invoke-static {p0, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v5, v3, v4}, Lz4/e;-><init>([B[B)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_d7
    new-instance p0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    sget-object v1, Lz4/f;->a:La/f;

    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, Lz4/b;

    invoke-direct {v1, p0}, Lz4/b;-><init>(Lorg/matrix/TEESimulator/interception/keystore/shim/h;)V

    invoke-static {v2, v1}, Lb/i;->a1(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_104

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lz4/e;

    iget-object v2, v2, Lz4/e;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_f2

    :cond_104
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lz4/f;->c([B)[B

    move-result-object p0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0
    :try_end_117
    .catchall {:try_start_6b .. :try_end_117} :catchall_118

    goto :goto_11f

    :catchall_118
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_11f
    instance-of v0, p0, La/d;

    if-nez v0, :cond_128

    move-object v0, p0

    check-cast v0, [B

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_128
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_130

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_130
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_137

    goto :goto_142

    :cond_137
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "Failed to compute module hash."

    invoke-static {p0, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0x20

    new-array p0, p0, [B

    :goto_142
    move-object v1, p0

    check-cast v1, [B

    :goto_145
    return-object v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->a:I

    const-string v2, "AndroidKeyStore"

    const-string v3, "TEESimulator_AttestationCheck"

    sget-object v4, Lb/q;->c:Lb/q;

    const/4 v5, 0x2

    const/4 v6, 0x4

    const-string v7, "null cannot be cast to non-null type kotlin.Int"

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v9, "getFields(...)"

    const/16 v10, 0x10

    const/4 v11, 0x0

    const/4 v12, 0x0

    packed-switch v1, :pswitch_data_8ae

    :pswitch_19
    invoke-static {}, Lt4/j;->b()Lt4/h;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v12, v0, Lt4/h;->c:[B

    :cond_21
    return-object v12

    :pswitch_22
    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    const-string v2, "/apex"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_fb

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_41

    goto/16 :goto_fb

    :cond_41
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_d4

    array-length v3, v2

    move v4, v11

    :goto_49
    if-ge v4, v3, :cond_d4

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d0

    const-string v7, "@"

    invoke-static {v6, v7, v11}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_d0

    const-string v7, "sharedlibs"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d0

    new-instance v6, Ljava/io/File;

    const-string v7, "apex_manifest.pb"

    invoke-direct {v6, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d0

    :try_start_7f
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_d0

    :try_start_84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v6

    const/16 v8, 0x2000

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v7, v0}, Lt4/d;->C(Ljava/io/FileInputStream;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v6, "toByteArray(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9f
    .catchall {:try_start_84 .. :try_end_9f} :catchall_c8

    :try_start_9f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    new-instance v6, Lj1/g;

    invoke-direct {v6, v0, v5}, Lj1/g;-><init>([BI)V

    invoke-virtual {v6}, Lj1/g;->a()La/c;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v6, v0, La/c;->c:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v0, v0, La/c;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v7, La/c;

    invoke-direct {v7, v6, v0}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c5
    .catchall {:try_start_9f .. :try_end_c5} :catchall_d0

    goto :goto_d0

    :goto_c6
    move-object v6, v0

    goto :goto_ca

    :catchall_c8
    move-exception v0

    goto :goto_c6

    :goto_ca
    :try_start_ca
    throw v6
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception v0

    :try_start_cc
    invoke-static {v7, v6}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_d0
    .catchall {:try_start_cc .. :try_end_d0} :catchall_d0

    :catchall_d0
    :cond_d0
    :goto_d0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_49

    :cond_d4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_e2
    :goto_e2
    if-ge v11, v2, :cond_fb

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    move-object v5, v3

    check-cast v5, La/c;

    iget-object v5, v5, La/c;->c:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    :cond_fb
    :goto_fb
    return-object v4

    :pswitch_fc
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v0, Lz4/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_107
    :goto_107
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v3, ": "

    if-eqz v0, :cond_172

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_107

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_128

    goto :goto_107

    :cond_128
    :try_start_128
    new-instance v6, Lz4/a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0
    :try_end_131
    .catchall {:try_start_128 .. :try_end_131} :catchall_132

    goto :goto_139

    :catchall_132
    move-exception v0

    new-instance v6, La/d;

    invoke-direct {v6, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_139
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_140

    goto :goto_15e

    :cond_140
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to list VINTF dir "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    move-object v0, v12

    :goto_15e
    check-cast v0, [Ljava/io/File;

    if-eqz v0, :cond_107

    array-length v3, v0

    move v5, v11

    :goto_164
    if-ge v5, v3, :cond_107

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_164

    :cond_172
    sget-object v0, Lz4/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_178
    :goto_178
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_178

    :cond_19d
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/io/File;

    sget-object v0, Lz4/f;->a:La/f;

    :try_start_1be
    invoke-static {v5}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v5}, Lz4/f;->m(Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_1c5
    .catchall {:try_start_1be .. :try_end_1c5} :catchall_1c6

    goto :goto_1cd

    :catchall_1c6
    move-exception v0

    new-instance v6, La/d;

    invoke-direct {v6, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v6

    :goto_1cd
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_1d4

    goto :goto_1f6

    :cond_1d4
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unable to parse KeyMint VINTF "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    move-object v0, v4

    :goto_1f6
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v1, v0}, Lb/o;->W0(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    goto :goto_1af

    :cond_1fc
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_207

    goto :goto_22a

    :cond_207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_212

    goto :goto_22a

    :cond_212
    move-object v1, v12

    check-cast v1, Lz4/d;

    iget v1, v1, Lz4/d;->a:I

    :cond_217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lz4/d;

    iget v3, v3, Lz4/d;->a:I

    if-ge v1, v3, :cond_224

    move-object v12, v2

    move v1, v3

    :cond_224
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_217

    :goto_22a
    check-cast v12, Lz4/d;

    if-eqz v12, :cond_258

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget v0, v12, Lz4/d;->a:I

    iget v1, v12, Lz4/d;->b:I

    iget-object v2, v12, Lz4/d;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Using KeyMint version from VINTF: attestation="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", keymaster="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", source="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    goto :goto_25a

    :cond_258
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_25a
    return-object v12

    :pswitch_25b
    sget-object v0, Lz4/f;->a:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    const-string v2, "ro.boot.vbmeta.digest"

    invoke-static {v2, v0, v1}, Lz4/f;->l(Ljava/lang/String;Lh/a;Lh/l;)[B

    move-result-object v0

    return-object v0

    :pswitch_272
    sget-object v0, Lz4/f;->a:La/f;

    new-instance v0, Lz4/c;

    invoke-direct {v0, v11}, Lz4/c;-><init>(I)V

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    const-string v2, "ro.boot.vbmeta.public_key_digest"

    invoke-static {v2, v0, v1}, Lz4/f;->l(Ljava/lang/String;Lh/a;Lh/l;)[B

    move-result-object v0

    return-object v0

    :pswitch_287
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0

    :pswitch_28e
    const-class v0, Landroid/hardware/security/keymint/Tag;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_29e
    if-ge v3, v2, :cond_2b2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2af

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2af
    add-int/lit8 v3, v3, 0x1

    goto :goto_29e

    :cond_2b2
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_2bd

    goto :goto_2be

    :cond_2bd
    move v10, v0

    :goto_2be
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2c7
    if-ge v11, v2, :cond_2e2

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c7

    :cond_2e2
    return-object v0

    :pswitch_2e3
    const-class v0, Landroid/hardware/security/keymint/Digest;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_2f3
    if-ge v3, v2, :cond_307

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_304

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_304
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f3

    :cond_307
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_312

    goto :goto_313

    :cond_312
    move v10, v0

    :goto_313
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_31c
    if-ge v11, v2, :cond_337

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31c

    :cond_337
    return-object v0

    :pswitch_338
    const-class v0, Landroid/hardware/security/keymint/KeyPurpose;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_348
    if-ge v3, v2, :cond_35c

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_359

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_359
    add-int/lit8 v3, v3, 0x1

    goto :goto_348

    :cond_35c
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_367

    goto :goto_368

    :cond_367
    move v10, v0

    :goto_368
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_371
    if-ge v11, v2, :cond_38c

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_371

    :cond_38c
    return-object v0

    :pswitch_38d
    const-class v0, Landroid/hardware/security/keymint/PaddingMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_39d
    if-ge v3, v2, :cond_3b1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3ae

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_39d

    :cond_3b1
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_3bc

    goto :goto_3bd

    :cond_3bc
    move v10, v0

    :goto_3bd
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3c6
    if-ge v11, v2, :cond_3e1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c6

    :cond_3e1
    return-object v0

    :pswitch_3e2
    const-class v0, Landroid/hardware/security/keymint/BlockMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_3f2
    if-ge v3, v2, :cond_406

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_403

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_403
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f2

    :cond_406
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_411

    goto :goto_412

    :cond_411
    move v10, v0

    :goto_412
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_41b
    if-ge v11, v2, :cond_436

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41b

    :cond_436
    return-object v0

    :pswitch_437
    const-class v0, Landroid/hardware/security/keymint/EcCurve;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_447
    if-ge v3, v2, :cond_45b

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_458

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_458
    add-int/lit8 v3, v3, 0x1

    goto :goto_447

    :cond_45b
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_466

    goto :goto_467

    :cond_466
    move v10, v0

    :goto_467
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_470
    if-ge v11, v2, :cond_48b

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_470

    :cond_48b
    return-object v0

    :pswitch_48c
    const-class v0, Landroid/hardware/security/keymint/Algorithm;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_49c
    if-ge v3, v2, :cond_4b0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4ad

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4ad
    add-int/lit8 v3, v3, 0x1

    goto :goto_49c

    :cond_4b0
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_4bb

    goto :goto_4bc

    :cond_4bb
    move v10, v0

    :goto_4bc
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4c5
    if-ge v11, v2, :cond_4e0

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v3, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v4}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c5

    :cond_4e0
    return-object v0

    :pswitch_4e1
    sget-object v0, Lw4/e;->a:Lw4/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_4e6
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_501
    .catchall {:try_start_4e6 .. :try_end_501} :catchall_502

    goto :goto_509

    :catchall_502
    move-exception v0

    new-instance v1, La/d;

    invoke-direct {v1, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_509
    instance-of v1, v0, La/d;

    if-eqz v1, :cond_50f

    const-string v0, ""

    :cond_50f
    check-cast v0, Ljava/lang/String;

    const-string v1, "{\"pub_key\":\""

    const-string v2, "\",\"counter\":0,\"cpu_id\":\"0000000000000000\",\"uid\":0}"

    invoke-static {v1, v0, v2}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v1, v0}, Lb/h;->j1([B[B)[B

    move-result-object v0

    sget-object v1, Lw4/e;->f:[B

    invoke-static {v0, v1}, Lb/h;->j1([B[B)[B

    move-result-object v0

    return-object v0

    :pswitch_545
    sget-object v0, Lt4/j;->a:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_555

    :goto_553
    move-object v0, v12

    goto :goto_585

    :cond_555
    :try_start_555
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_575

    array-length v2, v1

    if-nez v2, :cond_566

    goto :goto_575

    :cond_566
    invoke-virtual {v0, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    aget-object v0, v1, v11

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_585

    :catch_573
    move-exception v0

    goto :goto_57d

    :cond_575
    :goto_575
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Could not retrieve certificate chain for TEE check key."

    invoke-static {v0, v12}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57c
    .catch Ljava/lang/Exception; {:try_start_555 .. :try_end_57c} :catch_573

    goto :goto_553

    :goto_57d
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "Error retrieving attestation certificate."

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_553

    :goto_585
    if-nez v0, :cond_589

    goto/16 :goto_780

    :cond_589
    :try_start_589
    new-instance v1, Ln0/e;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ln0/e;-><init>([B)V

    sget-object v0, Lt4/k;->a:Lm/q;

    iget-object v1, v1, Ln0/e;->d:Ll0/w;

    if-eqz v1, :cond_59d

    invoke-virtual {v1, v0}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v0

    goto :goto_59e

    :cond_59d
    move-object v0, v12

    :goto_59e
    if-nez v0, :cond_5a2

    goto/16 :goto_780

    :cond_5a2
    iget-object v0, v0, Ll0/v;->q:Lm/r;

    iget-object v0, v0, Lm/r;->c:[B

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Lm/x;->B()[Lm/f;

    move-result-object v0

    aget-object v1, v0, v11

    invoke-static {v1}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v1

    invoke-virtual {v1}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    sget-object v2, Lz4/f;->e:Ljava/lang/Object;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_5d6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_5d7

    :catch_5d3
    move-exception v0

    goto/16 :goto_778

    :cond_5d6
    move v2, v1

    :goto_5d7
    aget-object v3, v0, v5

    invoke-static {v3}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v3

    invoke-virtual {v3}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    const/4 v4, 0x6

    aget-object v4, v0, v4

    invoke-static {v4}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v4

    invoke-virtual {v4}, Lm/x;->B()[Lm/f;

    move-result-object v4

    array-length v5, v4

    move v7, v11

    :goto_5f2
    if-ge v7, v5, :cond_60b

    aget-object v8, v4, v7

    instance-of v9, v8, Lm/a0;

    if-eqz v9, :cond_5fe

    move-object v9, v8

    check-cast v9, Lm/a0;

    goto :goto_5ff

    :cond_5fe
    move-object v9, v12

    :goto_5ff
    if-eqz v9, :cond_608

    iget v9, v9, Lm/a0;->q:I

    const/16 v10, 0x2d4

    if-ne v9, v10, :cond_608

    goto :goto_60c

    :cond_608
    add-int/lit8 v7, v7, 0x1

    goto :goto_5f2

    :cond_60b
    move-object v8, v12

    :goto_60c
    if-eqz v8, :cond_61b

    check-cast v8, Lm/a0;

    invoke-virtual {v8}, Lm/a0;->r()Lm/n;

    move-result-object v4

    invoke-static {v4}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v4

    iget-object v4, v4, Lm/r;->c:[B

    goto :goto_61c

    :cond_61b
    move-object v4, v12

    :goto_61c
    const/4 v5, 0x7

    aget-object v0, v0, v5

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v12

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v13, v10

    :goto_630
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lm/f;

    const-string v15, "null cannot be cast to non-null type org.bouncycastle.asn1.ASN1TaggedObject"

    invoke-static {v15, v14}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v14, Lm/a0;

    iget v15, v14, Lm/a0;->q:I

    const/16 v12, 0x2ce

    if-eq v15, v12, :cond_6c5

    const/16 v12, 0x2cf

    if-eq v15, v12, :cond_6ac

    packed-switch v15, :pswitch_data_8e8

    goto/16 :goto_6dd

    :pswitch_652
    invoke-virtual {v14}, Lm/a0;->r()Lm/n;

    move-result-object v9

    invoke-virtual {v9}, Lm/n;->d()Lm/u;

    move-result-object v9

    invoke-static {v9}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v9

    invoke-virtual {v9}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_6dd

    :pswitch_66b
    invoke-virtual {v14}, Lm/a0;->r()Lm/n;

    move-result-object v8

    invoke-virtual {v8}, Lm/n;->d()Lm/u;

    move-result-object v8

    invoke-static {v8}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v8

    invoke-virtual {v8}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_6dd

    :pswitch_684
    invoke-virtual {v14}, Lm/a0;->r()Lm/n;

    move-result-object v12

    invoke-virtual {v12}, Lm/n;->d()Lm/u;

    move-result-object v12

    invoke-static {v12}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v12

    invoke-virtual {v12}, Lm/x;->size()I

    move-result v14

    if-lt v14, v6, :cond_6dd

    invoke-virtual {v12, v11}, Lm/x;->v(I)Lm/f;

    move-result-object v5

    invoke-static {v5}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v5

    iget-object v5, v5, Lm/r;->c:[B

    const/4 v7, 0x3

    invoke-virtual {v12, v7}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v7

    iget-object v7, v7, Lm/r;->c:[B

    goto :goto_6dd

    :cond_6ac
    invoke-virtual {v14}, Lm/a0;->r()Lm/n;

    move-result-object v12

    invoke-virtual {v12}, Lm/n;->d()Lm/u;

    move-result-object v12

    invoke-static {v12}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v12

    invoke-virtual {v12}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_6dd

    :cond_6c5
    invoke-virtual {v14}, Lm/a0;->r()Lm/n;

    move-result-object v10

    invoke-virtual {v10}, Lm/n;->d()Lm/u;

    move-result-object v10

    invoke-static {v10}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v10

    invoke-virtual {v10}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :cond_6dd
    :goto_6dd
    const/4 v12, 0x0

    goto/16 :goto_630

    :cond_6e0
    if-eqz v5, :cond_6ee

    array-length v0, v5

    move v6, v11

    :goto_6e4
    if-ge v6, v0, :cond_6ed

    aget-byte v12, v5, v6

    if-nez v12, :cond_6ee

    add-int/lit8 v6, v6, 0x1

    goto :goto_6e4

    :cond_6ed
    const/4 v5, 0x0

    :cond_6ee
    if-eqz v7, :cond_6fb

    array-length v0, v7

    :goto_6f1
    if-ge v11, v0, :cond_6fa

    aget-byte v6, v7, v11

    if-nez v6, :cond_6fb

    add-int/lit8 v11, v11, 0x1

    goto :goto_6f1

    :cond_6fa
    const/4 v7, 0x0

    :cond_6fb
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v4, :cond_704

    invoke-static {v4}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_705

    :cond_704
    const/4 v0, 0x0

    :goto_705
    if-eqz v5, :cond_70c

    invoke-static {v5}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_70d

    :cond_70c
    const/4 v6, 0x0

    :goto_70d
    if-eqz v7, :cond_714

    invoke-static {v7}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v11

    goto :goto_715

    :cond_714
    const/4 v11, 0x0

    :goto_715
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Successfully extracted attestation data: version="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", osVersion="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", osPatch="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", vendorPatch="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bootPatch="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moduleHash="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bootKey="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bootHash="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance v1, Lt4/h;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, v4

    move-object v3, v5

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    move-object v5, v0

    invoke-direct/range {v1 .. v10}, Lt4/h;-><init>([B[B[BLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_776
    .catch Ljava/lang/Exception; {:try_start_589 .. :try_end_776} :catch_5d3

    move-object v12, v1

    goto :goto_780

    :goto_778
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "Failed to parse attestation data from certificate."

    invoke-static {v1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v12, 0x0

    :goto_780
    return-object v12

    :pswitch_781
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Performing TEE functionality check..."

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    :try_start_788
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string v0, "EC"

    invoke-static {v0, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    new-array v1, v10, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v2, v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance v3, Ljava/security/spec/ECGenParameterSpec;

    const-string v4, "secp256r1"

    invoke-direct {v3, v4}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const-string v3, "SHA-256"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    const-string v0, "TEE functionality check successful."

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_7d2
    .catch Ljava/lang/Exception; {:try_start_788 .. :try_end_7d2} :catch_7d4

    const/4 v11, 0x1

    goto :goto_7dc

    :catch_7d4
    move-exception v0

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "TEE functionality check failed."

    invoke-static {v1, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7dc
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_7e1
    const-class v0, Lt4/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    move v3, v11

    :goto_7f1
    const-string v4, "TAG_"

    const-string v5, "getName(...)"

    if-ge v3, v2, :cond_816

    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_813

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_813

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_813
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f1

    :cond_816
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    if-ge v0, v10, :cond_821

    goto :goto_822

    :cond_821
    move v10, v0

    :goto_822
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_82b
    if-ge v11, v2, :cond_859

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v11, v11, 0x1

    check-cast v3, Ljava/lang/reflect/Field;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_855

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v8, "substring(...)"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_855
    invoke-interface {v0, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_82b

    :cond_859
    return-object v0

    :pswitch_85a
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store"

    const-string v2, "hbk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_878

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x20

    cmp-long v1, v1, v3

    if-nez v1, :cond_878

    invoke-static {v0}, Lt4/d;->B0(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_88c

    :cond_878
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "hbk not found, generating ephemeral HBK."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_88c
    return-object v0

    :pswitch_88d
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :pswitch_892
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_89b
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_8a4
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_8ae
    .packed-switch 0x0
        :pswitch_8a4
        :pswitch_89b
        :pswitch_892
        :pswitch_88d
        :pswitch_85a
        :pswitch_7e1
        :pswitch_781
        :pswitch_545
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_4e1
        :pswitch_48c
        :pswitch_437
        :pswitch_3e2
        :pswitch_38d
        :pswitch_338
        :pswitch_2e3
        :pswitch_28e
        :pswitch_287
        :pswitch_19
        :pswitch_272
        :pswitch_19
        :pswitch_25b
        :pswitch_fc
        :pswitch_27
        :pswitch_22
    .end packed-switch

    :pswitch_data_8e8
    .packed-switch 0x2c0
        :pswitch_684
        :pswitch_66b
        :pswitch_652
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    sget-object p0, Lz4/f;->a:La/f;

    check-cast p1, Lz4/e;

    check-cast p2, Lz4/e;

    iget-object p0, p1, Lz4/e;->a:[B

    iget-object p1, p2, Lz4/e;->a:[B

    array-length p2, p0

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, p2, :cond_22

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    if-eq v1, v2, :cond_1f

    sub-int/2addr v1, v2

    goto :goto_26

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    array-length p0, p0

    array-length p1, p1

    sub-int v1, p0, p1

    :goto_26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->a:I

    sget-object v0, La/h;->a:La/h;

    const-string v1, "it"

    sparse-switch p0, :sswitch_data_66

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lz4/f;->a:La/f;

    return-object v0

    :sswitch_11
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lz4/f;->a:La/f;

    return-object v0

    :sswitch_19
    check-cast p1, Ljava/security/cert/Certificate;

    const-string p0, "cert"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p0, p1, Ljava/security/cert/X509Certificate;

    if-eqz p0, :cond_27

    check-cast p1, Ljava/security/cert/X509Certificate;

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    if-eqz p1, :cond_39

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p0, :cond_39

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const-string p0, "?"

    :goto_3b
    return-object p0

    :sswitch_3c
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :sswitch_47
    check-cast p1, Ljava/lang/String;

    const-string p0, "name"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "get(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :sswitch_5a
    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object p0

    :sswitch_data_66
    .sparse-switch
        0x8 -> :sswitch_5a
        0x9 -> :sswitch_47
        0xa -> :sswitch_3c
        0x14 -> :sswitch_19
        0x16 -> :sswitch_11
    .end sparse-switch
.end method
