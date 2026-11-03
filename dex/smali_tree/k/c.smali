.class public final Lk/c;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic c:Ll/c;


# direct methods
.method public constructor <init>(Ll/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk/c;->c:Ll/c;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    new-instance v0, Ll/b;

    iget-object p0, p0, Lk/c;->c:Ll/c;

    invoke-direct {v0, p0}, Ll/b;-><init>(Ll/c;)V

    return-object v0
.end method
