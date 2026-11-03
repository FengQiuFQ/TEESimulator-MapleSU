.class public final Lq2/c;
.super Ljava/lang/Object;


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:[I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/c;->a:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/c;->b:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lq2/c;->c:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lq2/c;->d:[I

    return-void
.end method
