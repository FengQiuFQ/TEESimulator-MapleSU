.class public final Ld2/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field public final c:Ld2/n;

.field public final d:[B


# direct methods
.method public constructor <init>(Ld2/n;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/p;->c:Ld2/n;

    invoke-static {p2}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/p;->d:[B

    return-void
.end method
