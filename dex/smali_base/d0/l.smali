.class public final Ld0/l;
.super Lm/n;


# static fields
.field public static final x:Ljava/math/BigInteger;


# instance fields
.field public c:Ll0/r;

.field public d:[B

.field public q:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Ld0/l;->x:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 4

    new-instance v0, Lm/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lm/g;-><init>(I)V

    iget-object v1, p0, Ld0/l;->c:Ll0/r;

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    new-instance v1, Lm/x0;

    iget-object v2, p0, Ld0/l;->d:[B

    invoke-direct {v1, v2}, Lm/r;-><init>([B)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    iget-object p0, p0, Ld0/l;->q:Ljava/math/BigInteger;

    sget-object v1, Ld0/l;->x:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Lm/l;

    invoke-direct {v1, p0}, Lm/l;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lm/g;->a(Lm/f;)V

    :cond_27
    new-instance p0, Lm/a1;

    invoke-direct {p0, v0}, Lm/x;-><init>(Lm/g;)V

    const/4 v0, -0x1

    iput v0, p0, Lm/a1;->q:I

    return-object p0
.end method
