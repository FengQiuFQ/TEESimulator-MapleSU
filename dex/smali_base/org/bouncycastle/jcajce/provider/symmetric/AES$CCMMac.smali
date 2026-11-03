.class Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field private final ccm:La1/f;

.field private macLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    invoke-static {v0}, La1/e;->e(Lorg/bouncycastle/crypto/d;)La1/e;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->macLength:I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 4

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    check-cast p0, La1/e;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, La1/e;->doFinal([BI)I

    move-result p0
    :try_end_9
    .catch Lorg/bouncycastle/crypto/x; {:try_start_0 .. :try_end_9} :catch_a

    return p0

    :catch_a
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "exception on doFinal(): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    check-cast p0, La1/e;

    invoke-virtual {p0}, La1/e;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Mac"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMacSize()I
    .registers 1

    iget p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->macLength:I

    return p0
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 4

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    const/4 v1, 0x1

    check-cast v0, La1/e;

    invoke-virtual {v0, v1, p1}, La1/e;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    check-cast p1, La1/e;

    invoke-virtual {p1}, La1/e;->b()[B

    move-result-object p1

    array-length p1, p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->macLength:I

    return-void
.end method

.method public reset()V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    check-cast p0, La1/e;

    iget-object v0, p0, La1/e;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->reset()V

    iget-object v0, p0, La1/e;->i:La1/d;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p0, p0, La1/e;->j:La1/d;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    check-cast p0, La1/e;

    iget-object p0, p0, La1/e;->i:La1/d;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .registers 4

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;->ccm:La1/f;

    check-cast p0, La1/e;

    invoke-virtual {p0, p1, p2, p3}, La1/e;->a([BII)V

    return-void
.end method
