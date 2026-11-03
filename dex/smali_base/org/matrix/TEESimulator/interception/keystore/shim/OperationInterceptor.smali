.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;
.super Lv4/g;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field private static final ABORT_TRANSACTION:I

.field public static final Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;

.field private static final FINISH_TRANSACTION:I

.field private static final INTERCEPTED_CODES:[I

.field private static final UPDATE_AAD_TRANSACTION:I

.field private static final UPDATE_TRANSACTION:I

.field private static final transactionNames$delegate:La/a;


# instance fields
.field private final backdoor:Landroid/os/IBinder;

.field private final isAead:Z

.field private final original:Landroid/system/keystore2/IKeystoreOperation;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;-><init>(Lkotlin/jvm/internal/f;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const-string v1, "updateAad"

    const-class v2, Landroid/system/keystore2/IKeystoreOperation$Stub;

    invoke-virtual {v0, v2, v1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    sput v1, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->UPDATE_AAD_TRANSACTION:I

    const-string v3, "update"

    invoke-virtual {v0, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    sput v3, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->UPDATE_TRANSACTION:I

    const-string v3, "finish"

    invoke-virtual {v0, v2, v3}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v3

    sput v3, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->FINISH_TRANSACTION:I

    const-string v4, "abort"

    invoke-virtual {v0, v2, v4}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->getTransactCode(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->ABORT_TRANSACTION:I

    filled-new-array {v1, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->INTERCEPTED_CODES:[I

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->transactionNames$delegate:La/a;

    return-void
.end method

.method public constructor <init>(Landroid/system/keystore2/IKeystoreOperation;Landroid/os/IBinder;Z)V
    .registers 5

    const-string v0, "original"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "backdoor"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->original:Landroid/system/keystore2/IKeystoreOperation;

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->backdoor:Landroid/os/IBinder;

    iput-boolean p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->isAead:Z

    return-void
.end method

.method public static final synthetic access$getINTERCEPTED_CODES$cp()[I
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->INTERCEPTED_CODES:[I

    return-object v0
.end method

.method public static final synthetic access$getTransactionNames$delegate$cp()La/a;
    .registers 1

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->transactionNames$delegate:La/a;

    return-object v0
.end method

.method public static synthetic c()Ljava/util/Map;
    .registers 1

    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->transactionNames_delegate$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static final transactionNames_delegate$lambda$0()Ljava/util/Map;
    .registers 9

    const-class v0, Landroid/system/keystore2/IKeystoreOperation$Stub;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "getDeclaredFields(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    const-string v5, "getName(...)"

    const/4 v6, 0x1

    if-ge v4, v2, :cond_3e

    aget-object v7, v0, v4

    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v8}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "TRANSACTION_"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    :cond_3e
    invoke-static {v1}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lb/t;->f1(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_4b

    move v0, v2

    :cond_4b
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_54
    if-ge v3, v0, :cond_83

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/reflect/Field;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v8, "_"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Ll/q;->p1(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_83
    return-object v2
.end method


# virtual methods
.method public onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 16

    const-string p5, "target"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p5, "data"

    invoke-static {p5, p8}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p5, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;->getTransactionNames()Ljava/util/Map;
    invoke-static {p5}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;->access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;)Ljava/util/Map;

    move-result-object p5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    invoke-interface {p5, p8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    if-nez p5, :cond_22

    const-string p5, "unknown code="

    invoke-static {p4, p5}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_22
    move-object v3, p5

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v6}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    sget p0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->UPDATE_AAD_TRANSACTION:I

    if-ne p4, p0, :cond_50

    iget-boolean p0, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->isAead:Z

    if-nez p0, :cond_50

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->nonAeadUpdateAadSucceeds()Z

    move-result p0

    if-eqz p0, :cond_43

    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createSuccessReply(Z)Lv4/d;

    move-result-object p0

    return-object p0

    :cond_43
    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;

    invoke-virtual {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->getInvalidTag()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/InterceptorUtils;->createServiceSpecificErrorReply(I)Lv4/d;

    move-result-object p0

    return-object p0

    :cond_50
    sget p0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->FINISH_TRANSACTION:I

    if-eq p4, p0, :cond_58

    sget p0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->ABORT_TRANSACTION:I

    if-ne p4, p0, :cond_5f

    :cond_58
    sget-object p0, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    iget-object p1, v0, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->backdoor:Landroid/os/IBinder;

    invoke-virtual {p0, p3, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->removeOperationInterceptor(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_5f
    sget-object p0, Lv4/c;->a:Lv4/c;

    return-object p0
.end method
