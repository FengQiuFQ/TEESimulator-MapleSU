.class Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

.field final synthetic val$algorithm:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->val$algorithm:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->val$key:Ljava/lang/String;

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->run()Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/security/Provider$Service;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->val$type:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->val$algorithm:Ljava/lang/String;

    # invokes: Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->access$101(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_45

    :cond_13
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    # getter for: Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->access$200(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->val$key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->access$301(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;->this$0:Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    # invokes: Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V
    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->access$401(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/security/Provider$Service;)V

    return-object v0

    :cond_45
    :goto_45
    const/4 p0, 0x0

    return-object p0
.end method
