.class public final Lw4/e;
.super Lv4/g;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:Lw4/e;

.field public static final b:Ljava/lang/Object;

.field public static final c:[I

.field public static final d:La/f;

.field public static final e:[B

.field public static final f:[B


# direct methods
.method static constructor <clinit>()V
    .registers 15

    new-instance v0, Lw4/e;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lw4/e;->a:Lw4/e;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, La/c;

    const-string v2, "generateAppSecureKey"

    invoke-direct {v1, v0, v2}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, La/c;

    const-string v3, "getAppSecureKey"

    invoke-direct {v2, v0, v3}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, La/c;

    const-string v4, "hasAskAlready"

    invoke-direct {v3, v0, v4}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v4, La/c;

    const-string v5, "generateAuthKey"

    invoke-direct {v4, v0, v5}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v5, La/c;

    const-string v6, "removeAuthKey"

    invoke-direct {v5, v0, v6}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v6, La/c;

    const-string v7, "getAuthKey"

    invoke-direct {v6, v0, v7}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v7, La/c;

    const-string v8, "removeAllAuthKey"

    invoke-direct {v7, v0, v8}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v8, La/c;

    const-string v9, "hasAuthKey"

    invoke-direct {v8, v0, v9}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v9, La/c;

    const-string v10, "initSigh"

    invoke-direct {v9, v0, v10}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v10, La/c;

    const-string v11, "finishSign"

    invoke-direct {v10, v0, v11}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v11, La/c;

    const-string v12, "getDeviceId"

    invoke-direct {v11, v0, v12}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v12, La/c;

    const-string v13, "getVersion"

    invoke-direct {v12, v0, v13}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v13, La/c;

    const-string v14, "getExtraParam"

    invoke-direct {v13, v0, v14}, La/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v13}, [La/c;

    move-result-object v0

    invoke-static {v0}, Lb/t;->g1([La/c;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lw4/e;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lb/i;->b1(Ljava/util/Collection;)[I

    move-result-object v0

    sput-object v0, Lw4/e;->c:[I

    new-instance v0, Lorg/matrix/TEESimulator/interception/keystore/shim/h;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/matrix/TEESimulator/interception/keystore/shim/h;-><init>(I)V

    new-instance v1, La/f;

    invoke-direct {v1, v0}, La/f;-><init>(Lh/a;)V

    sput-object v1, Lw4/e;->d:La/f;

    const-string v0, "TEESIM-SOTER-0001"

    sget-object v1, Ll/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "getBytes(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lw4/e;->e:[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lw4/e;->f:[B

    return-void
.end method


# virtual methods
.method public final onPreTransact(JLandroid/os/IBinder;IIIILandroid/os/Parcel;)Lv4/f;
    .registers 18

    const-string v0, "target"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p3, "data"

    move-object/from16 v0, p8

    invoke-static {p3, v0}, Lkotlin/jvm/internal/i;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p3, Lw4/e;->b:Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Ljava/lang/String;

    sget-object p3, Lv4/c;->a:Lv4/c;

    if-nez v3, :cond_2d

    const-string v0, "code="

    invoke-static {p4, v0}, Lb/b;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v1 .. v7}, Lv4/g;->logTransaction(JLjava/lang/String;IIZ)V

    return-object p3

    :cond_2d
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v8}, Lv4/g;->logTransaction$default(Lv4/g;JLjava/lang/String;IIZILjava/lang/Object;)V

    sget-object p0, Lx4/b;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p0, 0x1

    const-string p1, "obtain(...)"

    const/4 p2, 0x0

    # MPL-P16-S4a: entry proof. p16h/p16k logged only inside askBlob/authBlob, so a Duck run
    # with no MPL-SOTER line was read as "the forge was never called". Transaction 1
    # (generateAppSecureKey) never reaches those helpers, so that reading was unsound: every
    # intercepted code is logged here, before dispatch.
    invoke-static {p4}, Lmpl/SoterForge;->logTx(I)V

    # MPL-P16-S5a: keep the request Parcel (p8) in a local before dispatch. Every branch
    # below reuses p0..p3 as scratch; p8 itself is only read directly by :pswitch_8d
    # (finishSign) and :pswitch_ac (initSigh). v0 is dead after the logTransaction$default
    # range call above, so the type change to Landroid/os/Parcel; is verifier-safe.
    move-object/from16 v0, p8

    # MPL-P16-P2: per-app scope gate (mpl/SoterPolicy.allowFor). The key is the uid the
    # REQUEST declares (first int argument of codes 1..9), not the binder caller: the
    # daemon-held keep-alive binding can make the service see an intermediary uid (p16n
    # measured 10276 for a call made by 10494), which would turn a per-app policy into
    # all-or-nothing for every relayed transaction. allowFor saves and restores the
    # Parcel position, so the SoterForge reads further down still see the token and uid.
    # allow() is fail-open: no scope file, an empty one, or any read error means "forge
    # for every app". A denied uid gets Lv4/c;->a - the very pass-through the
    # method==null branch above returns, so the real saterserver answers.
    # v1 is dead here and no pswitch branch reads it; .registers stays 18 and this
    # method has no exception table.
    invoke-static {v0, p4, p6}, Lmpl/SoterPolicy;->allowFor(Landroid/os/Parcel;II)Z

    move-result v1

    if-eqz v1, :mpl_scope_deny

    goto :mpl_scope_go

    :mpl_scope_deny
    sget-object v1, Lv4/c;->a:Lv4/c;

    return-object v1

    :mpl_scope_go

    packed-switch p4, :pswitch_data_11e

    return-object p3

    :pswitch_43
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    const-string p0, "optical"

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p2}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_5b
    # MPL-P16-S4e: the shipped saterserver on this device reports 1; 3 was our invention.
    const/4 p0, 0x1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p2}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_6e
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-S4d: getDeviceId must not answer the literal TEESIM-SOTER-0001 on every device.
    invoke-static {}, Lmpl/SoterForge;->deviceId()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length p0, p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_8d
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X6 (P0-3): finishSign(signSession). The three-way silent fallback is gone: a
    # session of 0, an unknown id, an already spent id, an expired id and one created by
    # another uid all answer -204 with empty exportData (SoterService$c.smali:3069 uses
    # -0xcc for session 0 and does not reach the TA). A live session signs the challenge it
    # was opened with, with the AuthKey its alias registered.
    invoke-static {v0}, Lmpl/SoterSvc;->finishSign(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmpl/SoterResult;->data:[B

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, p2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_ac
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X5 (P0-1 + P1-4): initSigh(uid, kname, challenge). Empty kname -202, empty
    # challenge -203, success rc 0 with a non-zero session id bound to (uid, alias, challenge)
    # that lives 30 s and is spent by the first successful finishSign. SoterSessionResult is
    # (session:long, resultCode:int) - the long is written first.
    invoke-static {v0}, Lmpl/SoterSvc;->initSigh(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget-wide v1, p0, Lmpl/SoterResult;->session:J

    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_c7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    # MPL-P16-X2 (P0-2): hasAskAlready (code 3) and hasAuthKey (code 8) used to answer a
    # constant 1. They now ask the registry, so a removed key really reads as false and an
    # empty kname answers false instead of raising (SoterService$c.smali:2197-2347).
    invoke-static {p4, v0}, Lmpl/SoterSvc;->has(ILandroid/os/Parcel;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p2}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    # MPL-P16-S3: getAuthKey must return the AUTH key, not the ASK again.
    :pswitch_mpl_auth
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X4 (P1-4 + P0-2): getAuthKey(int uid, String kname). Empty kname -202 (the
    # shipped service refuses before touching the TA), absent alias -1000 with no exportData
    # (the SDK turns that into a null model), otherwise the per-alias AuthKey blob. The key is
    # the one the alias registered, so two aliases of one uid are two different keys.
    invoke-static {v0}, Lmpl/SoterSvc;->exportAuth(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmpl/SoterResult;->data:[B

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, p2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_da
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    # MPL-P16-X3 (P1-4 + P0-2): getAppSecureKey(int uid). The resultCode slot is no longer a
    # constant 0: SoterSvc.exportAsk answers 0 on success, -200 when the key cannot be
    # exported, -1000 when the ASK was explicitly removed (removal is sticky), and never
    # returns a null byte[] (the SDK dereferences exportData.length).
    invoke-static {v0}, Lmpl/SoterSvc;->exportAsk(Landroid/os/Parcel;)Lmpl/SoterResult;

    move-result-object p0

    iget v1, p0, Lmpl/SoterResult;->rc:I

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmpl/SoterResult;->data:[B

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, p2

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p0, Lv4/d;

    invoke-direct {p0, p3}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_10a
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->writeNoException()V

    # MPL-P16-X1 (P1-4): codes 1/4/5/7 answer with a bare int that used to be a constant 0.
    # SoterSvc.intOp maps them onto the shipped semantics: 1 generate the per-uid ASK,
    # 4 generate the per-(uid, alias) AuthKey (-202 on an empty kname), 5 remove that AuthKey
    # (-202 on an empty kname, and it really deletes), 7 removeAllAuthKey (ASK plus every
    # AuthKey of the uid). v0 is the request Parcel, p4 the transaction code.
    invoke-static {p4, v0}, Lmpl/SoterSvc;->intOp(ILandroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p1, Lv4/d;

    invoke-direct {p1, p0}, Lv4/d;-><init>(Landroid/os/Parcel;)V

    return-object p1

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_10a
        :pswitch_da
        :pswitch_c7
        :pswitch_10a
        :pswitch_10a
        :pswitch_mpl_auth
        :pswitch_10a
        :pswitch_c7
        :pswitch_ac
        :pswitch_8d
        :pswitch_6e
        :pswitch_5b
        :pswitch_43
    .end packed-switch
.end method
