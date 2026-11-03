.class public final Lmpl/UsagePolicy;
.super Ljava/lang/Object;
.source "UsagePolicy.java"


# static fields
.field private static final DIAG:Ljava/util/Set;

.field private static final DIAG_LIMIT:I = 0x30

.field private static final LEDGER:Ljava/util/Map;

.field private static final LIMITS:Ljava/util/Map;

.field public static final TAG_USAGE_COUNT_LIMIT:I = 0x30000195

.field private static volatile counters:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmpl/UsagePolicy;->LEDGER:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lmpl/UsagePolicy;->LIMITS:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmpl/UsagePolicy;->DIAG:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjust([Landroid/system/keystore2/Authorization;ILjava/lang/String;)[Landroid/system/keystore2/Authorization;
    .registers 4

    .line 102
    const-string v0, "build"

    invoke-static {p0, p1, p2, v0}, Lmpl/UsagePolicy;->adjust0([Landroid/system/keystore2/Authorization;ILjava/lang/String;Ljava/lang/String;)[Landroid/system/keystore2/Authorization;

    move-result-object p0

    return-object p0
.end method

.method private static adjust0([Landroid/system/keystore2/Authorization;ILjava/lang/String;Ljava/lang/String;)[Landroid/system/keystore2/Authorization;
    .registers 12

    if-nez p0, :cond_8

    .line 131
    const-string v0, "null auths"

    invoke-static {p1, p2, p3, v0}, Lmpl/UsagePolicy;->diag(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 136
    :goto_a
    array-length v2, p0

    const v3, 0x30000195

    if-ge v1, v2, :cond_2c

    .line 137
    aget-object v2, p0, v1

    if-eqz v2, :cond_29

    .line 138
    iget-object v4, v2, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    if-nez v4, :cond_19

    goto :goto_29

    .line 141
    :cond_19
    iget-object v4, v2, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v4, v4, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-eq v4, v3, :cond_20

    goto :goto_29

    .line 145
    :cond_20
    :try_start_20
    iget-object v2, v2, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_aa

    goto :goto_2e

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_2c
    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_2e
    if-ltz v1, :cond_d3

    if-gez v2, :cond_34

    goto/16 :goto_d3

    :cond_34
    if-eqz p2, :cond_43

    .line 157
    sget-object v4, Lmpl/UsagePolicy;->LIMITS:Ljava/util/Map;

    invoke-static {p1, p2}, Lmpl/UsagePolicy;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_43
    invoke-static {p1, p2}, Lmpl/UsagePolicy;->lookup(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 161
    const-string v5, " limit="

    if-nez v4, :cond_70

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no live counter n="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-static {p1, p2}, Lmpl/UsagePolicy;->dump(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p1, p2, p3, v0}, Lmpl/UsagePolicy;->diag(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 166
    :cond_70
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_77

    const/4 v4, 0x0

    .line 170
    :cond_77
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "adjust site="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " alias="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " remaining="

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MPL-USAGE"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v4, v2, :cond_ab

    :catchall_aa
    return-object p0

    .line 175
    :cond_ab
    aget-object p1, p0, v1

    .line 176
    new-instance p2, Landroid/system/keystore2/Authorization;

    invoke-direct {p2}, Landroid/system/keystore2/Authorization;-><init>()V

    .line 177
    new-instance p3, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {p3}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    iput-object p3, p2, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    .line 178
    iget-object p3, p2, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iput v3, p3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 179
    iget-object p3, p2, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    invoke-static {v4}, Landroid/hardware/security/keymint/KeyParameterValue;->integer(I)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, p3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 180
    iget p1, p1, Landroid/system/keystore2/Authorization;->securityLevel:I

    iput p1, p2, Landroid/system/keystore2/Authorization;->securityLevel:I

    .line 181
    array-length p1, p0

    new-array p1, p1, [Landroid/system/keystore2/Authorization;

    .line 182
    array-length p3, p0

    invoke-static {p0, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    aput-object p2, p1, v1

    return-object p1

    .line 153
    :cond_d3
    :goto_d3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no USAGE_COUNT_LIMIT(405) n="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lmpl/UsagePolicy;->diag(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static adjustResponse(Landroid/system/keystore2/KeyEntryResponse;ILjava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    goto :goto_1f

    .line 76
    :cond_3
    iget-object p0, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    if-nez p0, :cond_8

    goto :goto_1f

    :cond_8
    if-eqz p2, :cond_13

    .line 81
    const-string v0, "keyid:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 p2, 0x0

    .line 85
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    .line 86
    const-string v1, "serve"

    invoke-static {v0, p1, p2, v1}, Lmpl/UsagePolicy;->adjust0([Landroid/system/keystore2/Authorization;ILjava/lang/String;Ljava/lang/String;)[Landroid/system/keystore2/Authorization;

    move-result-object v1

    if-eq v1, v0, :cond_1f

    .line 88
    iput-object v1, p0, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    :cond_1f
    :goto_1f
    return-void

    :catchall_20
    move-exception p0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustResponse failed uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " alias="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MPL-USAGE"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static adjustUid([Landroid/system/keystore2/Authorization;I)[Landroid/system/keystore2/Authorization;
    .registers 4

    const/4 v0, 0x0

    .line 107
    const-string v1, "wrap"

    invoke-static {p0, p1, v0, v1}, Lmpl/UsagePolicy;->adjust0([Landroid/system/keystore2/Authorization;ILjava/lang/String;Ljava/lang/String;)[Landroid/system/keystore2/Authorization;

    move-result-object p0

    return-object p0
.end method

.method private static counters()Ljava/util/Map;
    .registers 1

    .line 244
    sget-object v0, Lmpl/UsagePolicy;->counters:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-object v0

    .line 249
    :cond_5
    :try_start_5
    invoke-static {}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->access$getUsageCounters$cp()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_a

    goto :goto_b

    :catchall_a
    const/4 v0, 0x0

    .line 253
    :goto_b
    sput-object v0, Lmpl/UsagePolicy;->counters:Ljava/util/Map;

    return-object v0
.end method

.method private static diag(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :try_start_1c
    sget-object v1, Lmpl/UsagePolicy;->DIAG:Ljava/util/Set;

    monitor-enter v1
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_63

    .line 264
    :try_start_1f
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x30

    if-ge v2, v3, :cond_5e

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_5e

    .line 267
    :cond_2e
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_60

    .line 272
    const-string v0, "MPL-USAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adjust site="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " alias="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 265
    :cond_5e
    :goto_5e
    :try_start_5e
    monitor-exit v1

    return-void

    :catchall_60
    move-exception p0

    .line 268
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_60

    :try_start_62
    throw p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    return-void
.end method

.method private static dump(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3e

    .line 280
    :try_start_7
    const-string v2, "built="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v2, p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_15

    goto :goto_21

    :catchall_15
    move-exception p0

    .line 282
    const-string p1, "built=<"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    :goto_21
    invoke-static {}, Lmpl/UsagePolicy;->counters()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_31

    .line 286
    const-string p0, " map=unavailable"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 290
    :cond_31
    :try_start_31
    const-string p1, " mapSize="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " keys=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    .line 293
    :goto_4b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    const/4 v3, 0x5

    if-ge v2, v3, :cond_65

    .line 294
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-lez v2, :cond_5f

    .line 296
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_5f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 301
    :cond_65
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-le p0, v2, :cond_70

    .line 302
    const-string p0, ", ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    const/16 p0, 0x5d

    .line 304
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_75
    .catchall {:try_start_31 .. :try_end_75} :catchall_76

    goto :goto_82

    :catchall_76
    move-exception p0

    .line 306
    const-string p1, " mapDump=<"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 309
    :goto_82
    :try_start_82
    const-string p0, " ledger="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lmpl/UsagePolicy;->LEDGER:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_90

    .line 313
    :catchall_90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static key(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lookup(ILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 189
    invoke-static {}, Lmpl/UsagePolicy;->counters()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    if-eqz p1, :cond_13

    .line 195
    new-instance v2, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    invoke-direct {v2, p0, p1}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    .line 198
    :cond_13
    invoke-static {v0, p0, v1}, Lmpl/UsagePolicy;->soleCounterOfUid(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    :goto_17
    instance-of v2, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v2, :cond_26

    .line 201
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_26
    if-nez p1, :cond_2a

    move-object p0, v1

    goto :goto_34

    .line 204
    :cond_2a
    sget-object v0, Lmpl/UsagePolicy;->LEDGER:Ljava/util/Map;

    invoke-static {p0, p1}, Lmpl/UsagePolicy;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 205
    :goto_34
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_3b

    .line 206
    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_3b
    return-object v1
.end method

.method public static onFinish(Ljava/lang/Object;I)V
    .registers 4

    .line 116
    :try_start_0
    instance-of v0, p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    if-nez v0, :cond_5

    goto :goto_1c

    .line 119
    :cond_5
    check-cast p0, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    .line 120
    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lmpl/UsagePolicy;->LEDGER:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result p0

    invoke-static {p0, v0}, Lmpl/UsagePolicy;->key(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :goto_1c
    return-void
.end method

.method private static soleCounterOfUid(Ljava/util/Map;ILjava/lang/String;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    .line 218
    :try_start_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    .line 219
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 220
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 221
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 222
    instance-of v4, v3, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    if-nez v4, :cond_20

    goto :goto_a

    .line 225
    :cond_20
    check-cast v3, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;

    .line 226
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getUid()I

    move-result v4

    if-eq v4, p1, :cond_29

    goto :goto_a

    :cond_29
    if-eqz p2, :cond_36

    .line 229
    invoke-virtual {v3}, Lorg/matrix/TEESimulator/interception/keystore/KeyIdentifier;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_a

    :cond_36
    if-eqz v1, :cond_39

    return-object v0

    .line 235
    :cond_39
    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    goto :goto_a

    :cond_40
    return-object v1

    :catchall_41
    return-object v0
.end method
