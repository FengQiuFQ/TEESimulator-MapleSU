.class public final Ld3/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final q:Ld3/a;

.field public static final x:Ld3/a;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ld3/a;

    const-string v1, "falcon-512"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ld3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld3/a;->q:Ld3/a;

    new-instance v0, Ld3/a;

    const-string v1, "falcon-1024"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ld3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ld3/a;->x:Ld3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_f

    const/16 v0, 0xa

    if-gt p2, v0, :cond_f

    iput-object p1, p0, Ld3/a;->c:Ljava/lang/String;

    iput p2, p0, Ld3/a;->d:I

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Log N degree should be between 1 and 10"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
