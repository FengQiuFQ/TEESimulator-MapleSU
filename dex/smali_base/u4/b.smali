.class public abstract Lu4/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Ljava/util/LinkedHashMap;

.field public static final b:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, La/c;

    const-string v1, "ro.boot.verifiedbootstate"

    const-string v2, "green"

    invoke-direct {v0, v1, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, La/c;

    const-string v2, "ro.boot.flash.locked"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, La/c;

    const-string v3, "ro.boot.veritymode"

    const-string v4, "enforcing"

    invoke-direct {v2, v3, v4}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, La/c;

    const-string v4, "ro.boot.vbmeta.device_state"

    const-string v5, "locked"

    invoke-direct {v3, v4, v5}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v2, v3}, [La/c;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Lb/t;->f1(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v0, v1}, Lb/t;->i1([La/c;Ljava/util/LinkedHashMap;)V

    sput-object v1, Lu4/b;->a:Ljava/util/LinkedHashMap;

    new-instance v0, La/c;

    const-string v1, "ro.boot.vbmeta.invalidate_on_error"

    const-string v3, "yes"

    invoke-direct {v0, v1, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, La/c;

    const-string v3, "ro.boot.vbmeta.avb_version"

    const-string v4, "1.2"

    invoke-direct {v1, v3, v4}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, La/c;

    const-string v4, "ro.boot.vbmeta.hash_alg"

    const-string v5, "sha256"

    invoke-direct {v3, v4, v5}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, La/c;

    const-string v5, "ro.boot.vbmeta.size"

    const-string v6, "11904"

    invoke-direct {v4, v5, v6}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v0, v1, v3, v4}, [La/c;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v0, v1}, Lb/t;->i1([La/c;Ljava/util/LinkedHashMap;)V

    sput-object v1, Lu4/b;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static a()V
    .registers 8

    invoke-static {}, Lu4/b;->c()Lu4/a;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "BootStateManager: disabled by boot_props_mode"

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v0, La/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1e
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "BootStateManager: force-enabled by boot_props_mode"

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    goto :goto_35

    :cond_26
    invoke-static {}, Lu4/b;->b()Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "BootStateManager: skipping boot-state prop spoofing on Oplus-family device in auto mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_35
    :goto_35
    sget-object v0, Lu4/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "="

    const-string v3, ""

    const-string v4, "BootStateManager: "

    if-eqz v1, :cond_d3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_81

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " absent on this device, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->a(Ljava/lang/String;)V

    goto :goto_3f

    :cond_81
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a6

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skip"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->a(Ljava/lang/String;)V

    goto :goto_3f

    :cond_a6
    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "BootStateManager: setting "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (was: \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v2, Lz4/f;->a:La/f;

    invoke-static {v5, v1}, Lz4/f;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3f

    :cond_d3
    sget-object v0, Lu4/b;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_dd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_140

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_121

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', skip"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->a(Ljava/lang/String;)V

    goto :goto_dd

    :cond_121
    sget-object v6, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BootStateManager: filling absent "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v6, Lz4/f;->a:La/f;

    invoke-static {v5, v1}, Lz4/f;->q(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    :cond_140
    return-void
.end method

.method public static b()Z
    .registers 8

    const-string v6, "ro.boot.hardware.sku"

    const-string v7, "ro.boot.project_name"

    const-string v0, "ro.product.manufacturer"

    const-string v1, "ro.product.brand"

    const-string v2, "ro.product.vendor.manufacturer"

    const-string v3, "ro.product.vendor.brand"

    const-string v4, "ro.product.odm.manufacturer"

    const-string v5, "ro.product.odm.brand"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v0, 0x9

    invoke-direct {v5, v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    const/16 v6, 0x1e

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lb/i;->Y0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/l;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "oppo"

    const-string v2, "realme"

    const-string v3, "oneplus"

    const-string v4, "oplus"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    goto :goto_64

    :cond_4c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_50
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2, v3}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_50

    const/4 v0, 0x1

    return v0

    :cond_64
    :goto_64
    return v3
.end method

.method public static c()Lu4/a;
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store"

    const-string v2, "boot_props_mode"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    sget-object v2, Lu4/a;->c:Lu4/a;

    if-nez v1, :cond_12

    return-object v2

    :cond_12
    :try_start_12
    invoke-static {v0}, Lt4/d;->D0(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll/q;->r1(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "toLowerCase(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_2a

    goto :goto_31

    :catchall_2a
    move-exception v1

    new-instance v3, La/d;

    invoke-direct {v3, v1}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object v1, v3

    :goto_31
    invoke-static {v1}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_b6

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_ce

    goto/16 :goto_b5

    :sswitch_42
    const-string v0, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_b5

    :sswitch_4c
    const-string v0, "disabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_b5

    :sswitch_56
    const-string v0, "force"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_b5

    :sswitch_5f
    const-string v0, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_b5

    :sswitch_68
    const-string v0, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_b5

    :sswitch_71
    const-string v0, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_b5

    :sswitch_7a
    const-string v0, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_b5

    :sswitch_83
    const-string v0, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b5

    goto :goto_b3

    :sswitch_8c
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_b5

    :sswitch_95
    const-string v0, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_b5

    :cond_9e
    sget-object v2, Lu4/a;->q:Lu4/a;

    goto :goto_b5

    :sswitch_a1
    const-string v0, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_b5

    :sswitch_aa
    const-string v0, "enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto :goto_b5

    :cond_b3
    :goto_b3
    sget-object v2, Lu4/a;->d:Lu4/a;

    :cond_b5
    :goto_b5
    return-object v2

    :cond_b6
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "BootStateManager: failed to read "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :sswitch_data_ce
    .sparse-switch
        -0x5ff074bf -> :sswitch_aa
        -0x4d6ada7d -> :sswitch_a1
        0x30 -> :sswitch_95
        0x31 -> :sswitch_8c
        0xddf -> :sswitch_83
        0x1ad6f -> :sswitch_7a
        0x33af38 -> :sswitch_71
        0x36758e -> :sswitch_68
        0x5cb1923 -> :sswitch_5f
        0x5d18aeb -> :sswitch_56
        0x10263a7c -> :sswitch_4c
        0x639e22e8 -> :sswitch_42
    .end sparse-switch
.end method
