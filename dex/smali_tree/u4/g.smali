.class public abstract Lu4/g;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Ljava/io/File;

.field public static volatile b:Ljava/lang/Object;

.field public static volatile c:Ljava/lang/Object;

.field public static volatile d:Lu4/h;

.field public static volatile e:Ljava/lang/Object;

.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public static g:Landroid/content/pm/IPackageManager;

.field public static final h:Lu4/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu4/g;->a:Ljava/io/File;

    sget-object v0, Lb/r;->c:Lb/r;

    sput-object v0, Lu4/g;->b:Ljava/lang/Object;

    sput-object v0, Lu4/g;->c:Ljava/lang/Object;

    sput-object v0, Lu4/g;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lu4/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lu4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu4/g;->h:Lu4/f;

    return-void
.end method

.method public static a(I)Z
    .registers 6

    const-string v0, "keystore_key"

    const-string v1, "gen_unique_id"

    const-string v2, "/proc/"

    :try_start_6
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/attr/current"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lt4/d;->D0(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x3

    new-array v3, v2, [C

    fill-array-data v3, :array_46

    invoke-static {p0, v3}, Ll/q;->s1(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/io/File;

    const-string v4, "/proc/self/attr/current"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lt4/d;->D0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [C

    fill-array-data v2, :array_4e

    invoke-static {v3, v2}, Ll/q;->s1(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0, v1}, Landroid/os/SELinux;->checkSELinuxAccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_42} :catch_43

    return p0

    :catch_43
    const/4 p0, 0x0

    return p0

    nop

    :array_46
    .array-data 2
        0x0s
        0x20s
        0xas
    .end array-data

    nop

    :array_4e
    .array-data 2
        0x0s
        0x20s
        0xas
    .end array-data
.end method

.method public static b(I)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Lu4/g;->e(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_17

    aget-object v2, p0, v1

    sget-object v3, Lu4/g;->c:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    const/4 v2, 0x0

    :cond_18
    if-nez v2, :cond_1d

    const-string p0, "keybox.xml"

    return-object p0

    :cond_1d
    return-object v2
.end method

.method public static c()Landroid/content/pm/IPackageManager;
    .registers 7

    sget-object v0, Lu4/g;->g:Landroid/content/pm/IPackageManager;

    if-nez v0, :cond_3c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "package"

    if-lt v0, v1, :cond_13

    invoke-static {v4}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2e

    :cond_13
    move v0, v2

    :goto_14
    const/16 v1, 0x46

    if-ge v0, v1, :cond_28

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_20

    move-object v0, v1

    goto :goto_2e

    :cond_20
    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_28
    const-string v0, "Failed to get system service after multiple retries: package"

    invoke-static {v0, v3}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    :goto_2e
    if-nez v0, :cond_31

    return-object v3

    :cond_31
    sget-object v1, Lu4/g;->h:Lu4/f;

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lu4/g;->g:Landroid/content/pm/IPackageManager;

    :cond_3c
    sget-object v0, Lu4/g;->g:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method public static d(I)Lu4/d;
    .registers 8

    sget-object v0, Lu4/d;->q:Lu4/d;

    sget-object v1, Lu4/d;->d:Lu4/d;

    invoke-static {p0}, Lu4/g;->e(I)[Ljava/lang/String;

    move-result-object p0

    array-length v2, p0

    if-nez v2, :cond_c

    goto :goto_4d

    :cond_c
    array-length v2, p0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_4d

    aget-object v4, p0, v3

    sget-object v5, Lu4/g;->b:Ljava/lang/Object;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu4/d;

    const/4 v5, -0x1

    if-nez v4, :cond_1f

    move v4, v5

    goto :goto_27

    :cond_1f
    sget-object v6, Lu4/e;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    :goto_27
    if-eq v4, v5, :cond_4a

    const/4 p0, 0x1

    if-eq v4, p0, :cond_49

    const/4 p0, 0x2

    if-eq v4, p0, :cond_48

    const/4 p0, 0x3

    if-ne v4, p0, :cond_42

    sget-object p0, Lt4/j;->a:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_41

    return-object v1

    :cond_41
    return-object v0

    :cond_42
    new-instance p0, La/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_48
    return-object v1

    :cond_49
    return-object v0

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(I)[Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lu4/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3d

    const/4 v2, 0x0

    :try_start_d
    invoke-static {}, Lu4/g;->c()Landroid/content/pm/IPackageManager;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-interface {v3, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_34

    goto :goto_1c

    :catch_1a
    move-exception v3

    goto :goto_1f

    :cond_1c
    :goto_1c
    new-array v3, v2, [Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1a

    goto :goto_34

    :goto_1f
    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get packages for UID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v3, v2, [Ljava/lang/String;

    :cond_34
    :goto_34
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3c

    move-object v2, v3

    goto :goto_3d

    :cond_3c
    move-object v2, p0

    :cond_3d
    :goto_3d
    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static f()V
    .registers 4

    sget-object v0, Lu4/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Configuration root is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    const-string v1, "Waiting for PackageManagerService to be ready..."

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lu4/g;->c()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-nez v1, :cond_2e

    const-string v1, "PackageManagerService is not available. TEE check will likely fail."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_33

    :cond_2e
    const-string v1, "PackageManagerService is ready."

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V

    :goto_33
    new-instance v1, Ljava/io/File;

    const-string v2, "target.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lu4/g;->i(Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "security_patch.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lu4/g;->g(Ljava/io/File;)V

    sget-object v0, Lu4/c;->a:Lu4/c;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    const-string v0, "Configuration initialized and file observer started."

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Ljava/io/File;)V
    .registers 15

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    sput-object v1, Lu4/g;->d:Lu4/h;

    sget-object p0, Lb/r;->c:Lb/r;

    sput-object p0, Lu4/g;->e:Ljava/lang/Object;

    return-void

    :cond_e
    :try_start_e
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ll/j;

    const-string v4, "^\\[([a-zA-Z0-9_.-]+)]$"

    invoke-direct {v3, v4}, Ll/j;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lt4/d;->C0(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_60

    const/4 v6, 0x0

    const-string v7, ""

    move v9, v6

    move-object v8, v7

    :goto_2c
    const/4 v10, 0x1

    if-ge v9, v5, :cond_7a

    :try_start_2f
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_46

    goto :goto_2c

    :cond_46
    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4f

    goto :goto_2c

    :cond_4f
    invoke-static {v3, v11}, Ll/j;->a(Ll/j;Ljava/lang/String;)Lb1/b;

    move-result-object v12

    if-eqz v12, :cond_63

    invoke-virtual {v12}, Lb1/b;->g()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ll/i;

    invoke-virtual {v8, v10}, Ll/i;->get(I)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2c

    :catch_60
    move-exception v0

    goto/16 :goto_12e

    :cond_63
    new-instance v10, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v12, 0xa

    invoke-direct {v10, v12}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v12, Lorg/matrix/TEESimulator/interception/keystore/shim/b;

    const/4 v13, 0x4

    invoke-direct {v12, v10, v13}, Lorg/matrix/TEESimulator/interception/keystore/shim/b;-><init>(Lh/l;I)V

    invoke-interface {v2, v8, v12}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_7a
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lu4/g;->h(Ljava/util/List;)Lu4/h;

    move-result-object v3

    if-eqz v3, :cond_89

    iget-object v4, v3, Lu4/h;->a:Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_88} :catch_60

    goto :goto_8a

    :cond_89
    move-object v4, v1

    :goto_8a
    const-string v5, "prop"

    if-nez v4, :cond_90

    move v4, v6

    goto :goto_94

    :cond_90
    :try_start_90
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :goto_94
    if-eqz v4, :cond_d2

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v3, :cond_9d

    iget-object v4, v3, Lu4/h;->c:Ljava/lang/String;

    goto :goto_9e

    :cond_9d
    move-object v4, v1

    :goto_9e
    if-eqz v3, :cond_a3

    iget-object v8, v3, Lu4/h;->b:Ljava/lang/String;

    goto :goto_a4

    :cond_a3
    move-object v8, v1

    :goto_a4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "system=prop: forcing boot/vendor to derive from device props (were: boot="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", vendor="

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lx4/b;->c(Ljava/lang/String;)V

    if-eqz v3, :cond_d1

    iget-object v1, v3, Lu4/h;->a:Ljava/lang/String;

    iget-object v3, v3, Lu4/h;->d:Ljava/lang/String;

    new-instance v4, Lu4/h;

    invoke-direct {v4, v1, v5, v5, v3}, Lu4/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    :cond_d1
    move-object v3, v1

    :cond_d2
    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_dd
    :goto_dd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lu4/g;->h(Ljava/util/List;)Lu4/h;

    move-result-object v2

    if-eqz v2, :cond_dd

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_dd

    :cond_ff
    sput-object v3, Lu4/g;->d:Lu4/h;

    sput-object v0, Lu4/g;->e:Ljava/lang/Object;

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v3, :cond_108

    move v6, v10

    :cond_108
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded custom security patch levels: global config exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package-specific configs."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_12d} :catch_60

    return-void

    :goto_12e
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load or parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final h(Ljava/util/List;)Lu4/h;
    .registers 11

    const/4 v0, 0x0

    if-eqz p0, :cond_c7

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_c7

    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x2

    const-string v4, "<this>"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v5, :cond_34

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Ll/q;->i1(Ljava/lang/CharSequence;CI)I

    move-result v1

    if-ltz v1, :cond_28

    goto :goto_34

    :cond_28
    new-instance v1, Lu4/h;

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, v0, v0, v0, p0}, Lu4/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_34
    :goto_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3d
    :goto_3d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_94

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-array v8, v5, [C

    aput-char v2, v8, v6

    invoke-static {v4, v7}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    aget-char v8, v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Ll/q;->o1(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v3, :cond_8d

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "toLowerCase(...)"

    invoke-static {v9, v8}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, La/c;

    invoke-direct {v9, v8, v7}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8e

    :cond_8d
    move-object v9, v0

    :goto_8e
    if-eqz v9, :cond_3d

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_94
    invoke-static {v1}, Lb/t;->h1(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    const-string v0, "all"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lu4/h;

    const-string v2, "system"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_ad

    move-object v2, v0

    :cond_ad
    const-string v3, "vendor"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_b8

    move-object v3, v0

    :cond_b8
    const-string v4, "boot"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_c3

    move-object p0, v0

    :cond_c3
    invoke-direct {v1, v2, v3, p0, v0}, Lu4/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_c7
    :goto_c7
    return-object v0
.end method

.method public static i(Ljava/io/File;)V
    .registers 13

    const-string v0, "?"

    const-string v1, "!"

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Configuration file not found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_23
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ll/j;

    const-string v5, "^\\[([a-zA-Z0-9_.-]+\\.xml)]$"

    invoke-direct {v4, v5}, Ll/j;-><init>(Ljava/lang/String;)V

    :try_start_34
    invoke-static {p0}, Lt4/d;->C0(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3c} :catch_8a

    const/4 v7, 0x0

    const-string v8, "keybox.xml"

    move v9, v7

    :goto_40
    if-ge v9, v6, :cond_cd

    :try_start_42
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_59

    goto :goto_40

    :cond_59
    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_62

    goto :goto_40

    :cond_62
    invoke-static {v4, v10}, Ll/j;->a(Ll/j;Ljava/lang/String;)Lb1/b;

    move-result-object v11

    if-eqz v11, :cond_8c

    invoke-virtual {v11}, Lb1/b;->g()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ll/i;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ll/i;->get(I)Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Switching to keybox context: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lx4/b;->c(Ljava/lang/String;)V

    goto :goto_40

    :catch_8a
    move-exception v0

    goto :goto_f6

    :cond_8c
    # MPL-P16-Y1: target.txt 标记兼容（审计 §2.6(a)/§4-10，方向已按实测修正）。
    # 原生实现是**后缀**语义：g1()=endsWith + m1()=removeSuffix，即 `pkg!`=GENERATE、
    # `pkg?`=PATCH（与上游 README:79-83 一致）。不加这一步的话，MapleSU 口径里的前缀
    # 写法（`!pkg` / `?pkg`）会被整行当成一个不存在的包名而静默失效。
    # mpl.TargetTxt.normalize 只把前缀转成后缀（后缀/无标记行原样返回），下面的
    # endsWith 判定顺序与 GENERATE/PATCH/AUTO 语义完全不变。
    invoke-static {v10}, Lmpl/TargetTxt;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v7}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_a7

    invoke-static {v10, v1}, Ll/q;->m1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lu4/d;->q:Lu4/d;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_a7
    invoke-static {v10, v0, v7}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_c3

    invoke-static {v10, v0}, Ll/q;->m1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lu4/d;->d:Lu4/d;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    :cond_c3
    sget-object v11, Lu4/d;->c:Lu4/d;

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_40

    :cond_cd
    sput-object v2, Lu4/g;->b:Ljava/lang/Object;

    sput-object v3, Lu4/g;->c:Ljava/lang/Object;

    sget-object v0, Lu4/g;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " package configurations."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_f5} :catch_8a

    return-void

    :goto_f6
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to load or parse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static j(I)Z
    .registers 1

    invoke-static {p0}, Lu4/g;->d(I)Lu4/d;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method
