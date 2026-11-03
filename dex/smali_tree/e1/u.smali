.class public abstract Le1/u;
.super Le1/b;


# instance fields
.field public final d:Le1/r;


# direct methods
.method public constructor <init>(ZLe1/r;)V
    .registers 3

    invoke-direct {p0, p1}, Le1/b;-><init>(Z)V

    if-eqz p2, :cond_8

    iput-object p2, p0, Le1/u;->d:Le1/r;

    return-void

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'parameters\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
