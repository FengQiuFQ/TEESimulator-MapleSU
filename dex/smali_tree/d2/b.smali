.class public final Ld2/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final d:Ld2/b;


# instance fields
.field public final c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ld2/b;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ld2/b;-><init>([B)V

    sput-object v0, Ld2/b;->d:Ld2/b;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/b;->c:[B

    return-void
.end method
