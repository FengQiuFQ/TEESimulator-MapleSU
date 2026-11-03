.class public final Le1/r0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:Lorg/bouncycastle/crypto/g;

.field public final d:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/g;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_e

    iput-object p1, p0, Le1/r0;->c:Lorg/bouncycastle/crypto/g;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/r0;->d:[B

    return-void

    :cond_e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'context\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
