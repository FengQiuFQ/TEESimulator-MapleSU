.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static final synthetic access$toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;
    .registers 3

    invoke-static {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;

    move-result-object p0

    return-object p0
.end method

.method private static final toAuthorizations(Lt4/l;II)[Landroid/system/keystore2/Authorization;
    .registers 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lt4/l;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->keyPurpose(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    const-string v3, "keyPurpose(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x20000001

    invoke-static {p2, v3, v2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2f
    iget v1, p0, Lt4/l;->b:I

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->algorithm(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const-string v2, "algorithm(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v2, 0x10000002

    invoke-static {p2, v2, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lt4/l;->a:I

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const-string v2, "integer(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x30000003

    invoke-static {p2, v3, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lt4/l;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->ecCurve(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const-string v3, "ecCurve(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x1000000a

    invoke-static {p2, v3, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_74
    iget-object v1, p0, Lt4/l;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->blockMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    const-string v4, "blockMode(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x20000004

    invoke-static {p2, v4, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :cond_9e
    iget-object v1, p0, Lt4/l;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->digest(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    const-string v4, "digest(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x20000005

    invoke-static {p2, v4, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a4

    :cond_c8
    iget-object v1, p0, Lt4/l;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ce
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/security/keymint/KeyParameterValue;->paddingMode(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v3

    const-string v4, "paddingMode(...)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v4, 0x20000006

    invoke-static {p2, v4, v3}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ce

    :cond_f2
    iget-object v1, p0, Lt4/l;->j:Ljava/math/BigInteger;

    if-eqz v1, :cond_10d

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/hardware/security/keymint/KeyParameterValue;->longInteger(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const-string v3, "longInteger(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v3, 0x500000c8

    invoke-static {p2, v3, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10d
    iget-object v1, p0, Lt4/l;->C:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "boolValue(...)"

    const/4 v5, 0x1

    if-eqz v1, :cond_12b

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x70000007

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12b
    iget-object v1, p0, Lt4/l;->O:Ljava/lang/Integer;

    if-eqz v1, :cond_144

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x30000008

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_144
    iget-object v1, p0, Lt4/l;->G:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15d

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x7000012f

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15d
    iget-object v1, p0, Lt4/l;->H:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x70000131

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_176
    iget-object v1, p0, Lt4/l;->I:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18f

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x700001fa

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18f
    iget-object v1, p0, Lt4/l;->J:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a8

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x700001fb

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a8
    iget-object v1, p0, Lt4/l;->K:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c1

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x700001fc

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c1
    iget-object v1, p0, Lt4/l;->M:Ljava/lang/Integer;

    if-eqz v1, :cond_1da

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x30000194

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1da
    iget-object v1, p0, Lt4/l;->N:Ljava/lang/Integer;

    if-eqz v1, :cond_1f3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x300003f2

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1f3
    iget-object v1, p0, Lt4/l;->L:Ljava/lang/Boolean;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v6}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20e

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v6, 0x700001f7

    invoke-static {p2, v6, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20e
    iget-object v1, p0, Lt4/l;->e:Ljava/lang/Integer;

    const/4 v6, 0x0

    if-eqz v1, :cond_218

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_219

    :cond_218
    move v1, v6

    :goto_219
    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->origin(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    const-string v7, "origin(...)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x100002be

    invoke-static {p2, v7, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lz4/f;->a:La/f;

    invoke-static {}, Lz4/f;->h()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x300002c1

    invoke-static {p2, v7, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lz4/f;->i(I)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_25b

    invoke-static {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x300002c2

    invoke-static {p2, v7, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/hardware/security/keymint/KeyParameterValue;->dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p2

    const-string v1, "dateTime(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x600002bd

    invoke-static {v7, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lt4/l;->y:Ljava/util/Date;

    if-eqz p2, :cond_28b

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/hardware/security/keymint/KeyParameterValue;->dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x60000190

    invoke-static {v7, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28b
    iget-object p2, p0, Lt4/l;->z:Ljava/util/Date;

    if-eqz p2, :cond_2a4

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/hardware/security/keymint/KeyParameterValue;->dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v7, 0x60000191

    invoke-static {v7, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a4
    iget-object p2, p0, Lt4/l;->A:Ljava/util/Date;

    if-eqz p2, :cond_2bd

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/hardware/security/keymint/KeyParameterValue;->dateTime(J)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p2

    invoke-static {v1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x60000192

    invoke-static {v1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2bd
    iget-object p2, p0, Lt4/l;->B:Ljava/lang/Integer;

    if-eqz p2, :cond_2d6

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x30000195

    invoke-static {v1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d6
    iget-object p0, p0, Lt4/l;->E:Ljava/lang/Boolean;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2ef

    invoke-static {v5}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const p2, 0x700001fd

    invoke-static {p2, p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptorKt;->toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2ef
    new-instance p0, Landroid/system/keystore2/Authorization;

    invoke-direct {p0}, Landroid/system/keystore2/Authorization;-><init>()V

    new-instance p2, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {p2}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    const v1, 0x300001f5

    iput v1, p2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v1, 0x186a0

    div-int/2addr p1, v1

    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p1

    iput-object p1, p2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iput-object p2, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iput v6, p0, Landroid/system/keystore2/Authorization;->securityLevel:I

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lorg/matrix/TEESimulator/MgfPatch;->fix(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/system/keystore2/Authorization;

    return-object p0
.end method

.method private static final toAuthorizations$createAuth(IILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;
    .registers 4

    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput p1, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iput-object p2, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    new-instance p1, Landroid/system/keystore2/Authorization;

    invoke-direct {p1}, Landroid/system/keystore2/Authorization;-><init>()V

    iput-object v0, p1, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iput p0, p1, Landroid/system/keystore2/Authorization;->securityLevel:I

    return-object p1
.end method

.method private static final toAuthorizations$createKeystoreAuth(ILandroid/hardware/security/keymint/KeyParameterValue;)Landroid/system/keystore2/Authorization;
    .registers 3

    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    iput-object p1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    new-instance p0, Landroid/system/keystore2/Authorization;

    invoke-direct {p0}, Landroid/system/keystore2/Authorization;-><init>()V

    iput-object v0, p0, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    const/16 p1, 0x64

    iput p1, p0, Landroid/system/keystore2/Authorization;->securityLevel:I

    return-object p0
.end method
