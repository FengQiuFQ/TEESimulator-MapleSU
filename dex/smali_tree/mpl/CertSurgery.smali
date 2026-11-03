.class public final Lmpl/CertSurgery;
.super Ljava/lang/Object;
.source "CertSurgery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmpl/CertSurgery$SigningKey;
    }
.end annotation


# static fields
.field private static final ALGORITHM_ECDSA_SHA256:[B

.field private static final ALGORITHM_RSA_SHA256:[B

.field private static final ECDSA_FAMILY:[Ljava/lang/String;

.field private static final FIELD_UNIQUE_ID:I = 0x5

.field private static final KEY_DESCRIPTION_FIELDS:I = 0x8

.field private static final OID_ATTESTATION:[B

.field private static final OID_ECDSA_WITH_SHA256:Ljava/lang/String; = "1.2.840.10045.4.3.2"

.field private static final OID_SHA256_WITH_RSA:Ljava/lang/String; = "1.2.840.113549.1.1.11"

.field private static final RSA_PKCS1_FAMILY:[Ljava/lang/String;

.field private static final UNIQUE_ID_BYTES:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0xa

    .line 47
    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    sput-object v0, Lmpl/CertSurgery;->OID_ATTESTATION:[B

    const/16 v0, 0xc

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_46

    sput-object v0, Lmpl/CertSurgery;->ALGORITHM_ECDSA_SHA256:[B

    const/16 v0, 0xf

    .line 59
    new-array v0, v0, [B

    fill-array-data v0, :array_50

    sput-object v0, Lmpl/CertSurgery;->ALGORITHM_RSA_SHA256:[B

    .line 70
    const-string v0, "1.2.840.10045.4.3.3"

    const-string v1, "1.2.840.10045.4.3.4"

    const-string v2, "1.2.840.10045.4.1"

    const-string v3, "1.2.840.10045.4.3.1"

    const-string v4, "1.2.840.10045.4.3.2"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/CertSurgery;->ECDSA_FAMILY:[Ljava/lang/String;

    .line 79
    const-string v0, "1.2.840.113549.1.1.13"

    const-string v1, "1.2.840.113549.1.1.14"

    const-string v2, "1.2.840.113549.1.1.5"

    const-string v3, "1.2.840.113549.1.1.11"

    const-string v4, "1.2.840.113549.1.1.12"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmpl/CertSurgery;->RSA_PKCS1_FAMILY:[Ljava/lang/String;

    return-void

    :array_3c
    .array-data 1
        0x2bt
        0x6t
        0x1t
        0x4t
        0x1t
        -0x2at
        0x79t
        0x2t
        0x1t
        0x11t
    .end array-data

    nop

    :array_46
    .array-data 1
        0x30t
        0xat
        0x6t
        0x8t
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x4t
        0x3t
        0x2t
    .end array-data

    :array_50
    .array-data 1
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0xbt
        0x5t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 336
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 337
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method private static findAttestationExtension(Lmpl/Der$Node;)Lmpl/Der$Node;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 309
    :goto_2
    invoke-virtual {p0}, Lmpl/Der$Node;->childCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_5f

    .line 310
    invoke-virtual {p0, v1}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lmpl/Der$Node;->tag()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa3

    if-eq v4, v5, :cond_18

    goto :goto_5c

    .line 314
    :cond_18
    invoke-virtual {v2}, Lmpl/Der$Node;->childCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_20

    return-object v3

    .line 317
    :cond_20
    invoke-virtual {v2, v0}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lmpl/Der$Node;->tag()I

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2d

    return-object v3

    :cond_2d
    const/4 v3, 0x0

    .line 321
    :goto_2e
    invoke-virtual {v2}, Lmpl/Der$Node;->childCount()I

    move-result v4

    if-ge v3, v4, :cond_5c

    .line 322
    invoke-virtual {v2, v3}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v4

    .line 323
    invoke-virtual {v4}, Lmpl/Der$Node;->tag()I

    move-result v6

    if-ne v6, v5, :cond_59

    invoke-virtual {v4}, Lmpl/Der$Node;->childCount()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_46

    goto :goto_59

    .line 326
    :cond_46
    invoke-virtual {v4, v0}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v6

    invoke-virtual {v6}, Lmpl/Der$Node;->oid()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_59

    .line 327
    const-string v7, "1.3.6.1.4.1.11129.2.1.17"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    return-object v4

    :cond_59
    :goto_59
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_5c
    :goto_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5f
    return-object v3
.end method

.method private static injectUniqueId(Lmpl/Der$Node;[B)Z
    .registers 8

    .line 280
    invoke-static {p0}, Lmpl/CertSurgery;->findAttestationExtension(Lmpl/Der$Node;)Lmpl/Der$Node;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 285
    :cond_8
    invoke-virtual {p0}, Lmpl/Der$Node;->childCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Lmpl/Der$Node;->tag()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_56

    invoke-virtual {p0}, Lmpl/Der$Node;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_56

    .line 289
    :cond_20
    invoke-virtual {p0}, Lmpl/Der$Node;->value()[B

    move-result-object v1

    .line 290
    invoke-static {v1}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v1

    .line 291
    invoke-virtual {v1}, Lmpl/Der$Node;->tag()I

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_56

    .line 292
    invoke-virtual {v1}, Lmpl/Der$Node;->childCount()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_39

    goto :goto_56

    :cond_39
    const/4 v4, 0x5

    .line 295
    invoke-virtual {v1, v4}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Lmpl/Der$Node;->tag()I

    move-result v5

    if-ne v5, v3, :cond_56

    invoke-virtual {v4}, Lmpl/Der$Node;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_56

    .line 299
    :cond_4b
    invoke-virtual {v4, p1}, Lmpl/Der$Node;->setValue([B)V

    .line 303
    invoke-virtual {v1}, Lmpl/Der$Node;->serialize()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lmpl/Der$Node;->setValue([B)V

    return v2

    :cond_56
    :goto_56
    return v0
.end method

.method static isAttestationOid([B)Z
    .registers 2

    if-eqz p0, :cond_c

    .line 363
    sget-object v0, Lmpl/CertSurgery;->OID_ATTESTATION:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method private static patch([B[B[B[B)[B
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-eqz v0, :cond_18d

    .line 130
    array-length v4, v0

    if-nez v4, :cond_e

    goto/16 :goto_18d

    :cond_e
    if-nez p1, :cond_13

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    if-eqz v2, :cond_18a

    .line 137
    array-length v4, v2

    if-nez v4, :cond_1a

    goto/16 :goto_18a

    :cond_1a
    if-eqz v1, :cond_22

    .line 140
    array-length v4, v1

    const/16 v5, 0x20

    if-eq v4, v5, :cond_22

    return-object v3

    .line 144
    :cond_22
    invoke-static {v2}, Lmpl/CertSurgery;->resolveSigningKey([B)Lmpl/CertSurgery$SigningKey;

    move-result-object v2

    if-nez v2, :cond_29

    return-object v3

    .line 149
    :cond_29
    invoke-static {v0}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lmpl/Der$Node;->tag()I

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_187

    invoke-virtual {v0}, Lmpl/Der$Node;->childCount()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3e

    goto/16 :goto_187

    :cond_3e
    const/4 v4, 0x0

    .line 153
    invoke-virtual {v0, v4}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v7

    const/4 v8, 0x1

    .line 154
    invoke-virtual {v0, v8}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v9

    const/4 v10, 0x2

    .line 155
    invoke-virtual {v0, v10}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v11

    .line 156
    invoke-virtual {v7}, Lmpl/Der$Node;->tag()I

    move-result v12

    if-ne v12, v5, :cond_184

    .line 157
    invoke-virtual {v9}, Lmpl/Der$Node;->tag()I

    move-result v12

    if-ne v12, v5, :cond_184

    .line 158
    invoke-virtual {v11}, Lmpl/Der$Node;->tag()I

    move-result v12

    if-ne v12, v6, :cond_184

    .line 159
    invoke-virtual {v11}, Lmpl/Der$Node;->isConstructed()Z

    move-result v6

    if-nez v6, :cond_184

    .line 160
    invoke-virtual {v11}, Lmpl/Der$Node;->valueLength()I

    move-result v6

    if-ge v6, v8, :cond_6d

    goto/16 :goto_184

    .line 168
    :cond_6d
    invoke-virtual {v7}, Lmpl/Der$Node;->childCount()I

    move-result v6

    if-lez v6, :cond_83

    invoke-virtual {v7, v4}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v6

    invoke-virtual {v6}, Lmpl/Der$Node;->tag()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/16 v11, 0xa0

    if-ne v6, v11, :cond_83

    const/4 v6, 0x1

    goto :goto_84

    :cond_83
    const/4 v6, 0x0

    :goto_84
    add-int/lit8 v11, v6, 0x1

    add-int/lit8 v12, v6, 0x2

    add-int/lit8 v13, v6, 0x3

    add-int/lit8 v14, v6, 0x4

    add-int/lit8 v15, v6, 0x5

    move-object/from16 v16, v3

    .line 177
    invoke-virtual {v7}, Lmpl/Der$Node;->childCount()I

    move-result v3

    if-gt v3, v15, :cond_97

    return-object v16

    .line 180
    :cond_97
    invoke-virtual {v7, v6}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->tag()I

    move-result v3

    if-ne v3, v10, :cond_183

    .line 181
    invoke-virtual {v7, v11}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->tag()I

    move-result v3

    if-ne v3, v5, :cond_183

    .line 182
    invoke-virtual {v7, v12}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->tag()I

    move-result v3

    if-ne v3, v5, :cond_183

    .line 183
    invoke-virtual {v7, v13}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->tag()I

    move-result v3

    if-ne v3, v5, :cond_183

    .line 184
    invoke-virtual {v7, v14}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->tag()I

    move-result v3

    if-ne v3, v5, :cond_183

    .line 185
    invoke-virtual {v7, v15}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->tag()I

    move-result v3

    if-eq v3, v5, :cond_d5

    goto/16 :goto_183

    .line 189
    :cond_d5
    invoke-virtual {v7, v11}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Lmpl/Der$Node;->childCount()I

    move-result v6

    if-lt v6, v8, :cond_183

    invoke-virtual {v9}, Lmpl/Der$Node;->childCount()I

    move-result v6

    if-ge v6, v8, :cond_e7

    goto/16 :goto_183

    .line 193
    :cond_e7
    invoke-virtual {v3, v4}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v3

    invoke-virtual {v3}, Lmpl/Der$Node;->oid()Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-virtual {v9, v4}, Lmpl/Der$Node;->child(I)Lmpl/Der$Node;

    move-result-object v6

    invoke-virtual {v6}, Lmpl/Der$Node;->oid()Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_183

    if-nez v6, :cond_fd

    goto/16 :goto_183

    .line 203
    :cond_fd
    iget-boolean v9, v2, Lmpl/CertSurgery$SigningKey;->rsa:Z

    if-eqz v9, :cond_10a

    .line 204
    sget-object v9, Lmpl/CertSurgery;->RSA_PKCS1_FAMILY:[Ljava/lang/String;

    invoke-static {v9, v3}, Lmpl/CertSurgery;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_113

    return-object v16

    .line 207
    :cond_10a
    sget-object v9, Lmpl/CertSurgery;->ECDSA_FAMILY:[Ljava/lang/String;

    invoke-static {v9, v3}, Lmpl/CertSurgery;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_113

    return-object v16

    .line 210
    :cond_113
    iget-object v9, v2, Lmpl/CertSurgery$SigningKey;->oid:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_126

    iget-object v3, v2, Lmpl/CertSurgery$SigningKey;->oid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_124

    goto :goto_126

    :cond_124
    const/4 v3, 0x0

    goto :goto_127

    :cond_126
    :goto_126
    const/4 v3, 0x1

    :goto_127
    if-eqz p1, :cond_137

    .line 214
    invoke-static/range {p1 .. p1}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v6

    .line 215
    invoke-virtual {v6}, Lmpl/Der$Node;->tag()I

    move-result v9

    if-eq v9, v5, :cond_134

    return-object v16

    .line 218
    :cond_134
    invoke-virtual {v7, v14, v6}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    :cond_137
    if-eqz v1, :cond_140

    .line 223
    invoke-static {v7, v1}, Lmpl/CertSurgery;->injectUniqueId(Lmpl/Der$Node;[B)Z

    move-result v1

    if-nez v1, :cond_140

    return-object v16

    :cond_140
    if-eqz v3, :cond_154

    .line 230
    iget-object v1, v2, Lmpl/CertSurgery$SigningKey;->algorithmIdentifier:[B

    invoke-static {v1}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v1

    invoke-virtual {v7, v11, v1}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    .line 231
    iget-object v1, v2, Lmpl/CertSurgery$SigningKey;->algorithmIdentifier:[B

    invoke-static {v1}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    .line 235
    :cond_154
    invoke-virtual {v7}, Lmpl/Der$Node;->serialize()[B

    move-result-object v1

    .line 236
    iget-object v3, v2, Lmpl/CertSurgery$SigningKey;->jcaName:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 237
    iget-object v2, v2, Lmpl/CertSurgery$SigningKey;->key:Ljava/security/PrivateKey;

    invoke-virtual {v3, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 238
    invoke-virtual {v3, v1}, Ljava/security/Signature;->update([B)V

    .line 239
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    if-eqz v1, :cond_183

    .line 240
    array-length v2, v1

    if-nez v2, :cond_170

    goto :goto_183

    .line 244
    :cond_170
    invoke-virtual {v0, v4, v7}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    .line 245
    invoke-static {v1}, Lmpl/Der;->bitString([B)[B

    move-result-object v1

    invoke-static {v1}, Lmpl/Der;->parse([B)Lmpl/Der$Node;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lmpl/Der$Node;->replaceChild(ILmpl/Der$Node;)V

    .line 246
    invoke-virtual {v0}, Lmpl/Der$Node;->serialize()[B

    move-result-object v0

    return-object v0

    :cond_183
    :goto_183
    return-object v16

    :cond_184
    :goto_184
    move-object/from16 v16, v3

    return-object v16

    :cond_187
    :goto_187
    move-object/from16 v16, v3

    return-object v16

    :cond_18a
    :goto_18a
    move-object/from16 v16, v3

    return-object v16

    :cond_18d
    :goto_18d
    move-object/from16 v16, v3

    return-object v16
.end method

.method public static patchLeaf([B[B[B[B)[B
    .registers 4

    .line 114
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lmpl/CertSurgery;->patch([B[B[B[B)[B

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private static resolveSigningKey([B)Lmpl/CertSurgery$SigningKey;
    .registers 8

    .line 251
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 253
    :try_start_5
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 255
    new-instance v1, Lmpl/CertSurgery$SigningKey;

    const-string v4, "SHA256withECDSA"

    const-string v5, "1.2.840.10045.4.3.2"

    sget-object v6, Lmpl/CertSurgery;->ALGORITHM_ECDSA_SHA256:[B

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lmpl/CertSurgery$SigningKey;-><init>(Ljava/security/PrivateKey;ZLjava/lang/String;Ljava/lang/String;[B)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1d} :catch_1e

    return-object v1

    .line 262
    :catch_1e
    :cond_1e
    :try_start_1e
    const-string p0, "RSA"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 264
    new-instance v1, Lmpl/CertSurgery$SigningKey;

    const-string v4, "SHA256withRSA"

    const-string v5, "1.2.840.113549.1.1.11"

    sget-object v6, Lmpl/CertSurgery;->ALGORITHM_RSA_SHA256:[B

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lmpl/CertSurgery$SigningKey;-><init>(Ljava/security/PrivateKey;ZLjava/lang/String;Ljava/lang/String;[B)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_37

    return-object v1

    :catch_37
    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method
