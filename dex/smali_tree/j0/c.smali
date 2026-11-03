.class public final Lj0/c;
.super Lm/n;

# interfaces
.implements Lm/e;


# static fields
.field public static final z1:Lk0/b;


# instance fields
.field public c:Z

.field public d:I

.field public q:Lj0/d;

.field public x:[Lj0/b;

.field public y:Lm/a1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lk0/b;->m:Lk0/b;

    sput-object v0, Lj0/c;->z1:Lk0/b;

    return-void
.end method

.method public constructor <init>(Lj0/d;Lm/x;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lm/x;->size()I

    move-result v0

    iput-object p1, p0, Lj0/c;->q:Lj0/d;

    new-array p1, v0, [Lj0/b;

    iput-object p1, p0, Lj0/c;->x:[Lj0/b;

    const/4 p1, 0x1

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_11
    if-ge v2, v0, :cond_28

    invoke-virtual {p2, v2}, Lm/x;->v(I)Lm/f;

    move-result-object v4

    invoke-static {v4}, Lj0/b;->i(Lm/f;)Lj0/b;

    move-result-object v5

    if-ne v5, v4, :cond_1f

    move v4, p1

    goto :goto_20

    :cond_1f
    move v4, v1

    :goto_20
    and-int/2addr v3, v4

    iget-object v4, p0, Lj0/c;->x:[Lj0/b;

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_28
    if-eqz v3, :cond_33

    invoke-virtual {p2}, Lm/x;->p()Lm/u;

    move-result-object p1

    check-cast p1, Lm/a1;

    :goto_30
    iput-object p1, p0, Lj0/c;->y:Lm/a1;

    return-void

    :cond_33
    new-instance p1, Lm/a1;

    iget-object p2, p0, Lj0/c;->x:[Lj0/b;

    invoke-direct {p1, p2}, Lm/a1;-><init>([Lm/f;)V

    goto :goto_30
.end method

.method public constructor <init>(Lj0/d;[Lj0/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0/c;->q:Lj0/d;

    invoke-virtual {p2}, [Lj0/b;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lj0/b;

    iput-object p1, p0, Lj0/c;->x:[Lj0/b;

    new-instance p2, Lm/a1;

    invoke-direct {p2, p1}, Lm/a1;-><init>([Lm/f;)V

    iput-object p2, p0, Lj0/c;->y:Lm/a1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lj0/c;->z1:Lk0/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v3, v6, :cond_17

    move v3, v5

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    new-instance v7, Lb1/b;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lb1/b;-><init>(I)V

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    iput-object v8, v7, Lb1/b;->i:Ljava/lang/Object;

    iput-object v2, v7, Lb1/b;->h:Ljava/lang/Object;

    :goto_27
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "badly formatted directory string"

    if-lt v3, v8, :cond_31

    const/4 v8, 0x0

    goto :goto_62

    :cond_31
    add-int/lit8 v8, v3, 0x1

    move v10, v5

    move v11, v10

    :cond_35
    :goto_35
    add-int/2addr v3, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_5d

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eqz v10, :cond_44

    move v10, v5

    goto :goto_35

    :cond_44
    const/16 v13, 0x22

    if-ne v12, v13, :cond_4b

    xor-int/lit8 v11, v11, 0x1

    goto :goto_35

    :cond_4b
    if-eqz v11, :cond_4e

    goto :goto_35

    :cond_4e
    const/16 v13, 0x5c

    if-ne v12, v13, :cond_54

    move v10, v6

    goto :goto_35

    :cond_54
    const/16 v13, 0x2c

    if-ne v12, v13, :cond_35

    :goto_58
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_62

    :cond_5d
    if-nez v10, :cond_153

    if-nez v11, :cond_153

    goto :goto_58

    :goto_62
    if-eqz v8, :cond_128

    const/16 v10, 0x2b

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ltz v11, :cond_124

    new-instance v11, Lk0/d;

    invoke-direct {v11, v8, v10}, Lk0/d;-><init>(Ljava/lang/String;C)V

    invoke-virtual {v11}, Lk0/d;->a()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11e

    iget v9, v11, Lk0/d;->c:I

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v9, v8, :cond_118

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    :cond_89
    new-instance v12, Lk0/d;

    const/16 v13, 0x3d

    invoke-direct {v12, v10, v13}, Lk0/d;-><init>(Ljava/lang/String;C)V

    invoke-static {v12, v6}, Lq4/k;->D0(Lk0/d;Z)Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v5}, Lq4/k;->D0(Lk0/d;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lk0/b;->a(Ljava/lang/String;)Lm/q;

    move-result-object v10

    invoke-static {v12}, Lq4/k;->b1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v11}, Lk0/d;->a()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_89

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v10

    new-array v11, v10, [Lm/q;

    move v12, v5

    :goto_b7
    if-eq v12, v10, :cond_c4

    invoke-virtual {v8, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lm/q;

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_b7

    :cond_c4
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v12, v8, [Ljava/lang/String;

    move v13, v5

    :goto_cb
    if-eq v13, v8, :cond_d8

    invoke-virtual {v9, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_cb

    :cond_d8
    new-array v9, v8, [Lm/f;

    move v13, v5

    :goto_db
    if-eq v13, v8, :cond_ef

    iget-object v14, v7, Lb1/b;->h:Ljava/lang/Object;

    check-cast v14, Lt4/d;

    aget-object v15, v11, v13

    aget-object v5, v12, v13

    invoke-virtual {v14, v5, v15}, Lt4/d;->H0(Ljava/lang/String;Lm/q;)Lm/f;

    move-result-object v5

    aput-object v5, v9, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_db

    :cond_ef
    new-array v5, v10, [Lj0/a;

    const/4 v8, 0x0

    :goto_f2
    if-eq v8, v10, :cond_102

    new-instance v12, Lj0/a;

    aget-object v13, v11, v8

    aget-object v14, v9, v8

    invoke-direct {v12, v13, v14}, Lj0/a;-><init>(Lm/q;Lm/f;)V

    aput-object v12, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_f2

    :cond_102
    iget-object v8, v7, Lb1/b;->i:Ljava/lang/Object;

    check-cast v8, Ljava/util/Vector;

    new-instance v9, Lj0/b;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    new-instance v10, Lm/b1;

    invoke-direct {v10, v5}, Lm/y;-><init>([Lm/f;)V

    iput v4, v10, Lm/b1;->x:I

    iput-object v10, v9, Lj0/b;->c:Lm/y;

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_11b

    :cond_118
    invoke-static {v2, v7, v10}, Lq4/k;->k(Lt4/d;Lb1/b;Ljava/lang/String;)V

    :goto_11b
    const/4 v5, 0x0

    goto/16 :goto_27

    :cond_11e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_124
    invoke-static {v2, v7, v8}, Lq4/k;->k(Lt4/d;Lb1/b;Ljava/lang/String;)V

    goto :goto_11b

    :cond_128
    iget-object v1, v7, Lb1/b;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v4, v3, [Lj0/b;

    const/4 v5, 0x0

    :goto_133
    if-eq v5, v3, :cond_140

    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lj0/b;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_133

    :cond_140
    new-instance v1, Lj0/c;

    iget-object v3, v7, Lb1/b;->h:Ljava/lang/Object;

    check-cast v3, Lt4/d;

    invoke-direct {v1, v3, v4}, Lj0/c;-><init>(Lj0/d;[Lj0/b;)V

    invoke-virtual {v1}, Lj0/c;->j()[Lj0/b;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lj0/c;-><init>(Lj0/d;[Lj0/b;)V

    iput-object v2, v0, Lj0/c;->q:Lj0/d;

    return-void

    :cond_153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(Lj0/d;Ljava/lang/Object;)Lj0/c;
    .registers 3

    instance-of v0, p1, Lj0/c;

    if-eqz v0, :cond_16

    new-instance v0, Lj0/c;

    check-cast p1, Lj0/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lj0/c;->q:Lj0/d;

    iget-object p0, p1, Lj0/c;->x:[Lj0/b;

    iput-object p0, v0, Lj0/c;->x:[Lj0/b;

    iget-object p0, p1, Lj0/c;->y:Lm/a1;

    iput-object p0, v0, Lj0/c;->y:Lm/a1;

    return-object v0

    :cond_16
    if-eqz p1, :cond_22

    new-instance v0, Lj0/c;

    invoke-static {p1}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lj0/c;-><init>(Lj0/d;Lm/x;)V

    return-object v0

    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Ljava/lang/Object;)Lj0/c;
    .registers 3

    instance-of v0, p0, Lj0/c;

    if-eqz v0, :cond_7

    check-cast p0, Lj0/c;

    return-object p0

    :cond_7
    if-eqz p0, :cond_15

    new-instance v0, Lj0/c;

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    sget-object v1, Lj0/c;->z1:Lk0/b;

    invoke-direct {v0, v1, p0}, Lj0/c;-><init>(Lj0/d;Lm/x;)V

    return-object v0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Lj0/c;->y:Lm/a1;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_3

    goto :goto_1b

    :cond_3
    instance-of v0, p1, Lj0/c;

    if-nez v0, :cond_c

    instance-of v0, p1, Lm/x;

    if-nez v0, :cond_c

    goto :goto_28

    :cond_c
    move-object v0, p1

    check-cast v0, Lm/f;

    invoke-interface {v0}, Lm/f;->d()Lm/u;

    move-result-object v0

    iget-object v1, p0, Lj0/c;->y:Lm/a1;

    invoke-virtual {v1, v0}, Lm/u;->n(Lm/u;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_1b
    const/4 p0, 0x1

    return p0

    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lj0/c;->q:Lj0/d;

    invoke-static {p1}, Lj0/c;->i(Ljava/lang/Object;)Lj0/c;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lj0/d;->c(Lj0/c;Lj0/c;)Z

    move-result p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_28

    return p0

    :catch_28
    :goto_28
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 9

    iget-boolean v0, p0, Lj0/c;->c:Z

    if-eqz v0, :cond_7

    iget p0, p0, Lj0/c;->d:I

    return p0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/c;->c:Z

    iget-object v1, p0, Lj0/c;->q:Lj0/d;

    check-cast v1, Lt4/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lj0/c;->j()[Lj0/b;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_18
    array-length v5, v1

    if-eq v3, v5, :cond_68

    aget-object v5, v1, v3

    iget-object v6, v5, Lj0/b;->c:Lm/y;

    iget-object v6, v6, Lm/y;->c:[Lm/f;

    array-length v6, v6

    if-le v6, v0, :cond_47

    invoke-virtual {v5}, Lj0/b;->j()[Lj0/a;

    move-result-object v5

    move v6, v2

    :goto_29
    array-length v7, v5

    if-eq v6, v7, :cond_65

    aget-object v7, v5, v6

    iget-object v7, v7, Lj0/a;->c:Lm/q;

    iget-object v7, v7, Lm/q;->c:[B

    invoke-static {v7}, Lm4/d;->u([B)I

    move-result v7

    xor-int/2addr v4, v7

    aget-object v7, v5, v6

    iget-object v7, v7, Lj0/a;->d:Lm/f;

    invoke-static {v7}, Lq4/k;->u(Lm/f;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    xor-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_47
    invoke-virtual {v5}, Lj0/b;->h()Lj0/a;

    move-result-object v5

    iget-object v5, v5, Lj0/a;->c:Lm/q;

    iget-object v5, v5, Lm/q;->c:[B

    invoke-static {v5}, Lm4/d;->u([B)I

    move-result v5

    xor-int/2addr v4, v5

    aget-object v5, v1, v3

    invoke-virtual {v5}, Lj0/b;->h()Lj0/a;

    move-result-object v5

    iget-object v5, v5, Lj0/a;->d:Lm/f;

    invoke-static {v5}, Lq4/k;->u(Lm/f;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    xor-int/2addr v4, v5

    :cond_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_68
    iput v4, p0, Lj0/c;->d:I

    return v4
.end method

.method public final j()[Lj0/b;
    .registers 1

    iget-object p0, p0, Lj0/c;->x:[Lj0/b;

    invoke-virtual {p0}, [Lj0/b;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lj0/b;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lj0/c;->q:Lj0/d;

    invoke-interface {v0, p0}, Lj0/d;->b(Lj0/c;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
