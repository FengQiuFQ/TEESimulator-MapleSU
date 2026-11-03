.class public final Lu4/c;
.super Landroid/os/FileObserver;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Lu4/c;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lu4/c;

    sget-object v1, Lu4/g;->a:Ljava/io/File;

    const/16 v2, 0x288

    invoke-direct {v0, v1, v2}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    sput-object v0, Lu4/c;->a:Lu4/c;

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 4

    if-nez p2, :cond_4

    goto/16 :goto_ba

    :cond_4
    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Configuration file change detected: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (event: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lx4/b;->c(Ljava/lang/String;)V

    const/16 p0, 0x200

    const/4 v0, 0x0

    if-eq p1, p0, :cond_31

    new-instance p0, Ljava/io/File;

    sget-object p1, Lu4/g;->a:Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_32

    :cond_31
    move-object p0, v0

    :goto_32
    const-string p1, "target.txt"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    if-eqz p0, :cond_40

    invoke-static {p0}, Lu4/g;->i(Ljava/io/File;)V

    return-void

    :cond_40
    const-string p0, "target.txt was deleted."

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_46
    const-string p1, "security_patch.txt"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    if-eqz p0, :cond_54

    invoke-static {p0}, Lu4/g;->g(Ljava/io/File;)V

    return-void

    :cond_54
    const-string p0, "security_patch.txt was deleted."

    invoke-static {p0, v0}, Lx4/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5a
    const-string p1, ".xml"

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Ll/q;->g1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_ba

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Keybox file "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " may have changed. It will be reloaded on next access."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx4/b;->c(Ljava/lang/String;)V

    sget-object p1, Ly4/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8b

    const-string p1, "Invalidated cache for key store file: "

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx4/b;->c(Ljava/lang/String;)V

    goto :goto_a1

    :cond_8b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Requested cache invalidation for \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', but it was not loaded."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lx4/b;->a(Ljava/lang/String;)V

    :goto_a1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1e

    if-le p1, p2, :cond_ba

    sget-object p1, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor;->Companion:Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updating "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/matrix/TEESimulator/interception/keystore/shim/KeyMintSecurityLevelInterceptor$Companion;->invalidatePatchedChains(Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    return-void
.end method
