.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/shim/d;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/a;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic b:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

.field public final synthetic c:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/d;->b:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iput-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/d;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/d;->b:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/d;->c:Ljava/lang/Integer;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p0, v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljava/lang/Integer;)La/h;

    move-result-object p0

    return-object p0
.end method
