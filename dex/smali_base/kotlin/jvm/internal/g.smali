.class public abstract Lkotlin/jvm/internal/g;
.super Lkotlin/jvm/internal/c;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lj/e;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lkotlin/jvm/internal/c;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x4

    iput p1, p0, Lkotlin/jvm/internal/g;->arity:I

    return-void
.end method


# virtual methods
.method public computeReflected()Lj/b;
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lkotlin/jvm/internal/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    check-cast p1, Lkotlin/jvm/internal/g;

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/c;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/c;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lkotlin/jvm/internal/c;->getBoundReceiver()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getOwner()Lj/d;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/jvm/internal/c;->getOwner()Lj/d;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    return v0

    :cond_44
    return v2

    :cond_45
    instance-of v0, p1, Lj/e;

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->compute()Lj/b;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_52
    return v2
.end method

.method public getArity()I
    .registers 1

    iget p0, p0, Lkotlin/jvm/internal/g;->arity:I

    return p0
.end method

.method public bridge synthetic getReflected()Lj/b;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/g;->getReflected()Lj/e;

    move-result-object p0

    return-object p0
.end method

.method public getReflected()Lj/e;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->compute()Lj/b;

    move-result-object v0

    if-eq v0, p0, :cond_9

    check-cast v0, Lj/e;

    return-object v0

    :cond_9
    new-instance p0, Lg/a;

    const-string v0, "Kotlin reflection implementation is not found at runtime. Make sure you have kotlin-reflect.jar in the classpath"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getOwner()Lj/d;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_12

    :cond_8
    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getOwner()Lj/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    :goto_12
    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public isExternal()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/g;->getReflected()Lj/e;

    move-result-object p0

    invoke-interface {p0}, Lj/e;->isExternal()Z

    move-result p0

    return p0
.end method

.method public isInfix()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/g;->getReflected()Lj/e;

    move-result-object p0

    invoke-interface {p0}, Lj/e;->isInfix()Z

    move-result p0

    return p0
.end method

.method public isInline()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/g;->getReflected()Lj/e;

    move-result-object p0

    invoke-interface {p0}, Lj/e;->isInline()Z

    move-result p0

    return p0
.end method

.method public isOperator()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/g;->getReflected()Lj/e;

    move-result-object p0

    invoke-interface {p0}, Lj/e;->isOperator()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/g;->getReflected()Lj/e;

    move-result-object p0

    invoke-interface {p0}, Lj/e;->isSuspend()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->compute()Lj/b;

    move-result-object v0

    if-eq v0, p0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v0, "<init>"

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "constructor (Kotlin reflection is not available)"

    return-object p0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "function "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
