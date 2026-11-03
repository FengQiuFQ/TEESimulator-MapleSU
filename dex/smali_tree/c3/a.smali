.class public final Lc3/a;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lc3/a;

.field public static final d:Lc3/a;

.field public static final e:Lc3/a;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lc3/a;

    const-string v1, "dilithium2"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lc3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc3/a;->c:Lc3/a;

    new-instance v0, Lc3/a;

    const-string v1, "dilithium3"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lc3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc3/a;->d:Lc3/a;

    new-instance v0, Lc3/a;

    const-string v1, "dilithium5"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lc3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc3/a;->e:Lc3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3/a;->b:Ljava/lang/String;

    iput p2, p0, Lc3/a;->a:I

    return-void
.end method
