.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;
.super Landroid/system/keystore2/IKeystoreOperation$Stub;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# instance fields
.field private final operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;


# direct methods
.method public constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;)V
    .registers 3

    const-string v0, "operation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/system/keystore2/IKeystoreOperation$Stub;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    return-void
.end method


# virtual methods
.method public declared-synchronized abort()V
    .registers 3

    monitor-enter p0

    :try_start_1
    # MPL-P16-A1: abort() is a terminal transition in KeyMint. A handle that is already
    # finished (or pruned) must answer -28 INVALID_OPERATION_HANDLE, never "silently ok".
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->getFinalized()Z

    move-result v1

    if-eqz v1, :mpl_p16_a1_ok

    new-instance v0, Landroid/os/ServiceSpecificException;

    sget-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidOperationHandle()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v0

    :mpl_p16_a1_ok
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->abort()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public declared-synchronized finish([B[B)[B
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->finish([B[B)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized update([B)[B
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->update([B)[B

    move-result-object p1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object p1

    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public declared-synchronized updateAad([B)V
    .registers 7

    const-string v0, "[SoftwareOpBinder] updateAad() PROPAGATING class="

    const-string v1, "[SoftwareOpBinder] updateAad() ENTRY callingUid="

    monitor-enter p0

    :try_start_5
    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-eqz p1, :cond_11

    array-length v3, p1

    goto :goto_12

    :catchall_f
    move-exception p1

    goto :goto_76

    :cond_11
    const/4 v3, 0x0

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_f

    :try_start_29
    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperationBinder;->operation:Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-virtual {v1, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;->updateAad([B)V

    const-string p1, "[SoftwareOpBinder] updateAad() RETURNED_NORMALLY"

    invoke-static {p1}, Lx4/b;->c(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_35

    monitor-exit p0

    return-void

    :catchall_35
    move-exception p1

    :try_start_36
    instance-of v1, p1, Landroid/os/ServiceSpecificException;

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    move-object v1, p1

    check-cast v1, Landroid/os/ServiceSpecificException;

    goto :goto_40

    :cond_3f
    move-object v1, v2

    :goto_40
    if-eqz v1, :cond_48

    iget v1, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_48
    sget-object v1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " code="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " msg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx4/b;->c(Ljava/lang/String;)V

    throw p1

    :goto_76
    monitor-exit p0
    :try_end_77
    .catchall {:try_start_36 .. :try_end_77} :catchall_f

    throw p1
.end method
