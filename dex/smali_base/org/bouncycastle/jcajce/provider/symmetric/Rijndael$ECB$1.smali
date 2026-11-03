.class Lorg/bouncycastle/jcajce/provider/symmetric/Rijndael$ECB$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/bouncycastle/crypto/d;
    .registers 3

    new-instance p0, Lv0/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    iput v0, p0, Lv0/a0;->g:I

    const-wide v0, 0xffffffffL

    iput-wide v0, p0, Lv0/a0;->h:J

    sget-object v0, Lv0/a0;->x:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lv0/a0;->q:[B

    sget-object v0, Lv0/a0;->y:[[B

    aget-object v0, v0, v1

    iput-object v0, p0, Lv0/a0;->r:[B

    const/16 v0, 0x80

    iput v0, p0, Lv0/a0;->j:I

    return-object p0
.end method
