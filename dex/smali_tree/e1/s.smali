.class public final Le1/s;
.super Le1/v;


# instance fields
.field public final n:Lm/q;

.field public final o:Lm/q;

.field public final p:Lm/q;


# direct methods
.method public constructor <init>(Le1/v;Lm/q;Lm/q;Lm/q;)V
    .registers 11

    iget-object v1, p1, Le1/r;->g:Lk2/h;

    iget-object v2, p1, Le1/r;->i:Lk2/p;

    iget-object v3, p1, Le1/r;->j:Ljava/math/BigInteger;

    iget-object v4, p1, Le1/r;->k:Ljava/math/BigInteger;

    iget-object v0, p1, Le1/r;->h:[B

    invoke-static {v0}, Lm4/d;->e([B)[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p2, v0, Le1/v;->m:Lm/q;

    iget-object p0, p1, Le1/v;->m:Lm/q;

    invoke-virtual {p2, p0}, Lm/u;->n(Lm/u;)Z

    move-result p0

    if-eqz p0, :cond_23

    iput-object p2, v0, Le1/s;->n:Lm/q;

    iput-object p3, v0, Le1/s;->o:Lm/q;

    iput-object p4, v0, Le1/s;->p:Lm/q;

    return-void

    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "named parameters do not match publicKeyParamSet value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
