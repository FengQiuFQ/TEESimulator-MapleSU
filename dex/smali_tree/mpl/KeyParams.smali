.class public final Lmpl/KeyParams;
.super Ljava/lang/Object;
.source "KeyParams.java"


# static fields
.field public static final TAG_APPLICATION_ID:I = -0x6ffffda7

.field public static final TAG_CERTIFICATE_SUBJECT:I = -0x6ffffc11

.field public static final TAG_INCLUDE_UNIQUE_ID:I = 0x700000ca

.field public static final TAG_MAX_USES_PER_BOOT:I = 0x30000194

.field public static final TAG_USAGE_COUNT_LIMIT:I = 0x30000195


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applicationId([Landroid/hardware/security/keymint/KeyParameter;)[B
    .registers 2

    const v0, -0x6ffffda7

    .line 90
    invoke-static {p0, v0}, Lmpl/KeyParams;->blob([Landroid/hardware/security/keymint/KeyParameter;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static blob([Landroid/hardware/security/keymint/KeyParameter;I)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 53
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_21

    .line 54
    aget-object v2, p0, v1

    if-eqz v2, :cond_1e

    .line 55
    iget v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v3, p1, :cond_1e

    iget-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-nez v3, :cond_15

    goto :goto_1e

    .line 59
    :cond_15
    :try_start_15
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1e

    if-eqz v2, :cond_1e

    return-object v2

    :catchall_1e
    :cond_1e
    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-object v0
.end method

.method public static certSubjectDer([Landroid/hardware/security/keymint/KeyParameter;)[B
    .registers 2

    const v0, -0x6ffffc11

    .line 94
    invoke-static {p0, v0}, Lmpl/KeyParams;->blob([Landroid/hardware/security/keymint/KeyParameter;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static count([Landroid/hardware/security/keymint/KeyParameter;I)I
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 39
    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_15

    .line 40
    aget-object v2, p0, v0

    if-eqz v2, :cond_12

    .line 41
    iget v2, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v2, p1, :cond_12

    add-int/lit8 v1, v1, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_15
    return v1
.end method

.method public static integer([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 75
    :goto_5
    array-length v2, p0

    if-ge v1, v2, :cond_23

    .line 76
    aget-object v2, p0, v1

    if-eqz v2, :cond_20

    .line 77
    iget v3, v2, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    if-ne v3, p1, :cond_20

    iget-object v3, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    if-nez v3, :cond_15

    goto :goto_20

    .line 81
    :cond_15
    :try_start_15
    iget-object v2, v2, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_20

    return-object p0

    :catchall_20
    :cond_20
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_23
    return-object v0
.end method

.method public static maxUsesPerBoot([Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
    .registers 2

    const v0, 0x30000194

    .line 98
    invoke-static {p0, v0}, Lmpl/KeyParams;->integer([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static usageCountLimit([Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/Integer;
    .registers 2

    const v0, 0x30000195

    .line 102
    invoke-static {p0, v0}, Lmpl/KeyParams;->integer([Landroid/hardware/security/keymint/KeyParameter;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
