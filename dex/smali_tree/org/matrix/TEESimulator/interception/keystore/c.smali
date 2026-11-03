.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;


# direct methods
.method public synthetic constructor <init>(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/c;->a:I

    iput-object p2, p0, Lorg/matrix/TEESimulator/interception/keystore/c;->b:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lorg/matrix/TEESimulator/interception/keystore/c;->a:I

    iget-object p0, p0, Lorg/matrix/TEESimulator/interception/keystore/c;->b:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;

    invoke-static {v0, p0}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->g(ILorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$GeneratedKeyInfo;)La/h;

    move-result-object p0

    return-object p0
.end method
