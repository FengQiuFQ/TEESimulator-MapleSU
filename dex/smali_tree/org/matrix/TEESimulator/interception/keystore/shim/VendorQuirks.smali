.class public final Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;

.field private static final UPDATE_AAD_ALLOWS_SUCCESS:Ljava/util/Set;

.field private static final XIAOMI_BRANDS:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;

    invoke-direct {v0}, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;-><init>()V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->INSTANCE:Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;

    const-string v0, "samsung"

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "singleton(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->UPDATE_AAD_ALLOWS_SUCCESS:Ljava/util/Set;

    const-string v0, "redmi"

    const-string v1, "poco"

    const-string v2, "xiaomi"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    const/4 v2, 0x3

    invoke-static {v2}, Lb/t;->f1(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v2, :cond_33

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_33
    sput-object v1, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->XIAOMI_BRANDS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isMediaTek()Z
    .registers 7

    const-string p0, "ro.hardware"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    const-string v2, "mt"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    const/4 v5, 0x1

    if-nez p0, :cond_27

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string p0, "HARDWARE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Ll/q;->k1(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    return v5
.end method


# virtual methods
.method public final nonAeadUpdateAadSucceeds()Z
    .registers 6

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "MANUFACTURER"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "toLowerCase(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "BRAND"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->UPDATE_AAD_ALLOWS_SUCCESS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_46

    :cond_2f
    const-string v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    sget-object v0, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->XIAOMI_BRANDS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const/4 p0, 0x0

    return p0

    :cond_41
    invoke-direct {p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/VendorQuirks;->isMediaTek()Z

    move-result p0

    return p0

    :cond_46
    :goto_46
    const/4 p0, 0x1

    return p0
.end method
