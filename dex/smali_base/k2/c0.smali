.class public final Lk2/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lk2/u;


# instance fields
.field public final synthetic g:Lk2/n;

.field public final synthetic h:B


# direct methods
.method public constructor <init>(Lk2/n;B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/c0;->g:Lk2/n;

    iput-byte p2, p0, Lk2/c0;->h:B

    return-void
.end method


# virtual methods
.method public final a(Lk2/v;)Lk2/v;
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lk2/d0;

    if-eqz v2, :cond_9

    return-object v1

    :cond_9
    new-instance v1, Lk2/d0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lk2/d0;->a:[Lk2/n;

    sget-object v3, Lk2/x;->a:Ljava/math/BigInteger;

    iget-object v3, v0, Lk2/c0;->g:Lk2/n;

    invoke-virtual {v3}, Lk2/p;->o()Lk2/p;

    move-result-object v4

    iget-object v5, v3, Lk2/p;->a:Lk2/h;

    check-cast v4, Lk2/n;

    iget-byte v0, v0, Lk2/c0;->h:B

    if-nez v0, :cond_24

    sget-object v0, Lk2/x;->d:[[B

    goto :goto_26

    :cond_24
    sget-object v0, Lk2/x;->f:[[B

    :goto_26
    array-length v6, v0

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v6, v6, 0x1

    new-array v7, v6, [Lk2/n;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    array-length v9, v0

    const/4 v10, 0x3

    :goto_32
    if-ge v10, v9, :cond_68

    ushr-int/lit8 v11, v10, 0x1

    aget-object v12, v0, v10

    invoke-virtual {v5}, Lk2/h;->m()Lk2/p;

    move-result-object v13

    check-cast v13, Lk2/n;

    array-length v14, v12

    add-int/lit8 v14, v14, -0x1

    move v15, v8

    :goto_42
    if-ltz v14, :cond_5d

    add-int/lit8 v15, v15, 0x1

    aget-byte v16, v12, v14

    if-eqz v16, :cond_5a

    invoke-virtual {v13, v15}, Lk2/n;->F(I)Lk2/n;

    move-result-object v13

    if-lez v16, :cond_52

    move-object v15, v3

    goto :goto_53

    :cond_52
    move-object v15, v4

    :goto_53
    invoke-virtual {v13, v15}, Lk2/p;->a(Lk2/p;)Lk2/p;

    move-result-object v13

    check-cast v13, Lk2/n;

    move v15, v8

    :cond_5a
    add-int/lit8 v14, v14, -0x1

    goto :goto_42

    :cond_5d
    if-lez v15, :cond_63

    invoke-virtual {v13, v15}, Lk2/n;->F(I)Lk2/n;

    move-result-object v13

    :cond_63
    aput-object v13, v7, v11

    add-int/lit8 v10, v10, 0x2

    goto :goto_32

    :cond_68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7, v8, v6, v2}, Lk2/h;->p([Lk2/p;IILk2/b0;)V

    iput-object v7, v1, Lk2/d0;->a:[Lk2/n;

    return-object v1
.end method
