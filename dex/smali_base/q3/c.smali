.class public final Lq3/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(IJ[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lq3/c;->a:J

    iput p1, p0, Lq3/c;->b:I

    iput-object p4, p0, Lq3/c;->c:[B

    return-void
.end method
