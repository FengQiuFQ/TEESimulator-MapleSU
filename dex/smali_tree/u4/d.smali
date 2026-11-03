.class public final enum Lu4/d;
.super Ljava/lang/Enum;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final enum c:Lu4/d;

.field public static final enum d:Lu4/d;

.field public static final enum q:Lu4/d;

.field public static final synthetic x:[Lu4/d;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lu4/d;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu4/d;->c:Lu4/d;

    new-instance v1, Lu4/d;

    const-string v2, "PATCH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu4/d;->d:Lu4/d;

    new-instance v2, Lu4/d;

    const-string v3, "GENERATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu4/d;->q:Lu4/d;

    filled-new-array {v0, v1, v2}, [Lu4/d;

    move-result-object v0

    sput-object v0, Lu4/d;->x:[Lu4/d;

    return-void
.end method

.method public static a()[Lu4/d;
    .registers 1

    sget-object v0, Lu4/d;->x:[Lu4/d;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu4/d;

    return-object v0
.end method
