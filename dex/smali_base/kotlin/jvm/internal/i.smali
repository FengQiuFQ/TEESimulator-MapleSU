.class public abstract Lkotlin/jvm/internal/i;
.super Ljava/lang/Object;
.source "r8-map-id-247dc2b87fa79cde9c306ea857856ef2fa477a61a8d11fce0529640dc5ef9906"


# static fields
.field public static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lkotlin/jvm/internal/i;->a:[Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/Object;)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {p0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/RuntimeException;)V

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/RuntimeException;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/RuntimeException;)V

    throw p1
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    if-nez p1, :cond_60

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-class v1, Lkotlin/jvm/internal/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_13
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    :goto_22
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_31
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Parameter specified as non-null is null: method "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", parameter "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/RuntimeException;)V

    throw p1

    :cond_60
    return-void
.end method

.method public static f(Ljava/lang/RuntimeException;)V
    .registers 7

    const-class v0, Lkotlin/jvm/internal/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_1f

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move v3, v4

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_332

    packed-switch v0, :pswitch_data_3e0

    packed-switch v0, :pswitch_data_3f8

    packed-switch v0, :pswitch_data_402

    goto/16 :goto_32c

    :pswitch_12
    const-string v0, "kotlin.jvm.functions.Function9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto/16 :goto_32c

    :cond_1c
    const-string p0, "Function9"

    return-object p0

    :pswitch_1f
    const-string v0, "kotlin.jvm.functions.Function8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto/16 :goto_32c

    :cond_29
    const-string p0, "Function8"

    return-object p0

    :pswitch_2c
    const-string v0, "kotlin.jvm.functions.Function7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    goto/16 :goto_32c

    :cond_36
    const-string p0, "Function7"

    return-object p0

    :pswitch_39
    const-string v0, "kotlin.jvm.functions.Function6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_32c

    :cond_43
    const-string p0, "Function6"

    return-object p0

    :pswitch_46
    const-string v0, "kotlin.jvm.functions.Function5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    goto/16 :goto_32c

    :cond_50
    const-string p0, "Function5"

    return-object p0

    :pswitch_53
    const-string v0, "kotlin.jvm.functions.Function4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5d

    goto/16 :goto_32c

    :cond_5d
    const-string p0, "Function4"

    return-object p0

    :pswitch_60
    const-string v0, "kotlin.jvm.functions.Function3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6a

    goto/16 :goto_32c

    :cond_6a
    const-string p0, "Function3"

    return-object p0

    :pswitch_6d
    const-string v0, "kotlin.jvm.functions.Function2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_77

    goto/16 :goto_32c

    :cond_77
    const-string p0, "Function2"

    return-object p0

    :pswitch_7a
    const-string v0, "kotlin.jvm.functions.Function1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_84

    goto/16 :goto_32c

    :cond_84
    const-string p0, "Function1"

    return-object p0

    :pswitch_87
    const-string v0, "kotlin.jvm.functions.Function0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    goto/16 :goto_32c

    :cond_91
    const-string p0, "Function0"

    return-object p0

    :pswitch_94
    const-string v0, "kotlin.jvm.functions.Function22"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto/16 :goto_32c

    :cond_9e
    const-string p0, "Function22"

    return-object p0

    :pswitch_a1
    const-string v0, "kotlin.jvm.functions.Function21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ab

    goto/16 :goto_32c

    :cond_ab
    const-string p0, "Function21"

    return-object p0

    :pswitch_ae
    const-string v0, "kotlin.jvm.functions.Function20"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b8

    goto/16 :goto_32c

    :cond_b8
    const-string p0, "Function20"

    return-object p0

    :pswitch_bb
    const-string v0, "kotlin.jvm.functions.Function19"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto/16 :goto_32c

    :cond_c5
    const-string p0, "Function19"

    return-object p0

    :pswitch_c8
    const-string v0, "kotlin.jvm.functions.Function18"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d2

    goto/16 :goto_32c

    :cond_d2
    const-string p0, "Function18"

    return-object p0

    :pswitch_d5
    const-string v0, "kotlin.jvm.functions.Function17"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_df

    goto/16 :goto_32c

    :cond_df
    const-string p0, "Function17"

    return-object p0

    :pswitch_e2
    const-string v0, "kotlin.jvm.functions.Function16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto/16 :goto_32c

    :cond_ec
    const-string p0, "Function16"

    return-object p0

    :pswitch_ef
    const-string v0, "kotlin.jvm.functions.Function15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f9

    goto/16 :goto_32c

    :cond_f9
    const-string p0, "Function15"

    return-object p0

    :pswitch_fc
    const-string v0, "kotlin.jvm.functions.Function14"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_106

    goto/16 :goto_32c

    :cond_106
    const-string p0, "Function14"

    return-object p0

    :pswitch_109
    const-string v0, "kotlin.jvm.functions.Function13"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_113

    goto/16 :goto_32c

    :cond_113
    const-string p0, "Function13"

    return-object p0

    :pswitch_116
    const-string v0, "kotlin.jvm.functions.Function12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_120

    goto/16 :goto_32c

    :cond_120
    const-string p0, "Function12"

    return-object p0

    :pswitch_123
    const-string v0, "kotlin.jvm.functions.Function11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12d

    goto/16 :goto_32c

    :cond_12d
    const-string p0, "Function11"

    return-object p0

    :pswitch_130
    const-string v0, "kotlin.jvm.functions.Function10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13a

    goto/16 :goto_32c

    :cond_13a
    const-string p0, "Function10"

    return-object p0

    :sswitch_13d
    const-string v0, "kotlin.jvm.internal.IntCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_147
    const-string v0, "java.lang.Throwable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_151

    goto/16 :goto_32c

    :cond_151
    const-string p0, "Throwable"

    return-object p0

    :sswitch_154
    const-string v0, "kotlin.jvm.internal.BooleanCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_15e
    const-string v0, "java.lang.Iterable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_168

    goto/16 :goto_32c

    :cond_168
    const-string p0, "Iterable"

    return-object p0

    :sswitch_16b
    const-string v0, "java.lang.String"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_175

    goto/16 :goto_32c

    :cond_175
    const-string p0, "String"

    return-object p0

    :sswitch_178
    const-string v0, "java.lang.Object"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_182

    goto/16 :goto_32c

    :cond_182
    const-string p0, "Any"

    return-object p0

    :sswitch_185
    const-string v0, "java.lang.Number"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18f

    goto/16 :goto_32c

    :cond_18f
    const-string p0, "Number"

    return-object p0

    :sswitch_192
    const-string v0, "java.lang.Double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d9

    goto/16 :goto_32c

    :sswitch_19c
    const-string v0, "kotlin.jvm.internal.StringCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_1a6
    const-string v0, "java.util.ListIterator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1b0

    goto/16 :goto_32c

    :cond_1b0
    const-string p0, "ListIterator"

    return-object p0

    :sswitch_1b3
    const-string v0, "java.util.Iterator"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1bd

    goto/16 :goto_32c

    :cond_1bd
    const-string p0, "Iterator"

    return-object p0

    :sswitch_1c0
    const-string v0, "kotlin.jvm.internal.FloatCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_1ca
    const-string v0, "java.lang.Long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24b

    goto/16 :goto_32c

    :sswitch_1d4
    const-string v0, "java.lang.Enum"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1de

    goto/16 :goto_32c

    :cond_1de
    const-string p0, "Enum"

    return-object p0

    :sswitch_1e1
    const-string v0, "java.lang.Byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_265

    goto/16 :goto_32c

    :sswitch_1eb
    const-string v0, "java.lang.Boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23e

    goto/16 :goto_32c

    :sswitch_1f5
    const-string v0, "kotlin.jvm.internal.EnumCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_1ff
    const-string v0, "java.lang.Character"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_258

    goto/16 :goto_32c

    :sswitch_209
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29d

    goto/16 :goto_32c

    :sswitch_213
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2aa

    goto/16 :goto_32c

    :sswitch_21d
    const-string v0, "kotlin.jvm.internal.ShortCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_227
    const-string v0, "java.util.List"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_231

    goto/16 :goto_32c

    :cond_231
    const-string p0, "List"

    return-object p0

    :sswitch_234
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23e

    goto/16 :goto_32c

    :cond_23e
    const-string p0, "Boolean"

    return-object p0

    :sswitch_241
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24b

    goto/16 :goto_32c

    :cond_24b
    const-string p0, "Long"

    return-object p0

    :sswitch_24e
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_258

    goto/16 :goto_32c

    :cond_258
    const-string p0, "Char"

    return-object p0

    :sswitch_25b
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_265

    goto/16 :goto_32c

    :cond_265
    const-string p0, "Byte"

    return-object p0

    :sswitch_268
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_321

    goto/16 :goto_32c

    :sswitch_272
    const-string v0, "java.util.Map$Entry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_27c

    goto/16 :goto_32c

    :cond_27c
    const-string p0, "Entry"

    return-object p0

    :sswitch_27f
    const-string v0, "kotlin.jvm.internal.LongCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_289
    const-string v0, "kotlin.jvm.internal.CharCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto/16 :goto_32c

    :sswitch_293
    const-string v0, "java.lang.Short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29d

    goto/16 :goto_32c

    :cond_29d
    const-string p0, "Short"

    return-object p0

    :sswitch_2a0
    const-string v0, "java.lang.Float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2aa

    goto/16 :goto_32c

    :cond_2aa
    const-string p0, "Float"

    return-object p0

    :sswitch_2ad
    const-string v0, "java.util.Collection"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2b7

    goto/16 :goto_32c

    :cond_2b7
    const-string p0, "Collection"

    return-object p0

    :sswitch_2ba
    const-string v0, "java.lang.CharSequence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c4

    goto/16 :goto_32c

    :cond_2c4
    const-string p0, "CharSequence"

    return-object p0

    :sswitch_2c7
    const-string v0, "kotlin.jvm.internal.ByteCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    goto :goto_32c

    :sswitch_2d0
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2d9

    goto :goto_32c

    :cond_2d9
    const-string p0, "Double"

    return-object p0

    :sswitch_2dc
    const-string v0, "java.util.Set"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e5

    goto :goto_32c

    :cond_2e5
    const-string p0, "Set"

    return-object p0

    :sswitch_2e8
    const-string v0, "java.util.Map"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f1

    goto :goto_32c

    :cond_2f1
    const-string p0, "Map"

    return-object p0

    :sswitch_2f4
    const-string v0, "java.lang.Comparable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2fd

    goto :goto_32c

    :cond_2fd
    const-string p0, "Comparable"

    return-object p0

    :sswitch_300
    const-string v0, "java.lang.annotation.Annotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_309

    goto :goto_32c

    :cond_309
    const-string p0, "Annotation"

    return-object p0

    :sswitch_30c
    const-string v0, "java.lang.Cloneable"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_315

    goto :goto_32c

    :cond_315
    const-string p0, "Cloneable"

    return-object p0

    :sswitch_318
    const-string v0, "java.lang.Integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_321

    goto :goto_32c

    :cond_321
    const-string p0, "Int"

    return-object p0

    :sswitch_324
    const-string v0, "kotlin.jvm.internal.DoubleCompanionObject"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32e

    :goto_32c
    const/4 p0, 0x0

    return-object p0

    :cond_32e
    const-string p0, "Companion"

    return-object p0

    nop

    :sswitch_data_332
    .sparse-switch
        -0x7ae0c43d -> :sswitch_324
        -0x7a988a96 -> :sswitch_318
        -0x793eea9d -> :sswitch_30c
        -0x75fda146 -> :sswitch_300
        -0x5dab6ad2 -> :sswitch_2f4
        -0x52743c64 -> :sswitch_2e8
        -0x5274255e -> :sswitch_2dc
        -0x4f08842f -> :sswitch_2d0
        -0x46781814 -> :sswitch_2c7
        -0x3f507f75 -> :sswitch_2ba
        -0x2906f7a2 -> :sswitch_2ad
        -0x1f76ce78 -> :sswitch_2a0
        -0x1ec16c58 -> :sswitch_293
        -0xeb0f022 -> :sswitch_289
        -0xc5a9408 -> :sswitch_27f
        -0x9d7d2b6 -> :sswitch_272
        0x197ef -> :sswitch_268
        0x2e6108 -> :sswitch_25b
        0x2e9356 -> :sswitch_24e
        0x32c67c -> :sswitch_241
        0x3db6c28 -> :sswitch_234
        0x3ec5a5e -> :sswitch_227
        0x49a71c6 -> :sswitch_21d
        0x5d0225c -> :sswitch_213
        0x685847c -> :sswitch_209
        0x9415455 -> :sswitch_1ff
        0xd7b22d3 -> :sswitch_1f5
        0x148d6054 -> :sswitch_1eb
        0x17c0bc5c -> :sswitch_1e1
        0x17c1f055 -> :sswitch_1d4
        0x17c521d0 -> :sswitch_1ca
        0x1cc457e6 -> :sswitch_1c0
        0x1dcad22e -> :sswitch_1b3
        0x226988ec -> :sswitch_1a6
        0x23b44f83 -> :sswitch_19c
        0x2d605225 -> :sswitch_192
        0x3ec1b19d -> :sswitch_185
        0x3f697993 -> :sswitch_178
        0x473e3665 -> :sswitch_16b
        0x4c0855c6 -> :sswitch_15e
        0x52797ada -> :sswitch_154
        0x612cf26c -> :sswitch_147
        0x6fe35bb3 -> :sswitch_13d
    .end sparse-switch

    :pswitch_data_3e0
    .packed-switch -0x6bf3d83c
        :pswitch_130
        :pswitch_123
        :pswitch_116
        :pswitch_109
        :pswitch_fc
        :pswitch_ef
        :pswitch_e2
        :pswitch_d5
        :pswitch_c8
        :pswitch_bb
    .end packed-switch

    :pswitch_data_3f8
    .packed-switch -0x6bf3d81d
        :pswitch_ae
        :pswitch_a1
        :pswitch_94
    .end packed-switch

    :pswitch_data_402
    .packed-switch 0x4c695eb
        :pswitch_87
        :pswitch_7a
        :pswitch_6d
        :pswitch_60
        :pswitch_53
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
        :pswitch_12
    .end packed-switch
