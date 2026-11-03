.class public final Lorg/bouncycastle/crypto/m;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lorg/bouncycastle/crypto/m;

.field public static final d:Lorg/bouncycastle/crypto/m;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/bouncycastle/crypto/m;

    const-string v1, "dhDefaultParams"

    const-class v2, Le1/g;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/bouncycastle/crypto/m;->c:Lorg/bouncycastle/crypto/m;

    new-instance v0, Lorg/bouncycastle/crypto/m;

    const-string v1, "dsaDefaultParams"

    const-class v2, Le1/m;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/bouncycastle/crypto/m;->d:Lorg/bouncycastle/crypto/m;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iput-object p1, p0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
