.class public abstract Lorg/bouncycastle/crypto/o;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/ThreadLocal;

.field public static final b:Ljava/util/Map;

.field public static final c:Lorg/bouncycastle/crypto/n;

.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final e:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    const-class v0, Lorg/bouncycastle/crypto/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Lorg/bouncycastle/crypto/k;

    const-string v1, "globalConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/k;

    const-string v1, "threadLocalConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/k;

    const-string v1, "defaultRandomConfig"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/crypto/k;

    const-string v1, "constraints"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/k;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/crypto/o;->b:Ljava/util/Map;

    new-instance v2, Lorg/bouncycastle/crypto/n;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/n;-><init>()V

    sput-object v2, Lorg/bouncycastle/crypto/o;->c:Lorg/bouncycastle/crypto/n;

    new-instance v2, Lorg/bouncycastle/crypto/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v3, Lorg/bouncycastle/crypto/o;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v3, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Le1/m;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17"

    const/16 v7, 0x10

    invoke-direct {v5, v6, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v8, "962eddcc369cba8ebb260ee6b6a126d9346e38c5"

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4"

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Le1/p;

    const-string v10, "b869c82b35d70e1b1ff91b28e37a62ecdc34409b"

    invoke-static {v10}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v10

    const/16 v11, 0x7b

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Le1/p;-><init>([BII)V

    invoke-direct {v4, v5, v6, v8, v9}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    new-instance v5, Le1/m;

    new-instance v6, Ljava/math/BigInteger;

    const-string v8, "e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf"

    invoke-direct {v6, v8, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511"

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252"

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Le1/p;

    const-string v11, "77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"

    invoke-static {v11}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v11

    const/16 v13, 0x107

    invoke-direct {v10, v11, v13, v12}, Le1/p;-><init>([BII)V

    invoke-direct {v5, v6, v8, v9, v10}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    new-instance v6, Le1/m;

    new-instance v8, Ljava/math/BigInteger;

    const-string v9, "fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7"

    invoke-direct {v8, v9, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "9760508f15230bccb292b982a2eb840bf0581cf5"

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a"

    invoke-direct {v10, v11, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Le1/p;

    const-string v13, "8d5155894229d5e689ee01e6018a237e2cae64cd"

    invoke-static {v13}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x5c

    invoke-direct {v11, v13, v14, v12}, Le1/p;-><init>([BII)V

    invoke-direct {v6, v8, v9, v10, v11}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    new-instance v8, Le1/m;

    new-instance v9, Ljava/math/BigInteger;

    const-string v10, "95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b"

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const-string v11, "f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773"

    invoke-direct {v10, v11, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v11, Ljava/math/BigInteger;

    const-string v13, "42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a"

    invoke-direct {v11, v13, v7}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Le1/p;

    const-string v13, "b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"

    invoke-static {v13}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x1f1

    invoke-direct {v7, v13, v14, v12}, Le1/p;-><init>([BII)V

    invoke-direct {v8, v9, v10, v11, v7}, Le1/m;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Le1/p;)V

    filled-new-array {v4, v5, v6, v8}, [Le1/m;

    move-result-object v7

    aget-object v9, v7, v12

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Le1/m;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    const-string v10, "Bad property value passed"

    if-eqz v9, :cond_163

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_114

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_114
    const-string v11, "dsaDefaultParams"

    invoke-interface {v9, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lorg/bouncycastle/crypto/o;->d(Le1/m;)Le1/g;

    move-result-object v4

    invoke-static {v5}, Lorg/bouncycastle/crypto/o;->d(Le1/m;)Le1/g;

    move-result-object v5

    invoke-static {v6}, Lorg/bouncycastle/crypto/o;->d(Le1/m;)Le1/g;

    move-result-object v6

    invoke-static {v8}, Lorg/bouncycastle/crypto/o;->d(Le1/m;)Le1/g;

    move-result-object v7

    filled-new-array {v4, v5, v6, v7}, [Le1/g;

    move-result-object v4

    aget-object v5, v4, v12

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Le1/g;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_15d

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_14e

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14e
    const-string v0, "dhDefaultParams"

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    return-void

    :cond_15d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()V
    .registers 1

    sget-object v0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static b()Ljava/security/SecureRandom;
    .registers 3

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/o;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/o;->c:Lorg/bouncycastle/crypto/n;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_12

    :cond_c
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/n;

    iget-object v0, v0, Lorg/bouncycastle/crypto/n;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_28
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    return-object v0
.end method

.method public static c(Lorg/bouncycastle/crypto/m;I)Lorg/bouncycastle/crypto/g;
    .registers 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/m;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/bouncycastle/crypto/o;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1c

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_1c

    :cond_15
    :goto_15
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_1f

    :cond_1c
    :goto_1c
    sget-object v1, Lorg/bouncycastle/crypto/o;->b:Ljava/util/Map;

    goto :goto_15

    :goto_1f
    iget-object p0, p0, Lorg/bouncycastle/crypto/m;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    if-nez v0, :cond_26

    goto :goto_5d

    :cond_26
    const-class v1, Le1/g;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_42

    :goto_2f
    array-length p0, v0

    if-eq v2, p0, :cond_5d

    aget-object p0, v0, v2

    check-cast p0, Le1/g;

    iget-object v1, p0, Le1/g;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ne v1, p1, :cond_3f

    return-object p0

    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_42
    const-class v1, Le1/m;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_5d

    :goto_4a
    array-length p0, v0

    if-eq v2, p0, :cond_5d

    aget-object p0, v0, v2

    check-cast p0, Le1/m;

    iget-object v1, p0, Le1/m;->q:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ne v1, p1, :cond_5a

    return-object p0

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_5d
    :goto_5d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Le1/m;)Le1/g;
    .registers 11

    iget-object v0, p0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v1, p0, Le1/m;->x:Le1/p;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v2, 0x400

    if-le v0, v2, :cond_25

    const/16 v2, 0x800

    if-gt v0, v2, :cond_14

    const/16 v0, 0xe0

    :goto_12
    move v6, v0

    goto :goto_28

    :cond_14
    const/16 v2, 0xc00

    if-gt v0, v2, :cond_1b

    const/16 v0, 0x100

    goto :goto_12

    :cond_1b
    const/16 v2, 0x1e00

    if-gt v0, v2, :cond_22

    const/16 v0, 0x180

    goto :goto_12

    :cond_22
    const/16 v0, 0x200

    goto :goto_12

    :cond_25
    const/16 v0, 0xa0

    goto :goto_12

    :goto_28
    new-instance v2, Le1/g;

    iget-object v3, p0, Le1/m;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Le1/m;->c:Ljava/math/BigInteger;

    iget-object v5, p0, Le1/m;->d:Ljava/math/BigInteger;

    new-instance v9, Le1/j;

    iget-object p0, v1, Le1/p;->a:[B

    invoke-static {p0}, Lm4/d;->e([B)[B

    move-result-object p0

    iget v0, v1, Le1/p;->b:I

    invoke-direct {v9, p0, v0}, Le1/j;-><init>([BI)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v9}, Le1/g;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Le1/j;)V

    return-object v2
.end method
