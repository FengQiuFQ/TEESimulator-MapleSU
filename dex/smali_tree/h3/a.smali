.class public final Lh3/a;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lh3/a;

.field public static final c:Lh3/a;

.field public static final d:Lh3/a;

.field public static final e:Lh3/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh3/a;

    const-string v1, "MAYO_1"

    invoke-direct {v0, v1}, Lh3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh3/a;->b:Lh3/a;

    new-instance v0, Lh3/a;

    const-string v1, "MAYO_2"

    invoke-direct {v0, v1}, Lh3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh3/a;->c:Lh3/a;

    new-instance v0, Lh3/a;

    const-string v1, "MAYO_3"

    invoke-direct {v0, v1}, Lh3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh3/a;->d:Lh3/a;

    new-instance v0, Lh3/a;

    const-string v1, "MAYO_5"

    invoke-direct {v0, v1}, Lh3/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh3/a;->e:Lh3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3/a;->a:Ljava/lang/String;

    return-void
.end method
