.class public abstract Lq3/h;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq3/h;->a:I

    const/4 v0, 0x4

    iput v0, p0, Lq3/h;->b:I

    mul-int/lit8 v1, p1, 0x8

    div-int/2addr v1, v0

    iput v1, p0, Lq3/h;->d:I

    const/16 v2, 0x8

    if-gt p1, v2, :cond_15

    const/4 p1, 0x2

    :goto_12
    iput p1, p0, Lq3/h;->e:I

    goto :goto_21

    :cond_15
    const/16 v2, 0x88

    if-gt p1, v2, :cond_1b

    const/4 p1, 0x3

    goto :goto_12

    :cond_1b
    const/16 v2, 0x100

    if-gt p1, v2, :cond_32

    iput v0, p0, Lq3/h;->e:I

    :goto_21
    iget p1, p0, Lq3/h;->e:I

    add-int/2addr v1, p1

    iput v1, p0, Lq3/h;->c:I

    iput p2, p0, Lq3/h;->f:I

    iput p3, p0, Lq3/h;->g:I

    iput p4, p0, Lq3/h;->h:I

    iput p5, p0, Lq3/h;->i:I

    div-int/2addr p5, p2

    iput p5, p0, Lq3/h;->j:I

    return-void

    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot precompute SPX_WOTS_LEN2 for n outside {2, .., 256}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract a(Lb1/a;[B[B)[B
.end method

.method public abstract b(Lb1/a;[B[B[B)[B
.end method

.method public abstract c([B[B[B[B[B)Lq3/c;
.end method

.method public abstract d(Lb1/a;[B[B)[B
.end method

.method public abstract e([B[B[B[B)[B
.end method

.method public abstract f(Lb1/a;[B[B)[B
.end method

.method public abstract g([B)V
.end method
