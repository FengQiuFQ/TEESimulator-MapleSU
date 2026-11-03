.class public final Li2/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final q:I

.field public final x:I

.field public final y:[B

.field public final z1:Z


# direct methods
.method public constructor <init>([B[BII[BZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Li2/p;->c:[B

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_13

    :cond_11
    iput-object v0, p0, Li2/p;->c:[B

    :goto_13
    if-eqz p2, :cond_1f

    array-length p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Li2/p;->d:[B

    array-length v0, p2

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_21

    :cond_1f
    iput-object v0, p0, Li2/p;->d:[B

    :goto_21
    iput p3, p0, Li2/p;->q:I

    iput p4, p0, Li2/p;->x:I

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Li2/p;->y:[B

    iput-boolean p6, p0, Li2/p;->z1:Z

    return-void
.end method
