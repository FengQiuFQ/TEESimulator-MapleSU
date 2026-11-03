.class public abstract Ln4/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ln4/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ln4/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln4/b;-><init>(I)V

    sput-object v0, Ln4/a;->a:Ln4/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_d
    sget-object v0, Ln4/a;->a:Ln4/b;

    invoke-virtual {v0, p0, v1}, Ln4/b;->a(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_17

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_17
    move-exception p0

    new-instance v0, Lm/t;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to decode base64 string: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lb/b;->B(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method
