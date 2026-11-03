.class final synthetic Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$2;
.super Lkotlin/jvm/internal/h;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/r;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    const-string v0, "handleGetKeyCharacteristics"

    const-string v1, "handleGetKeyCharacteristics(JIILandroid/os/Parcel;)Lorg/matrix/TEESimulator/interception/core/BinderInterceptor$TransactionResult;"

    invoke-direct {p0, p1, v0, v1}, Lkotlin/jvm/internal/g;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object v5, p4

    check-cast v5, Landroid/os/Parcel;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor$generateKeyHandlers$2$2;->invoke(JIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(JIILandroid/os/Parcel;)Lv4/f;
    .registers 12

    const-string v0, "p3"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlin/jvm/internal/c;->receiver:Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    # invokes: Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->handleGetKeyCharacteristics(JIILandroid/os/Parcel;)Lv4/f;
    invoke-static/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->access$handleGetKeyCharacteristics(Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;JIILandroid/os/Parcel;)Lv4/f;

    move-result-object p0

    return-object p0
.end method
