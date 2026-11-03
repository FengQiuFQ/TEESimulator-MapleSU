.class public final synthetic Lz4/b;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Lorg/matrix/TEESimulator/interception/keystore/shim/h;


# direct methods
.method public synthetic constructor <init>(Lorg/matrix/TEESimulator/interception/keystore/shim/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/b;->a:Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    iget-object p0, p0, Lz4/b;->a:Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    invoke-virtual {p0, p1, p2}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method
