.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/shim/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

.field public final synthetic d:Ljavax/crypto/SecretKey;

.field public final synthetic q:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic x:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

.field public final synthetic y:Lt4/l;

.field public final synthetic z1:[B


# direct methods
.method public synthetic constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljavax/crypto/SecretKey;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Lt4/l;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->c:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->d:Ljavax/crypto/SecretKey;

    iput-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->q:Landroid/system/keystore2/KeyDescriptor;

    iput-object p4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->x:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

    iput-object p5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->y:Lt4/l;

    iput-object p6, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->z1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->y:Lt4/l;

    iget-object v5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->z1:[B

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->c:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->d:Ljavax/crypto/SecretKey;

    iget-object v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->q:Landroid/system/keystore2/KeyDescriptor;

    iget-object v3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/c;->x:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

    invoke-static/range {v0 .. v5}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->e(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Ljavax/crypto/SecretKey;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Lt4/l;[B)V

    return-void
.end method
