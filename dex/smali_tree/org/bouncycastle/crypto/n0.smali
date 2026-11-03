.class public abstract Lorg/bouncycastle/crypto/n0;
.super Lorg/bouncycastle/crypto/s;

# interfaces
.implements Lorg/bouncycastle/crypto/o0;


# instance fields
.field public final g:Lorg/bouncycastle/crypto/d;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/n0;->g:Lorg/bouncycastle/crypto/d;

    return-void
.end method


# virtual methods
.method public abstract d(B)B
.end method

.method public processBytes([BII[BI)I
    .registers 9

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_24

    add-int v1, p5, p3

    array-length v2, p4

    if-gt v1, v2, :cond_1c

    :goto_a
    if-ge p2, v0, :cond_1b

    add-int/lit8 v1, p5, 0x1

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/n0;->d(B)B

    move-result p2

    aput-byte p2, p4, p5

    move p5, v1

    move p2, v2

    goto :goto_a

    :cond_1b
    return p3

    :cond_1c
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too small"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
