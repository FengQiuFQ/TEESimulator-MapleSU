.class public abstract Lx4/a;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:La/f;

.field public static final b:La/f;

.field public static final c:La/f;

.field public static final d:La/f;

.field public static final e:La/f;

.field public static final f:La/f;

.field public static final g:La/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->a:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->b:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->c:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->d:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->e:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->f:La/f;

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lx4/a;->g:La/f;

    return-void
.end method

.method public static a(Landroid/hardware/security/keymint/KeyParameter;)Ljava/lang/String;
    .registers 7

    sget-object v0, Lx4/a;->g:La/f;

    invoke-virtual {v0}, La/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "UNKNOWN_TAG"

    :cond_18
    iget-object v1, p0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    iget p0, p0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch p0, :sswitch_data_180

    packed-switch p0, :pswitch_data_1b2

    packed-switch p0, :pswitch_data_1c6

    packed-switch p0, :pswitch_data_1d0

    packed-switch p0, :pswitch_data_1da

    const-string p0, "<raw>"

    goto/16 :goto_16c

    :pswitch_2f
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getDateTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_16c

    :pswitch_3e
    sget-object p0, Lx4/a;->d:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getPaddingMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_16c

    :pswitch_56
    sget-object p0, Lx4/a;->f:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_16c

    :pswitch_6e
    sget-object p0, Lx4/a;->c:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlockMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_16c

    :sswitch_86
    const-string p0, "true"

    goto/16 :goto_16c

    :sswitch_8a
    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getLongInteger()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_16c

    :sswitch_94
    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getInteger()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_16c

    :sswitch_9e
    sget-object p0, Lx4/a;->e:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getKeyPurpose()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_16c

    :sswitch_b6
    sget-object p0, Lx4/a;->b:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getEcCurve()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_16c

    :sswitch_ce
    sget-object p0, Lx4/a;->a:La/f;

    invoke-virtual {p0}, La/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_16c

    :sswitch_e6
    new-instance p0, Lj0/c;

    new-instance v2, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lj0/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lj0/c;->q:Lj0/d;

    invoke-interface {v1, p0}, Lj0/d;->b(Lj0/c;)Ljava/lang/String;

    move-result-object p0

    goto :goto_16c

    :pswitch_ff
    :sswitch_ff
    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object p0

    const-string v1, "getBlob(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_10a
    const-string v3, " bytes)"

    if-ge v2, v1, :cond_138

    aget-byte v4, p0, v2

    const/16 v5, 0x20

    if-gt v5, v4, :cond_11b

    const/16 v5, 0x7f

    if-ge v4, v5, :cond_11b

    add-int/lit8 v2, v2, 0x1

    goto :goto_10a

    :cond_11b
    invoke-static {p0}, Ls2/a;->o([B)Ljava/lang/String;

    move-result-object v1

    array-length p0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16c

    :cond_138
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    array-length p0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_16c

    :sswitch_15f
    new-instance p0, Ljava/math/BigInteger;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_16c
    if-nez p0, :cond_170

    const-string p0, "Unknown Value"

    :cond_170
    const/4 v1, 0x2

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%-25s | Value: %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_180
    .sparse-switch
        -0x7ffffc12 -> :sswitch_15f
        -0x6ffffd3c -> :sswitch_ff
        -0x6ffffd2d -> :sswitch_ff
        -0x6ffffc11 -> :sswitch_e6
        0x10000002 -> :sswitch_ce
        0x1000000a -> :sswitch_b6
        0x20000001 -> :sswitch_9e
        0x30000003 -> :sswitch_94
        0x30000008 -> :sswitch_94
        0x300001f9 -> :sswitch_94
        0x500000c8 -> :sswitch_8a
        0x700001f7 -> :sswitch_86
    .end sparse-switch

    :pswitch_data_1b2
    .packed-switch -0x6ffffd3a
        :pswitch_ff
        :pswitch_ff
        :pswitch_ff
        :pswitch_ff
        :pswitch_ff
        :pswitch_ff
        :pswitch_ff
        :pswitch_ff
    .end packed-switch

    :pswitch_data_1c6
    .packed-switch 0x20000004
        :pswitch_6e
        :pswitch_56
        :pswitch_3e
    .end packed-switch

    :pswitch_data_1d0
    .packed-switch 0x60000190
        :pswitch_2f
        :pswitch_2f
        :pswitch_2f
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x600003f0
        :pswitch_2f
        :pswitch_2f
    .end packed-switch
.end method
