.class public final Ld2/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field public final c:Lm/q;

.field public final d:Lm/q;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Lr/b;->f(Ljava/lang/String;)Lm/q;

    move-result-object v0

    const-string v1, "12-512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_f

    sget-object p1, Lz1/a;->b:Lm/q;

    goto :goto_1c

    :cond_f
    const-string v1, "12-256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1a

    sget-object p1, Lz1/a;->a:Lm/q;

    goto :goto_1c

    :cond_1a
    sget-object p1, Lr/a;->o:Lm/q;

    :goto_1c
    invoke-direct {p0, v0, p1}, Ld2/g;-><init>(Lm/q;Lm/q;)V

    return-void
.end method

.method public constructor <init>(Lm/q;Lm/q;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/g;->c:Lm/q;

    iput-object p2, p0, Ld2/g;->d:Lm/q;

    return-void
.end method
