.class public final Li2/c;
.super Li2/e;


# instance fields
.field public final z1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 13

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Li2/e;-><init>(Lk2/h;Lk2/p;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object p1, v0, Li2/c;->z1:Ljava/lang/String;

    return-void
.end method
