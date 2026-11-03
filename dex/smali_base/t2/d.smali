.class public final Lt2/d;
.super Lp4/d;


# instance fields
.field public final d:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/io/StringReader;)V
    .registers 5

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lt2/d;->d:Ljava/util/HashMap;

    new-instance p0, Lt2/b;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "CERTIFICATE REQUEST"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "NEW CERTIFICATE REQUEST"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "CERTIFICATE"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "TRUSTED CERTIFICATE"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "X509 CERTIFICATE"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "X509 CRL"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "PKCS7"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "CMS"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "ATTRIBUTE CERTIFICATE"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "EC PARAMETERS"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "PUBLIC KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "RSA PUBLIC KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/c;

    new-instance v0, La3/e;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    invoke-direct {p0, v0}, Lt2/c;-><init>(La3/e;)V

    const-string v0, "RSA PRIVATE KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/c;

    new-instance v0, La3/e;

    const/16 v1, 0x16

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    invoke-direct {p0, v0}, Lt2/c;-><init>(La3/e;)V

    const-string v0, "DSA PRIVATE KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/c;

    new-instance v0, La3/e;

    const/16 v1, 0x17

    invoke-direct {v0, v2, v1}, La3/e;-><init>(BI)V

    invoke-direct {p0, v0}, Lt2/c;-><init>(La3/e;)V

    const-string v0, "EC PRIVATE KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "ENCRYPTED PRIVATE KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lt2/b;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lt2/b;-><init>(I)V

    const-string v0, "PRIVATE KEY"

    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
