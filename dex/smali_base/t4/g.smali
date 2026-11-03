.class public abstract synthetic Lt4/g;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# direct methods
.method public static bridge synthetic a(Ljava/lang/Throwable;)Landroid/security/KeyStoreException;
    .registers 1

    check-cast p0, Landroid/security/KeyStoreException;

    return-object p0
.end method

.method public static bridge synthetic b(Landroid/security/KeyStoreException;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->isTransientFailure()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Ljava/lang/Throwable;)Z
    .registers 1

    instance-of p0, p0, Landroid/security/KeyStoreException;

    return p0
.end method
