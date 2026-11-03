.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;


# static fields
.field private static final ekb:[S

.field private static final table:[S


# instance fields
.field private iv:[B

.field private parameterVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_14

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->table:[S

    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_118

    sput-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->ekb:[S

    return-void

    nop

    :array_14
    .array-data 2
        0xbds
        0x56s
        0xeas
        0xf2s
        0xa2s
        0xf1s
        0xacs
        0x2as
        0xb0s
        0x93s
        0xd1s
        0x9cs
        0x1bs
        0x33s
        0xfds
        0xd0s
        0x30s
        0x4s
        0xb6s
        0xdcs
        0x7ds
        0xdfs
        0x32s
        0x4bs
        0xf7s
        0xcbs
        0x45s
        0x9bs
        0x31s
        0xbbs
        0x21s
        0x5as
        0x41s
        0x9fs
        0xe1s
        0xd9s
        0x4as
        0x4ds
        0x9es
        0xdas
        0xa0s
        0x68s
        0x2cs
        0xc3s
        0x27s
        0x5fs
        0x80s
        0x36s
        0x3es
        0xees
        0xfbs
        0x95s
        0x1as
        0xfes
        0xces
        0xa8s
        0x34s
        0xa9s
        0x13s
        0xf0s
        0xa6s
        0x3fs
        0xd8s
        0xcs
        0x78s
        0x24s
        0xafs
        0x23s
        0x52s
        0xc1s
        0x67s
        0x17s
        0xf5s
        0x66s
        0x90s
        0xe7s
        0xe8s
        0x7s
        0xb8s
        0x60s
        0x48s
        0xe6s
        0x1es
        0x53s
        0xf3s
        0x92s
        0xa4s
        0x72s
        0x8cs
        0x8s
        0x15s
        0x6es
        0x86s
        0x0s
        0x84s
        0xfas
        0xf4s
        0x7fs
        0x8as
        0x42s
        0x19s
        0xf6s
        0xdbs
        0xcds
        0x14s
        0x8ds
        0x50s
        0x12s
        0xbas
        0x3cs
        0x6s
        0x4es
        0xecs
        0xb3s
        0x35s
        0x11s
        0xa1s
        0x88s
        0x8es
        0x2bs
        0x94s
        0x99s
        0xb7s
        0x71s
        0x74s
        0xd3s
        0xe4s
        0xbfs
        0x3as
        0xdes
        0x96s
        0xes
        0xbcs
        0xas
        0xeds
        0x77s
        0xfcs
        0x37s
        0x6bs
        0x3s
        0x79s
        0x89s
        0x62s
        0xc6s
        0xd7s
        0xc0s
        0xd2s
        0x7cs
        0x6as
        0x8bs
        0x22s
        0xa3s
        0x5bs
        0x5s
        0x5ds
        0x2s
        0x75s
        0xd5s
        0x61s
        0xe3s
        0x18s
        0x8fs
        0x55s
        0x51s
        0xads
        0x1fs
        0xbs
        0x5es
        0x85s
        0xe5s
        0xc2s
        0x57s
        0x63s
        0xcas
        0x3ds
        0x6cs
        0xb4s
        0xc5s
        0xccs
        0x70s
        0xb2s
        0x91s
        0x59s
        0xds
        0x47s
        0x20s
        0xc8s
        0x4fs
        0x58s
        0xe0s
        0x1s
        0xe2s
        0x16s
        0x38s
        0xc4s
        0x6fs
        0x3bs
        0xfs
        0x65s
        0x46s
        0xbes
        0x7es
        0x2ds
        0x7bs
        0x82s
        0xf9s
        0x40s
        0xb5s
        0x1ds
        0x73s
        0xf8s
        0xebs
        0x26s
        0xc7s
        0x87s
        0x97s
        0x25s
        0x54s
        0xb1s
        0x28s
        0xaas
        0x98s
        0x9ds
        0xa5s
        0x64s
        0x6ds
        0x7as
        0xd4s
        0x10s
        0x81s
        0x44s
        0xefs
        0x49s
        0xd6s
        0xaes
        0x2es
        0xdds
        0x76s
        0x5cs
        0x2fs
        0xa7s
        0x1cs
        0xc9s
        0x9s
        0x69s
        0x9as
        0x83s
        0xcfs
        0x29s
        0x39s
        0xb9s
        0xe9s
        0x4cs
        0xffs
        0x43s
        0xabs
    .end array-data

    :array_118
    .array-data 2
        0x5ds
        0xbes
        0x9bs
        0x8bs
        0x11s
        0x99s
        0x6es
        0x4ds
        0x59s
        0xf3s
        0x85s
        0xa6s
        0x3fs
        0xb7s
        0x83s
        0xc5s
        0xe4s
        0x73s
        0x6bs
        0x3as
        0x68s
        0x5as
        0xc0s
        0x47s
        0xa0s
        0x64s
        0x34s
        0xcs
        0xf1s
        0xd0s
        0x52s
        0xa5s
        0xb9s
        0x1es
        0x96s
        0x43s
        0x41s
        0xd8s
        0xd4s
        0x2cs
        0xdbs
        0xf8s
        0x7s
        0x77s
        0x2as
        0xcas
        0xebs
        0xefs
        0x10s
        0x1cs
        0x16s
        0xds
        0x38s
        0x72s
        0x2fs
        0x89s
        0xc1s
        0xf9s
        0x80s
        0xc4s
        0x6ds
        0xaes
        0x30s
        0x3ds
        0xces
        0x20s
        0x63s
        0xfes
        0xe6s
        0x1as
        0xc7s
        0xb8s
        0x50s
        0xe8s
        0x24s
        0x17s
        0xfcs
        0x25s
        0x6fs
        0xbbs
        0x6as
        0xa3s
        0x44s
        0x53s
        0xd9s
        0xa2s
        0x1s
        0xabs
        0xbcs
        0xb6s
        0x1fs
        0x98s
        0xees
        0x9as
        0xa7s
        0x2ds
        0x4fs
        0x9es
        0x8es
        0xacs
        0xe0s
        0xc6s
        0x49s
        0x46s
        0x29s
        0xf4s
        0x94s
        0x8as
        0xafs
        0xe1s
        0x5bs
        0xc3s
        0xb3s
        0x7bs
        0x57s
        0xd1s
        0x7cs
        0x9cs
        0xeds
        0x87s
        0x40s
        0x8cs
        0xe2s
        0xcbs
        0x93s
        0x14s
        0xc9s
        0x61s
        0x2es
        0xe5s
        0xccs
        0xf6s
        0x5es
        0xa8s
        0x5cs
        0xd6s
        0x75s
        0x8ds
        0x62s
        0x95s
        0x58s
        0x69s
        0x76s
        0xa1s
        0x4as
        0xb5s
        0x55s
        0x9s
        0x78s
        0x33s
        0x82s
        0xd7s
        0xdds
        0x79s
        0xf5s
        0x1bs
        0xbs
        0xdes
        0x26s
        0x21s
        0x28s
        0x74s
        0x4s
        0x97s
        0x56s
        0xdfs
        0x3cs
        0xf0s
        0x37s
        0x39s
        0xdcs
        0xffs
        0x6s
        0xa4s
        0xeas
        0x42s
        0x8s
        0xdas
        0xb4s
        0x71s
        0xb0s
        0xcfs
        0x12s
        0x7as
        0x4es
        0xfas
        0x6cs
        0x1ds
        0x84s
        0x0s
        0xc8s
        0x7fs
        0x91s
        0x45s
        0xaas
        0x2bs
        0xc2s
        0xb1s
        0x8fs
        0xd5s
        0xbas
        0xf2s
        0xads
        0x19s
        0xb2s
        0x67s
        0x36s
        0xf7s
        0xfs
        0xas
        0x92s
        0x7ds
        0xe3s
        0x9ds
        0xe9s
        0x90s
        0x3es
        0x23s
        0x27s
        0x66s
        0x13s
        0xecs
        0x81s
        0x15s
        0xbds
        0x22s
        0xbfs
        0x9fs
        0x7es
        0xa9s
        0x51s
        0x4bs
        0x4cs
        0xfbs
        0x2s
        0xd3s
        0x70s
        0x86s
        0x31s
        0xe7s
        0x3bs
        0x5s
        0x3s
        0x54s
        0x60s
        0x48s
        0x65s
        0x18s
        0xd2s
        0xcds
        0x5fs
        0x32s
        0x88s
        0xes
        0x35s
        0xfds
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    const/16 v0, 0x3a

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    return-void
.end method


# virtual methods
.method public engineGetEncoded()[B
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    return-object p0
.end method

.method public engineGetEncoded(Ljava/lang/String;)[B
    .registers 8

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-ne p1, v2, :cond_38

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->engineGetEncoded()[B

    move-result-object p0

    new-instance p1, Lm/x0;

    invoke-direct {p1, p0}, Lm/r;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Lm/g;

    invoke-direct {v3, v1}, Lm/g;-><init>(I)V

    invoke-virtual {v3, p1}, Lm/g;->a(Lm/f;)V

    new-instance p1, Lm/a1;

    invoke-direct {p1, v3}, Lm/x;-><init>(Lm/g;)V

    iput v2, p1, Lm/a1;->q:I

    new-instance v1, Lb1/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    :goto_30
    invoke-virtual {p1, v1, v0}, Lm/u;->i(Lb1/a;Z)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_38
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->engineGetEncoded()[B

    move-result-object p0

    new-instance v3, Lm/l;

    int-to-long v4, p1

    invoke-direct {v3, v4, v5}, Lm/l;-><init>(J)V

    new-instance p1, Lm/x0;

    invoke-direct {p1, p0}, Lm/r;-><init>([B)V

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Lm/g;

    invoke-direct {v4, v1}, Lm/g;-><init>(I)V

    invoke-virtual {v4, v3}, Lm/g;->a(Lm/f;)V

    invoke-virtual {v4, p1}, Lm/g;->a(Lm/f;)V

    new-instance p1, Lm/a1;

    invoke-direct {p1, v4}, Lm/x;-><init>(Lm/g;)V

    iput v2, p1, Lm/a1;->q:I

    new-instance v1, Lb1/a;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lb1/a;-><init>(ILjava/lang/Object;)V

    goto :goto_30

    :cond_65
    const-string v0, "RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->engineGetEncoded()[B

    move-result-object p0

    return-object p0

    :cond_72
    const/4 p0, 0x0

    return-object p0
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4

    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_d

    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    return-void

    :cond_d
    instance-of v0, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_2b

    check-cast p1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    const/16 v1, 0x100

    if-ge v0, v1, :cond_22

    sget-object v1, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->table:[S

    aget-short v0, v1, v0

    :cond_22
    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    :cond_24
    invoke-virtual {p1}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    return-void

    :cond_2b
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "IvParameterSpec or RC2ParameterSpec required to initialise a RC2 parameters algorithm parameters object"

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineInit([B)V
    .registers 2

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    return-void
.end method

.method public engineInit([BLjava/lang/String;)V
    .registers 7

    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_36

    new-instance v0, Ld0/u;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_29

    iput-object p2, v0, Ld0/u;->c:Lm/l;

    invoke-virtual {p1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    :goto_24
    check-cast p1, Lm/r;

    iput-object p1, v0, Ld0/u;->d:Lm/r;

    goto :goto_37

    :cond_29
    invoke-virtual {p1, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v1

    check-cast v1, Lm/l;

    iput-object v1, v0, Ld0/u;->c:Lm/l;

    invoke-virtual {p1, v3}, Lm/x;->v(I)Lm/f;

    move-result-object p1

    goto :goto_24

    :cond_36
    move-object v0, p2

    :goto_37
    iget-object p1, v0, Ld0/u;->c:Lm/l;

    if-nez p1, :cond_3d

    move-object p1, p2

    goto :goto_41

    :cond_3d
    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p1

    :goto_41
    if-eqz p1, :cond_52

    iget-object p1, v0, Ld0/u;->c:Lm/l;

    if-nez p1, :cond_48

    goto :goto_4c

    :cond_48
    invoke-virtual {p1}, Lm/l;->t()Ljava/math/BigInteger;

    move-result-object p2

    :goto_4c
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    :cond_52
    iget-object p1, v0, Ld0/u;->d:Lm/r;

    iget-object p1, p1, Lm/r;->c:[B

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    return-void

    :cond_59
    const-string v0, "RAW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_65

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->engineInit([B)V

    return-void

    :cond_65
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown parameters format in IV parameters object"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public engineToString()Ljava/lang/String;
    .registers 1

    const-string p0, "RC2 Parameters"

    return-object p0
.end method

.method public localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4

    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eq p1, v0, :cond_8

    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-ne p1, v0, :cond_29

    :cond_8
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    const/16 p1, 0x100

    if-ge v0, p1, :cond_1f

    new-instance p1, Ljavax/crypto/spec/RC2ParameterSpec;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->ekb:[S

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    aget-short v0, v0, v1

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    invoke-direct {p1, v0, p0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    return-object p1

    :cond_1f
    new-instance p1, Ljavax/crypto/spec/RC2ParameterSpec;

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->parameterVersion:I

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    invoke-direct {p1, v0, p0}, Ljavax/crypto/spec/RC2ParameterSpec;-><init>(I[B)V

    return-object p1

    :cond_29
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_35

    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParams;->iv:[B

    invoke-direct {p1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object p1

    :cond_35
    new-instance p0, Ljava/security/spec/InvalidParameterSpecException;

    const-string p1, "unknown parameter spec passed to RC2 parameters object."

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
