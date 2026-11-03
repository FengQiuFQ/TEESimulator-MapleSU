.class public Le1/v;
.super Le1/r;


# instance fields
.field public m:Lm/q;


# direct methods
.method public constructor <init>(Lm/q;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Le1/r;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, v0, Le1/v;->m:Lm/q;

    return-void
.end method

.method public constructor <init>(Lm/q;Lm0/h;)V
    .registers 3

    invoke-direct {p0, p2}, Le1/r;-><init>(Lm0/h;)V

    iput-object p1, p0, Le1/v;->m:Lm/q;

    return-void
.end method
