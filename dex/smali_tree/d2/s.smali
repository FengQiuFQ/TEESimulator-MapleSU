.class public final Ld2/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public final c:Ld2/q;

.field public final d:[B


# direct methods
.method public constructor <init>(Ld2/q;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/s;->c:Ld2/q;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/s;->d:[B

    return-void
.end method
