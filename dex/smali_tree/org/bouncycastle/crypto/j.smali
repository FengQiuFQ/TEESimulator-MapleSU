.class public final enum Lorg/bouncycastle/crypto/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum c:Lorg/bouncycastle/crypto/j;

.field public static final enum d:Lorg/bouncycastle/crypto/j;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/j;

    const-string v1, "PRF"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/j;->c:Lorg/bouncycastle/crypto/j;

    new-instance v0, Lorg/bouncycastle/crypto/j;

    const-string v1, "ANY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    return-void
.end method
