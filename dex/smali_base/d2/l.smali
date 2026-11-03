.class public abstract Ld2/l;
.super Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ll0/b;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/l;->c:Ljava/lang/Object;

    iput-object p2, p0, Ld2/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([J[J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/l;->d:Ljava/lang/Object;

    iput-object p2, p0, Ld2/l;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a([J[J)V
.end method

.method public abstract b([J[J)V
.end method
