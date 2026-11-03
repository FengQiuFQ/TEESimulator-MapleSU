.class public abstract Lv3/n;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public b:J

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/n;->c:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lv3/n;->b:J

    iput v0, p0, Lv3/n;->d:I

    iput p1, p0, Lv3/n;->a:I

    return-void
.end method

.method public constructor <init>(Lv3/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lv3/n;->c:I

    iput v0, p0, Lv3/n;->a:I

    iget-wide v0, p1, Lv3/n;->b:J

    iput-wide v0, p0, Lv3/n;->b:J

    iget v0, p1, Lv3/n;->a:I

    iput v0, p0, Lv3/n;->c:I

    iget p1, p1, Lv3/n;->d:I

    iput p1, p0, Lv3/n;->d:I

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 5

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lv3/n;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iget-wide v1, p0, Lv3/n;->b:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2, v0}, Lm4/d;->E(IJ[B)V

    iget v1, p0, Lv3/n;->c:I

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iget p0, p0, Lv3/n;->d:I

    const/16 v1, 0x1c

    invoke-static {v0, p0, v1}, Lm4/d;->w([BII)V

    return-object v0
.end method
