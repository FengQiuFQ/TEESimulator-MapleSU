.class public final enum Lu4/a;
.super Ljava/lang/Enum;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final enum c:Lu4/a;

.field public static final enum d:Lu4/a;

.field public static final enum q:Lu4/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lu4/a;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu4/a;->c:Lu4/a;

    new-instance v0, Lu4/a;

    const-string v1, "FORCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu4/a;->d:Lu4/a;

    new-instance v0, Lu4/a;

    const-string v1, "DISABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu4/a;->q:Lu4/a;

    return-void
.end method
