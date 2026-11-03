.class public final Lz4/f;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:La/f;

.field public static final b:La/f;

.field public static final c:Ljava/io/File;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;

.field public static final f:La/f;

.field public static final g:Ljava/util/List;

.field public static final h:Ljava/util/List;

.field public static final i:Ll/j;

.field public static final j:Ll/j;

.field public static final k:La/f;

.field public static final l:La/f;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/f;->a:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/f;->b:La/f;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lz4/f;->c:Ljava/io/File;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x27100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, La/c;

    invoke-direct {v2, v0, v1}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v3, 0x249f0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, La/c;

    invoke-direct {v4, v1, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v3, 0x222e0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v5, v4

    new-instance v4, La/c;

    invoke-direct {v4, v10, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x21

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const v3, 0x1fbd0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v6, v5

    new-instance v5, La/c;

    invoke-direct {v5, v11, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const v3, 0x1d524

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v7, v6

    new-instance v6, La/c;

    invoke-direct {v6, v12, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const v3, 0x1d4c0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v8, v7

    new-instance v7, La/c;

    invoke-direct {v7, v13, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x1e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v3, 0x1adb0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v9, v8

    new-instance v8, La/c;

    invoke-direct {v8, v14, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v3, 0x186a0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v16, v9

    new-instance v9, La/c;

    invoke-direct {v9, v15, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v3, v16

    filled-new-array/range {v2 .. v9}, [La/c;

    move-result-object v2

    invoke-static {v2}, Lb/t;->g1([La/c;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lz4/f;->d:Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, La/c;

    invoke-direct {v3, v15, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, La/c;

    invoke-direct {v4, v14, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, La/c;

    invoke-direct {v5, v13, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, La/c;

    invoke-direct {v6, v12, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v7, La/c;

    invoke-direct {v7, v11, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v8, La/c;

    invoke-direct {v8, v10, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, La/c;

    invoke-direct {v9, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, La/c;

    invoke-direct {v2, v0, v1}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v23, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    filled-new-array/range {v16 .. v23}, [La/c;

    move-result-object v0

    invoke-static {v0}, Lb/t;->g1([La/c;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lz4/f;->e:Ljava/lang/Object;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/f;->f:La/f;

    const-string v0, "/vendor/etc/vintf/manifest"

    const-string v1, "/odm/etc/vintf/manifest"

    const-string v2, "/system/etc/vintf/manifest"

    const-string v3, "/system_ext/etc/vintf/manifest"

    const-string v4, "/product/etc/vintf/manifest"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz4/f;->g:Ljava/util/List;

    const-string v0, "/vendor/etc/vintf/manifest.xml"

    const-string v1, "/odm/etc/vintf/manifest.xml"

    const-string v2, "/system/etc/vintf/manifest.xml"

    const-string v3, "/system_ext/etc/vintf/manifest.xml"

    const-string v4, "/product/etc/vintf/manifest.xml"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lz4/f;->h:Ljava/util/List;

    new-instance v0, Ll/j;

    const-string v1, "^@([0-9]+(?:\\.[0-9]+)?)::"

    invoke-direct {v0, v1}, Ll/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lz4/f;->i:Ll/j;

    new-instance v0, Ll/j;

    const-string v1, "^([0-9]+)\\.([0-9]+)-([0-9]+)$"

    invoke-direct {v0, v1}, Ll/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lz4/f;->j:Ll/j;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/f;->k:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lz4/f;->l:La/f;

    return-void
.end method

.method public static a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lc/c;
    .registers 7

    new-instance v0, Lc/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lc/c;-><init>(I)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_2d

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/Element;

    if-eqz v4, :cond_2a

    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v0, v3}, Lc/c;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_2d
    invoke-virtual {v0}, Lc/c;->f()V

    const/4 p0, 0x1

    iput-boolean p0, v0, Lc/c;->q:Z

    iget p0, v0, Lc/c;->d:I

    if-lez p0, :cond_38

    return-object v0

    :cond_38
    sget-object p0, Lc/c;->x:Lc/c;

    return-object p0
.end method

.method public static b(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6

    invoke-static {p0, p1}, Lz4/f;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lc/c;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    :goto_12
    move-object v1, p0

    check-cast v1, Lc/a;

    invoke-virtual {v1}, Lc/a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Lc/a;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getTextContent(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_36
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_3f
    :goto_3f
    if-ge v0, v1, :cond_54

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3f

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_54
    return-object p0
.end method

.method public static c([B)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, p0

    const/16 v2, 0x80

    if-ge v1, v2, :cond_13

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4b

    :cond_13
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_18
    if-lez v1, :cond_27

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    ushr-int/lit8 v1, v1, 0x8

    goto :goto_18

    :cond_27
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4b

    :goto_37
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-gez v2, :cond_49

    goto :goto_4b

    :cond_49
    move v1, v2

    goto :goto_37

    :cond_4b
    :goto_4b
    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "toByteArray(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const-string v0, "ro.boot.vbmeta.digest"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sget-object v1, Lz4/f;->c:Ljava/io/File;

    if-eqz v0, :cond_12

    new-instance p0, Ljava/io/File;

    const-string v0, "boot_hash.bin"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_12
    const-string v0, "ro.boot.vbmeta.public_key_digest"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance p0, Ljava/io/File;

    const-string v0, "boot_key.bin"

    invoke-direct {p0, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0

    :cond_22
    new-instance v0, Ljava/io/File;

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v2, "replace(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, ".bin"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(I)I
    .registers 7

    sget-object v0, Lz4/f;->f:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/d;

    const-string v1, "attestVersion="

    if-eqz v0, :cond_28

    iget v0, v0, Lz4/d;->a:I

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source=vintf securityLevel="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return v0

    :cond_28
    invoke-static {}, Lt4/j;->b()Lt4/h;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, v0, Lt4/h;->d:Ljava/lang/Integer;

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    sget-object v2, Lz4/f;->e:Ljava/lang/Object;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_50

    :cond_3b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4e

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_50

    :cond_4e
    const/16 v3, 0x190

    :goto_50
    if-eqz v0, :cond_55

    const-string v0, "cache"

    goto :goto_66

    :cond_55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "map"

    goto :goto_66

    :cond_64
    const-string v0, "default"

    :goto_66
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " securityLevel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "vintf-version attest="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " keymaster="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return v3
.end method

.method public static f(Ljava/lang/String;ZI)Ljava/lang/Integer;
    .registers 9

    invoke-static {p2}, Lu4/g;->e(I)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_6
    const/4 v2, 0x0

    if-ge v1, v0, :cond_18

    aget-object v3, p2, v1

    sget-object v4, Lu4/g;->e:Ljava/lang/Object;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu4/h;

    if-nez v3, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    move-object v3, v2

    :cond_19
    if-nez v3, :cond_1d

    sget-object v3, Lu4/g;->d:Lu4/h;

    :cond_1d
    if-nez v3, :cond_21

    goto/16 :goto_df

    :cond_21
    iget-object p2, v3, Lu4/h;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x34e38dd1    # -1.0252847E7f

    if-eq v0, v1, :cond_55

    const v1, -0x30e15ab8    # -2.661632E9f

    if-eq v0, v1, :cond_47

    const v1, 0x2e3af2

    if-eq v0, v1, :cond_37

    goto :goto_62

    :cond_37
    const-string v0, "boot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_40

    goto :goto_62

    :cond_40
    iget-object p0, v3, Lu4/h;->c:Ljava/lang/String;

    if-nez p0, :cond_45

    goto :goto_62

    :cond_45
    move-object p2, p0

    goto :goto_62

    :cond_47
    const-string v0, "vendor"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto :goto_62

    :cond_50
    iget-object p0, v3, Lu4/h;->b:Ljava/lang/String;

    if-nez p0, :cond_45

    goto :goto_62

    :cond_55
    const-string v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_62

    :cond_5e
    iget-object p0, v3, Lu4/h;->a:Ljava/lang/String;

    if-nez p0, :cond_45

    :goto_62
    if-nez p2, :cond_66

    goto/16 :goto_df

    :cond_66
    const-string p0, "today"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7c

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p0, "toString(...)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d7

    :cond_7c
    const-string p0, "YYYY"

    const/4 v0, 0x1

    invoke-static {p2, p0, v0}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    const-string v3, "DD"

    const-string v4, "MM"

    if-nez v1, :cond_95

    invoke-static {p2, v4, v0}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_95

    invoke-static {p2, v3, v0}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_d7

    :cond_95
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalDate;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p0, v5, v0}, Ll/q;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonthValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v5, "%02d"

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v4, p2, v0}, Ll/q;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v3, p2, v0}, Ll/q;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    :cond_d7
    :goto_d7
    const-string p0, "device_default"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e0

    :goto_df
    return-object v2

    :cond_e0
    const-string p0, "prop"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_fa

    const-string p0, "ro.build.version.security_patch"

    const-string p2, ""

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "get(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lz4/f;->n(ZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_fa
    const-string p0, "no"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_108

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_108
    invoke-static {p1, p2}, Lz4/f;->n(ZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static g(I)I
    .registers 4

    sget-object v0, Lz4/f;->f:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/d;

    if-eqz v0, :cond_28

    iget v0, v0, Lz4/d;->b:I

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keymasterVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " source=vintf securityLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return v0

    :cond_28
    invoke-static {p0}, Lz4/f;->e(I)I

    move-result p0

    return p0
.end method

.method public static h()I
    .registers 2

    invoke-static {}, Lt4/j;->b()Lt4/h;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, v0, Lt4/h;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lz4/f;->d:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_24
    const v0, 0x27100

    return v0
.end method

.method public static i(I)I
    .registers 3

    const-string v0, "system"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lz4/f;->f(Ljava/lang/String;ZI)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_e
    invoke-static {v1, v0}, Lz4/f;->j(ZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static j(ZLjava/lang/String;)I
    .registers 6

    invoke-static {}, Lt4/j;->b()Lt4/h;

    move-result-object v0

    const-string v1, "vendor"

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x34e38dd1    # -1.0252847E7f

    if-eq v2, v3, :cond_32

    const v3, -0x30e15ab8    # -2.661632E9f

    if-eq v2, v3, :cond_28

    const v3, 0x2e3af2

    if-eq v2, v3, :cond_1c

    goto :goto_3a

    :cond_1c
    const-string v2, "boot"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_3a

    :cond_25
    iget-object v0, v0, Lt4/h;->i:Ljava/lang/Integer;

    goto :goto_3e

    :cond_28
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_3a

    :cond_2f
    iget-object v0, v0, Lt4/h;->h:Ljava/lang/Integer;

    goto :goto_3e

    :cond_32
    const-string v2, "system"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    :goto_3a
    const/4 v0, 0x0

    goto :goto_3e

    :cond_3c
    iget-object v0, v0, Lt4/h;->g:Ljava/lang/Integer;

    :goto_3e
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_45
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7b

    const-string p1, "ro.vendor.build.security_patch"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7b

    const/4 v0, 0x0

    :goto_56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_7b

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_78

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_78

    :cond_6d
    invoke-static {p0, p1}, Lz4/f;->n(ZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_78
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    :cond_7b
    sget-object p1, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    const-string v0, "SECURITY_PATCH"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lz4/f;->n(ZLjava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_8d
    const p0, 0x134d811

    return p0
.end method

.method public static k(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/lang/String;)Z
    .registers 13

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "default"

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    goto :goto_47

    :cond_b
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v3

    :cond_10
    if-ge v4, v0, :cond_47

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/String;

    const-string v6, "::"

    invoke-static {v5, v6, v5}, Ll/q;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const-string v8, "/"

    invoke-static {v6, v8, v3, v3, v7}, Ll/q;->j1(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_2b

    goto :goto_34

    :cond_2b
    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_34
    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const-string v6, ""

    invoke-static {v5, v8, v6}, Ll/q;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_55

    :cond_47
    :goto_47
    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_56

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-ne p0, v1, :cond_56

    :goto_55
    return v1

    :cond_56
    return v3
.end method

.method public static l(Ljava/lang/String;Lh/a;Lh/l;)[B
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_214

    const/4 v4, 0x0

    move v5, v4

    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_214

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_216

    invoke-static {v6}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v6

    if-eqz v6, :cond_25

    goto/16 :goto_216

    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_214

    sget-object v5, Ll/d;->a:[I

    sget-object v5, Ll/g;->d:Ll/g;

    const-string v6, "format"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_206

    if-ltz v6, :cond_1fa

    if-nez v6, :cond_48

    new-array v0, v4, [B

    goto/16 :goto_21c

    :cond_48
    iget-object v5, v5, Ll/g;->b:Ll/e;

    iget-boolean v7, v5, Ll/e;->a:Z

    const/4 v8, 0x1

    const/4 v9, 0x2

    const-wide/16 v10, 0x2

    if-eqz v7, :cond_a8

    iget-boolean v7, v5, Ll/e;->b:Z

    if-eqz v7, :cond_74

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_5e

    move-wide/from16 v16, v10

    :goto_5c
    move-object v10, v3

    goto :goto_a3

    :cond_5e
    shr-int/lit8 v7, v6, 0x1

    new-array v12, v7, [B

    move v13, v4

    move v14, v13

    :goto_64
    if-ge v13, v7, :cond_70

    invoke-static {v14, v0}, Ll/d;->a(ILjava/lang/String;)B

    move-result v15

    aput-byte v15, v12, v13

    add-int/2addr v14, v9

    add-int/lit8 v13, v13, 0x1

    goto :goto_64

    :cond_70
    move-wide/from16 v16, v10

    move-object v10, v12

    goto :goto_a3

    :cond_74
    int-to-long v12, v4

    add-long v14, v12, v10

    add-long/2addr v14, v12

    add-long/2addr v14, v12

    move-wide/from16 v16, v10

    int-to-long v10, v6

    add-long v18, v10, v12

    move-wide/from16 v20, v10

    div-long v9, v18, v14

    long-to-int v9, v9

    int-to-long v10, v9

    mul-long/2addr v10, v14

    sub-long/2addr v10, v12

    cmp-long v10, v10, v20

    if-eqz v10, :cond_8b

    goto :goto_5c

    :cond_8b
    new-array v10, v9, [B

    sub-int/2addr v9, v8

    move v11, v4

    move v12, v11

    :goto_90
    if-ge v11, v9, :cond_9d

    invoke-static {v12, v0}, Ll/d;->a(ILjava/lang/String;)B

    move-result v13

    aput-byte v13, v10, v11

    add-int/lit8 v12, v12, 0x2

    add-int/lit8 v11, v11, 0x1

    goto :goto_90

    :cond_9d
    invoke-static {v12, v0}, Ll/d;->a(ILjava/lang/String;)B

    move-result v11

    aput-byte v11, v10, v9

    :goto_a3
    if-eqz v10, :cond_aa

    move-object v0, v10

    goto/16 :goto_21c

    :cond_a8
    move-wide/from16 v16, v10

    :cond_aa
    iget-boolean v5, v5, Ll/e;->c:Z

    if-lez v6, :cond_1f2

    int-to-long v9, v4

    add-long v11, v9, v16

    add-long/2addr v11, v9

    const v13, 0x7fffffff

    int-to-long v14, v13

    mul-long v16, v11, v14

    const-wide/16 v18, 0x1

    sub-long v20, v14, v18

    mul-long v20, v20, v9

    move-wide/from16 v22, v14

    add-long v13, v20, v16

    int-to-long v3, v6

    invoke-static {v8, v3, v4, v13, v14}, Ll/d;->c(IJJ)J

    move-result-wide v15

    add-long v18, v13, v18

    mul-long v18, v18, v15

    sub-long v3, v3, v18

    move-wide/from16 v18, v15

    const/4 v7, 0x2

    move-wide/from16 v16, v9

    move-wide/from16 v24, v13

    move v13, v8

    move-wide/from16 v8, v24

    invoke-static {v7, v3, v4, v8, v9}, Ll/d;->c(IJJ)J

    move-result-wide v14

    move v10, v13

    move-wide/from16 v20, v14

    int-to-long v13, v7

    add-long/2addr v13, v8

    mul-long v13, v13, v20

    sub-long/2addr v3, v13

    move-wide/from16 v14, v20

    const/4 v8, 0x0

    invoke-static {v8, v3, v4, v11, v12}, Ll/d;->c(IJJ)J

    move-result-wide v20

    add-long v11, v11, v16

    mul-long v11, v11, v20

    sub-long/2addr v3, v11

    const-wide/16 v11, 0x0

    cmp-long v3, v3, v11

    if-lez v3, :cond_f7

    move v3, v10

    goto :goto_f8

    :cond_f7
    move v3, v8

    :goto_f8
    mul-long v18, v18, v22

    move-wide/from16 v16, v22

    invoke-static/range {v14 .. v21}, Lb/b;->a(JJJJ)J

    move-result-wide v11

    int-to-long v3, v3

    add-long/2addr v11, v3

    long-to-int v3, v11

    new-array v4, v3, [B

    move v9, v8

    move v11, v9

    move v12, v11

    move v13, v12

    :goto_109
    if-ge v9, v6, :cond_1e4

    const-string v14, "substring(...)"

    const-string v15, ", but was "

    const v7, 0x7fffffff

    if-ne v12, v7, :cond_158

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v12, 0xd

    const/16 v13, 0xa

    if-ne v7, v12, :cond_12d

    add-int/lit8 v7, v9, 0x1

    if-ge v7, v6, :cond_12b

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v13, :cond_12b

    add-int/lit8 v9, v9, 0x2

    goto :goto_135

    :cond_12b
    move v9, v7

    goto :goto_135

    :cond_12d
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v13, :cond_13a

    add-int/lit8 v9, v9, 0x1

    :goto_135
    move v12, v8

    move v13, v12

    :cond_137
    const/16 v16, 0x2

    goto :goto_1a4

    :cond_13a
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a new line at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_158
    if-ne v13, v7, :cond_137

    move v13, v8

    const/4 v7, 0x2

    :goto_15c
    if-ge v13, v7, :cond_19f

    move/from16 v16, v7

    const-string v7, "  "

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int v8, v9, v13

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v7, v8, v5}, Lq4/k;->O(CCZ)Z

    move-result v7

    if-eqz v7, :cond_178

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, v16

    const/4 v8, 0x0

    goto :goto_15c

    :cond_178
    add-int v1, v16, v9

    if-le v1, v6, :cond_17d

    goto :goto_17e

    :cond_17d
    move v6, v1

    :goto_17e
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected group separator \"  \" at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19f
    move/from16 v16, v7

    add-int/lit8 v9, v9, 0x2

    const/4 v13, 0x0

    :goto_1a4
    add-int/2addr v12, v10

    add-int/2addr v13, v10

    add-int/lit8 v7, v6, -0x2

    if-lt v7, v9, :cond_1b8

    add-int/lit8 v7, v11, 0x1

    invoke-static {v9, v0}, Ll/d;->a(ILjava/lang/String;)B

    move-result v8

    aput-byte v8, v4, v11

    add-int/lit8 v9, v9, 0x2

    move v11, v7

    const/4 v8, 0x0

    goto/16 :goto_109

    :cond_1b8
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected exactly 2 hexadecimal digits at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but was \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" of length "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v6, v9

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1e4
    if-ne v11, v3, :cond_1e8

    move-object v0, v4

    goto :goto_21c

    :cond_1e8
    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v3, "copyOf(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21c

    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed requirement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startIndex: 0 > endIndex: "

    invoke-static {v6, v1}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_206
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "startIndex: 0, endIndex: "

    const-string v2, ", size: "

    invoke-static {v1, v6, v2, v7}, Lb/b;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_214
    const/4 v0, 0x0

    goto :goto_21c

    :cond_216
    :goto_216
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_d

    :goto_21c
    const-string v3, "Using "

    if-eqz v0, :cond_246

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from system property: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v3, "system-prop"

    invoke-interface {v2, v3}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lz4/f;->o(Ljava/lang/String;[B)V

    return-object v0

    :cond_246
    :try_start_246
    invoke-interface/range {p1 .. p1}, Lh/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_293

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from TEE attestation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v4, "tee-attestation"

    invoke-interface {v2, v4}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lz4/f;->p(Ljava/lang/String;[B)V

    invoke-static {v1, v0}, Lz4/f;->o(Ljava/lang/String;[B)V
    :try_end_279
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_279} :catch_27a

    return-object v0

    :catch_27a
    move-exception v0

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from attestation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_293
    const/16 v4, 0x20

    :try_start_295
    invoke-static {v1}, Lz4/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2a1

    :cond_29f
    :goto_29f
    const/4 v0, 0x0

    goto :goto_2c3

    :cond_2a1
    invoke-static {v0}, Lt4/d;->B0(Ljava/io/File;)[B

    move-result-object v0

    array-length v5, v0
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2a6} :catch_2a9

    if-ne v5, v4, :cond_29f

    goto :goto_2c3

    :catch_2a9
    move-exception v0

    sget-object v5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to read "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from file."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_29f

    :goto_2c3
    if-eqz v0, :cond_2eb

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from persistent file: "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v3, "persistent-file"

    invoke-interface {v2, v3}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lz4/f;->p(Ljava/lang/String;[B)V

    return-object v0

    :cond_2eb
    new-array v0, v4, [B

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextBytes([B)V

    sget-object v3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Using randomly generated "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v3, "random-fallback"

    invoke-interface {v2, v3}, Lh/l;->c(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lz4/f;->p(Ljava/lang/String;[B)V

    invoke-static {v1, v0}, Lz4/f;->o(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static m(Ljava/io/File;)Ljava/util/List;
    .registers 18

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    sget-object v2, Lb/q;->c:Lb/q;

    if-nez v0, :cond_17

    return-object v2

    :cond_17
    const-string v3, "hal"

    invoke-static {v0, v3}, Lz4/f;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lc/c;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lc/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_27
    move-object v5, v0

    check-cast v5, Lc/a;

    invoke-virtual {v5}, Lc/a;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_329

    invoke-virtual {v5}, Lc/a;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "name"

    invoke-static {v5, v6}, Lz4/f;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v7}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ""

    if-nez v7, :cond_47

    move-object v7, v8

    :cond_47
    const-string v9, "version"

    invoke-static {v5, v9}, Lz4/f;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v10, "fqname"

    invoke-static {v5, v10}, Lz4/f;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v11, "interface"

    invoke-static {v5, v11}, Lz4/f;->a(Lorg/w3c/dom/Element;Ljava/lang/String;)Lc/c;

    move-result-object v5

    invoke-static {v5}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v11

    invoke-static {v11}, Lb/t;->f1(I)I

    move-result v11

    const/16 v12, 0x10

    if-ge v11, v12, :cond_66

    move v11, v12

    :cond_66
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v5, v4}, Lc/c;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    :goto_6f
    move-object v11, v5

    check-cast v11, Lc/a;

    invoke-virtual {v11}, Lc/a;->hasNext()Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_da

    invoke-virtual {v11}, Lc/a;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    invoke-static {v11, v6}, Lz4/f;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v13}, Lb/i;->X0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_8c

    move-object v13, v8

    :cond_8c
    const-string v15, "instance"

    invoke-static {v11, v15}, Lz4/f;->b(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-eqz v15, :cond_cf

    if-eq v15, v14, :cond_be

    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15}, Lb/t;->f1(I)I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_ab
    if-ge v4, v15, :cond_bb

    move-object/from16 v16, v0

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v14, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    goto :goto_ab

    :cond_bb
    move-object/from16 v16, v0

    goto :goto_d3

    :cond_be
    move-object/from16 v16, v0

    move v0, v4

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v14

    const-string v0, "singleton(...)"

    invoke-static {v0, v14}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d3

    :cond_cf
    move-object/from16 v16, v0

    sget-object v14, Lb/s;->c:Lb/s;

    :goto_d3
    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    const/4 v4, 0x0

    goto :goto_6f

    :cond_da
    move-object/from16 v16, v0

    const-string v0, "android.hardware.security.keymint"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "getAbsolutePath(...)"

    if-eqz v0, :cond_198

    const-string v0, "IKeyMintDevice"

    invoke-static {v10, v12, v0}, Lz4/f;->k(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_f8
    if-ge v7, v6, :cond_31f

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/String;

    const-string v10, "<this>"

    invoke-static {v10, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_10e

    goto :goto_157

    :cond_10e
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    const v15, -0x7fffffff

    if-ge v12, v13, :cond_12e

    if-ne v10, v14, :cond_11d

    goto :goto_157

    :cond_11d
    const/16 v13, 0x2b

    if-eq v12, v13, :cond_12b

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_126

    goto :goto_157

    :cond_126
    const/high16 v15, -0x80000000

    move v12, v14

    :goto_129
    move v13, v12

    goto :goto_130

    :cond_12b
    move v13, v11

    move v12, v14

    goto :goto_130

    :cond_12e
    move v12, v11

    goto :goto_129

    :goto_130
    move v14, v12

    move v12, v11

    move v11, v14

    const v14, -0x38e38e3

    :goto_136
    if-ge v11, v10, :cond_15f

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v1, 0xa

    invoke-static {v5, v1}, Ljava/lang/Character;->digit(II)I

    move-result v1

    if-gez v1, :cond_145

    goto :goto_157

    :cond_145
    const v5, -0x38e38e3

    if-ge v12, v14, :cond_151

    if-ne v14, v5, :cond_157

    div-int/lit8 v14, v15, 0xa

    if-ge v12, v14, :cond_151

    goto :goto_157

    :cond_151
    mul-int/lit8 v12, v12, 0xa

    add-int v5, v15, v1

    if-ge v12, v5, :cond_159

    :cond_157
    :goto_157
    const/4 v1, 0x0

    goto :goto_16b

    :cond_159
    sub-int/2addr v12, v1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    goto :goto_136

    :cond_15f
    if-eqz v13, :cond_166

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_16b

    :cond_166
    neg-int v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_16b
    if-eqz v1, :cond_18a

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lez v5, :cond_174

    goto :goto_175

    :cond_174
    const/4 v1, 0x0

    :goto_175
    if-eqz v1, :cond_18a

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    new-instance v5, Lz4/d;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v5, v1, v1, v8}, Lz4/d;-><init>(IILjava/lang/String;)V

    goto :goto_18b

    :cond_18a
    const/4 v5, 0x0

    :goto_18b
    if-eqz v5, :cond_190

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_190
    const/4 v14, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_f8

    :cond_195
    move-object v0, v2

    goto/16 :goto_31f

    :cond_198
    const-string v0, "android.hardware.keymaster"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    const-string v0, "IKeymasterDevice"

    invoke-static {v10, v12, v0}, Lz4/f;->k(Ljava/util/ArrayList;Ljava/util/LinkedHashMap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_195

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_1b2
    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ge v5, v1, :cond_24f

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    check-cast v8, Ljava/lang/String;

    sget-object v11, Lz4/f;->j:Ll/j;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "input"

    invoke-static {v12, v8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v11, Ll/j;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const-string v12, "matcher(...)"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_1db

    const/4 v12, 0x0

    goto :goto_1e0

    :cond_1db
    new-instance v12, Lb1/b;

    invoke-direct {v12, v11, v8}, Lb1/b;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_1e0
    if-nez v12, :cond_1e7

    invoke-static {v8}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_24a

    :cond_1e7
    invoke-virtual {v12}, Lb1/b;->g()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ll/i;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ll/i;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v12}, Lb1/b;->g()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ll/i;

    invoke-virtual {v11, v7}, Ll/i;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12}, Lb1/b;->g()Ljava/util/List;

    move-result-object v11

    check-cast v11, Ll/i;

    invoke-virtual {v11, v6}, Ll/i;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v11, Li/c;

    const/4 v12, 0x1

    invoke-direct {v11, v7, v6, v12}, Li/a;-><init>(III)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v11}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v11}, Li/a;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_227
    move-object v11, v7

    check-cast v11, Li/b;

    iget-boolean v12, v11, Li/b;->c:Z

    if-eqz v12, :cond_24a

    invoke-virtual {v11}, Li/b;->nextInt()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_227

    :cond_24a
    :goto_24a
    invoke-static {v0, v6}, Lb/o;->W0(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    goto/16 :goto_1b2

    :cond_24f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x0

    :cond_259
    :goto_259
    if-ge v8, v5, :cond_28c

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    sget-object v11, Lz4/f;->i:Ll/j;

    invoke-static {v11, v9}, Ll/j;->a(Ll/j;Ljava/lang/String;)Lb1/b;

    move-result-object v9

    if-eqz v9, :cond_284

    invoke-virtual {v9}, Lb1/b;->g()Ljava/util/List;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lb/e;

    invoke-virtual {v11}, Lb/e;->a()I

    move-result v11

    const/4 v12, 0x1

    if-ge v12, v11, :cond_280

    check-cast v9, Ll/i;

    invoke-virtual {v9, v12}, Ll/i;->get(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_281

    :cond_280
    const/4 v9, 0x0

    :goto_281
    check-cast v9, Ljava/lang/String;

    goto :goto_286

    :cond_284
    const/4 v12, 0x1

    const/4 v9, 0x0

    :goto_286
    if-eqz v9, :cond_259

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_259

    :cond_28c
    invoke-static {v0, v1}, Lb/i;->Z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Lb/i;->c1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a2
    :goto_2a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_32a

    goto :goto_2ec

    :sswitch_2bf
    const-string v8, "4.1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c8

    goto :goto_2ec

    :cond_2c8
    const/16 v5, 0x29

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, La/c;

    invoke-direct {v8, v5, v9}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2f8

    :sswitch_2d4
    const-string v10, "4.0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2dd

    goto :goto_2ec

    :cond_2dd
    new-instance v5, La/c;

    invoke-direct {v5, v9, v8}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v5

    goto :goto_2f8

    :sswitch_2e4
    const-string v9, "3.0"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2ee

    :goto_2ec
    const/4 v8, 0x0

    goto :goto_2f8

    :cond_2ee
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v9, La/c;

    invoke-direct {v9, v8, v5}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v9

    :goto_2f8
    if-eqz v8, :cond_317

    new-instance v5, Lz4/d;

    iget-object v9, v8, La/c;->d:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    iget-object v8, v8, La/c;->c:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v5, v9, v8, v10}, Lz4/d;-><init>(IILjava/lang/String;)V

    goto :goto_318

    :cond_317
    const/4 v5, 0x0

    :goto_318
    if-eqz v5, :cond_2a2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a2

    :cond_31e
    move-object v0, v1

    :cond_31f
    :goto_31f
    invoke-static {v3, v0}, Lb/o;->W0(Ljava/util/ArrayList;Ljava/lang/Iterable;)V

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto/16 :goto_27

    :cond_329
    return-object v3

    :sswitch_data_32a
    .sparse-switch
        0xc535 -> :sswitch_2e4
        0xc8f6 -> :sswitch_2d4
        0xc8f7 -> :sswitch_2bf
    .end sparse-switch
.end method

.method public static n(ZLjava/lang/String;)Ljava/lang/Integer;
    .registers 10

    const-string v0, "-"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ll/q;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_e} :catch_4b

    const/4 v4, 0x4

    const/4 v5, 0x6

    const-string v6, "substring(...)"

    if-eq v3, v5, :cond_4d

    const/16 v7, 0x8

    if-eq v3, v7, :cond_19

    goto :goto_65

    :cond_19
    :try_start_19
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz p0, :cond_43

    mul-int/lit16 v2, v2, 0x2710

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v3, v2

    add-int/2addr v3, v0

    goto :goto_46

    :cond_43
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v3, v2

    :goto_46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_4b
    move-exception p0

    goto :goto_6e

    :cond_4d
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz p0, :cond_66

    :goto_65
    return-object v1

    :cond_66
    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_6d} :catch_4b

    return-object p0

    :goto_6e
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Could not parse patch level value: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static o(Ljava/lang/String;[B)V
    .registers 4

    :try_start_0
    invoke-static {p0}, Lz4/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_17

    :try_start_9
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_10

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_17

    return-void

    :catchall_10
    move-exception p1

    :try_start_11
    throw p1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    :try_start_13
    invoke-static {v1, p1}, Lq4/k;->w(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    move-exception p1

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to persist "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to file."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static p(Ljava/lang/String;[B)V
    .registers 6

    invoke-static {}, Lu4/b;->c()Lu4/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 p1, 0x2

    if-ne v0, p1, :cond_12

    goto/16 :goto_ab

    :cond_12
    new-instance p0, La/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_18
    invoke-static {}, Lu4/b;->b()Z

    move-result v0

    if-nez v0, :cond_ab

    :cond_1e
    const-string v0, "resetprop for \'"

    const-string v1, "Setting system property \'"

    invoke-static {p1}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object p1

    :try_start_26
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' to: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v1, "resetprop"

    filled-new-array {v1, p0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz v1, :cond_91

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v2, "getErrorStream(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Ll/a;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {p1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-static {p1}, Lq4/k;->I0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' failed with exit code "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_8e} :catch_8f

    return-void

    :catch_8f
    move-exception p1

    goto :goto_92

    :cond_91
    return-void

    :goto_92
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' property via resetprop."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_ab
    :goto_ab
    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Skipping system property \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' because boot prop spoofing is disabled"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "resetprop for \'"

    const-string v1, "Setting system property \'"

    const-string v2, "name"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "value"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_e
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' to: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->a(Ljava/lang/String;)V

    const-string v1, "resetprop"

    filled-new-array {v1, p0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz v1, :cond_79

    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v2, "getErrorStream(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Ll/a;->a:Ljava/nio/charset/Charset;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p1, Ljava/io/BufferedReader;

    const/16 v2, 0x2000

    invoke-direct {p1, v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-static {p1}, Lq4/k;->I0(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' failed with exit code "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_76} :catch_77

    return-void

    :catch_77
    move-exception p1

    goto :goto_7a

    :cond_79
    return-void

    :goto_7a
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' property via resetprop."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
