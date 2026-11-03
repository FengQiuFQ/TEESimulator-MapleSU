.class public final Ld2/u;
.super Ljava/security/spec/EncodedKeySpec;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_f

    const-string p1, "ASN.1"

    :goto_c
    iput-object p1, p0, Ld2/u;->c:Ljava/lang/String;

    return-void

    :cond_f
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_16

    const-string p1, "OpenSSH"

    goto :goto_c

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown byte encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getFormat()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ld2/u;->c:Ljava/lang/String;

    return-object p0
.end method
