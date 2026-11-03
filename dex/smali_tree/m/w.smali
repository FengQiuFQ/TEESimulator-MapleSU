.class public final Lm/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field public a:I

.field public final synthetic b:Lm/x;


# direct methods
.method public constructor <init>(Lm/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/w;->b:Lm/x;

    const/4 p1, 0x0

    iput p1, p0, Lm/w;->a:I

    return-void
.end method


# virtual methods
.method public final hasMoreElements()Z
    .registers 2

    iget v0, p0, Lm/w;->a:I

    iget-object p0, p0, Lm/w;->b:Lm/x;

    iget-object p0, p0, Lm/x;->c:[Lm/f;

    array-length p0, p0

    if-ge v0, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public final nextElement()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lm/w;->a:I

    iget-object v1, p0, Lm/w;->b:Lm/x;

    iget-object v1, v1, Lm/x;->c:[Lm/f;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lm/w;->a:I

    aget-object p0, v1, v0

    return-object p0

    :cond_10
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
