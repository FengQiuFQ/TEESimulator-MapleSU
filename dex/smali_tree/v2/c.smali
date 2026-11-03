.class public final Lv2/c;
.super Ljava/lang/RuntimeException;


# instance fields
.field public final c:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lv2/c;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .registers 1

    iget-object p0, p0, Lv2/c;->c:Ljava/lang/Exception;

    return-object p0
.end method
