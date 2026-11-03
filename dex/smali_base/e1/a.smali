.class public final Le1/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final q:Le1/o0;

.field public final x:I


# direct methods
.method public constructor <init>(Le1/o0;I[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/a;->q:Le1/o0;

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/a;->d:[B

    iput p2, p0, Le1/a;->x:I

    invoke-static {p4}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/a;->c:[B

    return-void
.end method
