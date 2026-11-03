.class public final La1/n;
.super Lorg/bouncycastle/crypto/n0;


# static fields
.field public static final m:[B


# instance fields
.field public final h:La1/g;

.field public i:Le1/s0;

.field public j:Le1/o0;

.field public k:J

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, La1/n;->m:[B

    return-void

    :array_a
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/d;)V
    .registers 4

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/n0;-><init>(Lorg/bouncycastle/crypto/d;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La1/n;->k:J

    new-instance v0, La1/g;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, La1/g;-><init>(Lorg/bouncycastle/crypto/d;I)V

    iput-object v0, p0, La1/n;->h:La1/g;

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 12

    iget-object v0, p0, La1/n;->h:La1/g;

    iget v4, v0, La1/g;->l:I

    move-object v1, p0

    move v3, p1

    move v6, p2

    move-object v2, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/n0;->processBytes([BII[BI)I

    iget p0, v0, La1/g;->l:I

    return p0
.end method

.method public final c()I
    .registers 1

    iget-object p0, p0, La1/n;->h:La1/g;

    iget p0, p0, La1/g;->l:I

    return p0
.end method

.method public final d(B)B
    .registers 10

    iget-wide v0, p0, La1/n;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v5, p0, La1/n;->h:La1/g;

    if-lez v4, :cond_4b

    const-wide/16 v6, 0x3ff

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-nez v0, :cond_4b

    iget-object v0, v5, Lorg/bouncycastle/crypto/n0;->g:Lorg/bouncycastle/crypto/d;

    iget-object v1, p0, La1/n;->j:Le1/o0;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    const/16 v1, 0x20

    new-array v3, v1, [B

    invoke-interface {v0}, Lorg/bouncycastle/crypto/d;->c()I

    move-result v4

    move v6, v2

    :goto_22
    if-ge v6, v1, :cond_2b

    sget-object v7, La1/n;->m:[B

    invoke-interface {v0, v6, v6, v7, v3}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    add-int/2addr v6, v4

    goto :goto_22

    :cond_2b
    new-instance v4, Le1/o0;

    invoke-direct {v4, v3, v2, v1}, Le1/o0;-><init>([BII)V

    iput-object v4, p0, La1/n;->j:Le1/o0;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v4}, Lorg/bouncycastle/crypto/d;->init(ZLorg/bouncycastle/crypto/g;)V

    iget-object v1, v5, La1/g;->i:[B

    invoke-static {v1}, Lm4/d;->e([B)[B

    move-result-object v1

    invoke-interface {v0, v2, v2, v1, v1}, Lorg/bouncycastle/crypto/d;->b(II[B[B)I

    iget-boolean v0, p0, La1/n;->l:Z

    new-instance v2, Le1/s0;

    iget-object v3, p0, La1/n;->j:Le1/o0;

    invoke-direct {v2, v3, v1}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    invoke-virtual {v5, v0, v2}, La1/g;->init(ZLorg/bouncycastle/crypto/g;)V

    :cond_4b
    iget-wide v0, p0, La1/n;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La1/n;->k:J

    invoke-virtual {v5, p1}, La1/g;->d(B)B

    move-result p0

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .registers 5

    iget-object p0, p0, La1/n;->h:La1/g;

    invoke-virtual {p0}, La1/g;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/G"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La1/n;->k:J

    iget-object v0, p0, La1/n;->h:La1/g;

    invoke-virtual {v0, p1, p2}, La1/g;->init(ZLorg/bouncycastle/crypto/g;)V

    iput-boolean p1, p0, La1/n;->l:Z

    instance-of p1, p2, Le1/s0;

    if-eqz p1, :cond_19

    check-cast p2, Le1/s0;

    iget-object p1, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    iget-object p2, p2, Le1/s0;->c:[B

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    instance-of v1, p2, Le1/t0;

    if-eqz v1, :cond_22

    check-cast p2, Le1/t0;

    iget-object p2, p2, Le1/t0;->d:Lorg/bouncycastle/crypto/g;

    :cond_22
    instance-of v1, p2, Le1/u0;

    if-eqz v1, :cond_2a

    check-cast p2, Le1/u0;

    iget-object p2, p2, Le1/u0;->c:Lorg/bouncycastle/crypto/g;

    :cond_2a
    check-cast p2, Le1/o0;

    iput-object p2, p0, La1/n;->j:Le1/o0;

    if-nez p2, :cond_3a

    iget-object p2, p0, La1/n;->i:Le1/s0;

    if-eqz p2, :cond_3a

    iget-object p2, p2, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast p2, Le1/o0;

    iput-object p2, p0, La1/n;->j:Le1/o0;

    :cond_3a
    if-nez p1, :cond_43

    iget-object p1, p0, La1/n;->i:Le1/s0;

    if-eqz p1, :cond_43

    iget-object p1, p1, Le1/s0;->c:[B

    goto :goto_49

    :cond_43
    iget-object p1, v0, La1/g;->i:[B

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    :goto_49
    new-instance p2, Le1/s0;

    iget-object v0, p0, La1/n;->j:Le1/o0;

    invoke-direct {p2, v0, p1}, Le1/s0;-><init>(Lorg/bouncycastle/crypto/g;[B)V

    iput-object p2, p0, La1/n;->i:Le1/s0;

    return-void
.end method

.method public final reset()V
    .registers 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La1/n;->k:J

    iget-object v0, p0, La1/n;->i:Le1/s0;

    iget-object v1, p0, La1/n;->h:La1/g;

    if-eqz v0, :cond_16

    iget-object v2, v0, Le1/s0;->d:Lorg/bouncycastle/crypto/g;

    check-cast v2, Le1/o0;

    iput-object v2, p0, La1/n;->j:Le1/o0;

    iget-boolean p0, p0, La1/n;->l:Z

    invoke-virtual {v1, p0, v0}, La1/g;->init(ZLorg/bouncycastle/crypto/g;)V

    return-void

    :cond_16
    invoke-virtual {v1}, La1/g;->reset()V

    return-void
.end method
