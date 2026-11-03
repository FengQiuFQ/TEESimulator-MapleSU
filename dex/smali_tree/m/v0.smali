.class public final Lm/v0;
.super Lm/m;


# static fields
.field public static final d:Lm/v0;

.field public static final q:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lm/v0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm/v0;->d:Lm/v0;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lm/v0;->q:[B

    return-void
.end method


# virtual methods
.method public final i(Lb1/a;Z)V
    .registers 4

    const/4 p0, 0x5

    sget-object v0, Lm/v0;->q:[B

    invoke-virtual {p1, p0, p2, v0}, Lb1/a;->F(IZ[B)V

    return-void
.end method

.method public final j()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Z)I
    .registers 2

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lb1/a;->s(IZ)I

    move-result p0

    return p0
.end method
