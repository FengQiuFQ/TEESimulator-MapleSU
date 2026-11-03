.class public abstract Lj1/a;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ls0/r;

    invoke-direct {v1}, Ls0/r;-><init>()V

    new-instance v1, La3/e;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/z;

    invoke-direct {v1}, Ls0/z;-><init>()V

    new-instance v1, La3/e;

    const/16 v2, 0xb

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/a0;

    invoke-direct {v1}, Ls0/a0;-><init>()V

    new-instance v1, La3/e;

    const/16 v2, 0xc

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    const-string v2, "SHA-224"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/b0;

    invoke-direct {v1}, Ls0/b0;-><init>()V

    new-instance v1, La3/e;

    const/16 v2, 0xd

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    const-string v2, "SHA-256"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/c0;

    invoke-direct {v1}, Ls0/c0;-><init>()V

    new-instance v1, La3/e;

    const/16 v2, 0xe

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    const-string v2, "SHA-384"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/e0;

    invoke-direct {v1}, Ls0/e0;-><init>()V

    new-instance v1, La3/e;

    const/16 v2, 0xf

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    const-string v2, "SHA-512"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lj1/a;->a()Ls0/d0;

    move-result-object v1

    invoke-virtual {v1}, Ls0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La3/e;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lj1/a;->b()Ls0/d0;

    move-result-object v1

    invoke-virtual {v1}, Ls0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La3/e;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lj1/a;->c()Ls0/d0;

    move-result-object v1

    invoke-virtual {v1}, Ls0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La3/e;

    const/16 v3, 0x12

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lj1/a;->d()Ls0/d0;

    move-result-object v1

    invoke-virtual {v1}, Ls0/d0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La3/e;

    const/4 v3, 0x7

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/g0;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ls0/g0;-><init>(I)V

    invoke-virtual {v1}, Ls0/g0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La3/e;

    const/16 v3, 0x8

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ls0/g0;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ls0/g0;-><init>(I)V

    invoke-virtual {v1}, Ls0/g0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, La3/e;

    const/16 v3, 0x9

    invoke-direct {v2, v4, v3}, La3/e;-><init>(BI)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a()Ls0/d0;
    .registers 2

    new-instance v0, Ls0/d0;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Ls0/d0;-><init>(I)V

    return-object v0
.end method

.method public static b()Ls0/d0;
    .registers 2

    new-instance v0, Ls0/d0;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ls0/d0;-><init>(I)V

    return-object v0
.end method

.method public static c()Ls0/d0;
    .registers 2

    new-instance v0, Ls0/d0;

    const/16 v1, 0x180

    invoke-direct {v0, v1}, Ls0/d0;-><init>(I)V

    return-object v0
.end method

.method public static d()Ls0/d0;
    .registers 2

    new-instance v0, Ls0/d0;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ls0/d0;-><init>(I)V

    return-object v0
.end method
