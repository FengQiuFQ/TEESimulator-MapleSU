.class public final Ll0/a;
.super Lm/n;


# static fields
.field public static final q:Lm/q;


# instance fields
.field public c:Lm/q;

.field public d:Ll0/y;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.5.5.7.48.2"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.5.5.7.48.1"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Ll0/a;->q:Lm/q;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 3

    new-instance v0, Lm/a1;

    iget-object v1, p0, Ll0/a;->c:Lm/q;

    iget-object p0, p0, Ll0/a;->d:Ll0/y;

    invoke-direct {v0, v1, p0}, Lm/a1;-><init>(Lm/f;Lm/f;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessDescription: Oid("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ll0/a;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
