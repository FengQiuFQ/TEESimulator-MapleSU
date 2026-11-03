.class public final Ll0/l;
.super Lm/n;


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final q:Ljava/util/Hashtable;


# instance fields
.field public c:Lm/h;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const-string v9, "privilegeWithdrawn"

    const-string v10, "aACompromise"

    const-string v0, "unspecified"

    const-string v1, "keyCompromise"

    const-string v2, "cACompromise"

    const-string v3, "affiliationChanged"

    const-string v4, "superseded"

    const-string v5, "cessationOfOperation"

    const-string v6, "certificateHold"

    const-string v7, "unknown"

    const-string v8, "removeFromCRL"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ll0/l;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ll0/l;->q:Ljava/util/Hashtable;

    return-void
.end method

.method public static h(Lm/h;)Ll0/l;
    .registers 5

    if-eqz p0, :cond_37

    invoke-static {p0}, Lm/h;->s(Ljava/lang/Object;)Lm/h;

    move-result-object p0

    invoke-virtual {p0}, Lm/h;->u()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ll0/l;->q:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    new-instance v2, Ll0/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    if-ltz p0, :cond_28

    new-instance v3, Lm/h;

    invoke-direct {v3, p0}, Lm/h;-><init>(I)V

    iput-object v3, v2, Ll0/l;->c:Lm/h;

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid CRL reason : not in (0..MAX)"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll0/l;

    return-object p0

    :cond_37
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final d()Lm/u;
    .registers 1

    iget-object p0, p0, Ll0/l;->c:Lm/h;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Ll0/l;->c:Lm/h;

    invoke-virtual {p0}, Lm/h;->t()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    if-ltz p0, :cond_16

    const/16 v0, 0xa

    if-le p0, v0, :cond_11

    goto :goto_16

    :cond_11
    sget-object v0, Ll0/l;->d:[Ljava/lang/String;

    aget-object p0, v0, p0

    goto :goto_18

    :cond_16
    :goto_16
    const-string p0, "invalid"

    :goto_18
    const-string v0, "CRLReason: "

    invoke-static {v0, p0}, Lb/b;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
