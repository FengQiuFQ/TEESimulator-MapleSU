.class public final Ld2/a;
.super Ljavax/crypto/spec/IvParameterSpec;


# instance fields
.field public final c:[B

.field public final d:I


# direct methods
.method public constructor <init>([BI)V
    .registers 3

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput p2, p0, Ld2/a;->d:I

    const/4 p1, 0x0

    invoke-static {p1}, Lm4/d;->e([B)[B

    move-result-object p1

    iput-object p1, p0, Ld2/a;->c:[B

    return-void
.end method
