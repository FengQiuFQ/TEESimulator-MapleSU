.class public final Lv3/t;
.super Ljava/lang/Object;


# static fields
.field public static final h:Ljava/util/Map;


# instance fields
.field public final a:Lv3/e;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Lv3/m;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    sget-object v3, Lz/b;->a:Lm/q;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    const/16 v5, 0x10

    invoke-direct {v2, v5, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    const/16 v6, 0x14

    invoke-direct {v2, v6, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    sget-object v3, Lz/b;->c:Lm/q;

    invoke-direct {v2, v4, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    invoke-direct {v2, v5, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    invoke-direct {v2, v6, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    sget-object v3, Lz/b;->k:Lm/q;

    invoke-direct {v2, v4, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    invoke-direct {v2, v5, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    invoke-direct {v2, v6, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    sget-object v3, Lz/b;->l:Lm/q;

    invoke-direct {v2, v4, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    invoke-direct {v2, v5, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lv3/t;

    invoke-direct {v2, v6, v3}, Lv3/t;-><init>(ILm/q;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lv3/t;->h:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILm/q;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_60

    if-eqz p2, :cond_58

    iput p1, p0, Lv3/t;->b:I

    move v1, v0

    :goto_b
    iget v2, p0, Lv3/t;->b:I

    if-gt v1, v2, :cond_50

    sub-int/2addr v2, v1

    rem-int/2addr v2, v0

    if-nez v2, :cond_4d

    iput v1, p0, Lv3/t;->c:I

    sget-object v0, Lv3/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_41

    iput-object v0, p0, Lv3/t;->e:Ljava/lang/String;

    new-instance v1, Lv3/m;

    invoke-direct {v1, p2}, Lv3/m;-><init>(Lm/q;)V

    iput-object v1, p0, Lv3/t;->g:Lv3/m;

    iget p2, v1, Lv3/m;->a:I

    iput p2, p0, Lv3/t;->f:I

    iget v2, v1, Lv3/m;->b:I

    iput v2, p0, Lv3/t;->d:I

    sget-object v3, Lv3/e;->c:Ljava/util/Map;

    iget v1, v1, Lv3/m;->c:I

    invoke-static {v0, p2, v2, v1, p1}, Lv3/e;->a(Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv3/e;

    iput-object p1, p0, Lv3/t;->a:Lv3/e;

    return-void

    :cond_41
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unrecognized digest oid: "

    invoke-static {p1, p2}, Lb/b;->j(Ljava/lang/String;Lm/q;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_50
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "should never happen..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_58
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height must be >= 2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/v;)V
    .registers 3

    invoke-interface {p2}, Lorg/bouncycastle/crypto/v;->getAlgorithmName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lv3/f;->b(Ljava/lang/String;)Lm/q;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lv3/t;-><init>(ILm/q;)V

    return-void
.end method
