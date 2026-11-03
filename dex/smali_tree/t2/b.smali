.class public final Lt2/b;
.super Ljava/lang/Object;

# interfaces
.implements Lp4/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lt2/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp4/b;)Ljava/lang/Object;
    .registers 6

    iget p0, p0, Lt2/b;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "problem parsing cert: "

    const/4 v3, 0x1

    packed-switch p0, :pswitch_data_17a

    :try_start_a
    new-instance p0, La3/e;

    iget-object p1, p1, Lp4/b;->c:[B

    invoke-direct {p0, p1}, La3/e;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_22
    :try_start_22
    new-instance p0, Ln0/e;

    iget-object p1, p1, Lp4/b;->c:[B

    invoke-direct {p0, p1}, Ln0/e;-><init>([B)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a

    return-object p0

    :catch_2a
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_3a
    :try_start_3a
    new-instance p0, Ln0/d;

    iget-object p1, p1, Lp4/b;->c:[B

    invoke-direct {p0, p1}, Ln0/d;-><init>([B)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_41} :catch_42

    return-object p0

    :catch_42
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_52
    new-instance p0, Ln0/c;

    iget-object p1, p1, Lp4/b;->c:[B

    const-string v0, "malformed data: "

    :try_start_58
    sget v2, Ln0/b;->a:I

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    if-eqz p1, :cond_73

    invoke-static {p1}, Ll0/f;->h(Lm/u;)Ll0/f;

    move-result-object p1
    :try_end_64
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_64} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_64} :catch_6f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/c;->c:Ll0/f;

    iget-object p1, p1, Ll0/f;->c:Ll0/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :catch_6f
    move-exception p0

    goto :goto_7b

    :catch_71
    move-exception p0

    goto :goto_91

    :cond_73
    :try_start_73
    new-instance p0, Ljava/io/IOException;

    const-string p1, "no content found"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7b
    .catch Ljava/lang/ClassCastException; {:try_start_73 .. :try_end_7b} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_7b} :catch_6f

    :goto_7b
    new-instance p1, Ln0/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_91
    new-instance p1, Ln0/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v1}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_a7
    :try_start_a7
    new-instance p0, Ll0/b;

    sget-object v0, Ld0/r;->a:Lm/q;

    sget-object v1, Lm/v0;->d:Lm/v0;

    invoke-direct {p0, v0, v1}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    iget-object p1, p1, Lp4/b;->c:[B

    invoke-static {p1}, Ld0/x;->h(Ljava/lang/Object;)Ld0/x;

    move-result-object p1

    new-instance v0, Ll0/p0;

    invoke-direct {v0, p0, p1}, Ll0/p0;-><init>(Ll0/b;Lm/f;)V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_bb} :catch_ce
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_bb} :catch_bc

    return-object v0

    :catch_bc
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem extracting key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :catch_ce
    move-exception p0

    throw p0

    :pswitch_d0
    iget-object p0, p1, Lp4/b;->c:[B

    invoke-static {p0}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object p0

    return-object p0

    :pswitch_d7
    :try_start_d7
    iget-object p0, p1, Lp4/b;->c:[B

    invoke-static {p0}, Ld0/t;->h(Ljava/lang/Object;)Ld0/t;

    move-result-object p0
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_dd} :catch_de

    return-object p0

    :catch_de
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem parsing PRIVATE KEY: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_f0
    :try_start_f0
    iget-object p0, p1, Lp4/b;->c:[B

    instance-of p1, p0, Lq/a;

    if-eqz p1, :cond_fa

    move-object v0, p0

    check-cast v0, Lq/a;

    goto :goto_105

    :cond_fa
    if-eqz p0, :cond_105

    new-instance v0, Lq/a;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-direct {v0, p0}, Lq/a;-><init>(Lm/x;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_105} :catch_106

    :cond_105
    :goto_105
    return-object v0

    :catch_106
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem parsing PKCS7 object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_118
    :try_start_118
    new-instance p0, Lx2/a;

    iget-object p1, p1, Lp4/b;->c:[B

    invoke-direct {p0, p1}, Lx2/a;-><init>([B)V
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_11f} :catch_120

    return-object p0

    :catch_120
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem parsing certrequest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_132
    :try_start_132
    new-instance p0, La3/e;

    iget-object p1, p1, Lp4/b;->c:[B

    invoke-static {p1}, Ld0/i;->h(Ljava/lang/Object;)Ld0/i;

    const/16 p1, 0x1b

    invoke-direct {p0, v1, p1}, La3/e;-><init>(BI)V
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_13e} :catch_13f

    return-object p0

    :catch_13f
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "problem parsing ENCRYPTED PRIVATE KEY: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v3}, Ln0/a;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :pswitch_151
    :try_start_151
    iget-object p0, p1, Lp4/b;->c:[B

    invoke-static {p0}, Lm/u;->o([B)Lm/u;

    move-result-object p0

    instance-of p1, p0, Lm/q;

    if-eqz p1, :cond_15d

    move-object v0, p0

    goto :goto_165

    :cond_15d
    instance-of p1, p0, Lm/x;

    if-eqz p1, :cond_165

    invoke-static {p0}, Lm0/h;->h(Ljava/lang/Object;)Lm0/h;

    move-result-object v0
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_165} :catch_178
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_165} :catch_166

    :cond_165
    :goto_165
    return-object v0

    :catch_166
    move-exception p0

    new-instance p1, Ln0/a;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception extracting EC named curve: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lb/b;->d(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ln0/a;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_178
    move-exception p0

    throw p0

    :pswitch_data_17a
    .packed-switch 0x0
        :pswitch_151
        :pswitch_132
        :pswitch_118
        :pswitch_f0
        :pswitch_d7
        :pswitch_d0
        :pswitch_a7
        :pswitch_52
        :pswitch_3a
        :pswitch_22
    .end packed-switch
.end method