.end method

.method public static h(Ljava/lang/String;)V
    .registers 3

    const-string v0, "lateinit property "

    const-string v1, " has not been initialized"

    invoke-static {v0, p0, v1}, Lb/b;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, La/b;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/i;->f(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public static final i(Ljava/util/Collection;)[Ljava/lang/Object;
    .registers 5

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_11

    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    :goto_11
    sget-object p0, Lkotlin/jvm/internal/i;->a:[Ljava/lang/Object;

    return-object p0

    :cond_14
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_17
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    array-length v1, v0

    const-string v3, "copyOf(...)"

    if-lt v2, v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2b

    return-object v0

    :cond_2b
    mul-int/lit8 v1, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    if-gt v1, v2, :cond_3f

    const v1, 0x7ffffffd

    if-ge v2, v1, :cond_39

    goto :goto_3f

    :cond_39
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_3f
    :goto_3f
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_46
    move v1, v2

    goto :goto_17

    :cond_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_46

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static final j(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    array-length p0, p1

    if-lez p0, :cond_1d

    aput-object v1, p1, v2

    return-object p1

    :cond_e
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1e

    array-length p0, p1

    if-lez p0, :cond_1d

    aput-object v1, p1, v2

    :cond_1d
    return-object p1

    :cond_1e
    array-length v3, p1

    if-gt v0, v3, :cond_23

    move-object v0, p1

    goto :goto_36

    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/i;->c(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, [Ljava/lang/Object;

    :goto_36
    add-int/lit8 v3, v2, 0x1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v2

    array-length v2, v0

    const-string v4, "copyOf(...)"

    if-lt v3, v2, :cond_67

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4a

    return-object v0

    :cond_4a
    mul-int/lit8 v2, v3, 0x3

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    if-gt v2, v3, :cond_5e

    const v2, 0x7ffffffd

    if-ge v3, v2, :cond_58

    goto :goto_5e

    :cond_58
    new-instance p0, Ljava/lang/OutOfMemoryError;

    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_5e
    :goto_5e
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_65
    move v2, v3

    goto :goto_36

    :cond_67
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_65

    if-ne v0, p1, :cond_72

    aput-object v1, p1, v3

    return-object p1

    :cond_72
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {v4, p0}, Lkotlin/jvm/internal/i;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
