.class public final Lv3/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final c:I

.field public final d:[B


# direct methods
.method public constructor <init>(I[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lv3/s;->c:I

    iput-object p2, p0, Lv3/s;->d:[B

    return-void
.end method
