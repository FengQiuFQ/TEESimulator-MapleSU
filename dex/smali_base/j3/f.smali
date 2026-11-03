.class public final Lj3/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final q:Lj3/f;

.field public static final x:Lj3/f;

.field public static final y:Lj3/f;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lj3/f;

    const-string v1, "ML-KEM-512"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lj3/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3/f;->q:Lj3/f;

    new-instance v0, Lj3/f;

    const-string v1, "ML-KEM-768"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lj3/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3/f;->x:Lj3/f;

    new-instance v0, Lj3/f;

    const-string v1, "ML-KEM-1024"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lj3/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj3/f;->y:Lj3/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/f;->c:Ljava/lang/String;

    iput p2, p0, Lj3/f;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lj3/a;
    .registers 2

    new-instance v0, Lj3/a;

    iget p0, p0, Lj3/f;->d:I

    invoke-direct {v0, p0}, Lj3/a;-><init>(I)V

    return-object v0
.end method
