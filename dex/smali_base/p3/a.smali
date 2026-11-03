.class public final Lp3/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final A1:Lp3/a;

.field public static final B1:Lp3/a;

.field public static final C1:Lp3/a;

.field public static final D1:Lp3/a;

.field public static final E1:Lp3/a;

.field public static final F1:Lp3/a;

.field public static final G1:Lp3/a;

.field public static final H1:Lp3/a;

.field public static final I1:Lp3/a;

.field public static final J1:Lp3/a;

.field public static final K1:Lp3/a;

.field public static final L1:Lp3/a;

.field public static final c:Lp3/a;

.field public static final d:Lp3/a;

.field public static final q:Lp3/a;

.field public static final x:Lp3/a;

.field public static final y:Lp3/a;

.field public static final z1:Lp3/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lp3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->c:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->d:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->q:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->x:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->y:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->z1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->A1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->B1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->C1:Lp3/a;

    new-instance v0, Lp3/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->D1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v2}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->E1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v2}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->F1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->G1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->H1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v1}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->I1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v2}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->J1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v2}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->K1:Lp3/a;

    new-instance v0, Lp3/a;

    invoke-direct {v0, v2}, Lp3/a;-><init>(Z)V

    sput-object v0, Lp3/a;->L1:Lp3/a;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1b

    new-instance p0, Ls0/b0;

    invoke-direct {p0}, Ls0/b0;-><init>()V

    new-instance p0, Ls0/e0;

    invoke-direct {p0}, Ls0/e0;-><init>()V

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_1b
    new-instance p0, Ls0/g0;

    const/16 p1, 0x80

    invoke-direct {p0, p1}, Ls0/g0;-><init>(I)V

    new-instance p0, Ls0/d0;

    const/16 p1, 0x100

    invoke-direct {p0, p1}, Ls0/d0;-><init>(I)V

    new-instance p0, Ls0/d0;

    const/16 p1, 0x200

    invoke-direct {p0, p1}, Ls0/d0;-><init>(I)V

    return-void
.end method
