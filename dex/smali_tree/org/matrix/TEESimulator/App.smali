.class public final Lorg/matrix/TEESimulator/App;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static a()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const-string v2, ")"

    if-ge v0, v1, :cond_24

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using KeystoreInterceptor for Android Q/R (SDK "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    goto :goto_3f

    :cond_24
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Using Keystore2Interceptor for Android S and later (SDK "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;

    :goto_3f
    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->tryRunKeystoreInterceptor()Z

    move-result v1

    if-nez v1, :cond_4d

    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3f

    :cond_4d
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "Interceptors initialized successfully."

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b()Landroid/content/Context;
    .registers 6

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    :cond_9
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.content.Context"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v1, Landroid/content/Context;

    new-instance v2, Landroid/app/Application;

    invoke-direct {v2}, Landroid/app/Application;-><init>()V

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    const-class v4, Landroid/content/ContextWrapper;

    const-string v5, "attachBaseContext"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Landroid/app/ActivityThread;

    const-string v5, "mInitialApplication"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static final main([Ljava/lang/String;)V
    .registers 4

    const-string v0, "args"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string p0, "Welcome to TEESimulator!"

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    new-instance p0, Ls4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_14
    invoke-static {}, Lorg/matrix/TEESimulator/App;->b()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lu4/b;->a()V

    invoke-static {}, Lu4/g;->f()V

    invoke-static {}, Lorg/matrix/TEESimulator/App;->a()V

    sget-object v0, Lz4/f;->a:La/f;

    sget-object v0, Lz4/f;->a:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sget-object v0, Lz4/f;->b:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const-string v0, "BC"

    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    sget-object v0, Lorg/matrix/TEESimulator/pki/NativeCertGen;->INSTANCE:Lorg/matrix/TEESimulator/pki/NativeCertGen;

    # --- MPL-P0: libcertgen.so 用 cwd 相对路径（service.sh 已 cd 到 TEESimulatorRS_Core）；
    #     getAbsolutePath() 保证 System.load() 拿到绝对路径。不再硬编码 /data/adb/modules。
    new-instance v1, Ljava/io/File;

    const-string v2, "libcertgen.so"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/matrix/TEESimulator/pki/NativeCertGen;->initialize(Ljava/lang/String;)V

    # MPL-SOTER (app lane, MapleSU): one injector watcher thread. It keeps
    # libTEESimulator.so mapped in com.tencent.soter.soterserver and mirrors the module
    # toggle into the manager's files dir. It never calls bindService: the manager owns
    # that (AMS rejects a bare app_process as caller), so the forge itself is unchanged.
    # MPL-BUILD: startup marker so a device log proves which dex is active.
    const-string v0, "MPL-BUILD"

    const-string v1, "p16n: soter uid <- request parcel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lmpl/SoterInjector;->start()V

    # MPL-SOTER bridge: pulls the manager-bound ISoterService binder through the
    # root-only ContentProvider (the native backdoor is euid-0 gated) and registers the
    # module's existing w4.e 13-code interceptor.
    invoke-static {p0}, Lmpl/SoterBridge;->start(Landroid/content/Context;)V

    # --- MPL-SOTER: 默认开启。只有模块显式关闭时才写 soter_forge_disabled；
    #     该文件不存在（首装/默认/文件被删）= 启动 supervisor。关掉开关后文件存在，
    #     则完全不建 HandlerThread、不 bindService、不 inject soterserver。
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/adb/tricky_store/soter_forge_disabled"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "TEESimulator"

    if-eqz v0, :mpl_soter_on

    const-string v2, "SOTER forge: OFF (soter_forge_disabled present)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :mpl_soter_on
    const-string v2, "SOTER forge: ON (default)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_71
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_74} :catch_75

    return-void

    :catch_75
    move-exception p0

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "A fatal error occurred in the main application thread."

    invoke-static {v0, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
