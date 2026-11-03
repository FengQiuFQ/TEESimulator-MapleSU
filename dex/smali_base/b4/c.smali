.class public final Lb4/c;
.super Lk4/a;


# static fields
.field public static final a:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lb4/c;->a:Ljava/util/HashSet;

    sget-object v1, Lz/b;->P0:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lz/b;->Q0:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lz/b;->R0:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lo/a;->k2:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lo/a;->l2:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lo/a;->m2:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lb4/c;->a:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lk4/a;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 5

    instance-of p0, p1, Lb4/a;

    const-string v0, "."

    if-eqz p0, :cond_1a

    const-class p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/PKCS8EncodedKeySpec;

    check-cast p1, Lb4/a;

    invoke-virtual {p1}, Lb4/a;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_1a
    instance-of p0, p1, Lb4/b;

    if-eqz p0, :cond_49

    const-class p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_32

    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    check-cast p1, Lb4/b;

    invoke-virtual {p1}, Lb4/b;->getEncoded()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0

    :cond_32
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unknown key specification: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    new-instance p0, Ljava/security/spec/InvalidKeySpecException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported key type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 2

    instance-of p0, p1, Lb4/a;

    if-nez p0, :cond_11

    instance-of p0, p1, Lb4/b;

    if-eqz p0, :cond_9

    return-object p1

    :cond_9
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Unsupported key type"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    return-object p1
.end method

.method public final generatePrivate(Ld0/t;)Ljava/security/PrivateKey;
    .registers 3

    new-instance p0, Lb4/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ld0/t;->x:Lm/y;

    iput-object v0, p0, Lb4/a;->q:Lm/y;

    invoke-static {p1}, Ls2/b;->o(Ld0/t;)Le1/b;

    move-result-object p1

    check-cast p1, Lj3/g;

    iput-object p1, p0, Lb4/a;->c:Lj3/g;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Lj3/f;

    iget-object p1, p1, Lj3/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb4/a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final generatePublic(Ll0/p0;)Ljava/security/PublicKey;
    .registers 2

    new-instance p0, Lb4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lu3/b;->a(Ll0/p0;)Le1/b;

    move-result-object p1

    check-cast p1, Lj3/h;

    iput-object p1, p0, Lb4/b;->c:Lj3/h;

    iget-object p1, p1, La3/a;->d:Ljava/lang/Object;

    check-cast p1, Lj3/f;

    iget-object p1, p1, Lj3/f;->c:Ljava/lang/String;

    invoke-static {p1}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb4/b;->d:Ljava/lang/String;

    return-object p0
.end method
