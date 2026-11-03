.class public final Li3/e;
.super Ljava/lang/Object;


# static fields
.field public static final d:Li3/e;

.field public static final e:Li3/e;

.field public static final f:Li3/e;

.field public static final g:Li3/e;

.field public static final h:Li3/e;

.field public static final i:Li3/e;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Li3/e;

    const-string v1, "ml-dsa-44"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Li3/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li3/e;->d:Li3/e;

    new-instance v0, Li3/e;

    const-string v1, "ml-dsa-65"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Li3/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li3/e;->e:Li3/e;

    new-instance v0, Li3/e;

    const-string v1, "ml-dsa-87"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v3}, Li3/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li3/e;->f:Li3/e;

    new-instance v0, Li3/e;

    const-string v1, "ml-dsa-44-with-sha512"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Li3/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li3/e;->g:Li3/e;

    new-instance v0, Li3/e;

    const-string v1, "ml-dsa-65-with-sha512"

    invoke-direct {v0, v1, v4, v3}, Li3/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li3/e;->h:Li3/e;

    new-instance v0, Li3/e;

    const-string v1, "ml-dsa-87-with-sha512"

    invoke-direct {v0, v1, v5, v3}, Li3/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Li3/e;->i:Li3/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/e;->b:Ljava/lang/String;

    iput p2, p0, Li3/e;->a:I

    iput p3, p0, Li3/e;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/SecureRandom;)Li3/b;
    .registers 3

    new-instance v0, Li3/b;

    iget p0, p0, Li3/e;->a:I

    invoke-direct {v0, p0, p1}, Li3/b;-><init>(ILjava/security/SecureRandom;)V

    return-object v0
.end method
