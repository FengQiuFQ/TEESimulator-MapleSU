.class public final Ll/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Lk/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lh/p;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lh/p;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/c;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/c;->b:Lh/p;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ll/b;

    invoke-direct {v0, p0}, Ll/b;-><init>(Ll/c;)V

    return-object v0
.end method
