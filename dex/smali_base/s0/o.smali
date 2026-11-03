.class public abstract Ls0/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/w;
.implements Lm4/e;


# static fields
.field public static final v:[J


# instance fields
.field public final g:Lorg/bouncycastle/crypto/j;

.field public final h:[B

.field public i:I

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public final t:[J

.field public u:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x50

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Ls0/o;->v:[J

    return-void

    :array_a
    .array-data 8
        0x428a2f98d728ae22L    # 3.5989662528217666E12
        0x7137449123ef65cdL    # 2.367405559035152E237
        -0x4a3f043013b2c4d1L    # -9.0786554787018E-50
        -0x164a245a7e762444L
        0x3956c25bf348b538L
        0x59f111f1b605d019L    # 1.8054860536953294E125
        -0x6dc07d5b50e6b065L    # -8.717181310573585E-221
        -0x54e3a12a25927ee8L
        -0x27f855675cfcfdbeL    # -1.1656291332323638E116
        0x12835b0145706fbeL
        0x243185be4ee4b28cL    # 2.410773468256423E-134
        0x550c7dc3d5ffb4e2L    # 4.985403983718413E101
        0x72be5d74f27b896fL    # 5.183352230240388E244
        -0x7f214e01c4e9694fL
        -0x6423f958da38edcbL
        -0x3e640e8b3096d96cL    # -1.1720222785268623E8
        -0x1b64963e610eb52eL    # -4.339261227288659E176
        -0x1041b879c7b0da1dL    # -1.836300920646737E230
        0xfc19dc68b8cd5b5L    # 8.864787397362889E-233
        0x240ca1cc77ac9c65L    # 4.924067956729057E-135
        0x2de92c6f592b0275L    # 1.5818166760957606E-87
        0x4a7484aa6ea6e483L    # 4.79798724707082E50
        0x5cb0a9dcbd41fbd4L    # 3.100593885146353E138
        0x76f988da831153b5L    # 1.2864857866870779E265
        -0x67c1aead11992055L
        -0x57ce3992d24bcdf0L    # -4.511217866312199E-115
        -0x4ffcd8376704dec1L    # -2.0678662886600765E-77
        -0x40a680384110f11cL    # -0.0015563440936014411
        -0x391ff40cc257703eL    # -2.603722742751637E33
        -0x2a586eb86cf558dbL    # -4.222814448133811E104
        0x6ca6351e003826fL
        0x142929670a0e6e70L
        0x27b70a8546d22ffcL
        0x2e1b21385c26c926L    # 1.3637893953385892E-86
        0x4d2c6dfc5ac42aedL    # 5.84763610164635E63
        0x53380d139d95b3dfL    # 7.838866619197482E92
        0x650a73548baf63deL    # 5.35921865865203E178
        0x766a0abb3c77b2a8L    # 2.5625906234442426E262
        -0x7e3d36d1b812511aL    # -3.506432391784029E-300
        -0x6d8dd37aeb7dcac5L    # -8.044358981173315E-220
        -0x5d40175eb30efc9cL
        -0x57e599b443bdcfffL
        -0x3db4748f2f07686fL    # -2.366070870891841E11
        -0x3893ae5cf9ab41d0L    # -1.17632082693375E36
        -0x2e6d17e62910ade8L    # -9.182337425192181E84
        -0x2966f9dbaa9a56f0L    # -1.4692477645833556E109
        -0xbf1ca7aa88edfd6L
        0x106aa07032bbd1b8L
        0x19a4c116b8d2d0c8L
        0x1e376c085141ab53L    # 4.067301537801791E-163
        0x2748774cdf8eeb99L    # 1.894937972556452E-119
        0x34b0bcb5e19b48a8L    # 6.82593759724882E-55
        0x391c0cb3c5c95a63L    # 1.3505399862746614E-33
        0x4ed8aa4ae3418acbL    # 6.809319594147137E71
        0x5b9cca4f7763e373L    # 2.0435436325319052E133
        0x682e6ff3d6b2b8a3L    # 6.943421982965376E193
        0x748f82ee5defb2fcL    # 2.887850816088868E253
        0x78a5636f43172f60L    # 1.4463210820003646E273
        -0x7b3787eb5e0f548eL
        -0x7338fdf7e59bc614L
        -0x6f410005dc9ce1d8L    # -5.111680914909667E-228
        -0x5baf9314217d4217L    # -9.03940504491957E-134
        -0x41065c084d3986ebL    # -2.445268471406536E-5
        -0x398e870d1c8dacd5L    # -2.2148969568888243E31
        -0x35d8c13115d99e64L    # -1.6986554718624063E49
        -0x2e794738de3f3df9L    # -5.517613964471652E84
        -0x15258229321f14e2L    # -5.315750124715331E206
        -0xa82b08011912e88L    # -8.801976642581914E257
        0x6f067aa72176fbaL
        0xa637dc5a2c898a6L
        0x113f9804bef90daeL
        0x1b710b35131c471bL
        0x28db77f523047d84L    # 7.138679721560702E-112
        0x32caab7b40c72493L    # 5.064907242937011E-64
        0x3c9ebe0a15c9bebcL    # 1.0665892261952011E-16
        0x431d67c49c100d4cL    # 2.069217113539411E15
        0x4cc5d4becb3e42b6L    # 7.016224550123326E61
        0x597f299cfc657e2aL    # 1.2875119238090917E123
        0x5fcb6fab3ad6faecL    # 2.873901462601813E153
        0x6c44198c4a475817L    # 3.3832852265175575E213
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/o;->h:[B

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Ls0/o;->t:[J

    iput-object p1, p0, Ls0/o;->g:Lorg/bouncycastle/crypto/j;

    const/4 p1, 0x0

    iput p1, p0, Ls0/o;->i:I

    invoke-virtual {p0}, Ls0/o;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/o;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ls0/o;->h:[B

    const/16 v0, 0x50

    new-array v0, v0, [J

    iput-object v0, p0, Ls0/o;->t:[J

    iget-object v0, p1, Ls0/o;->g:Lorg/bouncycastle/crypto/j;

    iput-object v0, p0, Ls0/o;->g:Lorg/bouncycastle/crypto/j;

    invoke-virtual {p0, p1}, Ls0/o;->h(Ls0/o;)V

    return-void
.end method

.method public static d(JJJ)J
    .registers 6

    and-long/2addr p2, p0

    not-long p0, p0

    and-long/2addr p0, p4

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static e(JJJ)J
    .registers 8

    and-long v0, p0, p2

    and-long/2addr p0, p4

    xor-long/2addr p0, v0

    and-long/2addr p2, p4

    xor-long/2addr p0, p2

    return-wide p0
.end method

.method public static f(J)J
    .registers 8

    const/16 v0, 0x24

    shl-long v0, p0, v0

    const/16 v2, 0x1c

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    const/16 v2, 0x1e

    shl-long v2, p0, v2

    const/16 v4, 0x22

    ushr-long v4, p0, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    shl-long v2, p0, v2

    const/16 v4, 0x27

    ushr-long/2addr p0, v4

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(J)J
    .registers 8

    const/16 v0, 0x32

    shl-long v0, p0, v0

    const/16 v2, 0xe

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    const/16 v2, 0x2e

    shl-long v2, p0, v2

    const/16 v4, 0x12

    ushr-long v4, p0, v4

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    shl-long v2, p0, v2

    const/16 v4, 0x29

    ushr-long/2addr p0, v4

    or-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final getByteLength()I
    .registers 1

    const/16 p0, 0x80

    return p0
.end method

.method public final h(Ls0/o;)V
    .registers 6

    iget-object v0, p1, Ls0/o;->h:[B

    iget-object v1, p0, Ls0/o;->h:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Ls0/o;->i:I

    iput v0, p0, Ls0/o;->i:I

    iget-wide v0, p1, Ls0/o;->j:J

    iput-wide v0, p0, Ls0/o;->j:J

    iget-wide v0, p1, Ls0/o;->k:J

    iput-wide v0, p0, Ls0/o;->k:J

    iget-wide v0, p1, Ls0/o;->l:J

    iput-wide v0, p0, Ls0/o;->l:J

    iget-wide v0, p1, Ls0/o;->m:J

    iput-wide v0, p0, Ls0/o;->m:J

    iget-wide v0, p1, Ls0/o;->n:J

    iput-wide v0, p0, Ls0/o;->n:J

    iget-wide v0, p1, Ls0/o;->o:J

    iput-wide v0, p0, Ls0/o;->o:J

    iget-wide v0, p1, Ls0/o;->p:J

    iput-wide v0, p0, Ls0/o;->p:J

    iget-wide v0, p1, Ls0/o;->q:J

    iput-wide v0, p0, Ls0/o;->q:J

    iget-wide v0, p1, Ls0/o;->r:J

    iput-wide v0, p0, Ls0/o;->r:J

    iget-wide v0, p1, Ls0/o;->s:J

    iput-wide v0, p0, Ls0/o;->s:J

    iget-object v0, p1, Ls0/o;->t:[J

    iget-object v1, p0, Ls0/o;->t:[J

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p1, Ls0/o;->u:I

    iput p1, p0, Ls0/o;->u:I

    return-void
.end method

.method public final i()V
    .registers 9

    iget-wide v0, p0, Ls0/o;->j:J

    const-wide v2, 0x1fffffffffffffffL

    cmp-long v4, v0, v2

    if-lez v4, :cond_17

    iget-wide v4, p0, Ls0/o;->k:J

    const/16 v6, 0x3d

    ushr-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Ls0/o;->k:J

    and-long/2addr v0, v2

    iput-wide v0, p0, Ls0/o;->j:J

    :cond_17
    iget-wide v0, p0, Ls0/o;->j:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    iget-wide v2, p0, Ls0/o;->k:J

    const/16 v4, -0x80

    :goto_1f
    invoke-virtual {p0, v4}, Ls0/o;->update(B)V

    iget v4, p0, Ls0/o;->i:I

    if-eqz v4, :cond_28

    const/4 v4, 0x0

    goto :goto_1f

    :cond_28
    iget v4, p0, Ls0/o;->u:I

    const/16 v5, 0xe

    if-le v4, v5, :cond_31

    invoke-virtual {p0}, Ls0/o;->j()V

    :cond_31
    iget-object v4, p0, Ls0/o;->t:[J

    aput-wide v2, v4, v5

    const/16 v2, 0xf

    aput-wide v0, v4, v2

    invoke-virtual {p0}, Ls0/o;->j()V

    return-void
.end method

.method public final j()V
    .registers 50

    move-object/from16 v0, p0

    iget-wide v1, v0, Ls0/o;->j:J

    const-wide v3, 0x1fffffffffffffffL

    cmp-long v5, v1, v3

    const/16 v6, 0x3d

    if-lez v5, :cond_19

    iget-wide v7, v0, Ls0/o;->k:J

    ushr-long v9, v1, v6

    add-long/2addr v7, v9

    iput-wide v7, v0, Ls0/o;->k:J

    and-long/2addr v1, v3

    iput-wide v1, v0, Ls0/o;->j:J

    :cond_19
    const/16 v2, 0x10

    :goto_1b
    const/16 v3, 0x4f

    const/16 v4, 0x8

    iget-object v5, v0, Ls0/o;->t:[J

    if-gt v2, v3, :cond_61

    add-int/lit8 v3, v2, -0x2

    aget-wide v7, v5, v3

    const/16 v3, 0x2d

    shl-long v9, v7, v3

    const/16 v3, 0x13

    ushr-long v11, v7, v3

    or-long/2addr v9, v11

    const/4 v3, 0x3

    shl-long v11, v7, v3

    ushr-long v13, v7, v6

    or-long/2addr v11, v13

    xor-long/2addr v9, v11

    const/4 v3, 0x6

    ushr-long/2addr v7, v3

    xor-long/2addr v7, v9

    add-int/lit8 v3, v2, -0x7

    aget-wide v9, v5, v3

    add-long/2addr v7, v9

    add-int/lit8 v3, v2, -0xf

    aget-wide v9, v5, v3

    const/16 v3, 0x3f

    shl-long v11, v9, v3

    const/4 v3, 0x1

    ushr-long v13, v9, v3

    or-long/2addr v11, v13

    const/16 v3, 0x38

    shl-long v13, v9, v3

    ushr-long v3, v9, v4

    or-long/2addr v3, v13

    xor-long/2addr v3, v11

    const/4 v11, 0x7

    ushr-long/2addr v9, v11

    xor-long/2addr v3, v9

    add-long/2addr v7, v3

    add-int/lit8 v3, v2, -0x10

    aget-wide v3, v5, v3

    add-long/2addr v7, v3

    aput-wide v7, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_61
    iget-wide v2, v0, Ls0/o;->l:J

    iget-wide v6, v0, Ls0/o;->m:J

    iget-wide v8, v0, Ls0/o;->n:J

    iget-wide v10, v0, Ls0/o;->o:J

    iget-wide v12, v0, Ls0/o;->p:J

    iget-wide v14, v0, Ls0/o;->q:J

    move/from16 v16, v4

    move-object/from16 v17, v5

    iget-wide v4, v0, Ls0/o;->r:J

    move-wide/from16 v18, v2

    iget-wide v1, v0, Ls0/o;->s:J

    move-wide/from16 v20, v10

    move-wide v10, v4

    move-wide/from16 v4, v18

    move-wide/from16 v18, v20

    move-wide/from16 v20, v12

    move-wide v12, v6

    move-wide/from16 v6, v20

    move-wide/from16 v20, v14

    move-wide v14, v8

    move-wide/from16 v8, v20

    move-wide/from16 v20, v1

    const/4 v3, 0x0

    const/16 v26, 0x0

    :goto_8d
    const/16 v1, 0xa

    if-ge v3, v1, :cond_1f0

    invoke-static {v6, v7}, Ls0/o;->g(J)J

    move-result-wide v1

    invoke-static/range {v6 .. v11}, Ls0/o;->d(JJJ)J

    move-result-wide v22

    move-wide/from16 v24, v6

    move-wide/from16 v27, v10

    move-wide v10, v8

    add-long v1, v1, v22

    sget-object v29, Ls0/o;->v:[J

    aget-wide v6, v29, v26

    add-long/2addr v1, v6

    add-int/lit8 v30, v26, 0x1

    aget-wide v6, v17, v26

    add-long/2addr v1, v6

    add-long v1, v1, v20

    add-long v20, v18, v1

    invoke-static {v4, v5}, Ls0/o;->f(J)J

    move-result-wide v18

    move-wide v6, v12

    move-wide v8, v14

    invoke-static/range {v4 .. v9}, Ls0/o;->e(JJJ)J

    move-result-wide v12

    add-long v18, v18, v12

    add-long v35, v18, v1

    invoke-static/range {v20 .. v21}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v22, v24

    move-wide/from16 v24, v10

    invoke-static/range {v20 .. v25}, Ls0/o;->d(JJJ)J

    move-result-wide v10

    move-wide/from16 v14, v24

    move-wide/from16 v24, v22

    add-long/2addr v1, v10

    aget-wide v10, v29, v30

    add-long/2addr v1, v10

    add-int/lit8 v10, v26, 0x2

    aget-wide v11, v17, v30

    add-long/2addr v1, v11

    add-long v1, v1, v27

    add-long v33, v8, v1

    invoke-static/range {v35 .. v36}, Ls0/o;->f(J)J

    move-result-wide v11

    move-wide v8, v6

    move-wide v6, v4

    move-wide/from16 v4, v35

    invoke-static/range {v4 .. v9}, Ls0/o;->e(JJJ)J

    move-result-wide v18

    move-wide v4, v6

    move-wide v6, v8

    add-long v11, v11, v18

    add-long v41, v11, v1

    invoke-static/range {v33 .. v34}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v22, v20

    move-wide/from16 v20, v33

    invoke-static/range {v20 .. v25}, Ls0/o;->d(JJJ)J

    move-result-wide v8

    move-wide/from16 v20, v22

    add-long/2addr v1, v8

    aget-wide v8, v29, v10

    add-long/2addr v1, v8

    add-int/lit8 v11, v26, 0x3

    aget-wide v8, v17, v10

    add-long/2addr v1, v8

    add-long/2addr v1, v14

    add-long v31, v6, v1

    invoke-static/range {v41 .. v42}, Ls0/o;->f(J)J

    move-result-wide v12

    move-wide v8, v4

    move-wide/from16 v6, v35

    move-wide/from16 v4, v41

    invoke-static/range {v4 .. v9}, Ls0/o;->e(JJJ)J

    move-result-wide v14

    move-wide v4, v8

    add-long/2addr v12, v14

    add-long v39, v12, v1

    invoke-static/range {v31 .. v32}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v35, v20

    invoke-static/range {v31 .. v36}, Ls0/o;->d(JJJ)J

    move-result-wide v8

    move-wide/from16 v47, v31

    move-wide/from16 v14, v33

    add-long/2addr v1, v8

    aget-wide v8, v29, v11

    add-long/2addr v1, v8

    add-int/lit8 v8, v26, 0x4

    aget-wide v9, v17, v11

    add-long/2addr v1, v9

    add-long v1, v1, v24

    add-long v45, v4, v1

    invoke-static/range {v39 .. v40}, Ls0/o;->f(J)J

    move-result-wide v4

    move-wide/from16 v35, v6

    move-wide/from16 v31, v39

    move-wide/from16 v33, v41

    invoke-static/range {v31 .. v36}, Ls0/o;->e(JJJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v4, v1

    invoke-static/range {v45 .. v46}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v41, v14

    move-wide/from16 v37, v45

    move-wide/from16 v39, v47

    invoke-static/range {v37 .. v42}, Ls0/o;->d(JJJ)J

    move-result-wide v6

    add-long/2addr v1, v6

    aget-wide v6, v29, v8

    add-long/2addr v1, v6

    add-int/lit8 v6, v26, 0x5

    aget-wide v7, v17, v8

    add-long/2addr v1, v7

    add-long v1, v1, v20

    add-long v11, v35, v1

    invoke-static {v4, v5}, Ls0/o;->f(J)J

    move-result-wide v7

    move-wide/from16 v37, v4

    move-wide/from16 v39, v31

    move-wide/from16 v41, v33

    invoke-static/range {v37 .. v42}, Ls0/o;->e(JJJ)J

    move-result-wide v4

    add-long/2addr v7, v4

    add-long v35, v7, v1

    invoke-static {v11, v12}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v43, v11

    invoke-static/range {v43 .. v48}, Ls0/o;->d(JJJ)J

    move-result-wide v4

    add-long/2addr v1, v4

    aget-wide v4, v29, v6

    add-long/2addr v1, v4

    add-int/lit8 v4, v26, 0x6

    aget-wide v5, v17, v6

    add-long/2addr v1, v5

    add-long/2addr v1, v14

    add-long v9, v33, v1

    invoke-static/range {v35 .. v36}, Ls0/o;->f(J)J

    move-result-wide v5

    invoke-static/range {v35 .. v40}, Ls0/o;->e(JJJ)J

    move-result-wide v7

    move-wide/from16 v22, v35

    add-long/2addr v5, v7

    add-long v20, v5, v1

    invoke-static {v9, v10}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v30, v9

    move-wide/from16 v32, v11

    move-wide/from16 v34, v45

    invoke-static/range {v30 .. v35}, Ls0/o;->d(JJJ)J

    move-result-wide v5

    add-long/2addr v1, v5

    aget-wide v5, v29, v4

    add-long/2addr v1, v5

    add-int/lit8 v5, v26, 0x7

    aget-wide v6, v17, v4

    add-long/2addr v1, v6

    add-long v1, v1, v47

    add-long v7, v39, v1

    invoke-static/range {v20 .. v21}, Ls0/o;->f(J)J

    move-result-wide v9

    move-wide/from16 v39, v22

    move-wide/from16 v41, v37

    move-wide/from16 v37, v20

    invoke-static/range {v37 .. v42}, Ls0/o;->e(JJJ)J

    move-result-wide v13

    move-wide/from16 v37, v41

    add-long/2addr v9, v13

    add-long v18, v9, v1

    invoke-static {v7, v8}, Ls0/o;->g(J)J

    move-result-wide v1

    move-wide/from16 v9, v30

    invoke-static/range {v7 .. v12}, Ls0/o;->d(JJJ)J

    move-result-wide v13

    add-long/2addr v1, v13

    aget-wide v9, v29, v5

    add-long/2addr v1, v9

    add-int/lit8 v26, v26, 0x8

    aget-wide v4, v17, v5

    add-long/2addr v1, v4

    add-long v1, v1, v45

    add-long v4, v37, v1

    invoke-static/range {v18 .. v19}, Ls0/o;->f(J)J

    move-result-wide v9

    invoke-static/range {v18 .. v23}, Ls0/o;->e(JJJ)J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v1, v9

    add-int/lit8 v3, v3, 0x1

    move-wide v8, v7

    move-wide/from16 v14, v20

    move-wide v6, v4

    move-wide/from16 v20, v11

    move-wide/from16 v12, v18

    move-wide/from16 v18, v22

    move-wide/from16 v10, v30

    move-wide v4, v1

    goto/16 :goto_8d

    :cond_1f0
    move-wide/from16 v24, v14

    move-wide v14, v8

    move-wide/from16 v8, v24

    move-wide/from16 v24, v6

    move-wide/from16 v27, v10

    move-wide v6, v12

    iget-wide v1, v0, Ls0/o;->l:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Ls0/o;->l:J

    iget-wide v1, v0, Ls0/o;->m:J

    add-long/2addr v1, v6

    iput-wide v1, v0, Ls0/o;->m:J

    iget-wide v1, v0, Ls0/o;->n:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Ls0/o;->n:J

    iget-wide v1, v0, Ls0/o;->o:J

    add-long v1, v1, v18

    iput-wide v1, v0, Ls0/o;->o:J

    iget-wide v1, v0, Ls0/o;->p:J

    add-long v1, v1, v24

    iput-wide v1, v0, Ls0/o;->p:J

    iget-wide v1, v0, Ls0/o;->q:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Ls0/o;->q:J

    iget-wide v1, v0, Ls0/o;->r:J

    add-long v1, v1, v27

    iput-wide v1, v0, Ls0/o;->r:J

    iget-wide v1, v0, Ls0/o;->s:J

    add-long v1, v1, v20

    iput-wide v1, v0, Ls0/o;->s:J

    const/4 v1, 0x0

    iput v1, v0, Ls0/o;->u:I

    move v3, v1

    const/16 v0, 0x10

    :goto_22c
    if-ge v3, v0, :cond_235

    const-wide/16 v1, 0x0

    aput-wide v1, v17, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_22c

    :cond_235
    return-void
.end method

.method public reset()V
    .registers 7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls0/o;->j:J

    iput-wide v0, p0, Ls0/o;->k:J

    const/4 v2, 0x0

    iput v2, p0, Ls0/o;->i:I

    move v3, v2

    :goto_a
    iget-object v4, p0, Ls0/o;->h:[B

    array-length v5, v4

    if-ge v3, v5, :cond_14

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_14
    iput v2, p0, Ls0/o;->u:I

    :goto_16
    iget-object v3, p0, Ls0/o;->t:[J

    array-length v4, v3

    if-eq v2, v4, :cond_20

    aput-wide v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    return-void
.end method

.method public final update(B)V
    .registers 6

    iget v0, p0, Ls0/o;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ls0/o;->i:I

    iget-object v2, p0, Ls0/o;->h:[B

    aput-byte p1, v2, v0

    array-length p1, v2

    if-ne v1, p1, :cond_27

    iget p1, p0, Ls0/o;->u:I

    const/4 v0, 0x0

    invoke-static {v0, v2}, Lm4/d;->c(I[B)J

    move-result-wide v1

    iget-object v3, p0, Ls0/o;->t:[J

    aput-wide v1, v3, p1

    iget p1, p0, Ls0/o;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ls0/o;->u:I

    const/16 v1, 0x10

    if-ne p1, v1, :cond_25

    invoke-virtual {p0}, Ls0/o;->j()V

    :cond_25
    iput v0, p0, Ls0/o;->i:I

    :cond_27
    iget-wide v0, p0, Ls0/o;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls0/o;->j:J

    return-void
.end method

.method public final update([BII)V
    .registers 9

    :goto_0
    iget v0, p0, Ls0/o;->i:I

    if-eqz v0, :cond_10

    if-lez p3, :cond_10

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/o;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_10
    :goto_10
    iget-object v0, p0, Ls0/o;->h:[B

    array-length v1, v0

    if-lt p3, v1, :cond_38

    iget v1, p0, Ls0/o;->u:I

    invoke-static {p2, p1}, Lm4/d;->c(I[B)J

    move-result-wide v2

    iget-object v4, p0, Ls0/o;->t:[J

    aput-wide v2, v4, v1

    iget v1, p0, Ls0/o;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls0/o;->u:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2c

    invoke-virtual {p0}, Ls0/o;->j()V

    :cond_2c
    array-length v1, v0

    add-int/2addr p2, v1

    array-length v1, v0

    sub-int/2addr p3, v1

    iget-wide v1, p0, Ls0/o;->j:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Ls0/o;->j:J

    goto :goto_10

    :cond_38
    :goto_38
    if-lez p3, :cond_44

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Ls0/o;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_38

    :cond_44
    return-void
.end method
