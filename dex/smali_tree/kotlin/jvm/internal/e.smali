.class public final Lkotlin/jvm/internal/e;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lj/c;
.implements Lkotlin/jvm/internal/d;


# instance fields
.field public final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 24

    const-class v22, Lh/n;

    const-class v23, Lh/o;

    const-class v1, Lh/a;

    const-class v2, Lh/l;

    const-class v3, Lh/p;

    const-class v4, Lh/q;

    const-class v5, Lh/r;

    const-class v6, Lh/s;

    const-class v7, Lh/t;

    const-class v8, Lh/u;

    const-class v9, Lh/v;

    const-class v10, Lh/w;

    const-class v11, Lh/b;

    const-class v12, Lh/c;

    const-class v13, Lh/d;

    const-class v14, Lh/e;

    const-class v15, Lh/f;

    const-class v16, Lh/g;

    const-class v17, Lh/h;

    const-class v18, Lh/i;

    const-class v19, Lh/j;

    const-class v20, Lh/k;

    const-class v21, Lh/m;

    filled-new-array/range {v1 .. v23}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lb/j;->U0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lb/k;->V0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_62

    check-cast v3, Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, La/c;

    invoke-direct {v5, v3, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_44

    :cond_62
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    invoke-static {v1}, Lb/t;->h1(Ljava/util/ArrayList;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3

    const-string v0, "jClass"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/e;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/e;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lkotlin/jvm/internal/e;

    if-eqz v0, :cond_16

    invoke-static {p0}, Lq4/k;->d0(Lj/c;)Ljava/lang/Class;

    move-result-object p0

    check-cast p1, Lj/c;

    invoke-static {p1}, Lq4/k;->d0(Lj/c;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .registers 1

    invoke-static {p0}, Lq4/k;->d0(Lj/c;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lkotlin/jvm/internal/e;->c:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (Kotlin reflection is not available)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
