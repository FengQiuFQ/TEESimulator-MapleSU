.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final FORMAT_VERSION:I = 0x3

.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

.field private static final PERSISTENCE_DIR:Ljava/io/File;

.field private static final fileLocks:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store"

    const-string v2, "persistent_keys"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->PERSISTENCE_DIR:Ljava/io/File;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->getLockForKey$lambda$1(Lh/l;Ljava/lang/Object;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->loadAll$lambda$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 1

    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->getLockForKey$lambda$0(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method

.method private final getLockForKey(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 5

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/d;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/d;-><init>(I)V

    new-instance v1, Lorg/matrix/TEESimulator/interception/keystore/shim/b;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/b;-><init>(Lh/l;I)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "computeIfAbsent(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private static final getLockForKey$lambda$0(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    const-string v0, "it"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    return-object p0
.end method

.method private static final getLockForKey$lambda$1(Lh/l;Ljava/lang/Object;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2

    invoke-interface {p0, p1}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private final keyFileName(ILjava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string p2, "getBytes(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_39
    if-ge v1, v0, :cond_4e

    aget-byte v3, p0, v1

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-le v2, v4, :cond_44

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_44
    invoke-static {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->keyFileName$lambda$0(B)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    :cond_4e
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".bin"

    invoke-static {p0, p1}, Lb/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final keyFileName$lambda$0(B)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%02x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final loadAll$lambda$0(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    const-string p0, ".bin"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final readPersistedKeyData(Ljava/io/DataInputStream;)Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v3, v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    move v6, v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    move v7, v6

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v6

    move v8, v7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    move v9, v8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    move v10, v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const-string v12, "purposeCount"

    const/16 v13, 0x40

    invoke-direct {v0, v11, v13, v12}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Lq4/k;->d1(II)Li/c;

    move-result-object v11

    move v14, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v11}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v15

    invoke-direct {v10, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_49
    move-object v15, v11

    check-cast v15, Li/b;

    iget-boolean v12, v15, Li/b;->c:Z

    if-eqz v12, :cond_60

    invoke-virtual {v15}, Li/b;->nextInt()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_49

    :cond_60
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    const-string v12, "digestCount"

    invoke-direct {v0, v11, v13, v12}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Lq4/k;->d1(II)Li/c;

    move-result-object v11

    move-object v12, v11

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v12}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7d
    move-object v13, v12

    check-cast v13, Li/b;

    iget-boolean v15, v13, Li/b;->c:Z

    if-eqz v15, :cond_93

    invoke-virtual {v13}, Li/b;->nextInt()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7d

    :cond_93
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    const-string v13, "pkLen"

    const/16 v15, 0x2000

    invoke-direct {v0, v12, v15, v13}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v12

    move v13, v12

    new-array v12, v13, [B

    if-lez v13, :cond_a7

    invoke-virtual {v1, v12}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_a7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    const-string v15, "certCount"

    move-object/from16 v17, v2

    const/16 v2, 0xa

    invoke-direct {v0, v13, v2, v15}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v2

    const/4 v13, 0x0

    invoke-static {v13, v2}, Lq4/k;->d1(II)Li/c;

    move-result-object v2

    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v2}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v15

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c7
    move-object v15, v2

    check-cast v15, Li/b;

    move-object/from16 v16, v2

    iget-boolean v2, v15, Li/b;->c:Z

    if-eqz v2, :cond_f0

    invoke-virtual {v15}, Li/b;->nextInt()I

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    move-wide/from16 v18, v3

    const/high16 v3, 0x10000

    const-string v4, "certLen"

    invoke-direct {v2, v15, v3, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    move-wide/from16 v3, v18

    goto :goto_c7

    :cond_f0
    move-wide/from16 v18, v3

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/high16 v3, 0x40000

    const-string v4, "metaLen"

    invoke-direct {v0, v2, v3, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v2

    move v3, v14

    new-array v14, v2, [B

    if-lez v2, :cond_106

    invoke-virtual {v1, v14}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_106
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const-string v4, "skLen"

    const/16 v15, 0x2000

    invoke-direct {v0, v2, v15, v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    new-array v15, v0, [B

    if-lez v0, :cond_11d

    invoke-virtual {v1, v15}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_11d
    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move v1, v3

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    invoke-direct/range {v0 .. v16}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;-><init>(ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;)V

    return-object v0
.end method

.method private final requireBounds(IILjava/lang/String;)I
    .registers 4

    if-ltz p1, :cond_5

    if-gt p1, p2, :cond_5

    return p1

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " out of bounds: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (max "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic save$default(Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[BILjava/lang/Object;)V
    .registers 33

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    move-object v15, v0

    :goto_8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    goto :goto_26

    :cond_23
    move-object/from16 v15, p14

    goto :goto_8

    :goto_26
    invoke-virtual/range {v1 .. v15}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->save(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[B)V

    return-void
.end method


# virtual methods
.method public final delete(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;)V
    .registers 9

    const-string v0, "No persisted file to delete for: "

    const-string v1, "Failed to delete persisted key file: "

    const-string v2, "Deleted persisted key: "

    const-string v3, "keyId"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_b
    new-instance v3, Ljava/io/File;

    sget-object v4, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->PERSISTENCE_DIR:Ljava/io/File;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v5

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->keyFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->keyFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    goto :goto_77

    :catchall_4d
    move-exception p0

    goto :goto_7a

    :cond_4f
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_77

    :cond_66
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    :goto_77
    sget-object p0, La/h;->a:La/h;
    :try_end_79
    .catchall {:try_start_b .. :try_end_79} :catchall_4d

    goto :goto_80

    :goto_7a
    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_80
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_99

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to delete persisted key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_99
    return-void
.end method

.method public final deleteAll()V
    .registers 9

    const-string p0, "getName(...)"

    :try_start_2
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->PERSISTENCE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    :cond_d
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1c

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "Cannot list persistent_keys directory"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1c
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_20
    if-ge v3, v1, :cond_4d

    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, ".bin"

    invoke-static {v6, v7, v2}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_42

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, ".tmp"

    invoke-static {v6, v7, v2}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4a

    :cond_42
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_4a

    add-int/lit8 v4, v4, 0x1

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_4d
    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->fileLocks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deleted "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " persisted key files"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object p0, La/h;->a:La/h;
    :try_end_6f
    .catchall {:try_start_2 .. :try_end_6f} :catchall_70

    goto :goto_77

    :catchall_70
    move-exception p0

    new-instance v0, La/d;

    invoke-direct {v0, p0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_77
    invoke-static {p0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_84

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Failed to delete all persisted keys"

    invoke-static {v0, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_84
    return-void
.end method

.method public final loadAll(I)Ljava/util/List;
    .registers 31

    move-object/from16 v1, p0

    move/from16 v2, p1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->PERSISTENCE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    sget-object v4, Lb/q;->c:Lb/q;

    if-nez v3, :cond_11

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v4

    :cond_11
    new-instance v3, Lorg/matrix/TEESimulator/interception/keystore/shim/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_25

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Cannot read persistent_keys directory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4

    :cond_25
    array-length v0, v3

    if-nez v0, :cond_2b

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v4

    :cond_2b
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v0, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " persisted key files to process"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    const/4 v7, 0x0

    :goto_4b
    if-ge v7, v5, :cond_226

    aget-object v8, v3, v7

    :try_start_4f
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5e
    .catchall {:try_start_4f .. :try_end_5e} :catchall_95

    :try_start_5e
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v10, 0x3

    if-eq v0, v10, :cond_a4

    sget-object v10, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": legacy format version "

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". It will be replaced on next generateKey for this alias."

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_5e .. :try_end_8c} :catchall_9c

    :try_start_8c
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_95

    move-object/from16 v27, v3

    move/from16 v28, v5

    goto/16 :goto_1e5

    :catchall_95
    move-exception v0

    move-object/from16 v27, v3

    move/from16 v28, v5

    goto/16 :goto_1fb

    :catchall_9c
    move-exception v0

    move-object/from16 v27, v3

    :goto_9f
    move/from16 v28, v5

    :goto_a1
    move-object v3, v0

    goto/16 :goto_1f5

    :cond_a4
    :try_start_a4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v16

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v17

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v10, "purposeCount"

    const/16 v6, 0x40

    invoke-direct {v1, v0, v6, v10}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    invoke-static {v10, v0}, Lq4/k;->d1(II)Li/c;

    move-result-object v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_e2
    .catchall {:try_start_a4 .. :try_end_e2} :catchall_9c

    :goto_e2
    :try_start_e2
    move-object v6, v0

    check-cast v6, Li/b;

    iget-boolean v6, v6, Li/b;->c:Z
    :try_end_e7
    .catchall {:try_start_e2 .. :try_end_e7} :catchall_1f0

    if-eqz v6, :cond_fb

    :try_start_e9
    move-object v6, v0

    check-cast v6, Li/b;

    invoke-virtual {v6}, Li/b;->nextInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    :cond_fb
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v6, "digestCount"
    :try_end_101
    .catchall {:try_start_e9 .. :try_end_101} :catchall_9c

    move-object/from16 v27, v3

    const/16 v3, 0x40

    :try_start_105
    invoke-direct {v1, v0, v3, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lq4/k;->d1(II)Li/c;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_11b
    .catchall {:try_start_105 .. :try_end_11b} :catchall_1ea

    :goto_11b
    :try_start_11b
    move-object v6, v0

    check-cast v6, Li/b;

    iget-boolean v6, v6, Li/b;->c:Z
    :try_end_120
    .catchall {:try_start_11b .. :try_end_120} :catchall_1ed

    if-eqz v6, :cond_13a

    :try_start_122
    move-object v6, v0

    check-cast v6, Li/b;

    invoke-virtual {v6}, Li/b;->nextInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catchall {:try_start_122 .. :try_end_133} :catchall_134

    goto :goto_11b

    :catchall_134
    move-exception v0

    move-object v3, v0

    move/from16 v28, v5

    goto/16 :goto_1f5

    :cond_13a
    :try_start_13a
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v6, "pkLen"

    move-object/from16 v21, v3

    const/16 v3, 0x2000

    invoke-direct {v1, v0, v3, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    new-array v6, v0, [B
    :try_end_14a
    .catchall {:try_start_13a .. :try_end_14a} :catchall_1ea

    if-lez v0, :cond_14f

    :try_start_14c
    invoke-virtual {v9, v6}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_134

    :cond_14f
    :try_start_14f
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v3, "certCount"
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_1ea

    move/from16 v28, v5

    const/16 v5, 0xa

    :try_start_159
    invoke-direct {v1, v0, v5, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v3, v0}, Lq4/k;->d1(II)Li/c;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16f
    move-object v3, v0

    check-cast v3, Li/b;

    iget-boolean v3, v3, Li/b;->c:Z

    if-eqz v3, :cond_19c

    move-object v3, v0

    check-cast v3, Li/b;

    invoke-virtual {v3}, Li/b;->nextInt()I

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move-object/from16 v22, v0

    const-string v0, "certLen"

    move-object/from16 v23, v6

    const/high16 v6, 0x10000

    invoke-direct {v1, v3, v6, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v9, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    move-object/from16 v6, v23

    goto :goto_16f

    :catchall_199
    move-exception v0

    goto/16 :goto_a1

    :cond_19c
    move-object/from16 v23, v6

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v3, "metaLen"

    const/high16 v6, 0x40000

    invoke-direct {v1, v0, v6, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    new-array v3, v0, [B

    if-lez v0, :cond_1b1

    invoke-virtual {v9, v3}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_1b1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const-string v6, "skLen"

    move-object/from16 v24, v3

    const/16 v3, 0x2000

    invoke-direct {v1, v0, v3, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->requireBounds(IILjava/lang/String;)I

    move-result v0

    new-array v3, v0, [B

    if-lez v0, :cond_1ca

    invoke-virtual {v9, v3}, Ljava/io/DataInputStream;->readFully([B)V

    :cond_1ca
    if-ne v15, v2, :cond_1e2

    move-object/from16 v20, v10

    new-instance v10, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    invoke-static {v12}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static/range {v26 .. v26}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    move-object/from16 v25, v3

    move-object/from16 v22, v23

    move-object/from16 v23, v5

    invoke-direct/range {v10 .. v26}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;-><init>(ILjava/lang/String;JIZIIILjava/util/List;Ljava/util/List;[BLjava/util/List;[B[BLjava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1e2
    .catchall {:try_start_159 .. :try_end_1e2} :catchall_199

    :cond_1e2
    :try_start_1e2
    invoke-interface {v9}, Ljava/io/Closeable;->close()V

    :goto_1e5
    sget-object v0, La/h;->a:La/h;
    :try_end_1e7
    .catchall {:try_start_1e2 .. :try_end_1e7} :catchall_1e8

    goto :goto_201

    :catchall_1e8
    move-exception v0

    goto :goto_1fb

    :catchall_1ea
    move-exception v0

    goto/16 :goto_9f

    :catchall_1ed
    move-exception v0

    goto/16 :goto_9f

    :catchall_1f0
    move-exception v0

    move-object/from16 v27, v3

    goto/16 :goto_9f

    :goto_1f5
    :try_start_1f5
    throw v3
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f6

    :catchall_1f6
    move-exception v0

    :try_start_1f7
    invoke-static {v9, v3}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1fb
    .catchall {:try_start_1f7 .. :try_end_1fb} :catchall_1e8

    :goto_1fb
    new-instance v3, La/d;

    invoke-direct {v3, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_201
    invoke-static {v0}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_21e

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipping corrupted persisted key file: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v27

    move/from16 v5, v28

    goto/16 :goto_4b

    :cond_226
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Loaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " persisted keys for security level "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-object v4
.end method

.method public final rePersistIfNeeded(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)V
    .registers 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    const-string v2, "generatedKeyInfo"

    move-object/from16 v3, p2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getResponse()Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v2

    iget-object v2, v2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-nez v2, :cond_16

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    :cond_16
    iget v7, v2, Landroid/system/keystore2/KeyMetadata;->keySecurityLevel:I

    sget-object v4, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    invoke-virtual {v4}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->getGeneratedKeys()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    const-string v5, "<get-entries>(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Ljava/util/Map$Entry;

    invoke-static {v8}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    const-string v10, "component1(...)"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v9, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    const-string v10, "component2(...)"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-virtual {v9}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v9

    if-ne v9, v0, :cond_2b

    invoke-virtual {v8}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v8

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2b

    goto :goto_66

    :cond_65
    move-object v5, v6

    :goto_66
    check-cast v5, Ljava/util/Map$Entry;

    if-nez v5, :cond_8a

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rePersist: key not found in map for uid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " nspace="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void

    :cond_8a
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const-string v4, "<get-key>(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-virtual {v4}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v0

    invoke-virtual {v4}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->keyFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    sget-object v8, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->PERSISTENCE_DIR:Ljava/io/File;

    invoke-direct {v5, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c8

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rePersist: no existing file for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", skipping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void

    :cond_c8
    invoke-static {v2}, Ly4/c;->b(Landroid/system/keystore2/KeyMetadata;)[Ljava/security/cert/Certificate;

    move-result-object v8

    if-nez v8, :cond_e2

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rePersist: could not extract cert chain for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_e2
    :try_start_e2
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f1
    .catchall {:try_start_e2 .. :try_end_f1} :catchall_11f

    :try_start_f1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const/4 v5, 0x3

    if-eq v0, v5, :cond_124

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rePersist: legacy format version "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", will not re-persist (next generateKey replaces it)"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11b
    .catchall {:try_start_f1 .. :try_end_11b} :catchall_121

    :try_start_11b
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11f

    return-void

    :catchall_11f
    move-exception v0

    goto :goto_132

    :catchall_121
    move-exception v0

    move-object v5, v0

    goto :goto_12c

    :cond_124
    :try_start_124
    invoke-direct {v1, v9}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->readPersistedKeyData(Ljava/io/DataInputStream;)Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    move-result-object v0
    :try_end_128
    .catchall {:try_start_124 .. :try_end_128} :catchall_121

    :try_start_128
    invoke-interface {v9}, Ljava/io/Closeable;->close()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_11f

    goto :goto_138

    :goto_12c
    :try_start_12c
    throw v5
    :try_end_12d
    .catchall {:try_start_12c .. :try_end_12d} :catchall_12d

    :catchall_12d
    move-exception v0

    :try_start_12e
    invoke-static {v9, v5}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_132
    .catchall {:try_start_12e .. :try_end_132} :catchall_11f

    :goto_132
    new-instance v5, La/d;

    invoke-direct {v5, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_138
    instance-of v5, v0, La/d;

    if-eqz v5, :cond_13d

    move-object v0, v6

    :cond_13d
    move-object v5, v0

    check-cast v5, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;

    if-nez v5, :cond_156

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rePersist: failed to read existing data for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_156
    invoke-virtual/range {p2 .. p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v9

    if-nez v3, :cond_176

    if-nez v9, :cond_176

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rePersist: no key material for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_176
    const/4 v10, 0x0

    :try_start_177
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11
    :try_end_17b
    .catchall {:try_start_177 .. :try_end_17b} :catchall_186

    :try_start_17b
    invoke-virtual {v2, v11, v10}, Landroid/system/keystore2/KeyMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v11}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0
    :try_end_182
    .catchall {:try_start_17b .. :try_end_182} :catchall_188

    :try_start_182
    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    goto :goto_193

    :catchall_186
    move-exception v0

    goto :goto_18d

    :catchall_188
    move-exception v0

    invoke-virtual {v11}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_18d
    .catchall {:try_start_182 .. :try_end_18d} :catchall_186

    :goto_18d
    new-instance v2, La/d;

    invoke-direct {v2, v0}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_193
    instance-of v2, v0, La/d;

    if-eqz v2, :cond_198

    goto :goto_199

    :cond_198
    move-object v6, v0

    :goto_199
    move-object v15, v6

    check-cast v15, [B

    invoke-virtual/range {p2 .. p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;->getNspace()J

    move-result-wide v11

    array-length v0, v8

    if-eqz v0, :cond_1bb

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b4

    new-instance v0, Ljava/util/ArrayList;

    new-instance v2, Lb/g;

    invoke-direct {v2, v8, v10}, Lb/g;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1b0
    move-object v8, v0

    move-object v2, v4

    move-object v4, v9

    goto :goto_1be

    :cond_1b4
    aget-object v0, v8, v10

    invoke-static {v0}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1b0

    :cond_1bb
    sget-object v0, Lb/q;->c:Lb/q;

    goto :goto_1b0

    :goto_1be
    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getAlgorithm()I

    move-result v9

    invoke-virtual {v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getKeySize()I

    move-result v10

    move-wide/from16 v16, v11

    move-object v12, v5

    move-wide/from16 v5, v16

    invoke-virtual {v12}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getEcCurve()I

    move-result v11

    move-object v13, v12

    invoke-virtual {v13}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getPurposes()Ljava/util/List;

    move-result-object v12

    move-object v14, v13

    invoke-virtual {v14}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->getDigests()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v14}, Lorg/matrix/TEESimulator/interception/keystore/shim/PersistedKeyData;->isAttestationKey()Z

    move-result v14

    invoke-virtual/range {v1 .. v15}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->save(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[B)V

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Re-persisted key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with updated cert chain"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final save(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/security/KeyPair;Ljavax/crypto/SecretKey;JILjava/util/List;IIILjava/util/List;Ljava/util/List;Z[B)V
    .registers 26

    const-string v1, "[Persistence] Lock released for "

    const-string v0, "[Persistence] Lock acquired for "

    const-string v2, "keyId"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "certChain"

    move-object/from16 v3, p7

    invoke-static {v2, v3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "purposes"

    move-object/from16 v4, p11

    invoke-static {v2, v4}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "digests"

    move-object/from16 v5, p12

    invoke-static {v2, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p2, :cond_2b

    if-eqz p3, :cond_23

    goto :goto_2b

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Either keyPair or secretKey must be provided"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->keyFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->getLockForKey(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    sget-object v6, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[Persistence] Acquiring lock for "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx4/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->a(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_1fa

    :try_start_60
    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->PERSISTENCE_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_60 .. :try_end_80} :catchall_19d

    :try_start_80
    new-instance v8, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v8, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_8f} :catch_1ca
    .catchall {:try_start_80 .. :try_end_8f} :catchall_19d

    const/4 v0, 0x3

    :try_start_90
    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    move-wide v9, p4

    invoke-virtual {v8, v9, v10}, Ljava/io/DataOutputStream;->writeLong(J)V

    move/from16 v0, p13

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_c9

    :catchall_dd
    move-exception v0

    move-object p2, v0

    goto/16 :goto_1cd

    :cond_e1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ec
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_100

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_ec

    :cond_100
    const/4 v0, 0x0

    if-eqz p2, :cond_10f

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    if-eqz p2, :cond_10f

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    if-nez p2, :cond_111

    :cond_10f
    new-array p2, v0, [B

    :cond_111
    array-length v4, p2

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v8, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_123
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_123

    :cond_13b
    if-nez p14, :cond_140

    new-array p2, v0, [B

    goto :goto_142

    :cond_140
    move-object/from16 p2, p14

    :goto_142
    array-length v3, p2

    invoke-virtual {v8, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v3, p2

    if-nez v3, :cond_14a

    goto :goto_14d

    :cond_14a
    invoke-virtual {v8, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_14d
    if-eqz p3, :cond_162

    invoke-interface {p3}, Ljava/security/Key;->getEncoded()[B

    move-result-object p2

    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    array-length v0, p2

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, p2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_16a

    :cond_162
    const-string p2, ""

    invoke-virtual {v8, p2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_16a
    .catchall {:try_start_90 .. :try_end_16a} :catchall_dd

    :goto_16a
    const/4 p2, 0x0

    :try_start_16b
    invoke-static {v8, p2}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_16b .. :try_end_16e} :catch_1ca
    .catchall {:try_start_16b .. :try_end_16e} :catchall_19d

    :try_start_16e
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1a8

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1a0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x14

    cmp-long p2, v3, v5

    if-ltz p2, :cond_1a0

    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Persisted key: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lx4/b;->a(Ljava/lang/String;)V

    sget-object p2, La/h;->a:La/h;

    goto :goto_1dd

    :catchall_19d
    move-exception v0

    move-object p2, v0

    goto :goto_1d7

    :cond_1a0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "File write verification failed - possible disk full"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1a8
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to atomically rename "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1ca
    .catchall {:try_start_16e .. :try_end_1ca} :catchall_19d

    :catch_1ca
    move-exception v0

    move-object p2, v0

    goto :goto_1d3

    :goto_1cd
    :try_start_1cd
    throw p2
    :try_end_1ce
    .catchall {:try_start_1cd .. :try_end_1ce} :catchall_1ce

    :catchall_1ce
    move-exception v0

    :try_start_1cf
    invoke-static {v8, p2}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d3} :catch_1ca
    .catchall {:try_start_1cf .. :try_end_1d3} :catchall_19d

    :goto_1d3
    :try_start_1d3
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw p2
    :try_end_1d7
    .catchall {:try_start_1d3 .. :try_end_1d7} :catchall_19d

    :goto_1d7
    :try_start_1d7
    new-instance v0, La/d;

    invoke-direct {v0, p2}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p2, v0

    :goto_1dd
    invoke-static {p2}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_1fd

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to persist key "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f9
    .catchall {:try_start_1d7 .. :try_end_1f9} :catchall_1fa

    goto :goto_1fd

    :catchall_1fa
    move-exception v0

    move-object p1, v0

    goto :goto_212

    :cond_1fd
    :goto_1fd
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return-void

    :goto_212
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    throw p1
.end method
