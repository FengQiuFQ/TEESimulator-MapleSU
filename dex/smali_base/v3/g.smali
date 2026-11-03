.class public final Lv3/g;
.super Lv3/n;


# instance fields
.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lv3/n;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lv3/g;->e:I

    iput v0, p0, Lv3/g;->f:I

    return-void
.end method
