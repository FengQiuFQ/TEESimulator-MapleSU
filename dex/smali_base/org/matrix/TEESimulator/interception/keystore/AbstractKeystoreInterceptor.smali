.class public abstract Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;
.super Lv4/g;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private injectionAttempted:Z

.field private final interceptedCodes:[I

.field protected keystoreService:Landroid/os/IBinder;

.field private final maxRetries:I

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->maxRetries:I

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->interceptedCodes:[I

    return-void
.end method

.method public static synthetic c(Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;)V
    .registers 1

    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->createDeathRecipient$lambda$0(Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;)V

    return-void
.end method

.method private final createDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/a;

    invoke-direct {v0, p0}, Lorg/matrix/TEESimulator/interception/keystore/a;-><init>(Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;)V

    return-object v0
.end method

.method private static final createDeathRecipient$lambda$0(Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;)V
    .registers 3

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getServiceName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The intercepted service \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' has died. Restarting application."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final handleMissingBackdoor()V
    .registers 6

    iget-boolean v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->injectionAttempted:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getProcessName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Backdoor not found. Attempting to inject native library into \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->performInjection()V

    iput-boolean v2, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->injectionAttempted:Z

    :cond_27
    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->retryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->retryCount:I

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->maxRetries:I

    if-ge v0, p0, :cond_31

    return-void

    :cond_31
    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find backdoor after "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " retries. The service may have crashed or injection failed. Exiting."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final performInjection()V
    .registers 7

    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    const-string v1, "Injection process failed with exit code "

    const-string v2, "Executing injection command: "

    const/4 v3, 0x1

    :try_start_7
    const-string v4, "/system/bin/sh"

    const-string v5, "-c"

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getInjectionCommand()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v4, v5, p0}, [Ljava/lang/String;

    move-result-object p0

    sget-object v4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const/16 v4, 0x3e

    invoke-static {p0, v4}, Lb/h;->i1([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lx4/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result p0

    if-nez p0, :cond_40

    const-string p0, "Injection process completed."

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    return-void

    :catch_3e
    move-exception p0

    goto :goto_5e

    :cond_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Exiting."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5e} :catch_3e

    :goto_5e
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v1, "An exception occurred during injection. Exiting."

    invoke-static {v1, p0}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final setupInterceptor(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 6

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->setKeystoreService(Landroid/os/IBinder;)V

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Registering interceptor for service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object v0, Lv4/g;->Companion:Lv4/a;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getInterceptedCodes()[I

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1, p0, v1}, Lv4/a;->b(Landroid/os/IBinder;Landroid/os/IBinder;Lv4/g;[I)Z

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->createDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->onInterceptorReady(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public abstract getInjectionCommand()Ljava/lang/String;
.end method

.method public getInterceptedCodes()[I
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->interceptedCodes:[I

    return-object p0
.end method

.method public final getKeystoreService()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->keystoreService:Landroid/os/IBinder;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "keystoreService"

    invoke-static {p0}, Lkotlin/jvm/internal/i;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getServiceName()Ljava/lang/String;
.end method

.method public onInterceptorReady(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    const-string p0, "service"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "backdoor"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setKeystoreService(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->keystoreService:Landroid/os/IBinder;

    return-void
.end method

.method public final tryRunKeystoreInterceptor()Z
    .registers 6

    sget-object v0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->retryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initializing interceptor for \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' (attempt "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")..."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_54

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->getServiceName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Service \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' not found. Will retry."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->retryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->retryCount:I

    return v1

    :cond_54
    sget-object v3, Lv4/g;->Companion:Lv4/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lv4/a;->a(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_63

    invoke-direct {p0, v0, v3}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->setupInterceptor(Landroid/os/IBinder;Landroid/os/IBinder;)V

    return v2

    :cond_63
    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->handleMissingBackdoor()V

    return v1
.end method
