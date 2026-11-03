.class public final Lorg/bouncycastle/crypto/n;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/ThreadLocal;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/n;->a:Ljava/lang/ThreadLocal;

    return-void
.end method
