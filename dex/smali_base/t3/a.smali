.class public final Lt3/a;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lt3/a;

.field public static final B:Lt3/a;

.field public static final C:Lt3/a;

.field public static final D:Lt3/a;

.field public static final E:Lt3/a;

.field public static final F:Lt3/a;

.field public static final G:Lt3/a;

.field public static final H:Lt3/a;

.field public static final I:Lt3/a;

.field public static final J:Lt3/a;

.field public static final K:Lt3/a;

.field public static final L:Lt3/a;

.field public static final M:Lt3/a;

.field public static final N:Ljava/util/HashMap;

.field public static final d:Lt3/a;

.field public static final e:Lt3/a;

.field public static final f:Lt3/a;

.field public static final g:Lt3/a;

.field public static final h:Lt3/a;

.field public static final i:Lt3/a;

.field public static final j:Lt3/a;

.field public static final k:Lt3/a;

.field public static final l:Lt3/a;

.field public static final m:Lt3/a;

.field public static final n:Lt3/a;

.field public static final o:Lt3/a;

.field public static final p:Lt3/a;

.field public static final q:Lt3/a;

.field public static final r:Lt3/a;

.field public static final s:Lt3/a;

.field public static final t:Lt3/a;

.field public static final u:Lt3/a;

.field public static final v:Lt3/a;

.field public static final w:Lt3/a;

.field public static final x:Lt3/a;

.field public static final y:Lt3/a;

.field public static final z:Lt3/a;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Lk2/a0;


