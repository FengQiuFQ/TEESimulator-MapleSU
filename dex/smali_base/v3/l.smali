.class public final Lv3/l;
.super Ljava/lang/Object;


# static fields
.field public static final b:Ljava/util/Map;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x20

    const/16 v2, 0x43

    const-string v3, "SHA-256"

    invoke-static {v1, v2, v3}, Lv3/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lv3/l;

    const v5, 0x1000001

    const-string v6, "WOTSP_SHA2-256_W16"

    invoke-direct {v4, v5, v6}, Lv3/l;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x40

    const/16 v4, 0x83

    const-string v5, "SHA-512"

    invoke-static {v3, v4, v5}, Lv3/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lv3/l;

    const v7, 0x2000002

    const-string v8, "WOTSP_SHA2-512_W16"

    invoke-direct {v6, v7, v8}, Lv3/l;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "SHAKE128"

    invoke-static {v1, v2, v5}, Lv3/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv3/l;

    const v5, 0x3000003

    const-string v6, "WOTSP_SHAKE128_W16"

    invoke-direct {v2, v5, v6}, Lv3/l;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SHAKE256"

    invoke-static {v3, v4, v1}, Lv3/l;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lv3/l;

    const v3, 0x4000004

    const-string v4, "WOTSP_SHAKE256_W16"

    invoke-direct {v2, v3, v4}, Lv3/l;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lv3/l;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv3/l;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(IILjava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-16-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lv3/l;->a:Ljava/lang/String;

    return-object p0
.end method
