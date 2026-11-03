.class public final Lmpl/TargetTxt;
.super Ljava/lang/Object;
.source "TargetTxt.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    goto :goto_25

    :cond_c
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    const/16 v2, 0x21

    if-eq v0, v2, :cond_1a

    if-eq v0, v1, :cond_1a

    goto :goto_25

    :cond_1a
    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_26

    :goto_25
    return-object p0

    .line 49
    :cond_26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_44

    if-ne p0, v1, :cond_34

    goto :goto_44

    .line 55
    :cond_34
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_44
    :goto_44
    return-object v4
.end method
