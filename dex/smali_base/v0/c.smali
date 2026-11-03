.class public final Lv0/c;
.super Lv0/y;


# direct methods
.method public constructor <init>()V
    .registers 3

    new-instance v0, Lv0/a;

    invoke-direct {v0}, Lv0/a;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lv0/y;-><init>(Lorg/bouncycastle/crypto/d;I)V

    return-void
.end method
