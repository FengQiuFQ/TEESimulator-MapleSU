.class Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/y;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;

.field final synthetic val$usePointCompression:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;Z)V
    .registers 3

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$1;->val$usePointCompression:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Le1/b;)[B
    .registers 2

    check-cast p1, Le1/x;

    iget-object p1, p1, Le1/x;->q:Lk2/p;

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/IESKEMCipher$1;->val$usePointCompression:Z

    invoke-virtual {p1, p0}, Lk2/p;->h(Z)[B

    move-result-object p0

    return-object p0
.end method
