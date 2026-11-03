.class public final Lv3/k;
.super Lv3/n;


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lv3/i;)V
    .registers 3

    invoke-direct {p0, p1}, Lv3/n;-><init>(Lv3/n;)V

    iget v0, p1, Lv3/i;->e:I

    iput v0, p0, Lv3/k;->e:I

    iget v0, p1, Lv3/i;->f:I

    iput v0, p0, Lv3/k;->f:I

    iget p1, p1, Lv3/i;->g:I

    iput p1, p0, Lv3/k;->g:I

    return-void
.end method


# virtual methods
.method public final a()[B
    .registers 4

    invoke-super {p0}, Lv3/n;->a()[B

    move-result-object v0

    iget v1, p0, Lv3/k;->e:I

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iget v1, p0, Lv3/k;->f:I

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, Lm4/d;->w([BII)V

    iget p0, p0, Lv3/k;->g:I

    const/16 v1, 0x18

    invoke-static {v0, p0, v1}, Lm4/d;->w([BII)V

    return-object v0
.end method
