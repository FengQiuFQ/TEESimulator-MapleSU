.class public final Ls0/i;
.super Ls0/g;


# static fields
.field public static final s:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Ls0/i;->s:[B

    return-void

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Ls0/i;->s:[B

    invoke-direct {p0, v0}, Ls0/g;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ls0/i;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ls0/i;->s:[B

    invoke-direct {p0, v0}, Ls0/g;-><init>([B)V

    invoke-virtual {p0, p1}, Ls0/g;->c(Lm4/e;)V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/i;

    invoke-direct {v0, p0}, Ls0/i;-><init>(Ls0/i;)V

    return-object v0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "GOST3411-2012-512"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method
