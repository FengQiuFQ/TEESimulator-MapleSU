.class public final Le1/t0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:Ljava/security/SecureRandom;

.field public final d:Lorg/bouncycastle/crypto/g;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/g;Ljava/security/SecureRandom;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_a

    invoke-static {}, Lorg/bouncycastle/crypto/o;->b()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_c

    :cond_a
    sget-object v0, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    :goto_c
    iput-object p2, p0, Le1/t0;->c:Ljava/security/SecureRandom;

    iput-object p1, p0, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    return-void
.end method
