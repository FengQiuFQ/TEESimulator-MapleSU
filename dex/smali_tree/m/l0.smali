.class public Lm/l0;
.super Ljava/lang/Object;

# interfaces
.implements Lm/f;
.implements Lm/s1;


# instance fields
.field public final c:I

.field public final d:I

.field public final q:La2/r;


# direct methods
.method public constructor <init>(IILa2/r;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm/l0;->c:I

    iput p2, p0, Lm/l0;->d:I

    iput-object p3, p0, Lm/l0;->q:La2/r;

    return-void
.end method


# virtual methods
.method public a()Lm/u;
    .registers 3

    iget v0, p0, Lm/l0;->c:I

    iget v1, p0, Lm/l0;->d:I

    iget-object p0, p0, Lm/l0;->q:La2/r;

    invoke-virtual {p0, v0, v1}, La2/r;->e(II)Lm/k0;

    move-result-object p0

    return-object p0
.end method

.method public final d()Lm/u;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lm/l0;->a()Lm/u;

    move-result-object p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lm/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lm/t;-><init>(Ljava/lang/String;)V

    throw v0
.end method
