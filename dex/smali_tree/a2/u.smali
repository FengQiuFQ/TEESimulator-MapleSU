.class public final La2/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field public final A1:Ljava/util/List;

.field public final B1:Ljava/util/Map;

.field public final C1:Z

.field public final D1:Ljava/util/Set;

.field public final c:Ljava/security/cert/PKIXParameters;

.field public final d:La2/q;

.field public final q:Ljava/util/Date;

.field public final x:Ljava/util/Date;

.field public final y:Ljava/util/List;

.field public final z1:Ljava/util/Map;


# direct methods
.method public constructor <init>(La2/t;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, La2/t;->a:Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, La2/u;->c:Ljava/security/cert/PKIXParameters;

    iget-object v0, p1, La2/t;->b:Ljava/util/Date;

    iput-object v0, p0, La2/u;->q:Ljava/util/Date;

    iget-object v0, p1, La2/t;->c:Ljava/util/Date;

    iput-object v0, p0, La2/u;->x:Ljava/util/Date;

    iget-object v0, p1, La2/t;->e:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La2/u;->y:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, La2/t;->f:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La2/u;->z1:Ljava/util/Map;

    iget-object v0, p1, La2/t;->g:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La2/u;->A1:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, La2/t;->h:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, La2/u;->B1:Ljava/util/Map;

    iget-object v0, p1, La2/t;->d:La2/q;

    iput-object v0, p0, La2/u;->d:La2/q;

    iget-boolean v0, p1, La2/t;->i:Z

    iput-boolean v0, p0, La2/u;->C1:Z

    iget-object p1, p1, La2/t;->j:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, La2/u;->D1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method
