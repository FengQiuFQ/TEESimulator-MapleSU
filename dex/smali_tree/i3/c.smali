.class public final Li3/c;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Li3/e;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Li3/e;)V
    .registers 4

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p2, p0, Li3/c;->i:Li3/e;

    return-void
.end method
