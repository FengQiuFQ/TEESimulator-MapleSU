.class public Lorg/bouncycastle/jcajce/provider/symmetric/ChaCha$Base7539;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/h;

    invoke-direct {v0}, Lv0/d0;-><init>()V

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;I)V

    return-void
.end method
