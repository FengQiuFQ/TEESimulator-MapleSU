.class final Lmpl/CertSurgery$SigningKey;
.super Ljava/lang/Object;
.source "CertSurgery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/CertSurgery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SigningKey"
.end annotation


# instance fields
.field final algorithmIdentifier:[B

.field final jcaName:Ljava/lang/String;

.field final key:Ljava/security/PrivateKey;

.field final oid:Ljava/lang/String;

.field final rsa:Z


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;ZLjava/lang/String;Ljava/lang/String;[B)V
    .registers 6

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lmpl/CertSurgery$SigningKey;->key:Ljava/security/PrivateKey;

    .line 354
    iput-boolean p2, p0, Lmpl/CertSurgery$SigningKey;->rsa:Z

    .line 355
    iput-object p3, p0, Lmpl/CertSurgery$SigningKey;->jcaName:Ljava/lang/String;

    .line 356
    iput-object p4, p0, Lmpl/CertSurgery$SigningKey;->oid:Ljava/lang/String;

    .line 357
    iput-object p5, p0, Lmpl/CertSurgery$SigningKey;->algorithmIdentifier:[B

    return-void
.end method
