.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/a;


# instance fields
.field public final synthetic a:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

.field public final synthetic b:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;


# direct methods
.method public synthetic constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/matrix/TEESimulator/interception/keystore/b;->a:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/b;->b:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lorg/matrix/TEESimulator/interception/keystore/b;->a:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/b;->b:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;

    invoke-static {v0, p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->e(Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion$SoftwareGrant;)La/h;

    move-result-object p0

    return-object p0
.end method
