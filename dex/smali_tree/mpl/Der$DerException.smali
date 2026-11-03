.class public final Lmpl/Der$DerException;
.super Ljava/lang/RuntimeException;
.source "Der.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/Der;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
