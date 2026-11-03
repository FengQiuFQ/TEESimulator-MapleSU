.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;


# direct methods
.method public synthetic constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/a;->a:Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .registers 1

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/a;->a:Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;

    invoke-static {p0}, Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;->c(Lorg/matrix/TEESimulator/interception/keystore/AbstractKeystoreInterceptor;)V

    return-void
.end method
