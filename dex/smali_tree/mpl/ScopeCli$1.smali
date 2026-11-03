.class Lmpl/ScopeCli$1;
.super Ljava/lang/Object;
.source "ScopeCli.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/ScopeCli;->list()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmpl/ScopeCli$Row;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 146
    check-cast p1, Lmpl/ScopeCli$Row;

    check-cast p2, Lmpl/ScopeCli$Row;

    invoke-virtual {p0, p1, p2}, Lmpl/ScopeCli$1;->compare(Lmpl/ScopeCli$Row;Lmpl/ScopeCli$Row;)I

    move-result p1

    return p1
.end method

.method public compare(Lmpl/ScopeCli$Row;Lmpl/ScopeCli$Row;)I
    .registers 5

    .line 149
    iget-object v0, p1, Lmpl/ScopeCli$Row;->label:Ljava/lang/String;

    iget-object v1, p2, Lmpl/ScopeCli$Row;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    .line 150
    :cond_b
    iget-object p1, p1, Lmpl/ScopeCli$Row;->pkg:Ljava/lang/String;

    iget-object p2, p2, Lmpl/ScopeCli$Row;->pkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
