.class public final Le1/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/u;


# instance fields
.field public final a:[B

.field public final b:[B

.field public final c:[B


# direct methods
.method public constructor <init>([B[B[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2a

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/l0;->a:[B

    if-eqz p2, :cond_18

    array-length p1, p2

    if-nez p1, :cond_11

    goto :goto_18

    :cond_11
    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/l0;->b:[B

    goto :goto_1b

    :cond_18
    :goto_18
    const/4 p1, 0x0

    iput-object p1, p0, Le1/l0;->b:[B

    :goto_1b
    if-nez p3, :cond_23

    const/4 p1, 0x0

    new-array p1, p1, [B

    iput-object p1, p0, Le1/l0;->c:[B

    return-void

    :cond_23
    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/l0;->c:[B

    return-void

    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IKM (input keying material) should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
