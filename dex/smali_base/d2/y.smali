.class public final Ld2/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final A1:Ld2/y;

.field public static final B1:Ld2/y;

.field public static final C1:Ld2/y;

.field public static final D1:Ld2/y;

.field public static final E1:Ld2/y;

.field public static final F1:Ld2/y;

.field public static final G1:Ld2/y;

.field public static final H1:Ld2/y;

.field public static final I1:Ld2/y;

.field public static final J1:Ld2/y;

.field public static final K1:Ld2/y;

.field public static final L1:Ld2/y;

.field public static final M1:Ld2/y;

.field public static final N1:Ld2/y;

.field public static final O1:Ld2/y;

.field public static final P1:Ld2/y;

.field public static final Q1:Ld2/y;

.field public static final R1:Ld2/y;

.field public static final S1:Ld2/y;

.field public static final T1:Ljava/util/HashMap;

.field public static final d:Ld2/y;

.field public static final q:Ld2/y;

.field public static final x:Ld2/y;

.field public static final y:Ld2/y;

.field public static final z1:Ld2/y;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 26

    new-instance v0, Ld2/y;

    const-string v1, "SLH-DSA-SHA2-128F"

    invoke-direct {v0, v1}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld2/y;->d:Ld2/y;

    new-instance v1, Ld2/y;

    const-string v2, "SLH-DSA-SHA2-128S"

    invoke-direct {v1, v2}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v1, Ld2/y;->q:Ld2/y;

    new-instance v2, Ld2/y;

    const-string v3, "SLH-DSA-SHA2-192F"

    invoke-direct {v2, v3}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v2, Ld2/y;->x:Ld2/y;

    new-instance v3, Ld2/y;

    const-string v4, "SLH-DSA-SHA2-192S"

    invoke-direct {v3, v4}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v3, Ld2/y;->y:Ld2/y;

    new-instance v4, Ld2/y;

    const-string v5, "SLH-DSA-SHA2-256F"

    invoke-direct {v4, v5}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v4, Ld2/y;->z1:Ld2/y;

    new-instance v5, Ld2/y;

    const-string v6, "SLH-DSA-SHA2-256S"

    invoke-direct {v5, v6}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v5, Ld2/y;->A1:Ld2/y;

    new-instance v6, Ld2/y;

    const-string v7, "SLH-DSA-SHAKE-128F"

    invoke-direct {v6, v7}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v6, Ld2/y;->B1:Ld2/y;

    new-instance v7, Ld2/y;

    const-string v8, "SLH-DSA-SHAKE-128S"

    invoke-direct {v7, v8}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v7, Ld2/y;->C1:Ld2/y;

    new-instance v8, Ld2/y;

    const-string v9, "SLH-DSA-SHAKE-192F"

    invoke-direct {v8, v9}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v8, Ld2/y;->D1:Ld2/y;

    new-instance v9, Ld2/y;

    const-string v10, "SLH-DSA-SHAKE-192S"

    invoke-direct {v9, v10}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v9, Ld2/y;->E1:Ld2/y;

    new-instance v10, Ld2/y;

    const-string v11, "SLH-DSA-SHAKE-256F"

    invoke-direct {v10, v11}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v10, Ld2/y;->F1:Ld2/y;

    new-instance v11, Ld2/y;

    const-string v12, "SLH-DSA-SHAKE-256S"

    invoke-direct {v11, v12}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v11, Ld2/y;->G1:Ld2/y;

    new-instance v12, Ld2/y;

    const-string v13, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-direct {v12, v13}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v12, Ld2/y;->H1:Ld2/y;

    new-instance v13, Ld2/y;

    const-string v14, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-direct {v13, v14}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v13, Ld2/y;->I1:Ld2/y;

    new-instance v14, Ld2/y;

    const-string v15, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-direct {v14, v15}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v14, Ld2/y;->J1:Ld2/y;

    new-instance v15, Ld2/y;

    move-object/from16 v16, v14

    const-string v14, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-direct {v15, v14}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v15, Ld2/y;->K1:Ld2/y;

    new-instance v14, Ld2/y;

    move-object/from16 v17, v15

    const-string v15, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-direct {v14, v15}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v14, Ld2/y;->L1:Ld2/y;

    new-instance v15, Ld2/y;

    move-object/from16 v18, v14

    const-string v14, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-direct {v15, v14}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v15, Ld2/y;->M1:Ld2/y;

    new-instance v14, Ld2/y;

    move-object/from16 v19, v15

    const-string v15, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-direct {v14, v15}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v14, Ld2/y;->N1:Ld2/y;

    new-instance v15, Ld2/y;

    move-object/from16 v20, v14

    const-string v14, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-direct {v15, v14}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v15, Ld2/y;->O1:Ld2/y;

    new-instance v14, Ld2/y;

    move-object/from16 v21, v15

    const-string v15, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-direct {v14, v15}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v14, Ld2/y;->P1:Ld2/y;

    new-instance v15, Ld2/y;

    move-object/from16 v22, v14

    const-string v14, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-direct {v15, v14}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v15, Ld2/y;->Q1:Ld2/y;

    new-instance v14, Ld2/y;

    move-object/from16 v23, v15

    const-string v15, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-direct {v14, v15}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v14, Ld2/y;->R1:Ld2/y;

    new-instance v15, Ld2/y;

    move-object/from16 v24, v14

    const-string v14, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-direct {v15, v14}, Ld2/y;-><init>(Ljava/lang/String;)V

    sput-object v15, Ld2/y;->S1:Ld2/y;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Ld2/y;->T1:Ljava/util/HashMap;

    move-object/from16 v25, v15

    const-string v15, "slh-dsa-sha2-128f"

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "slh-dsa-sha2-128s"

    invoke-virtual {v14, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "slh-dsa-sha2-192f"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "slh-dsa-sha2-192s"

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "slh-dsa-sha2-256f"

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "slh-dsa-sha2-256s"

    invoke-virtual {v14, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "sha2-128f"

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-128s"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-192f"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-192s"

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-256f"

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-256s"

    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-128f"

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-128s"

    invoke-virtual {v14, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-192f"

    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-192s"

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-256f"

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-256s"

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-128f"

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-128s"

    invoke-virtual {v14, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-192f"

    invoke-virtual {v14, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-192s"

    invoke-virtual {v14, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-256f"

    invoke-virtual {v14, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-256s"

    invoke-virtual {v14, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-sha2-128f-with-sha256"

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-sha2-128s-with-sha256"

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-sha2-192f-with-sha512"

    move-object/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-sha2-192s-with-sha512"

    move-object/from16 v2, v17

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-sha2-256f-with-sha512"

    move-object/from16 v3, v18

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-sha2-256s-with-sha512"

    move-object/from16 v4, v19

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-128f-with-sha256"

    invoke-virtual {v14, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-128s-with-sha256"

    invoke-virtual {v14, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-192f-with-sha512"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-192s-with-sha512"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-256f-with-sha512"

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sha2-256s-with-sha512"

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-128f-with-shake128"

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-128s-with-shake128"

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-192f-with-shake256"

    move-object/from16 v3, v22

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-192s-with-shake256"

    move-object/from16 v4, v23

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-256f-with-shake256"

    move-object/from16 v5, v24

    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "slh-dsa-shake-256s-with-shake256"

    move-object/from16 v6, v25

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-128f-with-shake128"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-128s-with-shake128"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-192f-with-shake256"

    invoke-virtual {v14, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-192s-with-shake256"

    invoke-virtual {v14, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-256f-with-shake256"

    invoke-virtual {v14, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shake-256s-with-shake256"

    invoke-virtual {v14, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/y;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ld2/y;
    .registers 3

    sget-object v0, Ld2/y;->T1:Ljava/util/HashMap;

    invoke-static {p0}, Lm4/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld2/y;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown parameter name: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
