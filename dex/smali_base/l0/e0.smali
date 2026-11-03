.class public final Ll0/e0;
.super Lm/n;


# static fields
.field public static final d:Ll0/e0;

.field public static final q:Ll0/e0;


# instance fields
.field public final c:Lm/q;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.5.5.7.3"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v1, Ll0/e0;

    sget-object v2, Ll0/v;->N1:Lm/q;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    invoke-direct {v1, v2}, Ll0/e0;-><init>(Lm/q;)V

    sput-object v1, Ll0/e0;->d:Ll0/e0;

    const-string v1, "3"

    const-string v2, "4"

    const-string v3, "1"

    const-string v4, "2"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "5"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    new-instance v1, Ll0/e0;

    const-string v2, "9"

    invoke-virtual {v0, v2}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    move-result-object v2

    invoke-direct {v1, v2}, Ll0/e0;-><init>(Lm/q;)V

    sput-object v1, Ll0/e0;->q:Ll0/e0;

    const-string v1, "12"

    const-string v2, "13"

    const-string v3, "10"

    const-string v4, "11"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "16"

    const-string v2, "17"

    const-string v3, "14"

    const-string v4, "15"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "27"

    const-string v2, "28"

    const-string v3, "18"

    const-string v4, "19"

    invoke-static {v0, v3, v4, v1, v2}, Lb/b;->z(Lm/q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "32"

    invoke-virtual {v0, v1}, Lm/q;->r(Ljava/lang/String;)Lm/q;

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.4.1.311.20.2.2"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.1.1.1.22"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lm/q;

    const-string v1, "1.3.6.1.4.1.311.10.3.3"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lm/q;

    const-string v1, "2.16.840.1.113730.4.1"

    invoke-direct {v0, v1}, Lm/q;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lm/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll0/e0;->c:Lm/q;

    return-void
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/e0;->c:Lm/q;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ll0/e0;->c:Lm/q;

    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
