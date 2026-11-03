.class public Le1/r;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/a;


# instance fields
.field public final g:Lk2/h;

.field public final h:[B

.field public final i:Lk2/p;

.field public final j:Ljava/math/BigInteger;

.field public final k:Ljava/math/BigInteger;

.field public l:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Le1/r;->l:Ljava/math/BigInteger;

    if-eqz p1, :cond_25

    if-eqz p3, :cond_1d

    iput-object p1, p0, Le1/r;->g:Lk2/h;

    invoke-static {p1, p2}, Le1/r;->a(Lk2/h;Lk2/p;)Lk2/p;

    move-result-object p1

    iput-object p1, p0, Le1/r;->i:Lk2/p;

    iput-object p3, p0, Le1/r;->j:Ljava/math/BigInteger;

    iput-object p4, p0, Le1/r;->k:Ljava/math/BigInteger;

    invoke-static {p5}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Le1/r;->h:[B

    return-void

    :cond_1d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "n"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "curve"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lm0/h;)V
    .registers 9

    iget-object v0, p1, Lm0/h;->d:Lm0/g;

    iget-object v2, v0, Lm0/g;->c:Lk2/h;

    iget-object v0, p1, Lm0/h;->q:Lm0/j;

    invoke-virtual {v0}, Lm0/j;->h()Lk2/p;

    move-result-object v3

    iget-object v4, p1, Lm0/h;->x:Ljava/math/BigInteger;

    iget-object v5, p1, Lm0/h;->y:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lm0/h;->i()[B

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public static a(Lk2/h;Lk2/p;)Lk2/p;
    .registers 3

    if-eqz p1, :cond_39

    iget-object v0, p1, Lk2/p;->a:Lk2/h;

    invoke-virtual {p0, v0}, Lk2/h;->i(Lk2/h;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p0, p1}, Lk2/h;->n(Lk2/p;)Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->p()Lk2/p;

    move-result-object p0

    invoke-virtual {p0}, Lk2/p;->l()Z

    move-result p1

    if-nez p1, :cond_29

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lk2/p;->k(ZZ)Z

    move-result p1

    if-eqz p1, :cond_21

    return-object p0

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point not on curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point at infinity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Point must be on the same curve"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_39
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Point cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Le1/r;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Le1/r;

    iget-object v1, p0, Le1/r;->g:Lk2/h;

    iget-object v3, p1, Le1/r;->g:Lk2/h;

    invoke-virtual {v1, v3}, Lk2/h;->i(Lk2/h;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Le1/r;->i:Lk2/p;

    iget-object v3, p1, Le1/r;->i:Lk2/p;

    invoke-virtual {v1, v3}, Lk2/p;->d(Lk2/p;)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object p0, p0, Le1/r;->j:Ljava/math/BigInteger;

    iget-object p1, p1, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    return v0

    :cond_2b
    return v2
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Le1/r;->g:Lk2/h;

    invoke-virtual {v0}, Lk2/h;->hashCode()I

    move-result v0

    const/16 v1, 0x404

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object v1, p0, Le1/r;->i:Lk2/p;

    invoke-virtual {v1}, Lk2/p;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x101

    iget-object p0, p0, Le1/r;->j:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
