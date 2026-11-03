.class public final La2/q;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/i;


# instance fields
.field public final c:Ljava/security/cert/CertSelector;


# direct methods
.method public constructor <init>(Ljava/security/cert/CertSelector;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/q;->c:Ljava/security/cert/CertSelector;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/security/cert/Certificate;

    iget-object p0, p0, La2/q;->c:Ljava/security/cert/CertSelector;

    invoke-interface {p0, p1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p0

    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, La2/q;

    iget-object p0, p0, La2/q;->c:Ljava/security/cert/CertSelector;

    invoke-direct {v0, p0}, La2/q;-><init>(Ljava/security/cert/CertSelector;)V

    return-object v0
.end method
