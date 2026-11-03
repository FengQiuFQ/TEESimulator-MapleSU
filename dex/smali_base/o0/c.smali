.class public final Lo0/c;
.super Lb1/b;


# direct methods
.method public constructor <init>(Lj0/c;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lj0/c;Ljava/security/PublicKey;)V
    .registers 14

    invoke-interface {p6}, Ljava/security/Key;->getEncoded()[B

    move-result-object p6

    invoke-static {p6}, Ll0/p0;->h(Ljava/lang/Object;)Ll0/p0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lb1/b;-><init>(Lj0/c;Ljava/math/BigInteger;Ljava/util/Date;Ljava/util/Date;Lj0/c;Ll0/p0;)V

    return-void
.end method
