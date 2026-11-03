.class public final Ls0/e0;
.super Ls0/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/e0;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/o;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/e0;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/e0;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/o;-><init>(Ls0/o;)V

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/e0;

    invoke-direct {v0, p0}, Ls0/e0;-><init>(Ls0/e0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/e0;

    invoke-virtual {p0, p1}, Ls0/o;->h(Ls0/o;)V

    return-void
.end method

.method public final doFinal([BI)I
    .registers 6

    invoke-virtual {p0}, Ls0/o;->i()V

    iget-wide v0, p0, Ls0/o;->l:J

    invoke-static {p2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->m:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->n:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->o:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->p:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->q:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->r:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    iget-wide v0, p0, Ls0/o;->s:J

    add-int/lit8 p2, p2, 0x38

    invoke-static {p2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    invoke-virtual {p0}, Ls0/e0;->reset()V

    const/16 p0, 0x40

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "SHA-512"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x40

    return p0
.end method

.method public final reset()V
    .registers 3

    invoke-super {p0}, Ls0/o;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Ls0/o;->l:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Ls0/o;->m:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Ls0/o;->n:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Ls0/o;->o:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Ls0/o;->p:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Ls0/o;->q:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Ls0/o;->r:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Ls0/o;->s:J

    return-void
.end method
