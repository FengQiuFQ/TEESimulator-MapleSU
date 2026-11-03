.class public final Lm3/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final A1:Lm3/a;

.field public static final d:Lm3/a;

.field public static final q:Lm3/a;

.field public static final x:Lm3/a;

.field public static final y:Lm3/a;

.field public static final z1:Lm3/a;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm3/a;

    const/16 v1, 0x381

    invoke-direct {v0, v1}, Lm3/a;-><init>(I)V

    sput-object v0, Lm3/a;->d:Lm3/a;

    new-instance v0, Lm3/a;

    const/16 v1, 0x40f

    invoke-direct {v0, v1}, Lm3/a;-><init>(I)V

    sput-object v0, Lm3/a;->q:Lm3/a;

    new-instance v0, Lm3/a;

    const/16 v1, 0x4a0

    invoke-direct {v0, v1}, Lm3/a;-><init>(I)V

    sput-object v0, Lm3/a;->x:Lm3/a;

    new-instance v0, Lm3/a;

    const/16 v1, 0x545

    invoke-direct {v0, v1}, Lm3/a;-><init>(I)V

    sput-object v0, Lm3/a;->y:Lm3/a;

    new-instance v0, Lm3/a;

    const/16 v1, 0x5af

    invoke-direct {v0, v1}, Lm3/a;-><init>(I)V

    sput-object v0, Lm3/a;->z1:Lm3/a;

    new-instance v0, Lm3/a;

    const/16 v1, 0x737

    invoke-direct {v0, v1}, Lm3/a;-><init>(I)V

    sput-object v0, Lm3/a;->A1:Lm3/a;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm3/a;->c:I

    return-void
.end method
