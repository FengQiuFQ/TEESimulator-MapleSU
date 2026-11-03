.class Lmpl/HalProbe$2;
.super Ljava/lang/Object;
.source "HalProbe.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmpl/HalProbe;->probeHal()Lmpl/HalProbe$Hal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lmpl/HalProbe$CodeResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 482
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

    .line 482
    check-cast p1, Lmpl/HalProbe$CodeResult;

    check-cast p2, Lmpl/HalProbe$CodeResult;

    invoke-virtual {p0, p1, p2}, Lmpl/HalProbe$2;->compare(Lmpl/HalProbe$CodeResult;Lmpl/HalProbe$CodeResult;)I

    move-result p1

    return p1
.end method

.method public compare(Lmpl/HalProbe$CodeResult;Lmpl/HalProbe$CodeResult;)I
    .registers 5

    .line 485
    iget v0, p1, Lmpl/HalProbe$CodeResult;->code:I

    iget v1, p2, Lmpl/HalProbe$CodeResult;->code:I

    if-eq v0, v1, :cond_10

    .line 486
    iget p1, p1, Lmpl/HalProbe$CodeResult;->code:I

    iget p2, p2, Lmpl/HalProbe$CodeResult;->code:I

    if-ge p1, p2, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1

    .line 488
    :cond_10
    iget-object p1, p1, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    iget-object p2, p2, Lmpl/HalProbe$CodeResult;->variant:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
