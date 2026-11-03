.class public final Ld0/k;
.super Lm/n;


# instance fields
.field public c:Ll0/b;


# direct methods
.method public constructor <init>(Lm/q;Lm/n;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ll0/b;

    invoke-direct {v0, p1, p2}, Ll0/b;-><init>(Lm/q;Lm/f;)V

    iput-object v0, p0, Ld0/k;->c:Ll0/b;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ld0/k;->c:Ll0/b;

    invoke-virtual {p0}, Ll0/b;->d()Lm/u;

    move-result-object p0

    return-object p0
.end method
