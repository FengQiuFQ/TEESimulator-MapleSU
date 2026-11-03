.class public final Lq3/i;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Lq3/l;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lq3/l;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p2, p0, Lq3/i;->i:Lq3/l;

    return-void
.end method
