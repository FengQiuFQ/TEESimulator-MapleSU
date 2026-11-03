.class public final Lx2/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ld0/d;


# direct methods
.method public constructor <init>([B)V
    .registers 9

    const-string v0, "malformed data: "

    :try_start_2
    invoke-static {p1}, Lm/u;->o([B)Lm/u;

    move-result-object p1

    invoke-static {p1}, Ld0/d;->h(Lm/u;)Ld0/d;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_a} :catch_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_a} :catch_a1

    if-eqz p1, :cond_98

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx2/a;->a:Ld0/d;

    iget-object p0, p1, Ld0/d;->c:Ld0/e;

    iget-object p0, p0, Ld0/e;->x:Lm/y;

    const/4 p1, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_66

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    move-object v1, p1

    move-object v2, v1

    move v3, v0

    :goto_1e
    array-length v4, p0

    if-ge v3, v4, :cond_68

    array-length v4, p0

    if-ge v3, v4, :cond_60

    add-int/lit8 v4, v3, 0x1

    aget-object v3, p0, v3

    invoke-static {v3}, Ld0/a;->h(Lm/f;)Ld0/a;

    move-result-object v3

    sget-object v5, Ll0/v;->U1:Lm/q;

    iget-object v6, v3, Ld0/a;->c:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-static {v3}, Lx2/a;->a(Ld0/a;)Lm/f;

    move-result-object p1

    invoke-static {p1}, Ll0/b;->h(Ljava/lang/Object;)Ll0/b;

    move-result-object p1

    :cond_3e
    sget-object v5, Ll0/v;->T1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-static {v3}, Lx2/a;->a(Ld0/a;)Lm/f;

    move-result-object v1

    invoke-static {v1}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v1

    :cond_4e
    sget-object v5, Ll0/v;->V1:Lm/q;

    invoke-virtual {v5, v6}, Lm/u;->n(Lm/u;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static {v3}, Lx2/a;->a(Ld0/a;)Lm/f;

    move-result-object v2

    invoke-static {v2}, Lm/b;->t(Ljava/lang/Object;)Lm/b;

    move-result-object v2

    :cond_5e
    move v3, v4

    goto :goto_1e

    :cond_60
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_66
    move-object v1, p1

    move-object v2, v1

    :cond_68
    const/4 p0, 0x1

    if-eqz p1, :cond_6d

    move v3, p0

    goto :goto_6e

    :cond_6d
    move v3, v0

    :goto_6e
    if-eqz v1, :cond_72

    move v4, p0

    goto :goto_73

    :cond_72
    move v4, v0

    :goto_73
    or-int/2addr v3, v4

    if-eqz v2, :cond_78

    move v4, p0

    goto :goto_79

    :cond_78
    move v4, v0

    :goto_79
    or-int/2addr v3, v4

    if-eqz v3, :cond_97

    if-eqz p1, :cond_80

    move p1, p0

    goto :goto_81

    :cond_80
    move p1, v0

    :goto_81
    if-eqz v1, :cond_85

    move v1, p0

    goto :goto_86

    :cond_85
    move v1, v0

    :goto_86
    and-int/2addr p1, v1

    if-eqz v2, :cond_8a

    move v0, p0

    :cond_8a
    and-int p0, p1, v0

    if-eqz p0, :cond_8f

    goto :goto_97

    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid alternate public key details found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_97
    :goto_97
    return-void

    :cond_98
    :try_start_98
    new-instance p0, Lm/i;

    const-string p1, "empty data passed to constructor"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lm/i;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_a1
    .catch Ljava/lang/ClassCastException; {:try_start_98 .. :try_end_a1} :catch_a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_98 .. :try_end_a1} :catch_a1

    :catch_a1
    move-exception p0

    goto :goto_a5

    :catch_a3
    move-exception p0

    goto :goto_bc

    :goto_a5
    new-instance p1, Lm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :goto_bc
    new-instance p1, Lm/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, p0, v1}, Lm/i;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1
.end method

.method public static a(Ld0/a;)Lm/f;
    .registers 3

    iget-object p0, p0, Ld0/a;->d:Lm/y;

    iget-object p0, p0, Lm/y;->c:[Lm/f;

    invoke-static {p0}, Lm/g;->b([Lm/f;)[Lm/f;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "single value attribute value not size of 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    instance-of v0, p1, Lx2/a;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p1, Lx2/a;

    iget-object p0, p0, Lx2/a;->a:Ld0/d;

    iget-object p1, p1, Lx2/a;->a:Ld0/d;

    invoke-virtual {p0, p1}, Lm/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    iget-object p0, p0, Lx2/a;->a:Ld0/d;

    invoke-virtual {p0}, Lm/n;->hashCode()I

    move-result p0

    return p0
.end method
