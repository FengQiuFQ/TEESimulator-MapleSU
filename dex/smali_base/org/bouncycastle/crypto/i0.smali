.class public abstract enum Lorg/bouncycastle/crypto/i0;
.super Ljava/lang/Enum;


# static fields
.field public static final enum c:Lorg/bouncycastle/crypto/f0;

.field public static final enum d:Lorg/bouncycastle/crypto/g0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/bouncycastle/crypto/f0;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/f0;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/i0;->c:Lorg/bouncycastle/crypto/f0;

    new-instance v0, Lorg/bouncycastle/crypto/g0;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/g0;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/i0;->d:Lorg/bouncycastle/crypto/g0;

    return-void
.end method


# virtual methods
.method public abstract a([C)[B
.end method

.method public abstract b()Ljava/lang/String;
.end method
