.class public final Ly2/d;
.super Lm/n;


# instance fields
.field public c:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly2/d;->c:[B

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    new-instance v1, Lm/x0;

    iget-object p0, p0, Ly2/d;->c:[B

    invoke-direct {v1, p0}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
