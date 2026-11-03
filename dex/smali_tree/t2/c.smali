.class public final Lt2/c;
.super Ljava/lang/Object;

# interfaces
.implements Lp4/c;


# instance fields
.field public final a:La3/e;


# direct methods
.method public constructor <init>(La3/e;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt2/c;->a:La3/e;

    return-void
.end method


# virtual methods
.method public final a(Lp4/b;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p1, Lp4/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp4/a;

    iget-object v4, v3, Lp4/a;->a:Ljava/lang/String;

    iget-object v5, v3, Lp4/a;->b:Ljava/lang/String;

    const-string v6, "Proc-Type"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "4,ENCRYPTED"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v1, 0x1

    goto :goto_8

    :cond_2a
    iget-object v3, v3, Lp4/a;->a:Ljava/lang/String;

    const-string v4, "DEK-Info"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v2, v5

    goto :goto_8

    :cond_36
    iget-object p1, p1, Lp4/b;->c:[B

    const-string v0, "exception decoding - please check password and data."

    if-eqz v1, :cond_5a

    :try_start_3c
    new-instance p0, Ljava/util/StringTokenizer;

    const-string p1, ","

    invoke-direct {p0, v2, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ln4/c;->a(Ljava/lang/String;)[B

    new-instance p0, La3/e;

    const/16 p1, 0x15

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, La3/e;-><init>(BI)V

    return-object p0

    :catch_56
    move-exception p0

    goto :goto_61

    :catch_58
    move-exception p0

    goto :goto_73

    :cond_5a
    iget-object p0, p0, Lt2/c;->a:La3/e;

    invoke-virtual {p0, p1}, La3/e;->s([B)Lt2/a;

    move-result-object p0
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_60} :catch_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_60} :catch_56

    return-object p0

    :goto_61
    new-instance p1, Ln0/a;

    if-eqz v1, :cond_6a

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_6a
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_73
    new-instance p1, Ln0/a;

    if-eqz v1, :cond_7c

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_7c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method
