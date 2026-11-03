.class public final Lk2/z;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/v;


# instance fields
.field public volatile a:I

.field public b:I

.field public c:[Lk2/p;

.field public d:[Lk2/p;

.field public e:Lk2/p;

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lk2/z;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lk2/z;->b:I

    const/4 v1, 0x0

    iput-object v1, p0, Lk2/z;->c:[Lk2/p;

    iput-object v1, p0, Lk2/z;->d:[Lk2/p;

    iput-object v1, p0, Lk2/z;->e:Lk2/p;

    iput v0, p0, Lk2/z;->f:I

    return-void
.end method
