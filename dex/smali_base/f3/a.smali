.class public final Lf3/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final d:Lf3/a;

.field public static final q:Lf3/a;

.field public static final x:Lf3/a;


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lf3/a;

    const-string v1, "hqc-128"

    const/16 v2, 0x4505

    invoke-direct {v0, v1, v2}, Lf3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/a;->d:Lf3/a;

    new-instance v0, Lf3/a;

    const-string v1, "hqc-192"

    const v2, 0x8c0b

    invoke-direct {v0, v1, v2}, Lf3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/a;->q:Lf3/a;

    new-instance v0, Lf3/a;

    const-string v1, "hqc-256"

    const v2, 0xe125

    invoke-direct {v0, v1, v2}, Lf3/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/a;->x:Lf3/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/a;->c:Ljava/lang/String;

    const-wide/32 p0, 0x1000000

    int-to-long v0, p2

    div-long/2addr p0, v0

    return-void
.end method
