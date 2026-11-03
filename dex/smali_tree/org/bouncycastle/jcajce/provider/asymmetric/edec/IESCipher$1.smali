.class Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/y;


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;

.field final synthetic val$isX25519:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;Z)V
    .registers 3

    iput-boolean p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;->val$isX25519:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;->this$0:Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEncoded(Le1/b;)[B
    .registers 2

    iget-boolean p0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;->val$isX25519:Z

    if-eqz p0, :cond_d

    check-cast p1, Le1/d1;

    iget-object p0, p1, Le1/d1;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0

    :cond_d
    check-cast p1, Le1/f1;

    iget-object p0, p1, Le1/f1;->d:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method
