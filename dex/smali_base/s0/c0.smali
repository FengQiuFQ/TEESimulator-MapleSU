.class public final Ls0/c0;
.super Ls0/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    sget-object v0, Lorg/bouncycastle/crypto/j;->d:Lorg/bouncycastle/crypto/j;

    invoke-direct {p0, v0}, Ls0/c0;-><init>(Lorg/bouncycastle/crypto/j;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/j;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/o;-><init>(Lorg/bouncycastle/crypto/j;)V

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    invoke-virtual {p0}, Ls0/c0;->reset()V

    return-void
.end method

.method public constructor <init>(Ls0/c0;)V
    .registers 2

    invoke-direct {p0, p1}, Ls0/o;-><init>(Ls0/o;)V

    invoke-static {p0}, Ls0/o0;->a(Lorg/bouncycastle/crypto/v;)Lr0/a;

    invoke-static {}, Lorg/bouncycastle/crypto/o;->a()V

    return-void
.end method


# virtual methods
.method public final a()Lm4/e;
    .registers 2

    new-instance v0, Ls0/c0;

    invoke-direct {v0, p0}, Ls0/c0;-><init>(Ls0/c0;)V

    return-object v0
.end method

.method public final c(Lm4/e;)V
    .registers 2

    check-cast p1, Ls0/c0;

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

    add-int/lit8 p2, p2, 0x28

    invoke-static {p2, v0, v1, p1}, Lm4/d;->E(IJ[B)V

    invoke-virtual {p0}, Ls0/c0;->reset()V

    const/16 p0, 0x30

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 1

    const-string p0, "SHA-384"

    return-object p0
.end method

.method public final getDigestSize()I
    .registers 1

    const/16 p0, 0x30

    return p0
.end method

.method public final reset()V
    .registers 3

    invoke-super {p0}, Ls0/o;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Ls0/o;->l:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Ls0/o;->m:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Ls0/o;->n:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Ls0/o;->o:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Ls0/o;->p:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Ls0/o;->q:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Ls0/o;->r:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Ls0/o;->s:J

    return-void
.end method
