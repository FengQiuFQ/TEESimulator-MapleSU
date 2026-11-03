.class public final Ld2/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public final c:[B

.field public final d:[B

.field public final q:Ld2/n;

.field public final x:Z


# direct methods
.method public constructor <init>(Ld2/n;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_17

    const/4 v0, 0x1

    iput-boolean v0, p0, Ld2/o;->x:Z

    iput-object p1, p0, Ld2/o;->q:Ld2/n;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/o;->c:[B

    const/4 p1, 0x0

    iput-object p1, p0, Ld2/o;->d:[B

    return-void

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "incorrect length for seed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ld2/n;[B[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld2/o;->x:Z

    iput-object p1, p0, Ld2/o;->q:Ld2/n;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/o;->c:[B

    invoke-static {p3}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/o;->d:[B

    return-void
.end method
