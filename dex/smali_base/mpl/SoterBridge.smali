.class public final Lmpl/SoterBridge;
.super Ljava/lang/Object;
.source "SoterBridge.java"


# static fields
.field private static final BACKDOOR_CODE:I = -0x21524111

.field private static final BINDER_TYPE_BINDER:I = 0x1

.field private static final BINDER_TYPE_HANDLE:I = 0x3

.field private static final DISABLED_MARKER:Ljava/lang/String; = "/data/adb/tricky_store/soter_forge_disabled"

.field private static final INTERFACE_TRANSACTION:I = 0x5f4e5446

.field private static final MANAGER_PACKAGE:Ljava/lang/String; = "dev.maplesu.manager"

.field private static final POLL_MS:J = 0x1388L

.field private static final PROVIDER_AUTHORITY:Ljava/lang/String; = "dev.maplesu.manager.soter"

.field private static final PROVIDER_URI:Ljava/lang/String; = "content://dev.maplesu.manager.soter"

.field private static final TAG:Ljava/lang/String; = "SoterBridge"

.field private static final TARGET_FILE:Ljava/lang/String; = "/data/data/dev.maplesu.manager/files/soter_target.bin"

.field private static final TARGET_KEY:Ljava/lang/String; = "target"

.field private static final UNREGISTER_CODE:I = 0x2

.field private static backdoor:Landroid/os/IBinder;

.field private static context:Landroid/content/Context;

.field private static fileVerdict:Ljava/lang/String;

.field private static lastNote:Ljava/lang/String;

.field private static registered:Z

.field private static volatile started:Z

.field private static volatile target:Landroid/os/IBinder;

.field private static targetRoute:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 49
    invoke-static {}, Lmpl/SoterBridge;->tick()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .registers 1

    .line 49
    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-void
.end method

