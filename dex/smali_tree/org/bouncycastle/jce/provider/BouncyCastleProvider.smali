.class public final Lorg/bouncycastle/jce/provider/BouncyCastleProvider;
.super Ljava/security/Provider;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;


# static fields
.field private static final ASYMMETRIC_CIPHERS:[Ljava/lang/String;

.field private static final ASYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final ASYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric."

.field public static final CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

.field private static final DIGESTS:[Ljava/lang/String;

.field private static final DIGEST_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.digest."

.field private static final KDFS:[Ljava/lang/String;

.field private static final KDF_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.kdf."

.field private static final KEYSTORES:[Ljava/lang/String;

.field private static final KEYSTORE_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.keystore."

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final PROVIDER_NAME:Ljava/lang/String; = "BC"

.field private static final SECURE_RANDOMS:[Ljava/lang/String;

.field private static final SECURE_RANDOM_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.drbg."

.field private static final SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/i;

.field private static final SYMMETRIC_GENERIC:[Ljava/lang/String;

.field private static final SYMMETRIC_MACS:[Ljava/lang/String;

.field private static final SYMMETRIC_PACKAGE:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.symmetric."

.field private static info:Ljava/lang/String;

.field private static final keyInfoConverters:Ljava/util/Map;

.field private static final revChkClass:Ljava/lang/Class;


# instance fields
.field private serviceMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 41

    const-class v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->LOG:Ljava/util/logging/Logger;

    const-string v1, "BouncyCastle Security Provider v1.83"

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-direct {v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const-string v5, "SCRYPT"

    const-string v6, "HKDF"

    const-string v1, "PBEPBKDF1"

    const-string v2, "PBEPBKDF2"

    const-string v3, "PBEPKCS12"

    const-string v4, "TLSKDF"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v0, "SipHash128"

    const-string v1, "Poly1305"

    const-string v2, "SipHash"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    const-string v0, "AES"

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const-string v2, "ARC4"

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v2

    const-string v4, "ARIA"

    invoke-static {v4, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v4

    const-string v5, "Blowfish"

    const/16 v6, 0x80

    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v5

    const-string v7, "Camellia"

    invoke-static {v7, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v7

    const-string v8, "CAST5"

    invoke-static {v8, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v8

    const-string v9, "CAST6"

    invoke-static {v9, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v9

    const-string v10, "ChaCha"

    invoke-static {v10, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v10

    const-string v11, "DES"

    const/16 v12, 0x38

    invoke-static {v11, v12}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v11

    const-string v12, "DESede"

    const/16 v13, 0x70

    invoke-static {v12, v13}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v12

    const-string v13, "GOST28147"

    invoke-static {v13, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v13

    const-string v14, "Grainv1"

    invoke-static {v14, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v14

    const-string v15, "Grain128"

    invoke-static {v15, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v15

    move/from16 v16, v3

    const-string v3, "HC128"

    invoke-static {v3, v6}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v3

    const-string v6, "HC256"

    invoke-static {v6, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v6

    const-string v1, "IDEA"

    move-object/from16 v19, v0

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v17, v1

    const-string v1, "Noekeon"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v20, v1

    const-string v1, "RC2"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v21, v1

    const-string v1, "RC5"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    const-string v0, "RC6"

    move-object/from16 v23, v1

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    move-object/from16 v24, v0

    const-string v0, "Rijndael"

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const-string v1, "Salsa20"

    move-object/from16 v25, v0

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v22, v1

    const-string v1, "SEED"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    const-string v0, "Serpent"

    move-object/from16 v27, v1

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const-string v1, "Shacal2"

    move-object/from16 v28, v0

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    const-string v0, "Skipjack"

    move-object/from16 v29, v1

    const/16 v1, 0x50

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const-string v1, "SM4"

    move-object/from16 v30, v0

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v26, v1

    const-string v1, "TEA"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    const-string v0, "Twofish"

    move-object/from16 v32, v1

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const-string v1, "Threefish"

    move-object/from16 v33, v0

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v31, v1

    const-string v1, "VMPC"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v34, v1

    const-string v1, "VMPCKSA3"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v35, v1

    const-string v1, "XTEA"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v36, v1

    const-string v1, "XSalsa20"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    move-object/from16 v37, v1

    const-string v1, "OpenSSLPBKDF"

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v1

    const-string v0, "DSTU7624"

    move-object/from16 v39, v1

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    move-object/from16 v18, v0

    const-string v0, "GOST3412_2015"

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const-string v1, "Zuc"

    move-object/from16 v40, v0

    const/16 v0, 0x80

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;

    move-result-object v0

    const/16 v1, 0x26

    new-array v1, v1, [Lorg/bouncycastle/crypto/i;

    const/16 v38, 0x0

    aput-object v19, v1, v38

    const/16 v19, 0x1

    aput-object v2, v1, v19

    const/4 v2, 0x2

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v8, v1, v2

    const/4 v2, 0x6

    aput-object v9, v1, v2

    const/4 v2, 0x7

    aput-object v10, v1, v2

    const/16 v2, 0x8

    aput-object v11, v1, v2

    const/16 v2, 0x9

    aput-object v12, v1, v2

    const/16 v2, 0xa

    aput-object v13, v1, v2

    const/16 v2, 0xb

    aput-object v14, v1, v2

    const/16 v2, 0xc

    aput-object v15, v1, v2

    const/16 v2, 0xd

    aput-object v3, v1, v2

    const/16 v2, 0xe

    aput-object v6, v1, v2

    const/16 v2, 0xf

    aput-object v17, v1, v2

    const/16 v2, 0x10

    aput-object v20, v1, v2

    const/16 v2, 0x11

    aput-object v21, v1, v2

    const/16 v2, 0x12

    aput-object v23, v1, v2

    const/16 v2, 0x13

    aput-object v24, v1, v2

    aput-object v25, v1, v16

    const/16 v2, 0x15

    aput-object v22, v1, v2

    const/16 v2, 0x16

    aput-object v27, v1, v2

    const/16 v2, 0x17

    aput-object v28, v1, v2

    const/16 v2, 0x18

    aput-object v29, v1, v2

    const/16 v2, 0x19

    aput-object v30, v1, v2

    const/16 v2, 0x1a

    aput-object v26, v1, v2

    const/16 v2, 0x1b

    aput-object v32, v1, v2

    const/16 v2, 0x1c

    aput-object v33, v1, v2

    const/16 v2, 0x1d

    aput-object v31, v1, v2

    const/16 v2, 0x1e

    aput-object v34, v1, v2

    const/16 v2, 0x1f

    aput-object v35, v1, v2

    const/16 v2, 0x20

    aput-object v36, v1, v2

    const/16 v2, 0x21

    aput-object v37, v1, v2

    const/16 v2, 0x22

    aput-object v39, v1, v2

    const/16 v2, 0x23

    aput-object v18, v1, v2

    const/16 v2, 0x24

    aput-object v40, v1, v2

    const/16 v2, 0x25

    aput-object v0, v1, v2

    sput-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/i;

    const-string v7, "CompositeSignatures"

    const-string v8, "NoSig"

    const-string v3, "X509"

    const-string v4, "IES"

    const-string v5, "COMPOSITE"

    const-string v6, "EXTERNAL"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v18, "MLDSA"

    const-string v19, "MLKEM"

    const-string v1, "DSA"

    const-string v2, "DH"

    const-string v3, "EC"

    const-string v4, "RSA"

    const-string v5, "GOST"

    const-string v6, "ECGOST"

    const-string v7, "ElGamal"

    const-string v8, "DSTU4145"

    const-string v9, "GM"

    const-string v10, "EdEC"

    const-string v11, "LMS"

    const-string v12, "SPHINCSPlus"

    const-string v13, "Dilithium"

    const-string v14, "Falcon"

    const-string v15, "NTRU"

    const-string v16, "CONTEXT"

    const-string v17, "SLHDSA"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    const-string v23, "Haraka"

    const-string v24, "Blake3"

    const-string v1, "GOST3411"

    const-string v2, "Keccak"

    const-string v3, "MD2"

    const-string v4, "MD4"

    const-string v5, "MD5"

    const-string v6, "SHA1"

    const-string v7, "RIPEMD128"

    const-string v8, "RIPEMD160"

    const-string v9, "RIPEMD256"

    const-string v10, "RIPEMD320"

    const-string v11, "SHA224"

    const-string v12, "SHA256"

    const-string v13, "SHA384"

    const-string v14, "SHA512"

    const-string v15, "SHA3"

    const-string v16, "Skein"

    const-string v17, "SM3"

    const-string v18, "Tiger"

    const-string v19, "Whirlpool"

    const-string v20, "Blake2b"

    const-string v21, "Blake2s"

    const-string v22, "DSTU7564"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    const-string v0, "BCFKS"

    const-string v1, "PKCS12"

    const-string v2, "BC"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    const-string v0, "DRBG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    const-string v0, "PBEPBKDF2"

    const-string v1, "SCRYPT"

    const-string v2, "HKDF"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KDFS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide v0, 0x3ffd47ae147ae148L    # 1.83

    sget-object v2, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->info:Ljava/lang/String;

    const-string v3, "BC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$1;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)V
    .registers 1

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->setup()V

    return-void
.end method

.method public static synthetic access$101(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 3

    invoke-super {p0, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$301(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/security/Provider;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$401(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/security/Provider$Service;)V
    .registers 2

    invoke-virtual {p0, p1}, Ljava/security/Provider;->putService(Ljava/security/Provider$Service;)V

    return-void
.end method

.method private static getAsymmetricKeyInfoConverter(Lm/q;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .registers 2

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter v0

    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public static getPrivateKey(Ld0/t;)Ljava/security/PrivateKey;
    .registers 2

    iget-object v0, p0, Ld0/t;->d:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lm/q;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePrivate(Ld0/t;)Ljava/security/PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static getPublicKey(Ll0/p0;)Ljava/security/PublicKey;
    .registers 3

    iget-object v0, p0, Ll0/p0;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    sget-object v1, Lo/a;->G0:Lm/q;

    invoke-virtual {v0, v1}, Lm/q;->y(Lm/q;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lc4/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc4/c;-><init>(I)V

    invoke-virtual {v0, p0}, Lc4/c;->generatePublic(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :cond_17
    iget-object v0, p0, Ll0/p0;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->c:Lm/q;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->getAsymmetricKeyInfoConverter(Lm/q;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    move-result-object v0

    if-nez v0, :cond_23

    const/4 p0, 0x0

    return-object p0

    :cond_23
    invoke-interface {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;->generatePublic(Ll0/p0;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_c

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method private loadAlgorithms(Ljava/lang/String;[Lorg/bouncycastle/crypto/i;)V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-eq v0, v1, :cond_13

    aget-object v1, p2, v0

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/i;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method private loadPQCKeys()V
    .registers 4

    sget-object v0, Lo/a;->H:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->I:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->J:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->K:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->L:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->M:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->N:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->O:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->P:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->Q:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->R:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->S:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->T:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->U:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->V:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->W:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->X:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->Y:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->Z:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->a0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->b0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->c0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->d0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->e0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->f0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->g0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->h0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->i0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->j0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->k0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->l0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->m0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->n0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->o0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->p0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->q0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->r0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->u0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->w0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->y0:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    new-instance v0, Lm/q;

    const-string v1, "1.3.9999.6.4.10"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->z0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->B0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->D0:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->p(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Ly2/e;->a:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Ly2/e;->b:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Ly2/e;->c:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lr1/a;->a:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Ly2/e;->d:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lr1/a;->b:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Ld0/r;->f0:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->G0:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lz/b;->P0:Lm/q;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lz/b;->Q0:Lm/q;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lz/b;->R0:Lm/q;

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mlkem/MLKEMKeyFactorySpi;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->Y0:Lm/q;

    new-instance v1, Lz3/e;

    invoke-direct {v1, v0}, Lk4/a;-><init>(Lm/q;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->Z0:Lm/q;

    new-instance v1, Lz3/e;

    invoke-direct {v1, v0}, Lk4/a;-><init>(Lm/q;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->a1:Lm/q;

    new-instance v1, Lz3/e;

    invoke-direct {v1, v0}, Lk4/a;-><init>(Lm/q;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->b1:Lm/q;

    new-instance v1, Lz3/e;

    invoke-direct {v1, v0}, Lk4/a;-><init>(Lm/q;)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->d1:Lm/q;

    new-instance v1, Ly3/f;

    invoke-direct {v1}, Ly3/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->e1:Lm/q;

    new-instance v1, Ly3/f;

    invoke-direct {v1}, Ly3/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->f1:Lm/q;

    new-instance v1, Ly3/f;

    invoke-direct {v1}, Ly3/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->g1:Lm/q;

    new-instance v1, Ly3/f;

    invoke-direct {v1}, Ly3/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->h1:Lm/q;

    new-instance v1, Ly3/f;

    invoke-direct {v1}, Ly3/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->i1:Lm/q;

    new-instance v1, Ly3/f;

    invoke-direct {v1}, Ly3/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->t1:Lm/q;

    new-instance v1, Lc4/c;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->v1:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->x1:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->z1:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->B1:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->C2:Lm/q;

    new-instance v1, Lc4/c;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->D2:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->E2:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->G2:Lm/q;

    new-instance v1, La4/c;

    invoke-direct {v1}, La4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->H2:Lm/q;

    new-instance v1, La4/c;

    invoke-direct {v1}, La4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->I2:Lm/q;

    new-instance v1, La4/c;

    invoke-direct {v1}, La4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->k2:Lm/q;

    new-instance v1, Lb4/c;

    invoke-direct {v1}, Lb4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->l2:Lm/q;

    new-instance v1, Lb4/c;

    invoke-direct {v1}, Lb4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->m2:Lm/q;

    new-instance v1, Lb4/c;

    invoke-direct {v1}, Lb4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->e2:Lm/q;

    new-instance v1, Lc4/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->f2:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->g2:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->h2:Lm/q;

    new-instance v1, Lc4/c;

    invoke-direct {v1, v2}, Lc4/c;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->K2:Lm/q;

    new-instance v1, Ld4/c;

    invoke-direct {v1}, Ld4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->L2:Lm/q;

    new-instance v1, Ld4/c;

    invoke-direct {v1}, Ld4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->M2:Lm/q;

    new-instance v1, Ld4/c;

    invoke-direct {v1}, Ld4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->N2:Lm/q;

    new-instance v1, Ld4/c;

    invoke-direct {v1}, Ld4/c;-><init>()V

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v0, Lo/a;->P2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->Q2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->R2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->S2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->T2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->U2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->V2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->W2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->X2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->Y2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->Z2:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->a3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->f3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->g3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->h3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->i3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->j3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->k3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->l3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->m3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->n3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->o3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->p3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->q3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->r3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->s3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->t3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->u3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->v3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->w3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->x3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->y3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->z3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->A3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->B3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->C3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->D3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->E3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->F3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    sget-object v0, Lo/a;->G3:Lm/q;

    invoke-static {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/a;->l(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Lm/q;)V

    return-void
.end method

.method private loadServiceClass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Mappings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_46

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/jcajce/provider/util/AlgorithmProvider;->configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception p0

    new-instance v0, Ljava/lang/InternalError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot create instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "$Mappings : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    return-void
.end method

.method private static service(Ljava/lang/String;I)Lorg/bouncycastle/crypto/i;
    .registers 3

    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$JcaCryptoService;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private setup()V
    .registers 10

    const-string v0, "org.bouncycastle.jcajce.provider.digest."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->DIGESTS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.symmetric."

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_MACS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SYMMETRIC_CIPHERS:[Lorg/bouncycastle/crypto/i;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Lorg/bouncycastle/crypto/i;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_GENERIC:[Ljava/lang/String;

    const-string v1, "org.bouncycastle.jcajce.provider.asymmetric."

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->ASYMMETRIC_CIPHERS:[Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.keystore."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KEYSTORES:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.drbg."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->SECURE_RANDOMS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "org.bouncycastle.jcajce.provider.kdf."

    sget-object v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->KDFS:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadAlgorithms(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->loadPQCKeys()V

    const-string v0, "X509Store.CERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreAttrCertCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCRLCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/COLLECTION"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreCertPairCollection"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CRL/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCRLs"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.ATTRIBUTECERTIFICATE/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPAttrCerts"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509Store.CERTIFICATEPAIR/LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509StoreLDAPCertPairs"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509CertParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.ATTRIBUTECERTIFICATE"

    const-string v1, "org.bouncycastle.jce.provider.X509AttrCertParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CRL"

    const-string v1, "org.bouncycastle.jce.provider.X509CRLParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "X509StreamParser.CERTIFICATEPAIR"

    const-string v1, "org.bouncycastle.jce.provider.X509CertPairParser"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHMD5ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithMD5AndDES"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.BROKENPBEWITHSHA1ANDDES"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cipher.OLDPBEWITHSHAANDTWOFISH-CBC"

    const-string v1, "org.bouncycastle.jce.provider.BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->revChkClass:Ljava/lang/Class;

    const-string v1, "CertPathBuilder.PKIX"

    const-string v2, "CertPathValidator.PKIX"

    const-string v3, "CertPathBuilder.RFC3280"

    const-string v4, "CertPathValidator.RFC3280"

    const-string v5, "org.bouncycastle.jce.provider.PKIXAttrCertPathBuilderSpi"

    const-string v6, "CertPathBuilder.RFC3281"

    const-string v7, "org.bouncycastle.jce.provider.PKIXAttrCertPathValidatorSpi"

    const-string v8, "CertPathValidator.RFC3281"

    invoke-virtual {p0, v8, v7}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_d0

    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi_8"

    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi_8"

    :goto_c6
    invoke-virtual {p0, v3, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d8

    :cond_d0
    const-string v0, "org.bouncycastle.jce.provider.PKIXCertPathValidatorSpi"

    invoke-virtual {p0, v4, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "org.bouncycastle.jce.provider.PKIXCertPathBuilderSpi"

    goto :goto_c6

    :goto_d8
    const-string v0, "CertStore.Collection"

    const-string v1, "org.bouncycastle.jce.provider.CertStoreCollectionSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.LDAP"

    const-string v1, "org.bouncycastle.jce.provider.X509LDAPCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CertStore.Multi"

    const-string v1, "org.bouncycastle.jce.provider.MultiCertStoreSpi"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Alg.Alias.CertStore.X509LDAP"

    const-string v1, "LDAP"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p2, "duplicate provider key ("

    const-string v0, ") found"

    invoke-static {p2, p1, v0}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAlgorithm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAlgorithm(Ljava/lang/String;Lm/q;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".OID."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public addAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ImplementedIn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Software"

    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :cond_4c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "duplicate provider attribute key ("

    const-string p2, ") found"

    invoke-static {p1, v2, p2}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    return-void
.end method

.method public addKeyInfoConverter(Lm/q;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V
    .registers 3

    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    monitor-enter p0

    :try_start_3
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public getKeyInfoConverter(Lm/q;)Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    .registers 2

    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->keyInfoConverters:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;

    return-object p0
.end method

.method public final getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .registers 6

    invoke-static {p2}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider$Service;

    if-nez v1, :cond_44

    monitor-enter p0

    :try_start_23
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    new-instance v1, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider$2;-><init>(Lorg/bouncycastle/jce/provider/BouncyCastleProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1

    :goto_34
    check-cast p1, Ljava/security/Provider$Service;

    goto :goto_40

    :catchall_37
    move-exception p1

    goto :goto_42

    :cond_39
    iget-object p1, p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->serviceMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_34

    :goto_40
    monitor-exit p0

    return-object p1

    :goto_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_37

    throw p1

    :cond_44
    return-object v1
.end method

.method public hasAlgorithm(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Alg.Alias."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    return p0

    :cond_37
    :goto_37
    const/4 p0, 0x1

    return p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    sget-object p0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    monitor-enter p0

    :try_start_3
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/jce/provider/BouncyCastleProviderConfiguration;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method
