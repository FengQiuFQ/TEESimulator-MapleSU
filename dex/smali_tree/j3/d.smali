.class public final Lj3/d;
.super Lorg/bouncycastle/crypto/z;


# instance fields
.field public final i:Lj3/f;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lj3/f;)V
    .registers 4

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/z;-><init>(ILjava/security/SecureRandom;)V

    iput-object p2, p0, Lj3/d;->i:Lj3/f;

    return-void
.end method
