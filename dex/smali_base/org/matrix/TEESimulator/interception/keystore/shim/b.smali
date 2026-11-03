.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/shim/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh/l;


# direct methods
.method public synthetic constructor <init>(Lh/l;I)V
    .registers 3

    iput p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/b;->a:I

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/b;->b:Lh/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/b;->a:I

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/b;->b:Lh/l;

    packed-switch v0, :pswitch_data_2e

    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_10
    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    invoke-virtual {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0

    :pswitch_19
    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/d;

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->f(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0

    :pswitch_20
    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/d;

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->n(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0

    :pswitch_27
    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/d;

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->a(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_20
        :pswitch_19
        :pswitch_10
    .end packed-switch
.end method
