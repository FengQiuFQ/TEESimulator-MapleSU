.class public Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$ScryptWithUTF8;
.super Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "SCRYPT"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/SCRYPT$BasePBKDF2;-><init>(Ljava/lang/String;I)V

    return-void
.end method
