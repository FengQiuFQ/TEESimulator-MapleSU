.class public final synthetic Lorg/matrix/TEESimulator/interception/keystore/d;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lh/a;
.implements Lh/l;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lorg/matrix/TEESimulator/interception/keystore/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/d;->a:I

    packed-switch p0, :pswitch_data_8c

    :pswitch_5
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->i()I

    move-result p0

    :goto_9
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->e()I

    move-result p0

    goto :goto_9

    :pswitch_13
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->c()I

    move-result p0

    goto :goto_9

    :pswitch_18
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->g()I

    move-result p0

    goto :goto_9

    :pswitch_1d
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->j()I

    move-result p0

    goto :goto_9

    :pswitch_22
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->r()I

    move-result p0

    goto :goto_9

    :pswitch_27
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->h()I

    move-result p0

    goto :goto_9

    :pswitch_2c
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->n()I

    move-result p0

    goto :goto_9

    :pswitch_31
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->q()I

    move-result p0

    goto :goto_9

    :pswitch_36
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->l()I

    move-result p0

    goto :goto_9

    :pswitch_3b
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->p()I

    move-result p0

    goto :goto_9

    :pswitch_40
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->a()I

    move-result p0

    goto :goto_9

    :pswitch_45
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->k()I

    move-result p0

    goto :goto_9

    :pswitch_4a
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->f()I

    move-result p0

    goto :goto_9

    :pswitch_4f
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeystoreErrorCodes;->o()I

    move-result p0

    goto :goto_9

    :pswitch_54
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_59
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->g()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_5e
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->j()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_63
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->f()I

    move-result p0

    goto :goto_9

    :pswitch_68
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->i()I

    move-result p0

    goto :goto_9

    :pswitch_6d
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->e()I

    move-result p0

    goto :goto_9

    :pswitch_72
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->d()I

    move-result p0

    goto :goto_9

    :pswitch_77
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;->h()I

    move-result p0

    goto :goto_9

    :pswitch_7c
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2MaintenanceInterceptor;->c()[I

    move-result-object p0

    return-object p0

    :pswitch_81
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->f()[I

    move-result-object p0

    return-object p0

    :pswitch_86
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/Keystore2Interceptor;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_5
        :pswitch_54
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4f
        :pswitch_4a
        :pswitch_45
        :pswitch_40
        :pswitch_3b
        :pswitch_36
        :pswitch_31
        :pswitch_2c
        :pswitch_27
        :pswitch_22
        :pswitch_1d
        :pswitch_18
        :pswitch_13
        :pswitch_e
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lorg/matrix/TEESimulator/interception/keystore/d;->a:I

    packed-switch p0, :pswitch_data_26

    :pswitch_5
    check-cast p1, Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;

    invoke-static {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->j(Lorg/matrix/TEESimulator/interception/keystore/shim/SoftwareOperation;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->m(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->h(Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentLinkedDeque;

    move-result-object p0

    return-object p0

    :pswitch_1e
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/matrix/TEESimulator/interception/keystore/shim/GeneratedKeyPersistence;->c(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0xa
        :pswitch_1e
        :pswitch_5
        :pswitch_17
        :pswitch_10
    .end packed-switch
.end method
