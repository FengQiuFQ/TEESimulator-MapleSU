.class public final Lq3/l;
.super Ljava/lang/Object;


# static fields
.field public static final A:Lq3/l;

.field public static final d:Lq3/l;

.field public static final e:Lq3/l;

.field public static final f:Lq3/l;

.field public static final g:Lq3/l;

.field public static final h:Lq3/l;

.field public static final i:Lq3/l;

.field public static final j:Lq3/l;

.field public static final k:Lq3/l;

.field public static final l:Lq3/l;

.field public static final m:Lq3/l;

.field public static final n:Lq3/l;

.field public static final o:Lq3/l;

.field public static final p:Lq3/l;

.field public static final q:Lq3/l;

.field public static final r:Lq3/l;

.field public static final s:Lq3/l;

.field public static final t:Lq3/l;

.field public static final u:Lq3/l;

.field public static final v:Lq3/l;

.field public static final w:Lq3/l;

.field public static final x:Lq3/l;

.field public static final y:Lq3/l;

.field public static final z:Lq3/l;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lq3/k;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lq3/l;

    new-instance v1, Lq3/k;

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/4 v4, 0x6

    const/16 v5, 0x21

    invoke-direct/range {v1 .. v7}, Lq3/k;-><init>(IIIIII)V

    const-string v2, "sha2-128f"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->d:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x7

    const/16 v7, 0xc

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-128s"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->e:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x42

    const/16 v5, 0x18

    const/16 v6, 0x16

    const/16 v7, 0x8

    const/16 v8, 0x21

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-192f"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->f:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x3f

    const/4 v6, 0x7

    const/16 v7, 0xe

    const/16 v8, 0x11

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-192s"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->g:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x44

    const/16 v5, 0x20

    const/16 v6, 0x11

    const/16 v7, 0x9

    const/16 v8, 0x23

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-256f"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->h:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x40

    const/16 v6, 0x8

    const/16 v7, 0xe

    const/16 v8, 0x16

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-256s"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->i:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x42

    const/4 v10, 0x1

    const/16 v5, 0x10

    const/16 v6, 0x16

    const/4 v7, 0x6

    const/16 v8, 0x21

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-128f"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->j:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x3f

    const/4 v6, 0x7

    const/16 v7, 0xc

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-128s"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->k:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x42

    const/16 v5, 0x18

    const/16 v6, 0x16

    const/16 v7, 0x8

    const/16 v8, 0x21

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-192f"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->l:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x3f

    const/4 v6, 0x7

    const/16 v7, 0xe

    const/16 v8, 0x11

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-192s"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->m:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x44

    const/16 v5, 0x20

    const/16 v6, 0x11

    const/16 v7, 0x9

    const/16 v8, 0x23

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-256f"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->n:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x40

    const/16 v6, 0x8

    const/16 v7, 0xe

    const/16 v8, 0x16

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-256s"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->o:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v1, Lq3/k;

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/4 v4, 0x6

    const/16 v5, 0x21

    invoke-direct/range {v1 .. v7}, Lq3/k;-><init>(IIIIII)V

    const-string v2, "sha2-128f-with-sha256"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->p:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x3f

    const/4 v10, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x7

    const/16 v7, 0xc

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-128s-with-sha256"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->q:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v1, Lq3/k;

    const/16 v6, 0x42

    const/4 v7, 0x0

    const/16 v2, 0x18

    const/16 v3, 0x16

    const/16 v4, 0x8

    const/16 v5, 0x21

    invoke-direct/range {v1 .. v7}, Lq3/k;-><init>(IIIIII)V

    const-string v2, "sha2-192f-with-sha512"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->r:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v5, 0x18

    const/4 v6, 0x7

    const/16 v7, 0xe

    const/16 v8, 0x11

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-192s-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->s:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x44

    const/16 v5, 0x20

    const/16 v6, 0x11

    const/16 v7, 0x9

    const/16 v8, 0x23

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-256f-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->t:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x40

    const/16 v6, 0x8

    const/16 v7, 0xe

    const/16 v8, 0x16

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "sha2-256s-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->u:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v1, Lq3/k;

    const/16 v6, 0x42

    const/4 v7, 0x1

    const/16 v2, 0x10

    const/16 v3, 0x16

    const/4 v4, 0x6

    const/16 v5, 0x21

    invoke-direct/range {v1 .. v7}, Lq3/k;-><init>(IIIIII)V

    const-string v2, "shake-128f-with-shake128"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->v:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x3f

    const/4 v10, 0x1

    const/16 v5, 0x10

    const/4 v6, 0x7

    const/16 v7, 0xc

    const/16 v8, 0xe

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-128s-with-shake128"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->w:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v1, Lq3/k;

    const/16 v6, 0x42

    const/4 v7, 0x1

    const/16 v2, 0x18

    const/16 v3, 0x16

    const/16 v4, 0x8

    const/16 v5, 0x21

    invoke-direct/range {v1 .. v7}, Lq3/k;-><init>(IIIIII)V

    const-string v2, "shake-192f-with-shake256"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->x:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v5, 0x18

    const/4 v6, 0x7

    const/16 v7, 0xe

    const/16 v8, 0x11

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-192s-with-shake256"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->y:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x44

    const/16 v5, 0x20

    const/16 v6, 0x11

    const/16 v7, 0x9

    const/16 v8, 0x23

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-256f-with-shake256"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->z:Lq3/l;

    new-instance v0, Lq3/l;

    new-instance v4, Lq3/k;

    const/16 v9, 0x40

    const/16 v6, 0x8

    const/16 v7, 0xe

    const/16 v8, 0x16

    invoke-direct/range {v4 .. v10}, Lq3/k;-><init>(IIIIII)V

    const-string v1, "shake-256s-with-shake256"

    invoke-direct {v0, v1, v4, v3}, Lq3/l;-><init>(Ljava/lang/String;Lq3/k;I)V

    sput-object v0, Lq3/l;->A:Lq3/l;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lq3/k;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq3/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lq3/l;->b:Lq3/k;

    iput p3, p0, Lq3/l;->c:I

    return-void
.end method