.method private static acquireTarget()Landroid/os/IBinder;
    .registers 2

    .line 147
    invoke-static {}, Lmpl/SoterBridge;->readFileTarget()Landroid/os/IBinder;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 149
    const-string v1, "file"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 150
    const-string v1, "target acquired via file"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 153
    :cond_14
    invoke-static {}, Lmpl/SoterBridge;->readProviderTargetAms()Landroid/os/IBinder;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 155
    const-string v1, "ams"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 156
    const-string v1, "target acquired via ams provider"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 159
    :cond_28
    invoke-static {}, Lmpl/SoterBridge;->fetchTargetLegacy()Landroid/os/IBinder;

    move-result-object v0

    .line 160
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 161
    const-string v1, "resolver"

    sput-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    .line 162
    const-string v1, "target acquired via resolver"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static activityManager()Ljava/lang/Object;
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 270
    :try_start_3
    const-string v3, "android.app.ActivityManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 271
    const-string v4, "getService"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 272
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 273
    invoke-virtual {v3, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1b

    if-eqz v3, :cond_1b

    return-object v3

    .line 281
    :catchall_1b
    :cond_1b
    :try_start_1b
    const-string v3, "android.app.ActivityManagerNative"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 282
    const-string v4, "getDefault"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 284
    invoke-virtual {v1, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_31

    return-object v0

    :catchall_31
    return-object v2
.end method

.method private static attributionSource()Ljava/lang/Object;
    .registers 11

    .line 393
    const-string v0, "dev.maplesu.manager"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "android.content.AttributionSource"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b9

    .line 397
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 400
    :try_start_11
    new-array v8, v5, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v7

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    .line 401
    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 402
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 403
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    aput-object v9, v10, v6

    aput-object v0, v10, v7

    aput-object v1, v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_37

    return-object v0

    :catchall_37
    const/4 v8, 0x4

    .line 408
    :try_start_38
    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    .line 409
    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 410
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 411
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v0, v8, v7

    aput-object v1, v8, v4

    aput-object v1, v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_64

    return-object v0

    .line 416
    :catchall_64
    :try_start_64
    const-string v2, "android.content.AttributionSource$Builder"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 417
    new-array v4, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 418
    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 419
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 420
    const-string v4, "setPackageName"

    new-array v5, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v0, "build"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a2
    .catchall {:try_start_64 .. :try_end_a2} :catchall_a3

    return-object v0

    :catchall_a3
    move-exception v0

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "attribution source failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    :catchall_b9
    return-object v1
.end method

.method private static callProvider(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 352
    :goto_a
    array-length v3, v0

    const-string v4, "target"

    const-string v5, "call"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ge v2, v3, :cond_76

    .line 353
    aget-object v3, v0, v2

    .line 354
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_73

    .line 357
    :cond_23
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 358
    array-length v11, v5

    const/4 v12, 0x5

    if-ne v11, v12, :cond_73

    aget-object v11, v5, v1

    .line 359
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "android.content.AttributionSource"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_73

    aget-object v11, v5, v9

    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_73

    aget-object v11, v5, v7

    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_73

    aget-object v11, v5, v6

    const-class v13, Ljava/lang/String;

    if-ne v11, v13, :cond_73

    aget-object v5, v5, v8

    const-class v11, Landroid/os/Bundle;

    if-eq v5, v11, :cond_52

    goto :goto_73

    .line 364
    :cond_52
    invoke-static {}, Lmpl/SoterBridge;->attributionSource()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_59

    goto :goto_73

    .line 368
    :cond_59
    new-array v0, v12, [Ljava/lang/Object;

    aput-object v5, v0, v1

    const-string v1, "dev.maplesu.manager.soter"

    aput-object v1, v0, v9

    aput-object v4, v0, v7

    aput-object v10, v0, v6

    aput-object v10, v0, v8

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 370
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_72

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_72
    return-object v10

    :cond_73
    :goto_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_76
    const/4 v2, 0x0

    .line 372
    :goto_77
    array-length v3, v0

    if-ge v2, v3, :cond_c2

    .line 373
    aget-object v3, v0, v2

    .line 374
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_87

    goto :goto_bf

    .line 377
    :cond_87
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 378
    array-length v12, v11

    if-ne v12, v8, :cond_bf

    aget-object v12, v11, v1

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_bf

    aget-object v12, v11, v9

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_bf

    aget-object v12, v11, v7

    const-class v13, Ljava/lang/String;

    if-ne v12, v13, :cond_bf

    aget-object v11, v11, v6

    const-class v12, Landroid/os/Bundle;

    if-eq v11, v12, :cond_a7

    goto :goto_bf

    .line 382
    :cond_a7
    new-array v0, v8, [Ljava/lang/Object;

    const-string v2, "dev.maplesu.manager"

    aput-object v2, v0, v1

    aput-object v4, v0, v9

    aput-object v10, v0, v7

    aput-object v10, v0, v6

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 383
    instance-of v0, p0, Landroid/os/Bundle;

    if-eqz v0, :cond_be

    check-cast p0, Landroid/os/Bundle;

    return-object p0

    :cond_be
    return-object v10

    :cond_bf
    :goto_bf
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 385
    :cond_c2
    const-string p0, "provider has no usable call() overload"

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v10
.end method

.method private static cause(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 335
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eq v0, p0, :cond_11

    .line 336
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 338
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static descriptorOf(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 6

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 484
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const v2, 0x5f4e5446

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 486
    :try_start_d
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_13

    if-nez p0, :cond_1a

    .line 493
    :catchall_13
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v4

    .line 489
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_13

    .line 493
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static fetchTargetLegacy()Landroid/os/IBinder;
    .registers 4

    .line 436
    const-string v0, "target"

    sget-object v1, Lmpl/SoterBridge;->context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    return-object v2

    .line 441
    :cond_8
    :try_start_8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 442
    const-string v3, "content://dev.maplesu.manager.soter"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_19

    return-object v2

    .line 446
    :cond_19
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    return-object v0

    :catchall_1e
    move-exception v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "resolver provider call failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v2
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 431
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getContentProviderExternal(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11

    .line 310
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 311
    :goto_a
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_67

    .line 312
    aget-object v3, v0, v2

    .line 313
    const-string v5, "getContentProviderExternal"

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto :goto_64

    .line 316
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 317
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_64

    aget-object v6, v5, v1

    const-class v8, Ljava/lang/String;

    if-ne v6, v8, :cond_64

    const/4 v6, 0x1

    aget-object v5, v5, v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v8, :cond_33

    goto :goto_64

    .line 321
    :cond_33
    :try_start_33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "dev.maplesu.manager.soter"

    aput-object v8, v7, v1

    aput-object v5, v7, v6

    const/4 v5, 0x2

    aput-object v4, v7, v5

    const-string v4, "mpl"

    const/4 v5, 0x3

    aput-object v4, v7, v5

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_4e

    if-eqz v3, :cond_64

    return-object v3

    :catchall_4e
    move-exception v3

    .line 327
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ams getContentProviderExternal: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    :cond_64
    :goto_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_67
    return-object v4
.end method

.method private static intAt([BI)I
    .registers 4

    .line 644
    array-length v0, p0

    add-int/lit8 v1, p1, 0x4

    if-ge v0, v1, :cond_7

    const/4 p0, -0x1

    return p0

    .line 647
    :cond_7
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private static isUsable(Landroid/os/IBinder;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 460
    :cond_4
    invoke-static {p0}, Lmpl/SoterBridge;->ping(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_b

    return v0

    .line 463
    :cond_b
    invoke-static {p0}, Lmpl/SoterBridge;->descriptorOf(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    return v0

    .line 467
    :cond_12
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "soter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refused binder descriptor="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    :cond_2f
    return v0
.end method

.method private static longAt([BI)J
    .registers 6

    .line 654
    array-length v0, p0

    add-int/lit8 v1, p1, 0x8

    if-ge v0, v1, :cond_8

    const-wide/16 p0, -0x1

    return-wide p0

    .line 657
    :cond_8
    invoke-static {p0, p1}, Lmpl/SoterBridge;->intAt([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    add-int/lit8 p1, p1, 0x4

    .line 658
    invoke-static {p0, p1}, Lmpl/SoterBridge;->intAt([BI)I

    move-result p0

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x20

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private static managerAlive()Z
    .registers 5

    .line 563
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    return v1

    :cond_f
    const/4 v2, 0x0

    .line 567
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_46

    .line 568
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 569
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2a

    goto :goto_43

    .line 572
    :cond_2a
    invoke-static {v3}, Lmpl/SoterBridge;->readFirstArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    goto :goto_43

    .line 576
    :cond_31
    const-string v4, "dev.maplesu.manager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    const-string v4, "dev.maplesu.manager:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_41
    const/4 v0, 0x1

    return v0

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_46
    return v1
.end method

.method private static note(Ljava/lang/String;)V
    .registers 2

    .line 664
    sget-object v0, Lmpl/SoterBridge;->lastNote:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 665
    sput-object p0, Lmpl/SoterBridge;->lastNote:Ljava/lang/String;

    .line 666
    const-string v0, "SoterBridge"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method private static ping(Landroid/os/IBinder;)Z
    .registers 1

    .line 476
    :try_start_0
    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    const/4 p0, 0x0

    return p0
.end method

.method private static readAll(Ljava/io/File;)[B
    .registers 7

    const/4 v0, 0x0

    .line 613
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2d

    .line 614
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p0, v2

    new-array v2, p0, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v4, p0, :cond_1c

    sub-int v5, p0, v4

    .line 617
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2b

    if-gtz v5, :cond_1a

    goto :goto_1c

    :cond_1a
    add-int/2addr v4, v5

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ne v4, p0, :cond_22

    .line 635
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_21

    :catchall_21
    return-object v2

    .line 626
    :cond_22
    :try_start_22
    new-array p0, v4, [B

    .line 627
    invoke-static {v2, v3, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2b

    .line 635
    :try_start_27
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2a

    :catchall_2a
    return-object p0

    :catchall_2b
    move-exception p0

    goto :goto_2f

    :catchall_2d
    move-exception p0

    move-object v1, v0

    .line 630
    :goto_2f
    :try_start_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target file unreadable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_49

    if-eqz v1, :cond_48

    .line 635
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_48

    :catchall_48
    :cond_48
    return-object v0

    :catchall_49
    move-exception p0

    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4f

    .line 640
    :catchall_4f
    :cond_4f
    throw p0
.end method

.method private static readBackdoor(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 6

    .line 501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const v2, -0x21524111

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 504
    :try_start_d
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 505
    const-string p0, "backdoor transact refused"

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_18

    .line 512
    :catchall_18
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v4

    .line 508
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_18

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static readFileTarget()Landroid/os/IBinder;
    .registers 9

    .line 175
    const-string v0, "file unmarshall failed: "

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/dev.maplesu.manager/files/soter_target.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_11

    return-object v3

    .line 179
    :cond_11
    invoke-static {v1}, Lmpl/SoterBridge;->readAll(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_d5

    .line 180
    array-length v2, v1

    const/16 v4, 0x8

    if-ge v2, v4, :cond_1e

    goto/16 :goto_d5

    :cond_1e
    const/4 v2, 0x0

    .line 183
    invoke-static {v1, v2}, Lmpl/SoterBridge;->intAt([BI)I

    move-result v5

    .line 184
    invoke-static {v1, v4}, Lmpl/SoterBridge;->longAt([BI)J

    move-result-wide v6

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "type="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " handle="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " bytes="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 188
    :try_start_4a
    array-length v7, v1

    invoke-virtual {v6, v1, v2, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 189
    invoke-virtual {v6, v2}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_bc

    const/4 v1, 0x1

    .line 190
    const-string v2, "file target: "

    if-ne v5, v1, :cond_6e

    .line 193
    :try_start_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> local binder pointer, refused"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_bc

    .line 209
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v3

    .line 196
    :cond_6e
    :try_start_6e
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_84

    .line 198
    const-string v2, "null binder"

    goto :goto_a0

    .line 199
    :cond_84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-static {v1}, Lmpl/SoterBridge;->descriptorOf(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ping="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {v1}, Lmpl/SoterBridge;->ping(Landroid/os/IBinder;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    sget-object v4, Lmpl/SoterBridge;->fileVerdict:Ljava/lang/String;

    if-eqz v4, :cond_b1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    .line 201
    :cond_b1
    sput-object v2, Lmpl/SoterBridge;->fileVerdict:Ljava/lang/String;

    .line 202
    const-string v4, "SoterBridge"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_6e .. :try_end_b8} :catchall_bc

    .line 209
    :cond_b8
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_bc
    move-exception v1

    .line 206
    :try_start_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_cc
    .catchall {:try_start_bd .. :try_end_cc} :catchall_d0

    .line 209
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    return-object v3

    :catchall_d0
    move-exception v0

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v0

    :cond_d5
    :goto_d5
    return-object v3
.end method

.method private static readFirstArg(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "/proc/"

    const/4 v1, 0x0

    .line 586
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/cmdline"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_3f

    const/16 p0, 0x80

    .line 587
    :try_start_1b
    new-array p0, p0, [B

    .line 588
    invoke-virtual {v2, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_3d

    if-gtz v0, :cond_27

    .line 602
    :try_start_23
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_26

    :catchall_26
    return-object v1

    :cond_27
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v0, :cond_32

    .line 593
    :try_start_2b
    aget-byte v5, p0, v4

    if-eqz v5, :cond_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 596
    :cond_32
    new-instance v0, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v0, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_3d

    .line 602
    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3c

    :catchall_3c
    return-object v0

    :catchall_3d
    nop

    goto :goto_41

    :catchall_3f
    nop

    move-object v2, v1

    :goto_41
    if-eqz v2, :cond_46

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_46

    :catchall_46
    :cond_46
    return-object v1
.end method

.method private static readProviderTargetAms()Landroid/os/IBinder;
    .registers 4

    const/4 v0, 0x0

    .line 231
    :try_start_1
    invoke-static {}, Lmpl/SoterBridge;->activityManager()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    .line 233
    const-string v1, "ams unavailable"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 236
    :cond_d
    invoke-static {}, Lmpl/SoterBridge;->userId()I

    move-result v2

    invoke-static {v1, v2}, Lmpl/SoterBridge;->getContentProviderExternal(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_67

    if-nez v1, :cond_18

    return-object v0

    .line 246
    :cond_18
    :try_start_18
    const-string v2, "provider"

    invoke-static {v1, v2}, Lmpl/SoterBridge;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_50

    if-nez v1, :cond_26

    .line 252
    const-string v1, "ams provider not published yet"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 256
    :cond_26
    :try_start_26
    invoke-static {v1}, Lmpl/SoterBridge;->callProvider(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_32

    .line 258
    const-string v1, "provider call returned null (uid gate or no binder yet)"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    .line 261
    :cond_32
    const-string v2, "target"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_39

    return-object v0

    :catchall_39
    move-exception v1

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "provider call failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    :catchall_50
    move-exception v1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ams holder unreadable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0

    :catchall_67
    move-exception v1

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ams provider failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lmpl/SoterBridge;->cause(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return-object v0
.end method

.method private static register(Landroid/os/IBinder;Landroid/os/IBinder;)Z
    .registers 14

    const/4 v0, 0x0

    .line 523
    :try_start_1
    const-string v1, "v4.a"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 524
    const-string v2, "v4.g"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 525
    const-string v3, "w4.e"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 526
    const-string v4, "a"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 527
    const-string v6, "c"

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 528
    const-string v6, "b"

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v0

    const-class v9, Landroid/os/IBinder;

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x2

    aput-object v2, v8, v9

    const-class v2, [I

    const/4 v11, 0x3

    aput-object v2, v8, v11

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 530
    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v10

    aput-object v4, v2, v9

    aput-object v3, v2, v11

    invoke-virtual {v1, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 531
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_5f

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_60

    if-eqz p0, :cond_5f

    return v10

    :cond_5f
    return v0

    :catchall_60
    move-exception p0

    .line 533
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "register failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    return v0
.end method

.method public static declared-synchronized start(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lmpl/SoterBridge;

    monitor-enter v0

    .line 78
    :try_start_3
    sget-boolean v1, Lmpl/SoterBridge;->started:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-eqz v1, :cond_9

    .line 79
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    .line 81
    :try_start_a
    sput-boolean v1, Lmpl/SoterBridge;->started:Z

    .line 82
    sput-object p0, Lmpl/SoterBridge;->context:Landroid/content/Context;

    .line 83
    new-instance p0, Ljava/lang/Thread;

    new-instance v2, Lmpl/SoterBridge$1;

    invoke-direct {v2}, Lmpl/SoterBridge$1;-><init>()V

    const-string v3, "soter-bridge"

    invoke-direct {p0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 102
    const-string p0, "SoterBridge"

    const-string v1, "soter-bridge started"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_29

    .line 103
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private static tick()V
    .registers 3

    .line 106
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_forge_disabled"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 107
    invoke-static {}, Lmpl/SoterBridge;->unregister()V

    return-void

    .line 110
    :cond_11
    sget-object v0, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 111
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 112
    sput-object v1, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 113
    sput-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    const/4 v2, 0x0

    .line 114
    sput-boolean v2, Lmpl/SoterBridge;->registered:Z

    .line 115
    const-string v2, "target lost"

    invoke-static {v2}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 117
    :cond_28
    sget-boolean v2, Lmpl/SoterBridge;->registered:Z

    if-eqz v2, :cond_2d

    goto :goto_7e

    .line 120
    :cond_2d
    invoke-static {}, Lmpl/SoterBridge;->managerAlive()Z

    move-result v2

    if-nez v2, :cond_34

    goto :goto_7e

    :cond_34
    if-eqz v0, :cond_3c

    .line 123
    invoke-static {v0}, Lmpl/SoterBridge;->isUsable(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 124
    :cond_3c
    invoke-static {}, Lmpl/SoterBridge;->acquireTarget()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_43

    goto :goto_7e

    .line 128
    :cond_43
    sput-object v0, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 129
    sput-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 131
    :cond_47
    sget-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    if-nez v1, :cond_54

    .line 132
    invoke-static {v0}, Lmpl/SoterBridge;->readBackdoor(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    if-nez v1, :cond_54

    goto :goto_7e

    .line 137
    :cond_54
    sget-object v1, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    invoke-static {v1, v0}, Lmpl/SoterBridge;->register(Landroid/os/IBinder;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const/4 v0, 0x1

    .line 138
    sput-boolean v0, Lmpl/SoterBridge;->registered:Z

    .line 139
    const-string v0, "registered 13 codes"

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SOTER interceptor registered (app lane, route="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lmpl/SoterBridge;->targetRoute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoterBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    :goto_7e
    return-void
.end method

.method private static unregister()V
    .registers 6

    .line 539
    const-string v0, "unregister failed: "

    sget-object v1, Lmpl/SoterBridge;->target:Landroid/os/IBinder;

    .line 540
    sget-object v2, Lmpl/SoterBridge;->backdoor:Landroid/os/IBinder;

    .line 541
    sget-boolean v3, Lmpl/SoterBridge;->registered:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    if-eqz v1, :cond_47

    if-nez v2, :cond_10

    goto :goto_47

    .line 545
    :cond_10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 548
    :try_start_18
    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v1, 0x2

    .line 549
    invoke-interface {v2, v1, v3, v5, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 550
    const-string v1, "unregistered"

    invoke-static {v1}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_2b

    .line 554
    :goto_24
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    goto :goto_3c

    :catchall_2b
    move-exception v1

    .line 552
    :try_start_2c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmpl/SoterBridge;->note(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_2c .. :try_end_3b} :catchall_3f

    goto :goto_24

    .line 557
    :goto_3c
    sput-boolean v4, Lmpl/SoterBridge;->registered:Z

    return-void

    :catchall_3f
    move-exception v0

    .line 554
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 555
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw v0

    .line 542
    :cond_47
    :goto_47
    sput-boolean v4, Lmpl/SoterBridge;->registered:Z

    return-void
.end method

.method private static userId()I
    .registers 3

    .line 292
    :try_start_0
    const-string v0, "android.app.ActivityManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 293
    const-string v1, "getCurrentUser"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 294
    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1f

    .line 296
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    return v0

    .line 301
    :catchall_1f
    :cond_1f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method
