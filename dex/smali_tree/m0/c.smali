.class public final Lm0/c;
.super Lm/n;


# instance fields
.field public c:Lm/b;

.field public d:Lm/l;


# direct methods
.method public constructor <init>([BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_16

    new-instance v0, Lm/p0;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lm/b;-><init>([BI)V

    iput-object v0, p0, Lm0/c;->c:Lm/b;

    new-instance p1, Lm/l;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lm/l;-><init>(J)V

    iput-object p1, p0, Lm0/c;->d:Lm/l;

    return-void

    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'seed\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Lm0/c;->c:Lm/b;

    iget-object p0, p0, Lm0/c;->d:Lm/l;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method
