.class public final La2/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:La2/u;

.field public final b:Ljava/util/Date;

.field public final c:Ljava/security/cert/CertPath;

.field public final d:I

.field public final e:Ljava/security/cert/X509Certificate;

.field public final f:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(La2/u;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/o;->a:La2/u;

    iput-object p2, p0, La2/o;->b:Ljava/util/Date;

    iput-object p3, p0, La2/o;->c:Ljava/security/cert/CertPath;

    iput p4, p0, La2/o;->d:I

    iput-object p5, p0, La2/o;->e:Ljava/security/cert/X509Certificate;

    iput-object p6, p0, La2/o;->f:Ljava/security/PublicKey;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .registers 4

    new-instance v0, Ljava/util/Date;

    iget-object p0, p0, La2/o;->b:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
