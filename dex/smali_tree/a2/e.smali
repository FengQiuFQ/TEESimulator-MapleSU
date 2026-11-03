.class public final La2/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/PublicKey;


# instance fields
.field public final c:Ll0/y;

.field public final d:Ll0/b;

.field public final q:[B


# direct methods
.method public constructor <init>(Lo/e;)V
    .registers 4

    iget-object v0, p1, Lo/e;->c:Ll0/z;

    invoke-virtual {v0}, Ll0/z;->i()[Ll0/y;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p1, Lo/e;->d:Ll0/b;

    iget-object p1, p1, Lo/e;->q:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La2/e;->c:Ll0/y;

    iput-object v1, p0, La2/e;->d:Ll0/b;

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, La2/e;->q:[B

    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 1

    const-string p0, "ExternalKey"

    return-object p0
.end method

.method public final getEncoded()[B
    .registers 7

    const-string v0, "DER"

    :try_start_2
    new-instance v1, Ll0/b;

    sget-object v2, Lo/a;->r1:Lm/q;

    invoke-direct {v1, v2}, Ll0/b;-><init>(Lm/q;)V

    iget-object v2, p0, La2/e;->c:Ll0/y;

    iget-object v3, p0, La2/e;->d:Ll0/b;

    iget-object p0, p0, La2/e;->q:[B

    new-instance v4, Ll0/z;

    invoke-direct {v4, v2}, Ll0/z;-><init>(Ll0/y;)V

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    new-instance v2, Lm/p0;

    new-instance v5, Lm/g;

    invoke-direct {v5}, Lm/g;-><init>()V

    invoke-virtual {v5, v4}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v5, v3}, Lm/g;->a(Lm/f;)V

    new-instance v3, Lm/x0;

    invoke-direct {v3, p0}, Lm/r;-><init>([B)V

    invoke-virtual {v5, v3}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v5}, Lm/x;-><init>(Lm/g;)V

    const/4 v3, -0x1

    iput v3, p0, Lm/a1;->q:I

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lm/b;-><init>([BI)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lm/a1;

    invoke-direct {v4, v1, v2}, Lm/x;-><init>(Lm/f;Lm/f;)V

    iput v3, v4, Lm/a1;->q:I

    invoke-virtual {v4, p0, v0}, Lm/u;->k(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_50} :catch_51

    return-object p0

    :catch_51
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to encode composite key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->c(Ljava/io/IOException;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "X.509"

    return-object p0
.end method
