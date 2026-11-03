.class public final La2/m;
.super Ljava/lang/Object;

# interfaces
.implements Lm4/i;


# instance fields
.field public final c:Ljava/security/cert/CRLSelector;

.field public final d:Z

.field public final q:Z

.field public final x:Ljava/math/BigInteger;

.field public final y:[B

.field public final z1:Z


# direct methods
.method public constructor <init>(La2/k;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, La2/k;->e:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/CRLSelector;

    iput-object v0, p0, La2/m;->c:Ljava/security/cert/CRLSelector;

    iget-boolean v0, p1, La2/k;->a:Z

    iput-boolean v0, p0, La2/m;->d:Z

    iget-boolean v0, p1, La2/k;->b:Z

    iput-boolean v0, p0, La2/m;->q:Z

    iget-object v0, p1, La2/k;->f:Ljava/lang/Object;

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, La2/m;->x:Ljava/math/BigInteger;

    iget-object v0, p1, La2/k;->d:[B

    iput-object v0, p0, La2/m;->y:[B

    iget-boolean p1, p1, La2/k;->c:Z

    iput-boolean p1, p0, La2/m;->z1:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/security/cert/CRL;

    invoke-virtual {p0, p1}, La2/m;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public final match(Ljava/security/cert/CRL;)Z
    .registers 6

    instance-of v0, p1, Ljava/security/cert/X509CRL;

    iget-object v1, p0, La2/m;->c:Ljava/security/cert/CRLSelector;

    if-nez v0, :cond_b

    invoke-interface {v1, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0

    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    :try_start_e
    sget-object v2, Ll0/v;->E1:Lm/q;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-static {v2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v2

    iget-object v2, v2, Lm/r;->c:[B

    invoke-static {v2}, Lm/l;->r(Ljava/lang/Object;)Lm/l;

    move-result-object v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_24} :catch_63

    goto :goto_26

    :cond_25
    const/4 v2, 0x0

    :goto_26
    if-nez v2, :cond_2d

    iget-boolean v2, p0, La2/m;->d:Z

    if-eqz v2, :cond_42

    goto :goto_63

    :cond_2d
    iget-boolean v3, p0, La2/m;->q:Z

    if-eqz v3, :cond_32

    goto :goto_63

    :cond_32
    iget-object v3, p0, La2/m;->x:Ljava/math/BigInteger;

    if-eqz v3, :cond_42

    invoke-virtual {v2}, Lm/l;->s()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    goto :goto_63

    :cond_42
    iget-boolean v2, p0, La2/m;->z1:Z

    if-eqz v2, :cond_5e

    sget-object v2, Ll0/v;->F1:Lm/q;

    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    iget-object p0, p0, La2/m;->y:[B

    if-nez p0, :cond_57

    if-eqz v0, :cond_5e

    goto :goto_63

    :cond_57
    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_5e

    goto :goto_63

    :cond_5e
    invoke-interface {v1, p1}, Ljava/security/cert/CRLSelector;->match(Ljava/security/cert/CRL;)Z

    move-result p0

    return p0

    :catch_63
    :goto_63
    const/4 p0, 0x0

    return p0
.end method
