.class public final La2/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field public final c:La2/u;

.field public final d:Ljava/util/Set;

.field public final q:I


# direct methods
.method public constructor <init>(La2/r;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, La2/r;->h:Ljava/lang/Object;

    check-cast v0, La2/u;

    iput-object v0, p0, La2/s;->c:La2/u;

    iget-object v0, p1, La2/r;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, La2/s;->d:Ljava/util/Set;

    iget p1, p1, La2/r;->g:I

    iput p1, p0, La2/s;->q:I

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method
