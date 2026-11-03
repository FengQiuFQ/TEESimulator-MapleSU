.class public final Lt4/f;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    return-void
.end method

.method public static a(Ln0/e;Lt4/e;Ly4/d;ILjava/util/Date;Ljava/util/Date;)Ljava/security/cert/X509Certificate;
    .registers 16

    new-instance v0, Ln0/e;

    iget-object v1, p2, Ly4/d;->b:Ljava/util/ArrayList;

    iget-object p2, p2, Ly4/d;->a:Ljava/security/KeyPair;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ln0/e;-><init>([B)V

    iget-object v0, v0, Ln0/e;->c:Ll0/m;

    iget-object v0, v0, Ll0/m;->d:Ll0/u0;

    iget-object v0, v0, Ll0/u0;->A1:Lj0/c;

    invoke-static {v0}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v4

    if-nez p4, :cond_2c

    iget-object v0, p0, Ln0/e;->c:Ll0/m;

    invoke-virtual {v0}, Ll0/m;->j()Ll0/x0;

    move-result-object v0

    invoke-virtual {v0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object v0

    move-object v6, v0

    goto :goto_2d

    :cond_2c
    move-object v6, p4

    :goto_2d
    if-nez p5, :cond_3b

    iget-object v0, p0, Ln0/e;->c:Ll0/m;

    invoke-virtual {v0}, Ll0/m;->h()Ll0/x0;

    move-result-object v0

    invoke-virtual {v0}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object v0

    move-object v7, v0

    goto :goto_3c

    :cond_3b
    move-object v7, p5

    :goto_3c
    if-nez p4, :cond_40

    if-eqz p5, :cond_82

    :cond_40
    sget-object p4, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object p4, p0, Ln0/e;->c:Ll0/m;

    invoke-virtual {p4}, Ll0/m;->j()Ll0/x0;

    move-result-object p4

    invoke-virtual {p4}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p4

    iget-object p5, p0, Ln0/e;->c:Ll0/m;

    invoke-virtual {p5}, Ll0/m;->h()Ll0/x0;

    move-result-object p5

    invoke-virtual {p5}, Ll0/x0;->h()Ljava/util/Date;

    move-result-object p5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overriding cert dates: notBefore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, "), notAfter="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ")"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lx4/b;->a(Ljava/lang/String;)V

    :cond_82
    new-instance v3, Lb1/b;

    iget-object p4, p0, Ln0/e;->c:Ll0/m;

    iget-object p4, p4, Ll0/m;->d:Ll0/u0;

    iget-object p4, p4, Ll0/u0;->q:Lm/l;

    invoke-virtual {p4}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object v5

    iget-object p4, p0, Ln0/e;->c:Ll0/m;

    iget-object p4, p4, Ll0/m;->d:Ll0/u0;

    iget-object p4, p4, Ll0/u0;->A1:Lj0/c;

    invoke-static {p4}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object v8

    iget-object p4, p0, Ln0/e;->c:Ll0/m;

    iget-object p4, p4, Ll0/m;->d:Ll0/u0;

    iget-object v9, p4, Ll0/u0;->B1:Ll0/p0;

    invoke-direct/range {v3 .. v9}, Lb1/b;-><init>(Lj0/c;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lj0/c;Ll0/p0;)V

    iget-object p4, p1, Lt4/e;->a:[Lm/f;

    iget-object p1, p1, Lt4/e;->b:Ljava/util/LinkedHashMap;

    sget-object p5, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Lt4/c;->b()Lm/a1;

    move-result-object p5

    const/16 v0, 0x2c0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v4, Lm/d1;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0, p5}, Lm/a0;-><init>(ZILm/f;)V

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lt4/c;->d(I)Ljava/util/LinkedHashMap;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_c6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_f4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lm/d1;

    if-eqz p5, :cond_ec

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    :cond_ec
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p1, p5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c6

    :cond_f4
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-instance p3, Lt4/b;

    const/4 p5, 0x2

    invoke-direct {p3, p5}, Lt4/b;-><init>(I)V

    invoke-static {p1, p3}, Lb/i;->a1(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    new-instance p3, Lm/a1;

    new-array p5, v2, [Lm/a0;

    invoke-interface {p1, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lm/f;

    invoke-direct {p3, p1}, Lm/a1;-><init>([Lm/f;)V

    const/4 p1, 0x7

    aput-object p3, p4, p1

    new-instance p1, Lm/a1;

    invoke-direct {p1, p4}, Lm/a1;-><init>([Lm/f;)V

    sget-object p3, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p3, Lm/x0;

    invoke-direct {p3, p1}, Lm/x0;-><init>(Lm/n;)V

    new-instance p1, Ll0/v;

    sget-object p4, Lt4/k;->a:Lm/q;

    invoke-direct {p1, p4, v2, p3}, Ll0/v;-><init>(Lm/q;ZLm/x0;)V

    iget-object p3, p0, Ln0/e;->d:Ll0/w;

    iget-object p3, p3, Ll0/w;->d:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p4

    new-array p5, p4, [Lm/q;

    move v0, v2

    :goto_130
    if-eq v0, p4, :cond_13d

    invoke-virtual {p3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/q;

    aput-object v1, p5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_130

    :cond_13d
    move p3, v2

    :goto_13e
    if-ge p3, p4, :cond_160

    aget-object v0, p5, p3

    sget-object v1, Lt4/k;->a:Lm/q;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    move-object v0, p1

    goto :goto_156

    :cond_14c
    iget-object v1, p0, Ln0/e;->d:Ll0/w;

    if-eqz v1, :cond_155

    invoke-virtual {v1, v0}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object v0

    goto :goto_156

    :cond_155
    const/4 v0, 0x0

    :goto_156
    iget-object v1, v3, Lb1/b;->i:Ljava/lang/Object;

    check-cast v1, Ll0/x;

    invoke-virtual {v1, v0}, Ll0/x;->a(Ll0/v;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_13e

    :cond_160
    new-instance p0, Lw2/a;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    const-string p3, "getPrivate(...)"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of p3, p1, Ljava/security/interfaces/ECPrivateKey;

    if-eqz p3, :cond_172

    const-string p1, "SHA256withECDSA"

    goto :goto_178

    :cond_172
    instance-of p3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz p3, :cond_1aa

    const-string p1, "SHA256withRSA"

    :goto_178
    invoke-direct {p0, p1}, Lw2/a;-><init>(Ljava/lang/String;)V

    new-instance p1, Lw2/b;

    new-instance p3, La3/e;

    const/4 p4, 0x6

    invoke-direct {p3, v2, p4}, La3/e;-><init>(BI)V

    invoke-direct {p1, p3}, Lw2/b;-><init>(Le2/b;)V

    iput-object p1, p0, Lw2/a;->b:Lw2/b;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw2/a;->a(Ljava/security/PrivateKey;)Lg1/d;

    move-result-object p0

    new-instance p1, La3/e;

    const/16 p2, 0x14

    invoke-direct {p1, v2, p2}, La3/e;-><init>(BI)V

    invoke-virtual {v3, p0}, Lb1/b;->e(Lg1/d;)Ln0/e;

    move-result-object p0

    invoke-virtual {p1, p0}, La3/e;->n(Ln0/e;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0

    :cond_1aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported keybox signing key type: "

    invoke-static {p2, p1}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(ILjava/lang/String;)Ly4/d;
    .registers 6

    invoke-static {p0}, Lu4/g;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSA"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_d
    move-object p1, v1

    goto :goto_18

    :cond_f
    const-string v1, "EC"

    invoke-static {p1, v1, v2}, Ll/q;->f1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_d

    :cond_18
    :goto_18
    invoke-static {v0, p1}, Ly4/e;->b(Ljava/lang/String;Ljava/lang/String;)Ly4/d;

    move-result-object v1

    if-eqz v1, :cond_1f

    return-object v1

    :cond_1f
    invoke-static {v0}, Ly4/e;->a(Ljava/lang/String;)Ly4/d;

    move-result-object v1

    if-eqz v1, :cond_4e

    sget-object v2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' attestation key in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for UID "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "; re-signing under the available keybox key to avoid leaking the device\'s real attestation."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->a(Ljava/lang/String;)V

    return-object v1

    :cond_4e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No usable attestation key for UID "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " in file "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (requested \'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-static {v2, p1, p0}, Lb/b;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Ln0/e;)Lt4/e;
    .registers 7

    sget-object v0, Lt4/k;->a:Lm/q;

    iget-object p0, p0, Ln0/e;->d:Ll0/w;

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0, v0}, Ll0/w;->h(Lm/q;)Ll0/v;

    move-result-object p0

    goto :goto_d

    :cond_c
    move-object p0, v1

    :goto_d
    if-nez p0, :cond_10

    return-object v1

    :cond_10
    iget-object p0, p0, Ll0/v;->q:Lm/r;

    iget-object p0, p0, Lm/r;->c:[B

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    invoke-virtual {p0}, Lm/x;->B()[Lm/f;

    move-result-object p0

    const/4 v0, 0x6

    aget-object v2, p0, v0

    const/4 v3, 0x7

    aget-object v4, p0, v3

    invoke-static {v2}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v2}, Lt4/f;->e(Lm/f;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-static {v4}, Lkotlin/jvm/internal/i;->b(Ljava/lang/Object;)V

    invoke-static {v4}, Lt4/f;->e(Lm/f;)Z

    move-result v5

    if-nez v5, :cond_38

    aput-object v4, p0, v0

    aput-object v2, p0, v3

    :cond_38
    aget-object v0, p0, v3

    const-string v2, "null cannot be cast to non-null type org.bouncycastle.asn1.ASN1Sequence"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lm/x;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/f;

    const-string v4, "null cannot be cast to non-null type org.bouncycastle.asn1.ASN1TaggedObject"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Lm/a0;

    iget v4, v3, Lm/a0;->q:I

    const/16 v5, 0x2c0

    if-ne v4, v5, :cond_6c

    invoke-virtual {v3}, Lm/a0;->r()Lm/n;

    move-result-object v1

    invoke-virtual {v1}, Lm/n;->d()Lm/u;

    move-result-object v1

    goto :goto_4a

    :cond_6c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :cond_74
    new-instance v0, Lt4/e;

    invoke-direct {v0, p0, v2, v1}, Lt4/e;-><init>([Lm/f;Ljava/util/LinkedHashMap;Lm/u;)V

    return-object v0
.end method

.method public static d([Ljava/security/cert/Certificate;ILjava/util/Date;Ljava/util/Date;)[Ljava/security/cert/Certificate;
    .registers 14

    const-string v0, "Successfully rebuilt a valid, patched certificate chain for UID "

    array-length v1, p0

    const-string v2, "."

    if-nez v1, :cond_1f

    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Attempted to patch a null or empty certificate chain for UID "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    aget-object v3, p0, v1

    const-string v4, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Ljava/security/cert/X509Certificate;

    new-instance v4, Ln0/e;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ln0/e;-><init>([B)V

    invoke-static {v4}, Lt4/f;->c(Ln0/e;)Lt4/e;

    move-result-object v5

    if-nez v5, :cond_39

    return-object p0

    :cond_39
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "getSigAlgName(...)"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1, v3}, Lt4/f;->b(ILjava/lang/String;)Ly4/d;

    move-result-object v6
    :try_end_46
    .catchall {:try_start_20 .. :try_end_46} :catchall_77

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    :try_start_49
    invoke-static/range {v4 .. v9}, Lt4/f;->a(Ln0/e;Lt4/e;Ly4/d;ILjava/util/Date;Ljava/util/Date;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-static {p1}, Lt4/d;->n0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, v6, Ly4/d;->b:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lb/i;->Z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    sget-object p2, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lx4/b;->c(Ljava/lang/String;)V

    new-array p2, v1, [Ljava/security/cert/Certificate;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/Certificate;
    :try_end_73
    .catchall {:try_start_49 .. :try_end_73} :catchall_74

    goto :goto_80

    :catchall_74
    move-exception v0

    :goto_75
    move-object p1, v0

    goto :goto_7a

    :catchall_77
    move-exception v0

    move v7, p1

    goto :goto_75

    :goto_7a
    new-instance p2, La/d;

    invoke-direct {p2, p1}, La/d;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_80
    invoke-static {p1}, La/e;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_88

    move-object p0, p1

    goto :goto_9e

    :cond_88
    sget-object p1, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to patch and rebuild certificate chain for UID "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lx4/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9e
    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public static e(Lm/f;)Z
    .registers 3

    instance-of v0, p0, Lm/x;

    if-nez v0, :cond_5

    goto :goto_37

    :cond_5
    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_15

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_37

    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/f;

    instance-of v1, v0, Lm/a0;

    if-eqz v1, :cond_2c

    check-cast v0, Lm/a0;

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    :goto_2d
    if-eqz v0, :cond_19

    iget v0, v0, Lm/a0;->q:I

    const/16 v1, 0x2c0

    if-ne v0, v1, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x0

    return p0
.end method
