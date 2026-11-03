.class Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .registers 2

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    # invokes: Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->access$000(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    const/4 p0, 0x0

    return-object p0
.end method
