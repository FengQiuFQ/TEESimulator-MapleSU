.class public final Lb0/h;
.super Lm/n;

# interfaces
.implements Lm/e;


# instance fields
.field public final c:Lm/n;


# direct methods
.method public constructor <init>(Lj0/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/h;->c:Lm/n;

    return-void
.end method

.method public constructor <init>(Lm/r;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/h;->c:Lm/n;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    iget-object p0, p0, Lb0/h;->c:Lm/n;

    instance-of v0, p0, Lm/r;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    new-instance v0, Lm/d1;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p0}, Lm/a0;-><init>(ZILm/f;)V

    return-object v0

    :cond_e
    new-instance v0, Lm/d1;

    invoke-direct {v0, v1, v1, p0}, Lm/a0;-><init>(ZILm/f;)V

    return-object v0
.end method
