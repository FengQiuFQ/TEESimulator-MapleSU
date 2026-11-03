.class public final Lv3/p;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lv3/o;

.field public b:J

.field public c:J

.field public d:[B

.field public e:[B

.field public f:[B

.field public g:[B

.field public h:Lv3/b;


# direct methods
.method public constructor <init>(Lv3/o;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lv3/p;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lv3/p;->c:J

    const/4 v0, 0x0

    iput-object v0, p0, Lv3/p;->d:[B

    iput-object v0, p0, Lv3/p;->e:[B

    iput-object v0, p0, Lv3/p;->f:[B

    iput-object v0, p0, Lv3/p;->g:[B

    iput-object v0, p0, Lv3/p;->h:Lv3/b;

    iput-object p1, p0, Lv3/p;->a:Lv3/o;

    return-void
.end method
