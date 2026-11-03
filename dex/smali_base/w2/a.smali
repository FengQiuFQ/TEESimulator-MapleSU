.class public final Lw2/a;
.super Ljava/lang/Object;


# static fields
.field public static final d:Ljava/util/HashSet;

.field public static final e:Lv2/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lw2/b;

.field public c:Ll0/b;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lw2/a;->d:Ljava/util/HashSet;

    new-instance v1, Lv2/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lw2/a;->e:Lv2/a;

    const-string v1, "COMPOSITE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "DILITHIUM"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCS+"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SPHINCSPlus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "ML-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "SLH-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HASH-ML-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "HASH-SLH-DSA"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lw2/b;

    new-instance v1, La3/e;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, La3/e;-><init>(BI)V

    invoke-direct {v0, v1}, Lw2/b;-><init>(Le2/b;)V

    iput-object v0, p0, Lw2/a;->b:Lw2/b;

    iput-object p1, p0, Lw2/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/PrivateKey;)Lg1/d;
    .registers 10

    instance-of v0, p1, La2/c;

    const-string v1, "cannot create signer: "

    if-eqz v0, :cond_88

    move-object v0, p1

    check-cast v0, La2/c;

    iget-object v2, v0, La2/c;->d:Ll0/b;

    iget-object v2, v2, Ll0/b;->c:Lm/q;

    sget-object v3, Ly/a;->a:Lm/q;

    invoke-virtual {v2, v3}, Lm/u;->n(Lm/u;)Z

    move-result v2

    if-eqz v2, :cond_88

    :try_start_15
    iget-object p1, v0, La2/c;->c:Ljava/util/List;

    iget-object v0, p0, Lw2/a;->c:Ll0/b;

    iget-object v0, v0, Ll0/b;->d:Lm/f;

    invoke-static {v0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v0

    invoke-virtual {v0}, Lm/x;->size()I

    move-result v2

    new-array v3, v2, [Ljava/security/Signature;

    const/4 v4, 0x0

    move v5, v4

    :goto_27
    invoke-virtual {v0}, Lm/x;->size()I

    move-result v6

    if-eq v5, v6, :cond_4b

    iget-object v6, p0, Lw2/a;->b:Lw2/b;

    invoke-virtual {v0, v5}, Lm/x;->v(I)Lm/f;

    move-result-object v7

    invoke-static {v7}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object v7

    invoke-virtual {v6, v7}, Lw2/b;->a(Ll0/b;)Ljava/security/Signature;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;

    invoke-virtual {v6, v7}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :catch_49
    move-exception p0

    goto :goto_71

    :cond_4b
    aget-object p1, v3, v4

    new-instance v0, Lc2/c;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lc2/c;-><init>(I)V

    iput-object p1, v0, Lc2/c;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    :goto_56
    if-eq p1, v2, :cond_6b

    new-instance v4, Lo4/b;

    aget-object v5, v3, p1

    new-instance v6, Lc2/c;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lc2/c;-><init>(I)V

    iput-object v5, v6, Lc2/c;->d:Ljava/lang/Object;

    invoke-direct {v4, v0, v6}, Lo4/b;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    add-int/lit8 p1, p1, 0x1

    move-object v0, v4

    goto :goto_56

    :cond_6b
    new-instance p1, Lg1/d;

    invoke-direct {p1, p0, v0, v3}, Lg1/d;-><init>(Lw2/a;Ljava/io/OutputStream;[Ljava/security/Signature;)V
    :try_end_70
    .catch Ljava/security/GeneralSecurityException; {:try_start_15 .. :try_end_70} :catch_49

    return-object p1

    :goto_71
    new-instance p1, Lr4/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lr4/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_88
    :try_start_88
    sget-object v0, Lw2/a;->e:Lv2/a;

    sget-object v2, Lw2/a;->d:Ljava/util/HashSet;

    iget-object v3, p0, Lw2/a;->a:Ljava/lang/String;

    invoke-static {v3}, Lm4/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lv2/a;->e(Ljava/lang/String;)Ll0/b;

    move-result-object v0

    goto :goto_ab

    :cond_a4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lv2/a;->e(Ljava/lang/String;)Ll0/b;

    move-result-object v0

    :goto_ab
    iput-object v0, p0, Lw2/a;->c:Ll0/b;

    iget-object p0, p0, Lw2/a;->b:Lw2/b;

    invoke-virtual {p0, v0}, Lw2/b;->a(Ll0/b;)Ljava/security/Signature;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    new-instance p1, Lg1/d;

    invoke-direct {p1, p0, v0}, Lg1/d;-><init>(Ljava/security/Signature;Ll0/b;)V
    :try_end_bb
    .catch Ljava/security/GeneralSecurityException; {:try_start_88 .. :try_end_bb} :catch_bc

    return-object p1

    :catch_bc
    move-exception p0

    new-instance p1, Lr4/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lr4/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method
