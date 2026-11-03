.class public abstract Lkotlin/jvm/internal/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lj/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field protected final receiver:Ljava/lang/Object;

.field private transient reflected:Lj/b;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lkotlin/jvm/internal/b;->c:Lkotlin/jvm/internal/b;

    sput-object v0, Lkotlin/jvm/internal/c;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/c;->receiver:Ljava/lang/Object;

    const-class p1, Lorg/matrix/TEESimulator/interception/keystore/KeystoreInterceptor;

    iput-object p1, p0, Lkotlin/jvm/internal/c;->owner:Ljava/lang/Class;

    iput-object p2, p0, Lkotlin/jvm/internal/c;->name:Ljava/lang/String;

    iput-object p3, p0, Lkotlin/jvm/internal/c;->signature:Ljava/lang/String;

    iput-boolean p4, p0, Lkotlin/jvm/internal/c;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lj/b;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0, p1}, Lj/b;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compute()Lj/b;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->reflected:Lj/b;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->computeReflected()Lj/b;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/c;->reflected:Lj/b;

    :cond_a
    return-object v0
.end method

.method public abstract computeReflected()Lj/b;
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/a;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/c;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/c;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lj/d;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/c;->owner:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-boolean p0, p0, Lkotlin/jvm/internal/c;->isTopLevel:Z

    if-eqz p0, :cond_15

    sget-object p0, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/jvm/internal/j;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/j;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_15
    sget-object p0, Lkotlin/jvm/internal/k;->a:Lkotlin/jvm/internal/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/jvm/internal/e;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/e;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->getParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getReflected()Lj/b;
.end method

.method public getReturnType()Lj/f;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->getReturnType()Lj/f;

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/c;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Lj/g;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->getVisibility()Lj/g;

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAbstract()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->isAbstract()Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->isFinal()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/c;->getReflected()Lj/b;

    move-result-object p0

    invoke-interface {p0}, Lj/b;->isOpen()Z

    move-result p0

    return p0
.end method
