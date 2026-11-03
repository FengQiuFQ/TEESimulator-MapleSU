.class public final Lf1/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/a0;


# instance fields
.field public final g:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lf1/a;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Ljava/io/ByteArrayInputStream;)Le1/b;
    .registers 5

    iget-boolean p0, p0, Lf1/a;->g:Z

    if-eqz p0, :cond_7

    const/16 v0, 0x20

    goto :goto_9

    :cond_7
    const/16 v0, 0x38

    :goto_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    if-eqz p0, :cond_17

    new-instance p0, Le1/d1;

    invoke-direct {p0, v1, v2}, Le1/d1;-><init>([BI)V

    return-object p0

    :cond_17
    new-instance p0, Le1/f1;

    invoke-direct {p0, v1, v2}, Le1/f1;-><init>([BI)V

    return-object p0
.end method
