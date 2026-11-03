.class public final enum La2/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum c:La2/b;

.field public static final enum d:La2/b;

.field public static final enum q:La2/b;

.field public static final enum x:La2/b;

.field public static final enum y:La2/b;

.field public static final enum z1:La2/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, La2/b;

    const-string v1, "SHA512withDSA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/b;->c:La2/b;

    new-instance v0, La2/b;

    const-string v1, "SHA3_512withDSA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/b;->d:La2/b;

    new-instance v0, La2/b;

    const-string v1, "SHA512withECDSA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/b;->q:La2/b;

    new-instance v0, La2/b;

    const-string v1, "SHA3_512withECDSA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/b;->x:La2/b;

    new-instance v0, La2/b;

    const-string v1, "SHA512withRSA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/b;->y:La2/b;

    new-instance v0, La2/b;

    const-string v1, "SHA3_512withRSA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La2/b;->z1:La2/b;

    return-void
.end method
