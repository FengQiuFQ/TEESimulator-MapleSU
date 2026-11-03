.class public Lb1/a;
.super Ljava/lang/Object;

# interfaces
.implements Le2/b;
.implements Lorg/bouncycastle/crypto/a0;
.implements Lorg/bouncycastle/crypto/j0;
.implements Lorg/bouncycastle/crypto/b;
.implements Lorg/bouncycastle/crypto/b0;


# instance fields
.field public final synthetic g:I

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/16 v0, 0xa

    iput v0, p0, Lb1/a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lb1/a;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lb1/a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    const/16 v0, 0xe

    iput v0, p0, Lb1/a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ls0/l0;

    invoke-direct {v0, p1, p2}, Ls0/l0;-><init>(II)V

    iput-object v0, p0, Lb1/a;->h:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Lb1/a;->g:I

    iput-object p2, p0, Lb1/a;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb1/a;)V
    .registers 4

    const/16 v0, 0xa

    iput v0, p0, Lb1/a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lb1/a;->h:Ljava/lang/Object;

    iget-object p0, p1, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/4 p1, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Li3/b;)V
    .registers 7

    const/4 v0, 0x4

    iput v0, p0, Lb1/a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Li3/b;->f:I

    new-array v1, v0, [Li3/j;

    iput-object v1, p0, Lb1/a;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1e

    iget-object v2, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast v2, [Li3/j;

    new-instance v3, Li3/j;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Li3/j;-><init>(Li3/b;I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1e
    return-void
.end method

.method public constructor <init>(Lv3/m;[[B)V
    .registers 6

    const/16 v0, 0xb

    iput v0, p0, Lb1/a;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_46

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    array-length v2, p2

    if-ge v1, v2, :cond_1d

    aget-object v2, p2, v1

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "publicKey byte array == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    array-length v1, p2

    iget v2, p1, Lv3/m;->c:I

    if-ne v1, v2, :cond_3e

    :goto_22
    array-length v1, p2

    if-ge v0, v1, :cond_37

    aget-object v1, p2, v0

    array-length v1, v1

    iget v2, p1, Lv3/m;->a:I

    if-ne v1, v2, :cond_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong publicKey format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    invoke-static {p2}, Ls2/b;->m([[B)[[B

    move-result-object p1

    iput-object p1, p0, Lb1/a;->h:Ljava/lang/Object;

    return-void

    :cond_3e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong publicKey size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_46
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(I)I
    .registers 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method

.method public static s(IZ)I
    .registers 3

    invoke-static {p0}, Lb1/a;->r(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static t(I)I
    .registers 2

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    :goto_7
    ushr-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_e

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_e
    return v0
.end method


# virtual methods
.method public A(I)V
    .registers 4

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lm4/d;->w([BII)V

    array-length p1, p0

    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-static {p0, v1, p1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public B(I)V
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public C([BII)V
    .registers 4

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public D(I)V
    .registers 7

    const/16 v0, 0x80

    if-ge p1, v0, :cond_8

    invoke-virtual {p0, p1}, Lb1/a;->B(I)V

    return-void

    :cond_8
    const/4 v1, 0x5

    new-array v2, v1, [B

    :goto_b
    add-int/lit8 v3, v1, -0x1

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    ushr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_22

    rsub-int/lit8 p1, v3, 0x5

    add-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v2, v1

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v2, v1, p1}, Lb1/a;->C([BII)V

    return-void

    :cond_22
    move v1, v3

    goto :goto_b
.end method

.method public E([Lm/f;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget-object v2, p1, v1

    invoke-interface {v2}, Lm/f;->d()Lm/u;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lm/u;->i(Lb1/a;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_11
    return-void
.end method

.method public F(IZ[B)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lb1/a;->I(IZ)V

    array-length p1, p3

    invoke-virtual {p0, p1}, Lb1/a;->D(I)V

    const/4 p1, 0x0

    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lb1/a;->C([BII)V

    return-void
.end method

.method public G(ZI[Lm/f;)V
    .registers 4

    invoke-virtual {p0, p2, p1}, Lb1/a;->I(IZ)V

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lb1/a;->B(I)V

    invoke-virtual {p0, p3}, Lb1/a;->E([Lm/f;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lb1/a;->B(I)V

    invoke-virtual {p0, p1}, Lb1/a;->B(I)V

    return-void
.end method

.method public H(II)V
    .registers 7

    const/16 v0, 0x1f

    if-ge p2, v0, :cond_9

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lb1/a;->B(I)V

    return-void

    :cond_9
    const/4 v1, 0x6

    new-array v1, v1, [B

    and-int/lit8 v2, p2, 0x7f

    int-to-byte v2, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    :goto_12
    const/16 v2, 0x7f

    if-le p2, v2, :cond_22

    ushr-int/lit8 p2, p2, 0x7

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v2, p2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto :goto_12

    :cond_22
    add-int/lit8 v3, v3, -0x1

    or-int/2addr p1, v0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    rsub-int/lit8 p1, v3, 0x6

    invoke-virtual {p0, v1, v3, p1}, Lb1/a;->C([BII)V

    return-void
.end method

.method public I(IZ)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, Lb1/a;->B(I)V

    :cond_5
    return-void
.end method

.method public J(Lm/u;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lm/u;->i(Lb1/a;Z)V

    return-void
.end method

.method public K([Lm/u;)V
    .registers 6

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_d

    aget-object v2, p1, v1

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lm/u;->i(Lb1/a;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljavax/crypto/Mac;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ljava/security/MessageDigest;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object p0

    return-object p0
.end method

.method public createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public doFinal([BI)I
    .registers 3

    iget p2, p0, Lb1/a;->g:I

    packed-switch p2, :pswitch_data_24

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ls0/l0;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ls0/l0;->d([BI)I

    move-result p0

    return p0

    :pswitch_f
    :try_start_f
    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, La1/o;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, La1/o;->doFinal([BI)I

    move-result p0
    :try_end_18
    .catch Lorg/bouncycastle/crypto/x; {:try_start_f .. :try_end_18} :catch_19

    return p0

    :catch_19
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_24
    .packed-switch 0xd
        :pswitch_f
    .end packed-switch
.end method

.method public e(Ljava/io/ByteArrayInputStream;)Le1/b;
    .registers 9

    iget v0, p0, Lb1/a;->g:I

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_94

    check-cast p0, Le1/r;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_70

    if-eqz v0, :cond_68

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3f

    const/4 v4, 0x4

    if-eq v0, v4, :cond_3d

    const/4 v4, 0x6

    if-eq v0, v4, :cond_3d

    const/4 v4, 0x7

    if-ne v0, v4, :cond_23

    goto :goto_3d

    :cond_23
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Sender\'s public key has invalid point encoding 0x"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    :goto_3d
    move v4, v1

    goto :goto_40

    :cond_3f
    move v4, v3

    :goto_40
    iget-object v5, p0, Le1/r;->g:Lk2/h;

    invoke-virtual {v5}, Lk2/h;->k()I

    move-result v6

    if-eqz v4, :cond_4a

    :goto_48
    add-int/2addr v6, v3

    goto :goto_4c

    :cond_4a
    mul-int/2addr v6, v2

    goto :goto_48

    :goto_4c
    new-array v2, v6, [B

    int-to-byte v0, v0

    aput-byte v0, v2, v1

    sub-int/2addr v6, v3

    invoke-static {p1, v2, v3, v6}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    move-result p1

    if-ne p1, v6, :cond_62

    new-instance p1, Le1/x;

    invoke-virtual {v5, v2}, Lk2/h;->g([B)Lk2/p;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Le1/x;-><init>(Lk2/p;Le1/r;)V

    return-object p1

    :cond_62
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_68
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Sender\'s public key invalid."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_70
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :pswitch_76
    check-cast p0, Le1/g;

    iget-object v0, p0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    new-instance p1, Le1/i;

    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p1, v0, p0}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    return-object p1

    :pswitch_data_94
    .packed-switch 0x2
        :pswitch_76
    .end packed-switch
.end method

.method public f()Ljava/security/SecureRandom;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    const-string v0, "DEFAULT"

    invoke-static {v0, p0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0
.end method

.method public g()Lorg/bouncycastle/crypto/m;
    .registers 5

    sget-object v0, Lx0/d;->a:Ljava/math/BigInteger;

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Le1/d;

    iget-object v0, p0, Le1/d;->i:Le1/g;

    iget-object p0, p0, Lorg/bouncycastle/crypto/z;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/SecureRandom;

    invoke-static {v0, p0}, Lx0/d;->a(Le1/g;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, v0, Le1/g;->c:Ljava/math/BigInteger;

    iget-object v2, v0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v1, p0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/m;

    new-instance v3, Le1/i;

    invoke-direct {v3, v1, v0}, Le1/i;-><init>(Ljava/math/BigInteger;Le1/g;)V

    new-instance v1, Le1/h;

    invoke-direct {v1, p0, v0}, Le1/h;-><init>(Ljava/math/BigInteger;Le1/g;)V

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lb1/a;->g:I

    packed-switch v0, :pswitch_data_46

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skein-MAC-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ls0/l0;

    iget-object v1, p0, Ls0/l0;->g:Lv0/i0;

    iget v1, v1, Lv0/i0;->g:I

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ls0/l0;->h:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, La1/o;

    iget-object p0, p0, La1/o;->a:Lorg/bouncycastle/crypto/d;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/d;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-GMAC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_46
    .packed-switch 0xd
        :pswitch_2a
    .end packed-switch
.end method

.method public getMacSize()I
    .registers 2

    iget v0, p0, Lb1/a;->g:I

    packed-switch v0, :pswitch_data_10

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ls0/l0;

    iget p0, p0, Ls0/l0;->h:I

    return p0

    :pswitch_c
    const/16 p0, 0x10

    return p0

    nop

    :pswitch_data_10
    .packed-switch 0xd
        :pswitch_c
    .end packed-switch
.end method

.method public h(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object p0

    return-object p0
.end method

.method public i(Lorg/bouncycastle/crypto/g;[BI)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget v3, v0, Lb1/a;->g:I

    packed-switch v3, :pswitch_data_26e

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->i(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0

    :pswitch_10
    iget-object v0, v0, Lb1/a;->h:Ljava/lang/Object;

    check-cast v0, Le1/e1;

    move-object/from16 v3, p1

    check-cast v3, Le1/f1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x38

    new-array v5, v4, [B

    iget-object v3, v3, Le1/f1;->d:[B

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Le1/e1;->d:[B

    const/16 v3, 0xe

    new-array v7, v3, [I

    move v8, v6

    :goto_2c
    const/16 v9, 0x8

    const/16 v10, 0x10

    if-ge v8, v3, :cond_56

    mul-int/lit8 v11, v8, 0x4

    aget-byte v12, v0, v11

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v9, v13, 0x8

    or-int/2addr v9, v12

    add-int/lit8 v12, v11, 0x2

    aget-byte v12, v0, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v10, v12, 0x10

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0x3

    aget-byte v10, v0, v11

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_56
    aget v0, v7, v6

    and-int/lit8 v0, v0, -0x4

    aput v0, v7, v6

    const/16 v0, 0xd

    aget v8, v7, v0

    const/high16 v11, -0x80000000

    or-int/2addr v8, v11

    aput v8, v7, v0

    new-array v8, v10, [I

    invoke-static {v6, v6, v5, v8}, Lp2/a;->p(II[B[I)V

    const/4 v0, 0x7

    const/4 v11, 0x2

    invoke-static {v0, v11, v5, v8}, Lp2/a;->p(II[B[I)V

    const/4 v0, 0x4

    invoke-static {v3, v0, v5, v8}, Lp2/a;->p(II[B[I)V

    const/16 v0, 0x15

    const/4 v12, 0x6

    invoke-static {v0, v12, v5, v8}, Lp2/a;->p(II[B[I)V

    const/16 v0, 0x1c

    invoke-static {v0, v9, v5, v8}, Lp2/a;->p(II[B[I)V

    const/16 v0, 0x23

    const/16 v9, 0xa

    invoke-static {v0, v9, v5, v8}, Lp2/a;->p(II[B[I)V

    const/16 v0, 0x2a

    const/16 v9, 0xc

    invoke-static {v0, v9, v5, v8}, Lp2/a;->p(II[B[I)V

    const/16 v0, 0x31

    invoke-static {v0, v3, v5, v8}, Lp2/a;->p(II[B[I)V

    new-array v3, v10, [I

    invoke-static {v6, v6, v8, v3}, Lp2/a;->i(II[I[I)V

    new-array v5, v10, [I

    const/4 v9, 0x1

    aput v9, v5, v6

    new-array v12, v10, [I

    aput v9, v12, v6

    new-array v13, v10, [I

    new-array v14, v10, [I

    new-array v15, v10, [I

    const/16 v0, 0x1bf

    move/from16 v16, v9

    :goto_a9
    invoke-static {v12, v13, v14}, Lp2/a;->b([I[I[I)V

    invoke-static {v12, v13, v12}, Lp2/a;->O([I[I[I)V

    invoke-static {v3, v5, v13}, Lp2/a;->b([I[I[I)V

    invoke-static {v3, v5, v3}, Lp2/a;->O([I[I[I)V

    invoke-static {v14, v3, v14}, Lp2/a;->D([I[I[I)V

    invoke-static {v12, v13, v12}, Lp2/a;->D([I[I[I)V

    invoke-static {v13, v13}, Lp2/a;->M([I[I)V

    invoke-static {v3, v3}, Lp2/a;->M([I[I)V

    invoke-static {v13, v3, v15}, Lp2/a;->O([I[I[I)V

    const v6, 0x98aa

    invoke-static {v6, v15, v5}, Lp2/a;->A(I[I[I)V

    invoke-static {v5, v3, v5}, Lp2/a;->b([I[I[I)V

    invoke-static {v5, v15, v5}, Lp2/a;->D([I[I[I)V

    invoke-static {v3, v13, v3}, Lp2/a;->D([I[I[I)V

    invoke-static {v14, v12, v13}, Lp2/a;->O([I[I[I)V

    invoke-static {v14, v12, v12}, Lp2/a;->b([I[I[I)V

    invoke-static {v12, v12}, Lp2/a;->M([I[I)V

    invoke-static {v13, v13}, Lp2/a;->M([I[I)V

    invoke-static {v13, v8, v13}, Lp2/a;->D([I[I[I)V

    const/4 v4, -0x1

    add-int/2addr v0, v4

    ushr-int/lit8 v19, v0, 0x5

    and-int/lit8 v20, v0, 0x1f

    aget v19, v7, v19

    ushr-int v19, v19, v20

    and-int/lit8 v19, v19, 0x1

    xor-int v4, v16, v19

    invoke-static {v4, v3, v12}, Lp2/a;->k(I[I[I)V

    invoke-static {v4, v5, v13}, Lp2/a;->k(I[I[I)V

    if-ge v0, v11, :cond_148

    const/4 v0, 0x0

    :goto_f9
    if-ge v0, v11, :cond_11d

    new-array v4, v10, [I

    new-array v7, v10, [I

    invoke-static {v3, v5, v4}, Lp2/a;->b([I[I[I)V

    invoke-static {v3, v5, v7}, Lp2/a;->O([I[I[I)V

    invoke-static {v4, v4}, Lp2/a;->M([I[I)V

    invoke-static {v7, v7}, Lp2/a;->M([I[I)V

    invoke-static {v4, v7, v3}, Lp2/a;->D([I[I[I)V

    invoke-static {v4, v7, v4}, Lp2/a;->O([I[I[I)V

    invoke-static {v6, v4, v5}, Lp2/a;->A(I[I[I)V

    invoke-static {v5, v7, v5}, Lp2/a;->b([I[I[I)V

    invoke-static {v5, v4, v5}, Lp2/a;->D([I[I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_f9

    :cond_11d
    invoke-static {v5, v5}, Lp2/a;->x([I[I)V

    invoke-static {v3, v5, v3}, Lp2/a;->D([I[I[I)V

    invoke-static {v9, v3}, Lp2/a;->I(I[I)V

    const/4 v0, -0x1

    invoke-static {v0, v3}, Lp2/a;->I(I[I)V

    invoke-static {v2, v1, v3}, Lp2/a;->q(I[B[I)V

    const/16 v4, 0x38

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_132
    if-ge v6, v4, :cond_13d

    add-int v0, v2, v6

    aget-byte v0, v1, v0

    or-int v17, v17, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_132

    :cond_13d
    if-eqz v17, :cond_140

    return-void

    :cond_140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "X448 agreement failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_148
    move/from16 v16, v19

    const/16 v4, 0x38

    const/4 v6, 0x0

    goto/16 :goto_a9

    :pswitch_14f
    iget-object v0, v0, Lb1/a;->h:Ljava/lang/Object;

    check-cast v0, Le1/c1;

    move-object/from16 v3, p1

    check-cast v3, Le1/d1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x20

    new-array v5, v4, [B

    iget-object v3, v3, Le1/d1;->d:[B

    const/4 v6, 0x0

    invoke-static {v3, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v0, Le1/c1;->d:[B

    const/16 v3, 0x8

    new-array v7, v3, [I

    move v8, v6

    :goto_16b
    const/16 v9, 0x10

    const/4 v10, 0x3

    if-ge v8, v3, :cond_192

    mul-int/lit8 v11, v8, 0x4

    aget-byte v12, v0, v11

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v13, v11, 0x1

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v3

    or-int/2addr v12, v13

    add-int/lit8 v13, v11, 0x2

    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v9, v13, 0x10

    or-int/2addr v9, v12

    add-int/2addr v11, v10

    aget-byte v10, v0, v11

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_16b

    :cond_192
    aget v0, v7, v6

    and-int/lit8 v0, v0, -0x8

    aput v0, v7, v6

    const/4 v0, 0x7

    aget v3, v7, v0

    const v8, 0x7fffffff

    and-int/2addr v3, v8

    aput v3, v7, v0

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v3, v8

    aput v3, v7, v0

    const/16 v0, 0xa

    new-array v3, v0, [I

    invoke-static {v6, v6, v5, v3}, Lp2/a;->l(II[B[I)V

    const/4 v8, 0x5

    invoke-static {v9, v8, v5, v3}, Lp2/a;->l(II[B[I)V

    const/16 v5, 0x9

    aget v9, v3, v5

    const v11, 0xffffff

    and-int/2addr v9, v11

    aput v9, v3, v5

    new-array v5, v0, [I

    invoke-static {v6, v6, v3, v5}, Lp2/a;->h(II[I[I)V

    new-array v9, v0, [I

    const/4 v11, 0x1

    aput v11, v9, v6

    new-array v12, v0, [I

    aput v11, v12, v6

    new-array v13, v0, [I

    new-array v14, v0, [I

    new-array v15, v0, [I

    const/16 v16, 0xfe

    move/from16 v17, v11

    :goto_1d3
    invoke-static {v12, v13, v14, v12}, Lp2/a;->c([I[I[I[I)V

    invoke-static {v5, v9, v13, v5}, Lp2/a;->c([I[I[I[I)V

    invoke-static {v14, v5, v14}, Lp2/a;->C([I[I[I)V

    invoke-static {v12, v13, v12}, Lp2/a;->C([I[I[I)V

    invoke-static {v13, v13}, Lp2/a;->K([I[I)V

    invoke-static {v5, v5}, Lp2/a;->K([I[I)V

    invoke-static {v13, v5, v15}, Lp2/a;->N([I[I[I)V

    invoke-static {v15, v9}, Lp2/a;->B([I[I)V

    invoke-static {v9, v5, v9}, Lp2/a;->a([I[I[I)V

    invoke-static {v9, v15, v9}, Lp2/a;->C([I[I[I)V

    invoke-static {v5, v13, v5}, Lp2/a;->C([I[I[I)V

    invoke-static {v14, v12, v12, v13}, Lp2/a;->c([I[I[I[I)V

    invoke-static {v12, v12}, Lp2/a;->K([I[I)V

    invoke-static {v13, v13}, Lp2/a;->K([I[I)V

    invoke-static {v13, v3, v13}, Lp2/a;->C([I[I[I)V

    move/from16 p0, v11

    add-int/lit8 v11, v16, -0x1

    ushr-int/lit8 v16, v11, 0x5

    and-int/lit8 v18, v11, 0x1f

    aget v16, v7, v16

    ushr-int v16, v16, v18

    and-int/lit8 v16, v16, 0x1

    xor-int v4, v17, v16

    invoke-static {v4, v5, v12}, Lp2/a;->j(I[I[I)V

    invoke-static {v4, v9, v13}, Lp2/a;->j(I[I[I)V

    if-ge v11, v10, :cond_263

    move v3, v6

    :goto_219
    if-ge v3, v10, :cond_23a

    new-array v4, v0, [I

    new-array v7, v0, [I

    invoke-static {v5, v9, v4, v7}, Lp2/a;->c([I[I[I[I)V

    invoke-static {v4, v4}, Lp2/a;->K([I[I)V

    invoke-static {v7, v7}, Lp2/a;->K([I[I)V

    invoke-static {v4, v7, v5}, Lp2/a;->C([I[I[I)V

    invoke-static {v4, v7, v4}, Lp2/a;->N([I[I[I)V

    invoke-static {v4, v9}, Lp2/a;->B([I[I)V

    invoke-static {v9, v7, v9}, Lp2/a;->a([I[I[I)V

    invoke-static {v9, v4, v9}, Lp2/a;->C([I[I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_219

    :cond_23a
    invoke-static {v9, v9}, Lp2/a;->w([I[I)V

    invoke-static {v5, v9, v5}, Lp2/a;->C([I[I[I)V

    invoke-static {v5}, Lp2/a;->F([I)V

    invoke-static {v6, v2, v1, v5}, Lp2/a;->r(II[B[I)V

    add-int/lit8 v0, v2, 0x10

    invoke-static {v8, v0, v1, v5}, Lp2/a;->r(II[B[I)V

    move v0, v6

    const/16 v4, 0x20

    :goto_24e
    if-ge v6, v4, :cond_258

    add-int v3, v2, v6

    aget-byte v3, v1, v3

    or-int/2addr v0, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_24e

    :cond_258
    if-eqz v0, :cond_25b

    return-void

    :cond_25b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "X25519 agreement failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_263
    move/from16 v17, v16

    const/16 v4, 0x20

    move/from16 v16, v11

    move/from16 v11, p0

    goto/16 :goto_1d3

    nop

    :pswitch_data_26e
    .packed-switch 0x7
        :pswitch_14f
        :pswitch_10
    .end packed-switch
.end method

.method public init(Lorg/bouncycastle/crypto/g;)V
    .registers 6

    iget v0, p0, Lb1/a;->g:I

    packed-switch v0, :pswitch_data_a2

    :pswitch_5
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    instance-of v1, p1, Le1/b1;

    if-eqz v1, :cond_11

    check-cast p1, Le1/b1;

    goto :goto_2a

    :cond_11
    instance-of v1, p1, Le1/o0;

    if-eqz v1, :cond_4c

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    check-cast p1, Le1/o0;

    iget-object p1, p1, Le1/o0;->c:[B

    if-eqz p1, :cond_44

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Le1/b1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Le1/b1;->c:Ljava/util/Hashtable;

    :goto_2a
    iget-object v1, p1, Le1/b1;->c:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3c

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ls0/l0;

    invoke-virtual {p0, p1}, Ls0/l0;->e(Le1/b1;)V

    return-void

    :cond_3c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skein MAC requires a key parameter."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameter value must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter passed to Skein MAC init - "

    invoke-static {v0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->c(Ljava/lang/String;Lorg/bouncycastle/crypto/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_58
    instance-of v0, p1, Le1/s0;

    if-eqz v0, :cond_75

    check-cast p1, Le1/s0;

    iget-object v0, p1, Le1/s0;->c:[B

    iget-object p1, p1, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p1, Le1/o0;

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, La1/o;

    new-instance v1, Le1/a;

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v0, v3}, Le1/a;-><init>(Le1/o0;I[B[B)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v1}, La1/o;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_75
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "GMAC requires ParametersWithIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7d
    check-cast p1, Le1/g1;

    const/4 p0, 0x0

    throw p0

    :pswitch_81
    check-cast p1, Le1/e1;

    iput-object p1, p0, Lb1/a;->h:Ljava/lang/Object;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_91
    check-cast p1, Le1/c1;

    iput-object p1, p0, Lb1/a;->h:Ljava/lang/Object;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    nop

    :pswitch_data_a2
    .packed-switch 0x7
        :pswitch_91
        :pswitch_81
        :pswitch_7d
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_58
    .end packed-switch
.end method

.method public j(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lb1/a;->g:I

    packed-switch v0, :pswitch_data_16

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/crypto/j0;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/j0;->k()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0

    :pswitch_10
    const/16 p0, 0x38

    return p0

    :pswitch_13
    const/16 p0, 0x20

    return p0

    :pswitch_data_16
    .packed-switch 0x7
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public l(Ljava/lang/String;)Ljava/security/KeyFactory;
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/security/Provider;

    invoke-static {p1, p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p0

    return-object p0
.end method

.method public m(Lorg/bouncycastle/crypto/z;)V
    .registers 2

    check-cast p1, Le1/d;

    iput-object p1, p0, Lb1/a;->h:Ljava/lang/Object;

    iget-object p1, p1, Le1/d;->i:Le1/g;

    iget-object p1, p1, Le1/g;->d:Ljava/math/BigInteger;

    invoke-static {p1}, Lq4/k;->s(Ljava/math/BigInteger;)I

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Le1/d;

    iget-object p0, p0, Le1/d;->i:Le1/g;

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public n([B)V
    .registers 16

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast v2, [Li3/j;

    array-length v3, v2

    if-ge v1, v3, :cond_6d

    aget-object v2, v2, v1

    shl-int/lit8 v3, v1, 0x8

    move v4, v0

    :goto_e
    iget-object v5, v2, Li3/j;->b:[Lg1/d;

    array-length v6, v5

    if-ge v4, v6, :cond_6a

    aget-object v5, v5, v4

    add-int v6, v3, v4

    int-to-short v6, v6

    iget-object v7, v5, Lg1/d;->i:Ljava/lang/Object;

    check-cast v7, Lb1/b;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lb1/b;->h:Ljava/lang/Object;

    check-cast v7, Ls0/g0;

    const/16 v8, 0x34a

    new-array v8, v8, [B

    invoke-virtual {v7}, Ls0/n;->reset()V

    int-to-byte v9, v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    const/4 v10, 0x2

    new-array v11, v10, [B

    aput-byte v9, v11, v0

    const/4 v9, 0x1

    aput-byte v6, v11, v9

    array-length v6, p1

    invoke-virtual {v7, p1, v0, v6}, Ls0/n;->f([BII)V

    invoke-virtual {v7, v11, v0, v10}, Ls0/n;->f([BII)V

    const/16 v6, 0x348

    invoke-virtual {v7, v8, v0, v6}, Ls0/g0;->m([BII)I

    const/16 v9, 0x100

    invoke-static {v5, v0, v9, v8, v6}, Lg1/d;->o(Lg1/d;II[BI)I

    move-result v10

    :goto_48
    if-ge v10, v9, :cond_67

    rem-int/lit8 v11, v6, 0x3

    move v12, v0

    :goto_4d
    if-ge v12, v11, :cond_59

    sub-int v13, v6, v11

    add-int/2addr v13, v12

    aget-byte v13, v8, v13

    aput-byte v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4d

    :cond_59
    const/16 v6, 0xa8

    invoke-virtual {v7, v8, v11, v6}, Ls0/g0;->m([BII)I

    add-int/2addr v6, v11

    rsub-int v11, v10, 0x100

    invoke-static {v5, v10, v11, v8, v6}, Lg1/d;->o(Lg1/d;II[BI)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_48

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6d
    return-void
.end method

.method public o()Lm/y0;
    .registers 3

    new-instance v0, Lm/y0;

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public p()Lm/m1;
    .registers 3

    new-instance v0, Lm/m1;

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public q()I
    .registers 2

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/16 v0, 0x14

    invoke-static {v0, p0}, Lm4/d;->b(I[B)I

    move-result p0

    return p0
.end method

.method public reset()V
    .registers 5

    iget v0, p0, Lb1/a;->g:I

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_20

    check-cast p0, Ls0/l0;

    iget-object v0, p0, Ls0/l0;->j:[J

    iget-object v1, p0, Ls0/l0;->i:[J

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ls0/l0;->i(I)V

    return-void

    :pswitch_18
    check-cast p0, La1/o;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La1/o;->j(Z)V

    return-void

    nop

    :pswitch_data_20
    .packed-switch 0xd
        :pswitch_18
    .end packed-switch
.end method

.method public u(Li3/j;Li3/j;)V
    .registers 20

    move-object/from16 v0, p2

    iget-object v0, v0, Li3/j;->b:[Lg1/d;

    const/4 v1, 0x0

    move-object/from16 v2, p0

    move v3, v1

    :goto_8
    iget-object v4, v2, Lb1/a;->h:Ljava/lang/Object;

    check-cast v4, [Li3/j;

    array-length v5, v4

    if-ge v3, v5, :cond_77

    move-object/from16 v5, p1

    iget-object v6, v5, Li3/j;->b:[Lg1/d;

    aget-object v6, v6, v3

    aget-object v4, v4, v3

    iget-object v7, v6, Lg1/d;->h:Ljava/lang/Object;

    check-cast v7, Li3/b;

    const/16 v8, 0x100

    new-array v9, v8, [I

    iget-object v10, v7, Li3/b;->r:Lb1/b;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v4, Li3/j;->b:[Lg1/d;

    aget-object v10, v10, v1

    aget-object v11, v0, v1

    invoke-virtual {v6, v10, v11}, Lg1/d;->i(Lg1/d;Lg1/d;)V

    const/4 v10, 0x1

    :goto_2e
    iget v11, v7, Li3/b;->g:I

    if-ge v10, v11, :cond_73

    iget-object v11, v4, Li3/j;->b:[Lg1/d;

    aget-object v11, v11, v10

    aget-object v12, v0, v10

    move v13, v1

    :goto_39
    if-ge v13, v8, :cond_5a

    iget-object v14, v11, Lg1/d;->j:Ljava/lang/Object;

    check-cast v14, [I

    aget v14, v14, v13

    int-to-long v14, v14

    iget-object v1, v12, Lg1/d;->j:Ljava/lang/Object;

    check-cast v1, [I

    aget v1, v1, v13

    move-object/from16 v16, v9

    int-to-long v8, v1

    mul-long/2addr v14, v8

    invoke-static {v14, v15}, Li3/i;->b(J)I

    move-result v1

    aput v1, v16, v13

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v16

    const/4 v1, 0x0

    const/16 v8, 0x100

    goto :goto_39

    :cond_5a
    move-object/from16 v16, v9

    const/4 v1, 0x0

    :goto_5d
    if-ge v1, v8, :cond_6d

    iget-object v9, v6, Lg1/d;->j:Ljava/lang/Object;

    check-cast v9, [I

    aget v11, v9, v1

    aget v12, v16, v1

    add-int/2addr v11, v12

    aput v11, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_6d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v9, v16

    const/4 v1, 0x0

    goto :goto_2e

    :cond_73
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    goto :goto_8

    :cond_77
    return-void
.end method

.method public update(B)V
    .registers 6

    iget v0, p0, Lb1/a;->g:I

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_4a

    check-cast p0, Ls0/l0;

    iget-object v0, p0, Ls0/l0;->o:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Ls0/l0;->n:Ls0/j0;

    if-eqz p1, :cond_19

    iget-object p0, p0, Ls0/l0;->i:[J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, p0}, Ls0/j0;->d([BII[J)V

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skein engine is not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_21
    check-cast p0, La1/o;

    invoke-virtual {p0}, La1/o;->c()V

    iget-object v0, p0, La1/o;->u:[B

    iget v1, p0, La1/o;->v:I

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La1/o;->v:I

    const/16 p1, 0x10

    if-ne v1, p1, :cond_48

    iget-object p1, p0, La1/o;->o:[B

    invoke-static {p1, v0}, Lt4/d;->T0([B[B)V

    iget-object v0, p0, La1/o;->b:Lb1/b;

    invoke-virtual {v0, p1}, Lb1/b;->i([B)V

    const/4 p1, 0x0

    iput p1, p0, La1/o;->v:I

    iget-wide v0, p0, La1/o;->w:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, La1/o;->w:J

    :cond_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0xd
        :pswitch_21
    .end packed-switch
.end method

.method public update([BII)V
    .registers 5

    iget v0, p0, Lb1/a;->g:I

    packed-switch v0, :pswitch_data_24

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, Ls0/l0;

    iget-object v0, p0, Ls0/l0;->n:Ls0/j0;

    if-eqz v0, :cond_13

    iget-object p0, p0, Ls0/l0;->i:[J

    invoke-virtual {v0, p1, p2, p3, p0}, Ls0/j0;->d([BII[J)V

    return-void

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Skein engine is not initialised."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1b
    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, La1/o;

    invoke-virtual {p0, p1, p2, p3}, La1/o;->a([BII)V

    return-void

    nop

    :pswitch_data_24
    .packed-switch 0xd
        :pswitch_1b
    .end packed-switch
.end method

.method public v(I)V
    .registers 3

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/16 v0, 0x14

    invoke-static {p0, p1, v0}, Lm4/d;->w([BII)V

    return-void
.end method

.method public w(I)V
    .registers 3

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lm4/d;->w([BII)V

    return-void
.end method

.method public x(J)V
    .registers 4

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/16 v0, 0x8

    invoke-static {v0, p1, p2, p0}, Lm4/d;->E(IJ[B)V

    return-void
.end method

.method public y(I)V
    .registers 3

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/16 v0, 0x18

    invoke-static {p0, p1, v0}, Lm4/d;->w([BII)V

    return-void
.end method

.method public z(I)V
    .registers 3

    iget-object p0, p0, Lb1/a;->h:Ljava/lang/Object;

    check-cast p0, [B

    const/16 v0, 0x1c

    invoke-static {p0, p1, v0}, Lm4/d;->w([BII)V

    return-void
.end method
