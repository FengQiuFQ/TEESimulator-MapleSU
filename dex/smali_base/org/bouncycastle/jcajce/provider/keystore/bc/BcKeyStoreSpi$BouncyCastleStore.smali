.class public Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi$BouncyCastleStore;
.super Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;-><init>(I)V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 12

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_8

    goto :goto_6e

    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_22

    if-eqz p1, :cond_22

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1a

    goto :goto_22

    :cond_1a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Wrong version of key store."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v6, v1, [B

    const-string v2, "Key store corrupted."

    const/16 v8, 0x14

    if-ne v1, v8, :cond_82

    invoke-virtual {v0, v6}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    if-ltz v7, :cond_7c

    const/high16 v1, 0x10000

    if-gt v7, v1, :cond_7c

    if-nez p1, :cond_41

    const-string p1, "OldPBEWithSHAAndTwofish-CBC"

    :goto_3f
    move-object v3, p1

    goto :goto_44

    :cond_41
    const-string p1, "PBEWithSHAAndTwofish-CBC"

    goto :goto_3f

    :goto_44
    const/4 v4, 0x2

    move-object v2, p0

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance p1, Lc2/a;

    invoke-direct {p1, v0, p0}, Lc2/a;-><init>(Ljava/io/DataInputStream;Ljavax/crypto/Cipher;)V

    new-instance p0, Ls0/z;

    invoke-direct {p0}, Ls0/z;-><init>()V

    new-instance p2, Ly0/a;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Ly0/a;-><init>(Ljava/io/FilterInputStream;Ljava/lang/Object;I)V

    invoke-virtual {v2, p2}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->loadStore(Ljava/io/InputStream;)V

    new-array p2, v8, [B

    invoke-virtual {p0, p2, v0}, Ls0/z;->doFinal([BI)I

    new-array p0, v8, [B

    invoke-static {p1, p0, v0, v8}, Lq4/k;->H0(Ljava/io/InputStream;[BII)I

    invoke-static {p2, p0}, Lm4/d;->o([B[B)Z

    move-result p0

    if-eqz p0, :cond_6f

    :goto_6e
    return-void

    :cond_6f
    iget-object p0, v2, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->table:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    new-instance p0, Ljava/io/IOException;

    const-string p1, "KeyStore integrity check failed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 10

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x14

    new-array v5, p1, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0x3ff

    add-int/lit16 v6, v1, 0x400

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->version:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v2, "PBEWithSHAAndTwofish-CBC"

    const/4 v3, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    new-instance p2, Lc2/b;

    invoke-direct {p2, v0, p0}, Lc2/b;-><init>(Ljava/io/DataOutputStream;Ljavax/crypto/Cipher;)V

    new-instance p0, Lc2/c;

    new-instance v0, Ls0/z;

    invoke-direct {v0}, Ls0/z;-><init>()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lc2/c;-><init>(I)V

    iput-object v0, p0, Lc2/c;->d:Ljava/lang/Object;

    new-instance v2, Lo4/b;

    invoke-direct {v2, p2, p0}, Lo4/b;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/provider/keystore/bc/BcKeyStoreSpi;->saveStore(Ljava/io/OutputStream;)V

    new-array p0, p1, [B

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ls0/z;->doFinal([BI)I

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lc2/b;->close()V

    return-void
.end method
