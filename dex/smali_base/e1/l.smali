.class public final Le1/l;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(IIILjava/security/SecureRandom;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le1/l;->a:I

    iput p2, p0, Le1/l;->b:I

    iput p3, p0, Le1/l;->c:I

    iput-object p4, p0, Le1/l;->d:Ljava/security/SecureRandom;

    return-void
.end method
