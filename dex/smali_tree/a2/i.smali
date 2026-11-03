.class public La2/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final forDEREncoding:Z

.field private final out:Ljava/io/OutputStream;

.field private final overwriteFriendlyName:Z

.field private final protectionParameter:Ljava/security/KeyStore$ProtectionParameter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/KeyStore$ProtectionParameter;ZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/i;->out:Ljava/io/OutputStream;

    iput-object p2, p0, La2/i;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    iput-boolean p3, p0, La2/i;->forDEREncoding:Z

    iput-boolean p4, p0, La2/i;->overwriteFriendlyName:Z

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .registers 1

    iget-object p0, p0, La2/i;->out:Ljava/io/OutputStream;

    return-object p0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .registers 1

    iget-object p0, p0, La2/i;->protectionParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object p0
.end method

.method public isForDEREncoding()Z
    .registers 1

    iget-boolean p0, p0, La2/i;->forDEREncoding:Z

    return p0
.end method

.method public isOverwriteFriendlyName()Z
    .registers 1

    iget-boolean p0, p0, La2/i;->overwriteFriendlyName:Z

    return p0
.end method
