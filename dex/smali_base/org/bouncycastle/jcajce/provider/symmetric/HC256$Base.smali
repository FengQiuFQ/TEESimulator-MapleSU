.class public Lorg/bouncycastle/jcajce/provider/symmetric/HC256$Base;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;


# direct methods
.method public constructor <init>()V
    .registers 4

    new-instance v0, Lv0/q;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lv0/q;-><init>(I)V

    const/16 v1, 0x400

    new-array v2, v1, [I

    iput-object v2, v0, Lv0/q;->k:[I

    new-array v1, v1, [I

    iput-object v1, v0, Lv0/q;->l:[I

    const/4 v1, 0x0

    iput v1, v0, Lv0/q;->m:I

    const/4 v2, 0x4

    new-array v2, v2, [B

    iput-object v2, v0, Lv0/q;->j:[B

    iput v1, v0, Lv0/q;->n:I

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/o0;I)V

    return-void
.end method
