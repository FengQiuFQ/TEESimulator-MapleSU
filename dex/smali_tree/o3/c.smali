.class public final Lo3/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final B1:Lo3/c;

.field public static final C1:Lo3/c;

.field public static final D1:Lo3/c;

.field public static final E1:Lo3/c;

.field public static final F1:Lo3/c;

.field public static final G1:Lo3/c;


# instance fields
.field public final A1:I

.field public final c:I

.field public final d:I

.field public final q:I

.field public final x:I

.field public final y:I

.field public final z1:Ls0/o;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lo3/c;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo3/c;-><init>(II)V

    sput-object v0, Lo3/c;->B1:Lo3/c;

    new-instance v0, Lo3/c;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lo3/c;-><init>(II)V

    sput-object v0, Lo3/c;->C1:Lo3/c;

    new-instance v0, Lo3/c;

    invoke-direct {v0, v1, v1}, Lo3/c;-><init>(II)V

    sput-object v0, Lo3/c;->D1:Lo3/c;

    new-instance v0, Lo3/c;

    const/4 v4, 0x5

    invoke-direct {v0, v4, v2}, Lo3/c;-><init>(II)V

    sput-object v0, Lo3/c;->E1:Lo3/c;

    new-instance v0, Lo3/c;

    invoke-direct {v0, v4, v3}, Lo3/c;-><init>(II)V

    sput-object v0, Lo3/c;->F1:Lo3/c;

    new-instance v0, Lo3/c;

    invoke-direct {v0, v4, v1}, Lo3/c;-><init>(II)V

    sput-object v0, Lo3/c;->G1:Lo3/c;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_25

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1d

    const/16 p1, 0x60

    iput p1, p0, Lo3/c;->c:I

    const/16 p1, 0x24

    iput p1, p0, Lo3/c;->d:I

    const/16 p1, 0x40

    iput p1, p0, Lo3/c;->q:I

    new-instance p1, Ls0/e0;

    invoke-direct {p1}, Ls0/e0;-><init>()V

    :goto_1a
    iput-object p1, p0, Lo3/c;->z1:Ls0/o;

    goto :goto_37

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No valid version. Please choose one of the following: 3, 5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    const/16 p1, 0x44

    iput p1, p0, Lo3/c;->c:I

    const/16 p1, 0x20

    iput p1, p0, Lo3/c;->d:I

    const/16 p1, 0x30

    iput p1, p0, Lo3/c;->q:I

    new-instance p1, Ls0/c0;

    invoke-direct {p1}, Ls0/c0;-><init>()V

    goto :goto_1a

    :goto_37
    iget p1, p0, Lo3/c;->c:I

    iget v0, p0, Lo3/c;->d:I

    add-int/2addr p1, v0

    iget v1, p0, Lo3/c;->q:I

    add-int/2addr p1, v1

    iput p1, p0, Lo3/c;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lo3/c;->y:I

    iput p2, p0, Lo3/c;->A1:I

    return-void
.end method
