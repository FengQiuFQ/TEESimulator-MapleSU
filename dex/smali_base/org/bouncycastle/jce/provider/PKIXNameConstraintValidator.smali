.class public Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
.super Ljava/lang/Object;


# instance fields
.field validator:Ll0/k0;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll0/k0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Ll0/k0;->a:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Ll0/k0;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Ll0/k0;->c:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Ll0/k0;->d:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Ll0/k0;->e:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Ll0/k0;->f:Ljava/util/HashSet;

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    return-void
.end method


# virtual methods
.method public addExcludedSubtree(Ll0/a0;)V
    .registers 11

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Ll0/a0;->c:Ll0/y;

    iget v0, p1, Ll0/y;->d:I

    iget-object v1, p1, Ll0/y;->c:Lm/f;

    if-eqz v0, :cond_298

    const/4 v2, -0x1

    const/16 v3, 0x40

    const-string v4, "."

    const/4 v5, 0x1

    if-eq v0, v5, :cond_1cc

    const/4 v6, 0x2

    if-eq v0, v6, :cond_18f

    const/4 v6, 0x4

    if-eq v0, v6, :cond_147

    const/4 v6, 0x6

    if-eq v0, v6, :cond_7b

    const/4 v2, 0x7

    if-ne v0, v2, :cond_65

    iget-object p1, p0, Ll0/k0;->e:Ljava/util/Set;

    invoke-static {v1}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object v0

    iget-object v0, v0, Lm/r;->c:[B

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_36

    if-nez v0, :cond_32

    goto :goto_62

    :cond_32
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_5d
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f

    :cond_61
    move-object p1, v1

    :goto_62
    iput-object p1, p0, Ll0/k0;->e:Ljava/util/Set;

    return-void

    :cond_65
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown tag encountered: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Ll0/y;->d:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7b
    iget-object v0, p0, Ll0/k0;->d:Ljava/util/Set;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_144

    :cond_8c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_143

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v2, :cond_db

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v2, :cond_c7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    :goto_bc
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_c0
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c3
    :goto_c3
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_95

    :cond_c7
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d4

    invoke-static {v7, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    :goto_d3
    goto :goto_c3

    :cond_d4
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_d3

    :cond_db
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_118

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v2, :cond_f7

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_bc

    :cond_f7
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_111

    invoke-static {v6, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c3

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10a

    goto :goto_c3

    :cond_10a
    invoke-static {p1, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_bc

    :cond_111
    invoke-static {p1, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_bc

    :cond_118
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v2, :cond_12e

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_bc

    :cond_12e
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13b

    invoke-static {v6, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto :goto_d3

    :cond_13b
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c0

    goto/16 :goto_bc

    :cond_143
    move-object v0, v1

    :goto_144
    iput-object v0, p0, Ll0/k0;->d:Ljava/util/Set;

    return-void

    :cond_147
    iget-object p1, p0, Ll0/k0;->a:Ljava/util/Set;

    invoke-interface {v1}, Lm/f;->d()Lm/u;

    move-result-object v0

    check-cast v0, Lm/x;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15c

    if-nez v0, :cond_158

    goto :goto_18c

    :cond_158
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18c

    :cond_15c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_165
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object v2

    invoke-static {v0, v2}, Ll0/k0;->n(Lm/x;Lm/x;)Z

    move-result v3

    if-eqz v3, :cond_17d

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_165

    :cond_17d
    invoke-static {v2, v0}, Ll0/k0;->n(Lm/x;Lm/x;)Z

    move-result v3

    if-eqz v3, :cond_187

    :goto_183
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_165

    :cond_187
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_183

    :cond_18b
    move-object p1, v1

    :goto_18c
    iput-object p1, p0, Ll0/k0;->a:Ljava/util/Set;

    return-void

    :cond_18f
    iget-object v0, p0, Ll0/k0;->b:Ljava/util/Set;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19f

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c9

    :cond_19f
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1be

    :cond_1ba
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a8

    :cond_1be
    invoke-static {p1, v2}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1ba

    goto :goto_1a8

    :cond_1c8
    move-object v0, v1

    :goto_1c9
    iput-object v0, p0, Ll0/k0;->b:Ljava/util/Set;

    return-void

    :cond_1cc
    iget-object v0, p0, Ll0/k0;->c:Ljava/util/Set;

    invoke-static {p1}, Ll0/k0;->g(Ll0/y;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1dd

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_295

    :cond_1dd
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_294

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v2, :cond_22c

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v2, :cond_218

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    :goto_20d
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e6

    :cond_211
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_214
    :goto_214
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1e6

    :cond_218
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_225

    invoke-static {v7, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    :goto_224
    goto :goto_214

    :cond_225
    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto :goto_224

    :cond_22c
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_269

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v2, :cond_248

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto :goto_20d

    :cond_248
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_262

    invoke-static {v6, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_214

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25b

    goto :goto_214

    :cond_25b
    invoke-static {p1, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto :goto_20d

    :cond_262
    invoke-static {p1, v6}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto :goto_20d

    :cond_269
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v2, :cond_27f

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto :goto_20d

    :cond_27f
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28c

    invoke-static {v6, p1}, Ll0/k0;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto :goto_224

    :cond_28c
    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_211

    goto/16 :goto_20d

    :cond_294
    move-object v0, v1

    :goto_295
    iput-object v0, p0, Ll0/k0;->c:Ljava/util/Set;

    return-void

    :cond_298
    iget-object p1, p0, Ll0/k0;->f:Ljava/util/HashSet;

    invoke-static {v1}, Ll0/j0;->h(Ljava/lang/Object;)Ll0/j0;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    if-eqz p1, :cond_2a6

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_2a9

    :cond_2a6
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_2a9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Ll0/k0;->f:Ljava/util/HashSet;

    return-void
.end method

.method public checkExcluded(Ll0/y;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0, p1}, Ll0/k0;->a(Ll0/y;)V
    :try_end_5
    .catch Ll0/g0; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkExcludedDN(Lm/x;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-static {p1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/k0;->b(Lj0/c;)V
    :try_end_9
    .catch Ll0/g0; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkPermitted(Ll0/y;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0, p1}, Ll0/k0;->c(Ll0/y;)V
    :try_end_5
    .catch Ll0/g0; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public checkPermittedDN(Lm/x;)V
    .registers 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-static {p1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/k0;->d(Lj0/c;)V
    :try_end_9
    .catch Ll0/g0; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    new-instance p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    iget-object p1, p1, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0, p1}, Ll0/k0;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0}, Ll0/k0;->hashCode()I

    move-result p0

    return p0
.end method

.method public intersectEmptyPermittedSubtree(I)V
    .registers 3

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_4a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_42

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_32

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1e

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll0/k0;->k:Ljava/util/HashSet;

    return-void

    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown tag encountered: "

    invoke-static {p1, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2a
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll0/k0;->j:Ljava/util/HashSet;

    return-void

    :cond_32
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll0/k0;->g:Ljava/util/HashSet;

    return-void

    :cond_3a
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll0/k0;->h:Ljava/util/HashSet;

    return-void

    :cond_42
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll0/k0;->i:Ljava/util/HashSet;

    return-void

    :cond_4a
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ll0/k0;->l:Ljava/util/HashSet;

    return-void
.end method

.method public intersectPermittedSubtree(Ll0/a0;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    filled-new-array {p1}, [Ll0/a0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/k0;->i([Ll0/a0;)V

    return-void
.end method

.method public intersectPermittedSubtree([Ll0/a0;)V
    .registers 2

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0, p1}, Ll0/k0;->i([Ll0/a0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->validator:Ll0/k0;

    invoke-virtual {p0}, Ll0/k0;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
