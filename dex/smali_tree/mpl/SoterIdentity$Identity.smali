.class public final Lmpl/SoterIdentity$Identity;
.super Ljava/lang/Object;
.source "SoterIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/SoterIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Identity"
.end annotation


# instance fields
.field public final certs:Ljava/util/ArrayList;

.field public final dir:Ljava/lang/String;

.field public final keyPair:Ljava/security/KeyPair;

.field public final leaf:Ljava/security/cert/X509Certificate;

.field public final mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyPair;Ljava/util/ArrayList;Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lmpl/SoterIdentity$Identity;->keyPair:Ljava/security/KeyPair;

    .line 168
    iput-object p2, p0, Lmpl/SoterIdentity$Identity;->certs:Ljava/util/ArrayList;

    .line 169
    iput-object p3, p0, Lmpl/SoterIdentity$Identity;->leaf:Ljava/security/cert/X509Certificate;

    .line 170
    iput-object p4, p0, Lmpl/SoterIdentity$Identity;->dir:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lmpl/SoterIdentity$Identity;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public certCount()I
    .registers 2

    .line 175
    iget-object v0, p0, Lmpl/SoterIdentity$Identity;->certs:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoterIdentity(mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmpl/SoterIdentity$Identity;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " certs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmpl/SoterIdentity$Identity;->certCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmpl/SoterIdentity$Identity;->dir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
