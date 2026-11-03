.class final Lmpl/ScopeCli$Row;
.super Ljava/lang/Object;
.source "ScopeCli.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmpl/ScopeCli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Row"
.end annotation


# instance fields
.field final icon:Ljava/lang/String;

.field final label:Ljava/lang/String;

.field final pkg:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    iput-object p1, p0, Lmpl/ScopeCli$Row;->pkg:Ljava/lang/String;

    .line 576
    iput p2, p0, Lmpl/ScopeCli$Row;->uid:I

    .line 577
    iput-object p3, p0, Lmpl/ScopeCli$Row;->label:Ljava/lang/String;

    .line 578
    iput-object p4, p0, Lmpl/ScopeCli$Row;->icon:Ljava/lang/String;

    return-void
.end method
