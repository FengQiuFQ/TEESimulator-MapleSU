.class public final Lv3/h;
.super Lv3/n;


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Lv3/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lv3/n;-><init>(Lv3/n;)V

    iget v0, p1, Lv3/g;->e:I

    iput v0, p0, Lv3/h;->e:I

    iget p1, p1, Lv3/g;->f:I

    iput p1, p0, Lv3/h;->f:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 4

    invoke-super {p0}, Lv3/n;->a()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iget v1, p0, Lv3/h;->e:I

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iget p0, p0, Lv3/h;->f:I

    const/16 v1, 0x18

    invoke-static {v0, p0, v1}, Lm4/d;->w([BII)V

    return-object v0
.end method
