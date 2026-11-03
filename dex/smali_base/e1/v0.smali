.class public final Le1/v0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:[B

.field public final d:Lorg/bouncycastle/crypto/g;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/g;[B)V
    .registers 5

    array-length v0, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v0, [B

    iput-object v1, p0, Le1/v0;->c:[B

    iput-object p1, p0, Le1/v0;->d:Lorg/bouncycastle/crypto/g;

    const/4 p0, 0x0

    invoke-static {p2, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
