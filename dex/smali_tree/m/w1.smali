.class public abstract Lm/w1;
.super Ljava/io/InputStream;


# instance fields
.field public final c:Ljava/io/InputStream;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lm/w1;->c:Ljava/io/InputStream;

    iput p2, p0, Lm/w1;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object p0, p0, Lm/w1;->c:Ljava/io/InputStream;

    instance-of v0, p0, Lm/t1;

    if-eqz v0, :cond_e

    check-cast p0, Lm/t1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm/t1;->z1:Z

    invoke-virtual {p0}, Lm/t1;->b()Z

    :cond_e
    return-void
.end method
