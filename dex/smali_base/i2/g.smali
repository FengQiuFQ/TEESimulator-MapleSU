.class public final Li2/g;
.super Li2/a;


# instance fields
.field public final d:Lk2/p;


# direct methods
.method public constructor <init>(Lk2/p;Li2/e;)V
    .registers 3

    invoke-direct {p0, p2}, Li2/a;-><init>(Li2/e;)V

    iget-object p2, p1, Lk2/p;->a:Lk2/h;

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lk2/p;->p()Lk2/p;

    move-result-object p1

    iput-object p1, p0, Li2/g;->d:Lk2/p;

    return-void

    :cond_e
    iput-object p1, p0, Li2/g;->d:Lk2/p;

    return-void
.end method