# direct methods
.method static constructor <clinit>()V
    .registers 40

    new-instance v1, Lt3/a;

    const v0, 0x10101

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lk2/a0;

    const/4 v3, 0x2

    const/16 v4, 0x10

    invoke-direct {v2, v4, v3}, Lk2/a0;-><init>(II)V

    const-string v3, "sha2-128f-robust"

    invoke-direct {v1, v0, v3, v2}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->d:Lt3/a;

    new-instance v2, Lt3/a;

    const v0, 0x10102

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Lk2/a0;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lk2/a0;-><init>(II)V

    const-string v5, "sha2-128s-robust"

    invoke-direct {v2, v0, v5, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v2, Lt3/a;->e:Lt3/a;

    new-instance v3, Lt3/a;

    const v0, 0x10103

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, Lk2/a0;

    const/4 v6, 0x2

    const/16 v7, 0x18

    invoke-direct {v5, v7, v6}, Lk2/a0;-><init>(II)V

    const-string v6, "sha2-192f-robust"

    invoke-direct {v3, v0, v6, v5}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v3, Lt3/a;->f:Lt3/a;

    new-instance v0, Lt3/a;

    const v5, 0x10104

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lk2/a0;

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lk2/a0;-><init>(II)V

    const-string v8, "sha2-192s-robust"

    invoke-direct {v0, v5, v8, v6}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->g:Lt3/a;

    new-instance v5, Lt3/a;

    const v6, 0x10105

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v8, Lk2/a0;

    const/4 v9, 0x2

    const/16 v10, 0x20

    invoke-direct {v8, v10, v9}, Lk2/a0;-><init>(II)V

    const-string v9, "sha2-256f-robust"

    invoke-direct {v5, v6, v9, v8}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v5, Lt3/a;->h:Lt3/a;

    new-instance v6, Lt3/a;

    const v8, 0x10106

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lk2/a0;

    const/4 v11, 0x2

    invoke-direct {v9, v10, v11}, Lk2/a0;-><init>(II)V

    const-string v11, "sha2-256s-robust"

    invoke-direct {v6, v8, v11, v9}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v6, Lt3/a;->i:Lt3/a;

    new-instance v8, Lt3/a;

    const v9, 0x10201

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v11, Lk2/a0;

    const/4 v12, 0x2

    invoke-direct {v11, v4, v12}, Lk2/a0;-><init>(II)V

    const-string v12, "sha2-128f"

    invoke-direct {v8, v9, v12, v11}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v8, Lt3/a;->j:Lt3/a;

    move-object v9, v8

    new-instance v8, Lt3/a;

    const v11, 0x10202

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lk2/a0;

    const/4 v13, 0x2

    invoke-direct {v12, v4, v13}, Lk2/a0;-><init>(II)V

    const-string v13, "sha2-128s"

    invoke-direct {v8, v11, v13, v12}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v8, Lt3/a;->k:Lt3/a;

    move-object v11, v9

    new-instance v9, Lt3/a;

    const v12, 0x10203

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v13, Lk2/a0;

    const/4 v14, 0x2

    invoke-direct {v13, v7, v14}, Lk2/a0;-><init>(II)V

    const-string v14, "sha2-192f"

    invoke-direct {v9, v12, v14, v13}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v9, Lt3/a;->l:Lt3/a;

    new-instance v12, Lt3/a;

    const v13, 0x10204

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v14, Lk2/a0;

    const/4 v15, 0x2

    invoke-direct {v14, v7, v15}, Lk2/a0;-><init>(II)V

    const-string v15, "sha2-192s"

    invoke-direct {v12, v13, v15, v14}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v12, Lt3/a;->m:Lt3/a;

    move-object v13, v11

    new-instance v11, Lt3/a;

    const v14, 0x10205

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lk2/a0;

    const/4 v7, 0x2

    invoke-direct {v15, v10, v7}, Lk2/a0;-><init>(II)V

    const-string v7, "sha2-256f"

    invoke-direct {v11, v14, v7, v15}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v11, Lt3/a;->n:Lt3/a;

    move-object v7, v12

    new-instance v12, Lt3/a;

    const v14, 0x10206

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lk2/a0;

    const/4 v4, 0x2

    invoke-direct {v15, v10, v4}, Lk2/a0;-><init>(II)V

    const-string v4, "sha2-256s"

    invoke-direct {v12, v14, v4, v15}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v12, Lt3/a;->o:Lt3/a;

    move-object v4, v7

    move-object v7, v13

    new-instance v13, Lt3/a;

    const v14, 0x20101

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v15, Lk2/a0;

    const/4 v10, 0x3

    move-object/from16 v19, v0

    const/16 v0, 0x10

    invoke-direct {v15, v0, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "shake-128f-robust"

    invoke-direct {v13, v14, v10, v15}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v13, Lt3/a;->p:Lt3/a;

    new-instance v14, Lt3/a;

    const v10, 0x20102

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v15, Lk2/a0;

    move-object/from16 v20, v1

    const/4 v1, 0x3

    invoke-direct {v15, v0, v1}, Lk2/a0;-><init>(II)V

    const-string v0, "shake-128s-robust"

    invoke-direct {v14, v10, v0, v15}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v14, Lt3/a;->q:Lt3/a;

    new-instance v15, Lt3/a;

    const v0, 0x20103

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lk2/a0;

    const/4 v10, 0x3

    move-object/from16 v21, v2

    const/16 v2, 0x18

    invoke-direct {v1, v2, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "shake-192f-robust"

    invoke-direct {v15, v0, v10, v1}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v15, Lt3/a;->r:Lt3/a;

    new-instance v0, Lt3/a;

    const v1, 0x20104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v10, Lk2/a0;

    move-object/from16 v22, v3

    const/4 v3, 0x3

    invoke-direct {v10, v2, v3}, Lk2/a0;-><init>(II)V

    const-string v2, "shake-192s-robust"

    invoke-direct {v0, v1, v2, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->s:Lt3/a;

    new-instance v1, Lt3/a;

    const v2, 0x20105

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lk2/a0;

    const/4 v10, 0x3

    move-object/from16 v23, v0

    const/16 v0, 0x20

    invoke-direct {v3, v0, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "shake-256f-robust"

    invoke-direct {v1, v2, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->t:Lt3/a;

    new-instance v2, Lt3/a;

    const v3, 0x20106

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v24, v1

    const/4 v1, 0x3

    invoke-direct {v10, v0, v1}, Lk2/a0;-><init>(II)V

    const-string v0, "shake-256s-robust"

    invoke-direct {v2, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v2, Lt3/a;->u:Lt3/a;

    new-instance v0, Lt3/a;

    const v1, 0x20201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lk2/a0;

    const/4 v10, 0x3

    move-object/from16 v25, v2

    const/16 v2, 0x10

    invoke-direct {v3, v2, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "shake-128f"

    invoke-direct {v0, v1, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->v:Lt3/a;

    new-instance v1, Lt3/a;

    const v3, 0x20202

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v26, v0

    const/4 v0, 0x3

    invoke-direct {v10, v2, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "shake-128s"

    invoke-direct {v1, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->w:Lt3/a;

    new-instance v0, Lt3/a;

    const v2, 0x20203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lk2/a0;

    const/4 v10, 0x3

    move-object/from16 v27, v1

    const/16 v1, 0x18

    invoke-direct {v3, v1, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "shake-192f"

    invoke-direct {v0, v2, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->x:Lt3/a;

    new-instance v2, Lt3/a;

    const v3, 0x20204

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v28, v0

    const/4 v0, 0x3

    invoke-direct {v10, v1, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "shake-192s"

    invoke-direct {v2, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v2, Lt3/a;->y:Lt3/a;

    new-instance v0, Lt3/a;

    const v1, 0x20205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lk2/a0;

    const/4 v10, 0x3

    move-object/from16 v29, v2

    const/16 v2, 0x20

    invoke-direct {v3, v2, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "shake-256f"

    invoke-direct {v0, v1, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->z:Lt3/a;

    new-instance v1, Lt3/a;

    const v3, 0x20206

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v30, v0

    const/4 v0, 0x3

    invoke-direct {v10, v2, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "shake-256s"

    invoke-direct {v1, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->A:Lt3/a;

    new-instance v0, Lt3/a;

    const v2, 0x30101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lk2/a0;

    const/4 v10, 0x1

    move-object/from16 v31, v1

    const/16 v1, 0x10

    invoke-direct {v3, v1, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "haraka-128f-robust"

    invoke-direct {v0, v2, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->B:Lt3/a;

    new-instance v2, Lt3/a;

    const v3, 0x30102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v32, v0

    const/4 v0, 0x1

    invoke-direct {v10, v1, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "haraka-128s-robust"

    invoke-direct {v2, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v2, Lt3/a;->C:Lt3/a;

    new-instance v0, Lt3/a;

    const v1, 0x30103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lk2/a0;

    const/4 v10, 0x1

    move-object/from16 v33, v2

    const/16 v2, 0x18

    invoke-direct {v3, v2, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "haraka-192f-robust"

    invoke-direct {v0, v1, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->D:Lt3/a;

    new-instance v1, Lt3/a;

    const v3, 0x30104

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v34, v0

    const/4 v0, 0x1

    invoke-direct {v10, v2, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "haraka-192s-robust"

    invoke-direct {v1, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->E:Lt3/a;

    new-instance v0, Lt3/a;

    const v2, 0x30105

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lk2/a0;

    const/4 v10, 0x1

    move-object/from16 v35, v1

    const/16 v1, 0x20

    invoke-direct {v3, v1, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "haraka-256f-robust"

    invoke-direct {v0, v2, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->F:Lt3/a;

    new-instance v2, Lt3/a;

    const v3, 0x30106

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v36, v0

    const/4 v0, 0x1

    invoke-direct {v10, v1, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "haraka-256s-robust"

    invoke-direct {v2, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v2, Lt3/a;->G:Lt3/a;

    new-instance v0, Lt3/a;

    const v1, 0x30201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lk2/a0;

    const/4 v10, 0x1

    move-object/from16 v37, v2

    const/16 v2, 0x10

    invoke-direct {v3, v2, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "haraka-128f-simple"

    invoke-direct {v0, v1, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->H:Lt3/a;

    new-instance v1, Lt3/a;

    const v3, 0x30202

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v17, v0

    const/4 v0, 0x1

    invoke-direct {v10, v2, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "haraka-128s-simple"

    invoke-direct {v1, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->I:Lt3/a;

    new-instance v0, Lt3/a;

    const v2, 0x30203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lk2/a0;

    const/4 v10, 0x1

    move-object/from16 v38, v1

    const/16 v1, 0x18

    invoke-direct {v3, v1, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "haraka-192f-simple"

    invoke-direct {v0, v2, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->J:Lt3/a;

    new-instance v2, Lt3/a;

    const v3, 0x30204

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v16, v0

    const/4 v0, 0x1

    invoke-direct {v10, v1, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "haraka-192s-simple"

    invoke-direct {v2, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v2, Lt3/a;->K:Lt3/a;

    new-instance v0, Lt3/a;

    const v1, 0x30205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v3, Lk2/a0;

    const/4 v10, 0x1

    move-object/from16 v39, v2

    const/16 v2, 0x20

    invoke-direct {v3, v2, v10}, Lk2/a0;-><init>(II)V

    const-string v10, "haraka-256f-simple"

    invoke-direct {v0, v1, v10, v3}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v0, Lt3/a;->L:Lt3/a;

    new-instance v1, Lt3/a;

    const v3, 0x30206

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v10, Lk2/a0;

    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-direct {v10, v2, v0}, Lk2/a0;-><init>(II)V

    const-string v0, "haraka-256s-simple"

    invoke-direct {v1, v3, v0, v10}, Lt3/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V

    sput-object v1, Lt3/a;->M:Lt3/a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lt3/a;->N:Ljava/util/HashMap;

    move-object/from16 v2, v31

    move-object/from16 v31, v17

    move-object/from16 v17, v24

    move-object/from16 v24, v2

    move-object v10, v4

    move-object/from16 v4, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v19, v26

    move-object/from16 v21, v28

    move-object/from16 v22, v29

    move-object/from16 v26, v33

    move-object/from16 v28, v35

    move-object/from16 v29, v36

    move-object/from16 v36, v1

    move-object/from16 v33, v16

    move-object/from16 v35, v18

    move-object/from16 v1, v20

    move-object/from16 v16, v23

    move-object/from16 v18, v25

    move-object/from16 v20, v27

    move-object/from16 v23, v30

    move-object/from16 v25, v32

    move-object/from16 v27, v34

    move-object/from16 v30, v37

    move-object/from16 v32, v38

    move-object/from16 v34, v39

    filled-new-array/range {v1 .. v36}, [Lt3/a;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3ad
    const/16 v2, 0x24

    if-ge v1, v2, :cond_3bd

    aget-object v2, v0, v1

    sget-object v3, Lt3/a;->N:Ljava/util/HashMap;

    iget-object v4, v2, Lt3/a;->a:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3ad

    :cond_3bd
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lk2/a0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt3/a;->a:Ljava/lang/Integer;

    iput-object p2, p0, Lt3/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lt3/a;->c:Lk2/a0;

    return-void
.end method
