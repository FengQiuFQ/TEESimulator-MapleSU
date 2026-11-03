.class public Lorg/bouncycastle/jcajce/provider/asymmetric/EC;
.super Ljava/lang/Object;


# static fields
.field private static final PREFIX:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric.ec."

.field private static final ecSupportCurves:Ljava/util/Map;

.field private static final generalEcAttributes:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->ecSupportCurves:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "java.security.interfaces.ECPublicKey|java.security.interfaces.ECPrivateKey"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "PKCS#8|X.509"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lq4/k;->f0()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_34
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x3

    if-lt v4, v6, :cond_58

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2e

    if-eq v4, v6, :cond_45

    goto :goto_58

    :cond_45
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_58

    const/16 v4, 0x32

    if-le v3, v4, :cond_52

    goto :goto_58

    :cond_52
    new-instance v3, Lm/q;

    invoke-direct {v3, v5}, Lm/q;-><init>(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_57} :catch_58

    goto :goto_59

    :catch_58
    :cond_58
    :goto_58
    move-object v3, v2

    :goto_59
    if-eqz v3, :cond_6c

    sget-object v4, Lt0/b;->c:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/i;

    if-nez v4, :cond_67

    :goto_65
    move-object v4, v2

    goto :goto_7f

    :cond_67
    invoke-virtual {v4}, Lm0/i;->d()Lm0/h;

    move-result-object v4

    goto :goto_7f

    :cond_6c
    sget-object v4, Lt0/b;->a:Ljava/util/Hashtable;

    invoke-static {v5}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm0/i;

    if-nez v4, :cond_7b

    goto :goto_65

    :cond_7b
    invoke-virtual {v4}, Lm0/i;->d()Lm0/h;

    move-result-object v4

    :goto_7f
    if-nez v4, :cond_8c

    if-eqz v3, :cond_88

    invoke-static {v3}, Lq4/k;->Y(Lm/q;)Lm0/h;

    move-result-object v4

    goto :goto_8c

    :cond_88
    invoke-static {v5}, Lq4/k;->X(Ljava/lang/String;)Lm0/h;

    move-result-object v4

    :cond_8c
    :goto_8c
    if-nez v4, :cond_8f

    goto :goto_a8

    :cond_8f
    move-object v2, v4

    new-instance v4, Li2/c;

    iget-object v3, v2, Lm0/h;->d:Lm0/g;

    iget-object v6, v3, Lm0/g;->c:Lk2/h;

    iget-object v3, v2, Lm0/h;->q:Lm0/j;

    invoke-virtual {v3}, Lm0/j;->h()Lk2/p;

    move-result-object v7

    iget-object v8, v2, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v9, v2, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {v2}, Lm0/h;->i()[B

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Li2/c;-><init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    move-object v2, v4

    :goto_a8
    if-nez v2, :cond_ac

    goto/16 :goto_25

    :cond_ac
    invoke-static {v5}, Lq4/k;->g0(Ljava/lang/String;)Lm/q;

    move-result-object v2

    if-nez v2, :cond_b4

    goto/16 :goto_25

    :cond_b4
    invoke-virtual {v2}, Lm/q;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    if-nez v3, :cond_c8

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c8
    invoke-virtual {v3, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_d3
    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_dc
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_18c

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v7, Lm/q;

    invoke-direct {v7, v4}, Lm/q;-><init>(Ljava/lang/String;)V

    sget-object v8, Lm0/m;->q1:Lm/q;

    invoke-virtual {v8, v7}, Lm/u;->n(Lm/u;)Z

    move-result v8

    const-string v9, ","

    if-eqz v8, :cond_10b

    const-string v5, "secp256r1,NIST P-256,X9.62 prime256v1"

    :goto_106
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_178

    :cond_10b
    sget-object v8, Lm0/m;->k1:Lm/q;

    invoke-virtual {v8, v7}, Lm/u;->n(Lm/u;)Z

    move-result v8

    if-eqz v8, :cond_116

    const-string v5, "secp192r1,NIST P-192,X9.62 prime192v1"

    goto :goto_106

    :cond_116
    sget-object v8, Lm0/m;->j1:Lm/q;

    invoke-virtual {v7, v8}, Lm/q;->y(Lm/q;)Z

    move-result v8

    if-nez v8, :cond_126

    sget-object v8, Lm0/m;->S0:Lm/q;

    invoke-virtual {v7, v8}, Lm/q;->y(Lm/q;)Z

    move-result v8

    if-eqz v8, :cond_12b

    :cond_126
    const-string v8, "X9.62 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12b
    move v8, v3

    :goto_12c
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v8, v10, :cond_178

    if-lez v8, :cond_137

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_137
    invoke-virtual {v5, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Lf0/e;->a:Lm/q;

    invoke-virtual {v7, v11}, Lm/q;->y(Lm/q;)Z

    move-result v11

    if-nez v11, :cond_155

    sget-object v11, Lm0/m;->q1:Lm/q;

    invoke-virtual {v11, v7}, Lm/u;->n(Lm/u;)Z

    move-result v11

    if-nez v11, :cond_155

    sget-object v11, Lm0/m;->k1:Lm/q;

    invoke-virtual {v11, v7}, Lm/u;->n(Lm/u;)Z

    move-result v11

    if-eqz v11, :cond_172

    :cond_155
    const-string v11, "K-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16d

    const-string v11, "B-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_16d

    const-string v11, "P-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_172

    :cond_16d
    const-string v11, "NIST "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_172
    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_12c

    :cond_178
    :goto_178
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "]"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_dc

    :cond_18c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_191
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_1aa

    if-lez v3, :cond_19e

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_19e
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_191

    :cond_1aa
    sget-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->ecSupportCurves:Ljava/util/Map;

    const-string v2, "SupportedCurves"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->ecSupportCurves:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/EC;->generalEcAttributes:Ljava/util/Map;

    return-object v0
.end method
