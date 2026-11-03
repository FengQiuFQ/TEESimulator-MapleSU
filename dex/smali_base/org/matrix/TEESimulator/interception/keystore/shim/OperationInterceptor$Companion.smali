.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/f;)V
    .registers 2

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTransactionNames(Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor$Companion;->getTransactionNames()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final getTransactionNames()Ljava/util/Map;
    .registers 1

    # getter for: Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->transactionNames$delegate:La/a;
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->access$getTransactionNames$delegate$cp()La/a;

    move-result-object p0

    check-cast p0, La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final getINTERCEPTED_CODES()[I
    .registers 1

    # getter for: Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->INTERCEPTED_CODES:[I
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/OperationInterceptor;->access$getINTERCEPTED_CODES$cp()[I

    move-result-object p0

    return-object p0
.end method
