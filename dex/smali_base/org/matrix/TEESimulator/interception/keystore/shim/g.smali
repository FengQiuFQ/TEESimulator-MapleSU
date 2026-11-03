.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/shim/g;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lh/l;


# direct methods
.method public synthetic constructor <init>(Lh/l;I)V
    .registers 3

    iput p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/g;->a:I

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/g;->b:Lh/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/g;->a:I

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/g;->b:Lh/l;

    packed-switch v0, :pswitch_data_16

    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/d;

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->i(Lorg/matrix/TEESimulator/interception/keystore/d;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_e
    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/shim/f;

    invoke-static {p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->g(Lorg/matrix/TEESimulator/interception/keystore/shim/f;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method
