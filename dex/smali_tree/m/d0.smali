.class public final Lm/d0;
.super Ljava/lang/Object;

# interfaces
.implements Lm/c;


# instance fields
.field public final c:La2/r;

.field public d:Lm/m0;


# direct methods
.method public constructor <init>(La2/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/d0;->c:La2/r;

    return-void
.end method

.method public static e(La2/r;)Lm/c0;
    .registers 3

    new-instance v0, Lm/m0;

    invoke-direct {v0, p0}, Lm/m0;-><init>(La2/r;)V

    invoke-static {v0}, Lq4/k;->G0(Ljava/io/InputStream;)[B

    move-result-object p0

    iget v0, v0, Lm/m0;->q:I

    new-instance v1, Lm/c0;

    invoke-direct {v1, p0, v0}, Lm/c0;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public final a()Lm/u;
    .registers 1

    iget-object p0, p0, Lm/d0;->c:La2/r;

    invoke-static {p0}, Lm/d0;->e(La2/r;)Lm/c0;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/io/InputStream;
    .registers 3

    new-instance v0, Lm/m0;

    iget-object v1, p0, Lm/d0;->c:La2/r;

    invoke-direct {v0, v1}, Lm/m0;-><init>(La2/r;)V

    iput-object v0, p0, Lm/d0;->d:Lm/m0;

    return-object v0
.end method

.method public final d()Lm/u;
    .registers 4

    :try_start_0
    iget-object p0, p0, Lm/d0;->c:La2/r;

    invoke-static {p0}, Lm/d0;->e(La2/r;)Lm/c0;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    :catch_7
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method

.method public final f()I
    .registers 1

    iget-object p0, p0, Lm/d0;->d:Lm/m0;

    iget p0, p0, Lm/m0;->q:I

    return p0
.end method
