.class public final Le1/m0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final q:I

.field public final x:I


# direct methods
.method public constructor <init>(II[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p3

    iput-object p3, p0, Le1/m0;->c:[B

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p3

    iput-object p3, p0, Le1/m0;->d:[B

    iput p1, p0, Le1/m0;->q:I

    iput p2, p0, Le1/m0;->x:I

    return-void
.end method
