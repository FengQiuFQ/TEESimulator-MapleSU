.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA256And256BitAESBC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;


# direct methods
.method public constructor <init>()V
    .registers 9

    const/16 v6, 0x100

    const/16 v7, 0x80

    const-string v1, "PBEWithSHA256And256BitAES-CBC-BC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lm/q;ZIIII)V

    return-void
.end method
