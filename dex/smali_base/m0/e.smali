.class public abstract Lm0/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Hashtable;

.field public static final b:Ljava/util/Hashtable;

.field public static final c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 25

    new-instance v0, Lf0/c;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lf0/c;-><init>(I)V

    new-instance v1, Lm0/d;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lm0/d;-><init>(I)V

    new-instance v2, Lm0/d;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lm0/d;-><init>(I)V

    new-instance v3, Lm0/d;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lm0/d;-><init>(I)V

    new-instance v4, Lm0/d;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lm0/d;-><init>(I)V

    new-instance v5, Lm0/d;

    const/4 v6, 0x6

    invoke-direct {v5, v6}, Lm0/d;-><init>(I)V

    new-instance v6, Lm0/d;

    const/4 v7, 0x7

    invoke-direct {v6, v7}, Lm0/d;-><init>(I)V

    new-instance v7, Lm0/d;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Lm0/d;-><init>(I)V

    new-instance v8, Lm0/d;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Lm0/d;-><init>(I)V

    new-instance v9, Lf0/c;

    const/16 v10, 0x11

    invoke-direct {v9, v10}, Lf0/c;-><init>(I)V

    new-instance v10, Lf0/c;

    const/16 v11, 0x12

    invoke-direct {v10, v11}, Lf0/c;-><init>(I)V

    new-instance v11, Lf0/c;

    const/16 v12, 0x13

    invoke-direct {v11, v12}, Lf0/c;-><init>(I)V

    new-instance v12, Lf0/c;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Lf0/c;-><init>(I)V

    new-instance v13, Lf0/c;

    const/16 v14, 0x15

    invoke-direct {v13, v14}, Lf0/c;-><init>(I)V

    new-instance v14, Lf0/c;

    const/16 v15, 0x16

    invoke-direct {v14, v15}, Lf0/c;-><init>(I)V

    new-instance v15, Lf0/c;

    move-object/from16 v16, v14

    const/16 v14, 0x17

    invoke-direct {v15, v14}, Lf0/c;-><init>(I)V

    new-instance v14, Lf0/c;

    move-object/from16 v17, v15

    const/16 v15, 0x18

    invoke-direct {v14, v15}, Lf0/c;-><init>(I)V

    new-instance v15, Lf0/c;

    move-object/from16 v18, v14

    const/16 v14, 0x19

    invoke-direct {v15, v14}, Lf0/c;-><init>(I)V

    new-instance v14, Lf0/c;

    move-object/from16 v19, v15

    const/16 v15, 0x1a

    invoke-direct {v14, v15}, Lf0/c;-><init>(I)V

    new-instance v15, Lf0/c;

    move-object/from16 v20, v14

    const/16 v14, 0x1c

    invoke-direct {v15, v14}, Lf0/c;-><init>(I)V

    new-instance v14, Lf0/c;

    move-object/from16 v21, v15

    const/16 v15, 0x1d

    invoke-direct {v14, v15}, Lf0/c;-><init>(I)V

    new-instance v15, Lm0/d;

    move-object/from16 v22, v14

    const/4 v14, 0x0

    invoke-direct {v15, v14}, Lm0/d;-><init>(I)V

    new-instance v14, Lm0/d;

    move-object/from16 v23, v15

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lm0/d;-><init>(I)V

    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    sput-object v15, Lm0/e;->a:Ljava/util/Hashtable;

    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    sput-object v15, Lm0/e;->b:Ljava/util/Hashtable;

    new-instance v15, Ljava/util/Hashtable;

    invoke-direct {v15}, Ljava/util/Hashtable;-><init>()V

    sput-object v15, Lm0/e;->c:Ljava/util/Hashtable;

    const-string v15, "prime192v1"

    move-object/from16 v24, v14

    sget-object v14, Lm0/m;->k1:Lm/q;

    invoke-static {v15, v14, v0}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "prime192v2"

    sget-object v14, Lm0/m;->l1:Lm/q;

    invoke-static {v0, v14, v1}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "prime192v3"

    sget-object v1, Lm0/m;->m1:Lm/q;

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "prime239v1"

    sget-object v1, Lm0/m;->n1:Lm/q;

    invoke-static {v0, v1, v3}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "prime239v2"

    sget-object v1, Lm0/m;->o1:Lm/q;

    invoke-static {v0, v1, v4}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "prime239v3"

    sget-object v1, Lm0/m;->p1:Lm/q;

    invoke-static {v0, v1, v5}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "prime256v1"

    sget-object v1, Lm0/m;->q1:Lm/q;

    invoke-static {v0, v1, v6}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb163v1"

    sget-object v1, Lm0/m;->T0:Lm/q;

    invoke-static {v0, v1, v7}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb163v2"

    sget-object v1, Lm0/m;->U0:Lm/q;

    invoke-static {v0, v1, v8}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb163v3"

    sget-object v1, Lm0/m;->V0:Lm/q;

    invoke-static {v0, v1, v9}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb176w1"

    sget-object v1, Lm0/m;->W0:Lm/q;

    invoke-static {v0, v1, v10}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb191v1"

    sget-object v1, Lm0/m;->X0:Lm/q;

    invoke-static {v0, v1, v11}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb191v2"

    sget-object v1, Lm0/m;->Y0:Lm/q;

    invoke-static {v0, v1, v12}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb191v3"

    sget-object v1, Lm0/m;->Z0:Lm/q;

    invoke-static {v0, v1, v13}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb208w1"

    sget-object v1, Lm0/m;->a1:Lm/q;

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb239v1"

    sget-object v1, Lm0/m;->b1:Lm/q;

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb239v2"

    sget-object v1, Lm0/m;->c1:Lm/q;

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb239v3"

    sget-object v1, Lm0/m;->d1:Lm/q;

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb272w1"

    sget-object v1, Lm0/m;->e1:Lm/q;

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb304w1"

    sget-object v1, Lm0/m;->f1:Lm/q;

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb359v1"

    sget-object v1, Lm0/m;->g1:Lm/q;

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2pnb368w1"

    sget-object v1, Lm0/m;->h1:Lm/q;

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    const-string v0, "c2tnb431r1"

    sget-object v1, Lm0/m;->i1:Lm/q;

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Lm0/e;->c(Ljava/lang/String;Lm/q;Lm0/i;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/math/BigInteger;
    .registers 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-static {p0}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public static b(Lk2/h;Ljava/lang/String;)Lm0/j;
    .registers 3

    new-instance v0, Lm0/j;

    invoke-static {p1}, Ln4/c;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lm0/j;-><init>(Lk2/h;[B)V

    invoke-virtual {v0}, Lm0/j;->h()Lk2/p;

    move-result-object p0

    invoke-static {p0}, Lk2/b0;->e(Lk2/p;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Lm/q;Lm0/i;)V
    .registers 4

    sget-object v0, Lm0/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lm0/e;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lm0/e;->b:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
