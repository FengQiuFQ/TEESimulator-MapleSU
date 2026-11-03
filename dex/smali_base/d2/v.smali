.class public final Ld2/v;
.super Ljava/security/spec/EncodedKeySpec;


# static fields
.field public static final d:[Ljava/lang/String;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "ssh-ed25519"

    const-string v1, "ssh-dss"

    const-string v2, "ssh-rsa"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld2/v;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 7

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    const/4 v3, 0x4

    add-int/2addr v1, v3

    array-length v4, p1

    if-ge v1, v4, :cond_60

    invoke-static {p1, v3, v1}, Lm4/d;->q([BII)[B

    move-result-object p1

    invoke-static {p1}, Lm4/m;->a([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld2/v;->c:Ljava/lang/String;

    const-string v1, "ecdsa"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    goto :goto_46

    :cond_38
    :goto_38
    if-ge v0, v2, :cond_4a

    sget-object p1, Ld2/v;->d:[Ljava/lang/String;

    aget-object p1, p1, v0

    iget-object v1, p0, Ld2/v;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    :goto_46
    return-void

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unrecognised public key type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ld2/v;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid public key blob: type field longer than blob"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getFormat()Ljava/lang/String;
    .registers 1

    const-string p0, "OpenSSH"

    return-object p0
.end method
