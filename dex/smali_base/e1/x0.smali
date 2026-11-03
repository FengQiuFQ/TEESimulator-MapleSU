.class public final Le1/x0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>([BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_15

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Le1/x0;->c:[B

    iput p2, p0, Le1/x0;->d:I

    array-length p0, p1

    const/4 p2, 0x0

    invoke-static {p1, p2, v0, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RC5 key length can be no greater than 255"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
