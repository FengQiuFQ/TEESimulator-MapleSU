.class public final Le2/a;
.super Lb1/a;


# static fields
.field public static volatile i:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-class v0, Le2/a;

    monitor-enter v0

    :try_start_3
    const-string v1, "BC"

    invoke-static {v1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_16

    if-eqz v2, :cond_f

    :goto_d
    monitor-exit v0

    goto :goto_20

    :cond_f
    :try_start_f
    sget-object v1, Le2/a;->i:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    if-eqz v1, :cond_18

    :goto_13
    sget-object v1, Le2/a;->i:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    goto :goto_d

    :catchall_16
    move-exception p0

    goto :goto_27

    :cond_18
    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v1, Le2/a;->i:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_16

    goto :goto_13

    :goto_20
    check-cast v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lb1/a;-><init>(ILjava/lang/Object;)V

    return-void

    :goto_27
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_16

    throw p0
.end method
