.class public final Ls0/h;
.super Ls0/g;


# static fields
.field public static final s:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Ls0/h;->s:[B

    return-void

    :array_a
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Ls0/h;->s:[B

    invoke-direct {p0, v0}, Ls0/g;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ls0/h;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ls0/h;->s:[B

    invoke-direct {p0, v0}, Ls0/g;-><init>([B)V

    invoke-virtual {p0, p1}, Ls0/g;->c(Lm4/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/h;

    invoke-direct {v0, p0}, Ls0/h;-><init>(Ls0/h;)V

    return-object v0
.end method

.method public final doFinal([BI)I
    .registers 5

    const/16 v0, 0x40

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-super {p0, v0, v1}, Ls0/g;->doFinal([BI)I

    const/16 p0, 0x20

    invoke-static {v0, p0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3411-2012-256"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x20

    return p0
.end method
