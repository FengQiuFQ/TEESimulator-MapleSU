.class public final Le1/s0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:[B

.field public final d:Lorg/bouncycastle/crypto/g;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/g;[B)V
    .registers 5

    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[BII)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/g;[BII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, Le1/s0;->c:[B

    iput-object p1, p0, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    const/4 p0, 0x0

    invoke-static {p2, p3, v0, p0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
