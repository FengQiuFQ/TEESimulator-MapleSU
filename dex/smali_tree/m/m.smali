.class public abstract Lm/m;
.super Lm/u;


# static fields
.field public static final c:Lm/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lm/a;

    const-class v1, Lm/m;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lm/a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm/m;->c:Lm/a;

    return-void
.end method


# virtual methods
.method public final h(Lm/u;)Z
    .registers 2

    instance-of p0, p1, Lm/m;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    const-string p0, "NULL"

    return-object p0
.end method
