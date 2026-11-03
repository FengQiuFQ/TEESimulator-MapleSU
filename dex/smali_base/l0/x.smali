.class public final Ll0/x;
.super Ljava/lang/Object;


# static fields
.field public static final c:Ljava/util/Set;


# instance fields
.field public final a:Ljava/util/Hashtable;

.field public final b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Ll0/v;->z1:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ll0/v;->A1:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ll0/v;->x:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Ll0/v;->G1:Lm/q;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ll0/x;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ll0/x;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ll0/x;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a(Ll0/v;)V
    .registers 5

    iget-object v0, p1, Ll0/v;->c:Lm/q;

    iget-object v1, p1, Ll0/v;->c:Lm/q;

    iget-object v2, p0, Ll0/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object p0, p0, Ll0/x;->b:Ljava/util/Vector;

    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "extension "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " already added"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Lm/q;Ll0/f0;)V
    .registers 8

    iget-object v0, p0, Ll0/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll0/v;

    const/4 v2, 0x1

    if-eqz v1, :cond_91

    iget-object p0, p2, Ll0/f0;->c:Lm/b;

    invoke-virtual {p0}, Lm/n;->g()[B

    move-result-object p0

    iget-object p1, v1, Ll0/v;->c:Lm/q;

    sget-object p2, Ll0/x;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_83

    iget-object p2, v1, Ll0/v;->q:Lm/r;

    invoke-static {p2}, Lm/r;->r(Ljava/lang/Object;)Lm/r;

    move-result-object p2

    iget-object p2, p2, Lm/r;->c:[B

    invoke-static {p2}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p2

    invoke-static {p0}, Lm/x;->t(Ljava/lang/Object;)Lm/x;

    move-result-object p0

    new-instance v1, Lm/g;

    invoke-virtual {p2}, Lm/x;->size()I

    move-result v3

    invoke-virtual {p0}, Lm/x;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v4}, Lm/g;-><init>(I)V

    invoke-virtual {p2}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p2

    :goto_3d
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm/f;

    invoke-virtual {v1, v3}, Lm/g;->a(Lm/f;)V

    goto :goto_3d

    :cond_4d
    invoke-virtual {p0}, Lm/x;->w()Ljava/util/Enumeration;

    move-result-object p0

    :goto_51
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lm/f;

    invoke-virtual {v1, p2}, Lm/g;->a(Lm/f;)V

    goto :goto_51

    :cond_61
    :try_start_61
    new-instance p0, Ll0/v;

    new-instance p2, Lm/x0;

    new-instance v3, Lm/a1;

    invoke-direct {v3, v1}, Lm/x;-><init>(Lm/g;)V

    const/4 v1, -0x1

    iput v1, v3, Lm/a1;->q:I

    invoke-direct {p2, v3}, Lm/x0;-><init>(Lm/n;)V

    invoke-direct {p0, p1, v2, p2}, Ll0/v;-><init>(Lm/q;ZLm/x0;)V

    invoke-virtual {v0, p1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_76} :catch_77

    return-void

    :catch_77
    move-exception p0

    new-instance p1, Lm/t;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lm/t;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw p1

    :cond_83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "extension "

    const-string v0, " already added"

    invoke-static {p2, p1, v0}, Lb/b;->k(Ljava/lang/String;Lm/q;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    new-instance v1, Ll0/v;

    new-instance v3, Lm/x0;

    invoke-direct {v3, p2}, Lm/x0;-><init>(Lm/n;)V

    invoke-direct {v1, p1, v2, v3}, Ll0/v;-><init>(Lm/q;ZLm/x0;)V

    iget-object p0, p0, Ll0/x;->b:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Ll0/w;
    .registers 8

    iget-object v0, p0, Ll0/x;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Ll0/v;

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v4, v5, :cond_21

    iget-object v5, p0, Ll0/x;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll0/v;

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_21
    new-instance p0, Ll0/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ll0/w;->c:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ll0/w;->d:Ljava/util/Vector;

    if-eqz v1, :cond_4c

    :goto_36
    if-eq v3, v1, :cond_4b

    aget-object v0, v2, v3

    iget-object v4, p0, Ll0/w;->d:Ljava/util/Vector;

    iget-object v5, v0, Ll0/v;->c:Lm/q;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Ll0/w;->c:Ljava/util/Hashtable;

    iget-object v5, v0, Ll0/v;->c:Lm/q;

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    :cond_4b
    return-object p0

    :cond_4c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "extension array cannot be null or empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
