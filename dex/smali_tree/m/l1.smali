.class public abstract Lm/l1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lm/n1;

.field public static final b:Lm/o1;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/n1;

    invoke-direct {v0}, Lm/x;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lm/n1;->q:I

    sput-object v0, Lm/l1;->a:Lm/n1;

    new-instance v0, Lm/o1;

    invoke-direct {v0}, Lm/y;-><init>()V

    iput v1, v0, Lm/o1;->x:I

    sput-object v0, Lm/l1;->b:Lm/o1;

    return-void
.end method

.method public static a(Lm/g;)Lm/n1;
    .registers 3

    iget v0, p0, Lm/g;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_8

    sget-object p0, Lm/l1;->a:Lm/n1;

    return-object p0

    :cond_8
    new-instance v0, Lm/n1;

    invoke-direct {v0, p0}, Lm/x;-><init>(Lm/g;)V

    const/4 p0, -0x1

    iput p0, v0, Lm/n1;->q:I

    return-object v0
.end method
