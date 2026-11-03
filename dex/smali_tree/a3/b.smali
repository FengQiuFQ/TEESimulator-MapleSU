.class public final La3/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/g;


# static fields
.field public static final q:La3/b;

.field public static final x:La3/b;

.field public static final y:La3/b;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, La3/b;

    const-string v1, "bike128"

    const/16 v2, 0x3023

    invoke-direct {v0, v1, v2}, La3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La3/b;->q:La3/b;

    new-instance v0, La3/b;

    const-string v1, "bike192"

    const/16 v2, 0x6053

    invoke-direct {v0, v1, v2}, La3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La3/b;->x:La3/b;

    new-instance v0, La3/b;

    const-string v1, "bike256"

    const v2, 0xa00d

    invoke-direct {v0, v1, v2}, La3/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, La3/b;->y:La3/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/b;->c:Ljava/lang/String;

    iput p2, p0, La3/b;->d:I

    new-instance p0, La3/e;

    invoke-direct {p0, p2}, La3/e;-><init>(I)V

    return-void
.end method
