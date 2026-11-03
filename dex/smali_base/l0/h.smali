.class public final Ll0/h;
.super Lm/n;


# instance fields
.field public c:[Ll0/a;


# virtual methods
.method public final d()Lm/u;
    .registers 2

    new-instance v0, Lm/a1;

    iget-object p0, p0, Ll0/h;->c:[Ll0/a;

    invoke-direct {v0, p0}, Lm/a1;-><init>([Lm/f;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AuthorityInformationAccess: Oid("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ll0/h;->c:[Ll0/a;

    const/4 v1, 0x0

    aget-object p0, p0, v1

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
