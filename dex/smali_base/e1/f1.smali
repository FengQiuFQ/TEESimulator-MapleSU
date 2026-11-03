.class public final Le1/f1;
.super Le1/b;


# instance fields
.field public final d:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    array-length v0, p1

    const/16 v1, 0x38

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le1/f1;-><init>([BI)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'buf\' must have length 56"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BI)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le1/b;-><init>(Z)V

    const/16 v1, 0x38

    new-array v2, v1, [B

    iput-object v2, p0, Le1/f1;->d:[B

    invoke-static {p1, p2, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
