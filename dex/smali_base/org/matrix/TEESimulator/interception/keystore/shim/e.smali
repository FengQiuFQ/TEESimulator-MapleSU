.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/shim/e;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic A1:Z

.field public final synthetic B1:[B

.field public final synthetic c:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

.field public final synthetic d:Landroid/util/Pair;

.field public final synthetic q:Landroid/system/keystore2/KeyDescriptor;

.field public final synthetic x:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

.field public final synthetic y:Ljava/util/List;

.field public final synthetic z1:Lt4/l;


# direct methods
.method public synthetic constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Landroid/util/Pair;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Ljava/util/List;Lt4/l;Z[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->c:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->d:Landroid/util/Pair;

    iput-object p3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->q:Landroid/system/keystore2/KeyDescriptor;

    iput-object p4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->x:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

    iput-object p5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->y:Ljava/util/List;

    iput-object p6, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->z1:Lt4/l;

    iput-boolean p7, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->A1:Z

    iput-object p8, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->B1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-boolean v6, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->A1:Z

    iget-object v7, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->B1:[B

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->c:Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    iget-object v1, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->d:Landroid/util/Pair;

    iget-object v2, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->q:Landroid/system/keystore2/KeyDescriptor;

    iget-object v3, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->x:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;

    iget-object v4, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->y:Ljava/util/List;

    iget-object v5, p0, Lorg/matrix/TEESimulator/interception/keystore/shim/e;->z1:Lt4/l;

    invoke-static/range {v0 .. v7}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->l(Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;Landroid/util/Pair;Landroid/system/keystore2/KeyDescriptor;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;Ljava/util/List;Lt4/l;Z[B)V

    return-void
.end method
