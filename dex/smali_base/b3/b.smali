.class public final Lb3/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final A1:Lb3/b;

.field public static final B1:Lb3/b;

.field public static final C1:Lb3/b;

.field public static final D1:Lb3/b;

.field public static final E1:Lb3/b;

.field public static final F1:Lb3/b;

.field public static final G1:Lb3/b;

.field public static final x:Lb3/b;

.field public static final y:Lb3/b;

.field public static final z1:Lb3/b;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I

.field public final q:Lb3/a;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lb3/b;

    const/16 v4, 0x40

    const/4 v5, 0x0

    const-string v1, "mceliece348864"

    const/16 v2, 0xc

    const/16 v3, 0xda0

    invoke-direct/range {v0 .. v5}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lb3/b;->x:Lb3/b;

    new-instance v1, Lb3/b;

    const/16 v5, 0x40

    const/4 v6, 0x1

    const-string v2, "mceliece348864f"

    const/16 v3, 0xc

    const/16 v4, 0xda0

    invoke-direct/range {v1 .. v6}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lb3/b;->y:Lb3/b;

    new-instance v2, Lb3/b;

    const/16 v6, 0x60

    const/4 v7, 0x0

    const-string v3, "mceliece460896"

    const/16 v4, 0xd

    const/16 v5, 0x1200

    invoke-direct/range {v2 .. v7}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v2, Lb3/b;->z1:Lb3/b;

    new-instance v3, Lb3/b;

    const/16 v7, 0x60

    const/4 v8, 0x1

    const-string v4, "mceliece460896f"

    const/16 v5, 0xd

    const/16 v6, 0x1200

    invoke-direct/range {v3 .. v8}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lb3/b;->A1:Lb3/b;

    new-instance v4, Lb3/b;

    const/16 v8, 0x80

    const/4 v9, 0x0

    const-string v5, "mceliece6688128"

    const/16 v6, 0xd

    const/16 v7, 0x1a20

    invoke-direct/range {v4 .. v9}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v4, Lb3/b;->B1:Lb3/b;

    new-instance v5, Lb3/b;

    const/16 v9, 0x80

    const/4 v10, 0x1

    const-string v6, "mceliece6688128f"

    const/16 v7, 0xd

    const/16 v8, 0x1a20

    invoke-direct/range {v5 .. v10}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v5, Lb3/b;->C1:Lb3/b;

    new-instance v6, Lb3/b;

    const/16 v10, 0x77

    const/4 v11, 0x0

    const-string v7, "mceliece6960119"

    const/16 v8, 0xd

    const/16 v9, 0x1b30

    invoke-direct/range {v6 .. v11}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v6, Lb3/b;->D1:Lb3/b;

    new-instance v0, Lb3/b;

    const/16 v4, 0x77

    const/4 v5, 0x1

    const-string v1, "mceliece6960119f"

    const/16 v2, 0xd

    const/16 v3, 0x1b30

    invoke-direct/range {v0 .. v5}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lb3/b;->E1:Lb3/b;

    new-instance v1, Lb3/b;

    const/16 v5, 0x80

    const/4 v6, 0x0

    const-string v2, "mceliece8192128"

    const/16 v3, 0xd

    const/16 v4, 0x2000

    invoke-direct/range {v1 .. v6}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v1, Lb3/b;->F1:Lb3/b;

    new-instance v2, Lb3/b;

    const/16 v6, 0x80

    const/4 v7, 0x1

    const-string v3, "mceliece8192128f"

    const/16 v4, 0xd

    const/16 v5, 0x2000

    invoke-direct/range {v2 .. v7}, Lb3/b;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v2, Lb3/b;->G1:Lb3/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/b;->c:Ljava/lang/String;

    iput p4, p0, Lb3/b;->d:I

    new-instance p1, Lb3/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p1, Lb3/a;->j:Z

    iput p3, p1, Lb3/a;->a:I

    iput p4, p1, Lb3/a;->b:I

    iput p2, p1, Lb3/a;->c:I

    mul-int/lit8 p5, p4, 0x2

    iput p5, p1, Lb3/a;->d:I

    mul-int p5, p4, p2

    iput p5, p1, Lb3/a;->e:I

    sub-int/2addr p3, p5

    iput p3, p1, Lb3/a;->f:I

    const/4 p3, 0x1

    shl-int p5, p3, p2

    sub-int/2addr p5, p3

    iput p5, p1, Lb3/a;->g:I

    const/16 p5, 0xc

    if-ne p2, p5, :cond_32

    new-instance p2, Lb3/e;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Lb3/e;-><init>(I)V

    :goto_2f
    iput-object p2, p1, Lb3/a;->h:Lq4/k;

    goto :goto_39

    :cond_32
    new-instance p2, Lb3/e;

    const/4 p5, 0x1

    invoke-direct {p2, p5}, Lb3/e;-><init>(I)V

    goto :goto_2f

    :goto_39
    rem-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 p3, 0x0

    :goto_3f
    iput-boolean p3, p1, Lb3/a;->i:Z

    iput-object p1, p0, Lb3/b;->q:Lb3/a;

    return-void
.end method
