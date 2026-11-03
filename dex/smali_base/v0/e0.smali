.class public final Lv0/e0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/d;


# instance fields
.field public g:Z

.field public h:[I

.field public final synthetic i:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lv0/e0;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static a([I)V
    .registers 10

    const/4 v0, 0x0

    aget v1, p0, v0

    const/16 v2, 0xd

    invoke-static {v1, v2}, Lv0/e0;->o(II)I

    move-result v1

    const/4 v2, 0x2

    aget v3, p0, v2

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lv0/e0;->o(II)I

    move-result v3

    const/4 v5, 0x1

    aget v6, p0, v5

    xor-int/2addr v6, v1

    xor-int/2addr v6, v3

    aget v7, p0, v4

    xor-int/2addr v7, v3

    shl-int/lit8 v8, v1, 0x3

    xor-int/2addr v7, v8

    invoke-static {v6, v5}, Lv0/e0;->o(II)I

    move-result v6

    aput v6, p0, v5

    const/4 v6, 0x7

    invoke-static {v7, v6}, Lv0/e0;->o(II)I

    move-result v7

    aput v7, p0, v4

    aget v8, p0, v5

    xor-int/2addr v1, v8

    xor-int/2addr v1, v7

    const/4 v7, 0x5

    invoke-static {v1, v7}, Lv0/e0;->o(II)I

    move-result v1

    aput v1, p0, v0

    aget v0, p0, v4

    xor-int/2addr v0, v3

    aget v1, p0, v5

    shl-int/2addr v1, v6

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lv0/e0;->o(II)I

    move-result v0

    aput v0, p0, v2

    return-void
.end method

.method private final e(II[B[B)V
    .registers 14

    const/4 v0, 0x4

    new-array v1, v0, [I

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v3, 0x80

    aget v2, v2, v3

    invoke-static {p1, p3}, Lm4/d;->z(I[B)I

    move-result v3

    xor-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v4, 0x81

    aget v2, v2, v4

    add-int/lit8 v4, p1, 0x4

    invoke-static {v4, p3}, Lm4/d;->z(I[B)I

    move-result v4

    xor-int/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v5, 0x82

    aget v2, v2, v5

    add-int/lit8 v5, p1, 0x8

    invoke-static {v5, p3}, Lm4/d;->z(I[B)I

    move-result v5

    xor-int/2addr v2, v5

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v6, 0x83

    aget v2, v2, v6

    const/16 v6, 0xc

    add-int/2addr p1, v6

    invoke-static {p1, p3}, Lm4/d;->z(I[B)I

    move-result p1

    xor-int/2addr p1, v2

    const/4 p3, 0x3

    aput p1, v1, p3

    aget v2, v1, v3

    aget v7, v1, v4

    aget v8, v1, v5

    invoke-static {v1, v2, v7, v8, p1}, Lv0/e0;->m([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x7c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x7d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x7e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x7f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x78

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x79

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x7a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x7b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x74

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x75

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x76

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x77

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x70

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x71

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x72

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x73

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x6c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x6d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x6e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x6f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x68

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x69

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x6a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x6b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x64

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x65

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x66

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x67

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->f([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x60

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x61

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x62

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x63

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x5c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x5d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x5e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x5f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x58

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x59

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x5a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x5b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x54

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x55

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x56

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x57

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x50

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x51

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x52

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x53

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x4c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x4d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x4e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x4f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x48

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x49

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x4a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x4b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x44

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x45

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x46

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x47

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->f([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x40

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x41

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x42

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x43

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x3c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x3d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x3e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x3f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x38

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x39

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x3a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x3b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x34

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x35

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x36

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x37

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x30

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x31

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x32

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x33

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x2c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x2d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x2e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x2f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x28

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x29

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x2a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x2b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x24

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x25

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x26

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x27

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->f([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x20

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x21

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x22

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x23

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x1c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x1d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x1e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x1f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x18

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x19

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x1a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x1b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x14

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x15

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x16

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x17

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x10

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x11

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0x12

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0x13

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    aget v7, v2, v6

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0xd

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0xe

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0xf

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x8

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v3

    aget p1, v1, v4

    const/16 v7, 0x9

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v5

    const/16 v7, 0xa

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, p3

    const/16 v7, 0xb

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v2, v1, v4

    aget v7, v1, v5

    aget v8, v1, p3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, v3

    aget p1, v1, v4

    const/4 v0, 0x5

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, v4

    aget p1, v1, v5

    const/4 v0, 0x6

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, v5

    aget p1, v1, p3

    const/4 v0, 0x7

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, p3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, v3

    aget v0, v1, v4

    aget v2, v1, v5

    aget v7, v1, p3

    invoke-static {v1, p1, v0, v2, v7}, Lv0/e0;->f([IIIII)V

    aget p1, v1, v3

    iget-object v0, p0, Lv0/e0;->h:[I

    aget v0, v0, v3

    xor-int/2addr p1, v0

    invoke-static {p4, p1, p2}, Lm4/d;->x([BII)V

    aget p1, v1, v4

    iget-object v0, p0, Lv0/e0;->h:[I

    aget v0, v0, v4

    xor-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x4

    invoke-static {p4, p1, v0}, Lm4/d;->x([BII)V

    aget p1, v1, v5

    iget-object v0, p0, Lv0/e0;->h:[I

    aget v0, v0, v5

    xor-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x8

    invoke-static {p4, p1, v0}, Lm4/d;->x([BII)V

    aget p1, v1, p3

    iget-object p0, p0, Lv0/e0;->h:[I

    aget p0, p0, p3

    xor-int/2addr p0, p1

    add-int/2addr p2, v6

    invoke-static {p4, p0, p2}, Lm4/d;->x([BII)V

    return-void
.end method

.method public static f([IIIII)V
    .registers 9

    not-int v0, p1

    xor-int/2addr p2, p1

    or-int v1, v0, p2

    xor-int/2addr v1, p4

    xor-int/2addr p3, v1

    xor-int v2, p2, p3

    const/4 v3, 0x2

    aput v2, p0, v3

    and-int/2addr p2, p4

    xor-int/2addr p2, v0

    and-int p4, v2, p2

    xor-int/2addr p4, v1

    const/4 v0, 0x1

    aput p4, p0, v0

    and-int/2addr p1, v1

    or-int/2addr p4, p3

    xor-int/2addr p1, p4

    const/4 p4, 0x3

    aput p1, p0, p4

    xor-int/2addr p2, p3

    xor-int/2addr p1, p2

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method public static g([IIIII)V
    .registers 7

    xor-int/2addr p4, p2

    and-int v0, p2, p4

    xor-int/2addr p1, v0

    xor-int v0, p4, p1

    xor-int/2addr p3, v0

    const/4 v1, 0x3

    aput p3, p0, v1

    and-int/2addr p4, p1

    xor-int/2addr p2, p4

    or-int p4, p3, p2

    xor-int/2addr p1, p4

    const/4 p4, 0x1

    aput p1, p0, p4

    not-int p1, p1

    xor-int/2addr p2, p3

    const/4 p3, 0x0

    xor-int p4, p1, p2

    aput p4, p0, p3

    or-int/2addr p1, p2

    xor-int/2addr p1, v0

    const/4 p2, 0x2

    aput p1, p0, p2

    return-void
.end method

.method public static h([IIIII)V
    .registers 9

    xor-int v0, p2, p4

    not-int v1, v0

    xor-int v2, p1, p3

    xor-int/2addr p3, v0

    and-int/2addr p2, p3

    xor-int/2addr p2, v2

    const/4 v3, 0x0

    aput p2, p0, v3

    or-int/2addr p1, v1

    xor-int/2addr p1, p4

    or-int/2addr p1, v2

    xor-int/2addr p1, v0

    const/4 v0, 0x3

    aput p1, p0, v0

    not-int p3, p3

    or-int/2addr p1, p2

    const/4 p2, 0x1

    xor-int v0, p3, p1

    aput v0, p0, p2

    and-int p2, p4, p3

    xor-int/2addr p1, v2

    xor-int/2addr p1, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    return-void
.end method

.method public static i([IIIII)V
    .registers 9

    or-int v0, p1, p2

    xor-int v1, p2, p3

    and-int/2addr p2, v1

    xor-int/2addr p1, p2

    xor-int p2, p3, p1

    or-int p3, p4, p1

    xor-int v2, v1, p3

    const/4 v3, 0x0

    aput v2, p0, v3

    or-int/2addr p3, v1

    xor-int/2addr p3, p4

    const/4 p4, 0x2

    xor-int/2addr p2, p3

    aput p2, p0, p4

    xor-int p2, v0, p3

    and-int p3, v2, p2

    xor-int/2addr p1, p3

    const/4 p3, 0x3

    aput p1, p0, p3

    xor-int/2addr p2, v2

    xor-int/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p0, p2

    return-void
.end method

.method public static j([IIIII)V
    .registers 7

    or-int v0, p3, p4

    and-int/2addr v0, p1

    xor-int/2addr p2, v0

    and-int v0, p1, p2

    xor-int/2addr p3, v0

    xor-int v0, p4, p3

    const/4 v1, 0x1

    aput v0, p0, v1

    not-int p1, p1

    and-int/2addr p3, v0

    xor-int/2addr p3, p2

    const/4 v1, 0x3

    aput p3, p0, v1

    or-int v1, v0, p1

    xor-int/2addr p4, v1

    const/4 v1, 0x0

    xor-int/2addr p3, p4

    aput p3, p0, v1

    and-int/2addr p2, p4

    xor-int/2addr p1, v0

    xor-int/2addr p1, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    return-void
.end method

.method public static k([IIIII)V
    .registers 11

    not-int v0, p3

    and-int v1, p2, v0

    xor-int/2addr v1, p4

    and-int v2, p1, v1

    xor-int v3, p2, v0

    xor-int/2addr v3, v2

    const/4 v4, 0x3

    aput v3, p0, v4

    or-int/2addr v3, p2

    and-int v4, p1, v3

    const/4 v5, 0x1

    xor-int/2addr v1, v4

    aput v1, p0, v5

    or-int/2addr p4, p1

    xor-int/2addr v0, v3

    const/4 v1, 0x0

    xor-int/2addr v0, p4

    aput v0, p0, v1

    and-int/2addr p2, p4

    xor-int/2addr p1, p3

    or-int/2addr p1, v2

    xor-int/2addr p1, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    return-void
.end method

.method public static l([IIIII)V
    .registers 9

    not-int v0, p1

    xor-int/2addr p1, p2

    xor-int v1, p3, p1

    or-int/2addr p3, v0

    xor-int/2addr p3, p4

    const/4 v2, 0x1

    xor-int v3, v1, p3

    aput v3, p0, v2

    and-int v2, v1, p3

    xor-int/2addr p1, v2

    or-int v2, p2, p1

    xor-int/2addr p3, v2

    const/4 v2, 0x3

    aput p3, p0, v2

    or-int/2addr p2, p3

    const/4 p3, 0x0

    xor-int/2addr p1, p2

    aput p1, p0, p3

    and-int p1, p4, v0

    xor-int/2addr p2, v1

    xor-int/2addr p1, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    return-void
.end method

.method public static m([IIIII)V
    .registers 9

    and-int v0, p1, p2

    or-int/2addr v0, p3

    or-int v1, p1, p2

    and-int/2addr v1, p4

    xor-int v2, v0, v1

    const/4 v3, 0x3

    aput v2, p0, v3

    not-int v3, p4

    xor-int/2addr p2, v1

    xor-int v1, v2, v3

    or-int/2addr v1, p2

    xor-int/2addr v1, p1

    const/4 v3, 0x1

    aput v1, p0, v3

    xor-int/2addr p2, p3

    or-int p3, p4, v1

    xor-int/2addr p2, p3

    const/4 p3, 0x0

    aput p2, p0, p3

    xor-int p3, v0, v1

    and-int/2addr p1, v2

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    const/4 p2, 0x2

    aput p1, p0, p2

    return-void
.end method

.method public static n([I)V
    .registers 10

    const/4 v0, 0x2

    aget v1, p0, v0

    const/16 v2, 0x16

    invoke-static {v1, v2}, Lv0/e0;->p(II)I

    move-result v1

    const/4 v2, 0x3

    aget v3, p0, v2

    xor-int/2addr v1, v3

    const/4 v3, 0x1

    aget v4, p0, v3

    const/4 v5, 0x7

    shl-int/2addr v4, v5

    xor-int/2addr v1, v4

    const/4 v4, 0x0

    aget v6, p0, v4

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lv0/e0;->p(II)I

    move-result v6

    aget v7, p0, v3

    xor-int/2addr v6, v7

    aget v7, p0, v2

    xor-int/2addr v6, v7

    invoke-static {v7, v5}, Lv0/e0;->p(II)I

    move-result v5

    aget v7, p0, v3

    invoke-static {v7, v3}, Lv0/e0;->p(II)I

    move-result v7

    xor-int/2addr v5, v1

    shl-int/lit8 v8, v6, 0x3

    xor-int/2addr v5, v8

    aput v5, p0, v2

    xor-int v5, v7, v6

    xor-int/2addr v5, v1

    aput v5, p0, v3

    invoke-static {v1, v2}, Lv0/e0;->p(II)I

    move-result v1

    aput v1, p0, v0

    const/16 v0, 0xd

    invoke-static {v6, v0}, Lv0/e0;->p(II)I

    move-result v0

    aput v0, p0, v4

    return-void
.end method

.method public static o(II)I
    .registers 3

    shl-int v0, p0, p1

    neg-int p1, p1

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static p(II)I
    .registers 3

    ushr-int v0, p0, p1

    neg-int p1, p1

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    return p0
.end method

.method public static q([IIIII)V
    .registers 9

    xor-int v0, p1, p4

    xor-int v1, p3, v0

    xor-int v2, p2, v1

    and-int/2addr p4, p1

    xor-int/2addr p4, v2

    const/4 v3, 0x3

    aput p4, p0, v3

    and-int/2addr p2, v0

    xor-int/2addr p1, p2

    or-int p2, p3, p1

    xor-int/2addr p2, v2

    const/4 p3, 0x2

    aput p2, p0, p3

    xor-int p2, v1, p1

    and-int/2addr p2, p4

    not-int p3, v1

    xor-int/2addr p3, p2

    const/4 p4, 0x1

    aput p3, p0, p4

    not-int p1, p1

    xor-int/2addr p1, p2

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method public static r([IIIII)V
    .registers 7

    not-int v0, p1

    xor-int/2addr v0, p2

    or-int/2addr p1, v0

    xor-int/2addr p1, p3

    xor-int p3, p4, p1

    const/4 v1, 0x2

    aput p3, p0, v1

    or-int/2addr p4, v0

    xor-int/2addr p2, p4

    xor-int/2addr p3, v0

    and-int p4, p1, p2

    xor-int/2addr p4, p3

    const/4 v0, 0x3

    aput p4, p0, v0

    xor-int/2addr p2, p1

    const/4 v0, 0x1

    xor-int/2addr p4, p2

    aput p4, p0, v0

    and-int/2addr p2, p3

    xor-int/2addr p1, p2

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method

.method public static s([IIIII)V
    .registers 10

    not-int v0, p1

    xor-int v1, p2, p4

    and-int v2, p3, v0

    xor-int/2addr v2, v1

    const/4 v3, 0x0

    aput v2, p0, v3

    xor-int v3, p3, v0

    xor-int/2addr p3, v2

    and-int/2addr p2, p3

    xor-int p3, v3, p2

    const/4 v4, 0x3

    aput p3, p0, v4

    or-int/2addr p2, p4

    or-int/2addr v2, v3

    and-int/2addr p2, v2

    xor-int/2addr p1, p2

    const/4 p2, 0x2

    aput p1, p0, p2

    xor-int p2, v1, p3

    or-int p3, p4, v0

    xor-int/2addr p1, p3

    xor-int/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p0, p2

    return-void
.end method

.method public static t([IIIII)V
    .registers 9

    xor-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr p1, p4

    xor-int/2addr p3, p4

    and-int v2, v0, p1

    or-int/2addr v1, v2

    xor-int v2, p3, v1

    const/4 v3, 0x2

    aput v2, p0, v3

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    and-int v1, p3, p1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    aput v0, p0, v1

    and-int/2addr v0, v2

    const/4 v1, 0x1

    xor-int/2addr p1, v0

    aput p1, p0, v1

    or-int p1, p2, p4

    xor-int p2, p3, v0

    xor-int/2addr p1, p2

    const/4 p2, 0x3

    aput p1, p0, p2

    return-void
.end method

.method public static u([IIIII)V
    .registers 8

    xor-int v0, p1, p4

    and-int/2addr p4, v0

    xor-int/2addr p3, p4

    or-int p4, p2, p3

    const/4 v1, 0x3

    xor-int v2, v0, p4

    aput v2, p0, v1

    not-int p2, p2

    or-int v1, v0, p2

    xor-int/2addr v1, p3

    const/4 v2, 0x0

    aput v1, p0, v2

    and-int/2addr v1, p1

    xor-int/2addr p2, v0

    and-int/2addr p4, p2

    xor-int/2addr p4, v1

    const/4 v0, 0x2

    aput p4, p0, v0

    xor-int/2addr p1, p3

    and-int/2addr p2, p4

    xor-int/2addr p1, p2

    const/4 p2, 0x1

    aput p1, p0, p2

    return-void
.end method

.method public static v([IIIII)V
    .registers 9

    not-int v0, p1

    xor-int v1, p1, p2

    xor-int/2addr p1, p4

    xor-int/2addr p3, v0

    or-int v2, v1, p1

    xor-int/2addr p3, v2

    const/4 v2, 0x0

    aput p3, p0, v2

    and-int/2addr p4, p3

    xor-int v2, v1, p3

    xor-int/2addr v2, p4

    const/4 v3, 0x1

    aput v2, p0, v3

    or-int/2addr p3, v0

    or-int v0, v1, p4

    xor-int/2addr p1, p3

    const/4 p3, 0x2

    xor-int/2addr v0, p1

    aput v0, p0, p3

    xor-int/2addr p2, p4

    and-int/2addr p1, v2

    xor-int/2addr p1, p2

    const/4 p2, 0x3

    aput p1, p0, p2

    return-void
.end method

.method public static w([IIIII)V
    .registers 7

    not-int v0, p1

    xor-int/2addr p1, p4

    xor-int v1, p2, p1

    or-int/2addr v0, p1

    xor-int/2addr p3, v0

    xor-int/2addr p2, p3

    const/4 v0, 0x1

    aput p2, p0, v0

    or-int/2addr p1, p2

    xor-int/2addr p1, p4

    and-int p2, p3, p1

    xor-int/2addr p2, v1

    const/4 p4, 0x2

    aput p2, p0, p4

    xor-int/2addr p1, p3

    const/4 p4, 0x0

    xor-int/2addr p2, p1

    aput p2, p0, p4

    not-int p2, p3

    and-int/2addr p1, v1

    xor-int/2addr p1, p2

    const/4 p2, 0x3

    aput p1, p0, p2

    return-void
.end method

.method public static x([IIIII)V
    .registers 7

    xor-int v0, p2, p3

    and-int/2addr p3, v0

    xor-int/2addr p3, p4

    xor-int v1, p1, p3

    or-int/2addr p4, v0

    and-int/2addr p4, v1

    xor-int/2addr p2, p4

    const/4 p4, 0x1

    aput p2, p0, p4

    or-int/2addr p2, p3

    and-int/2addr p1, v1

    xor-int/2addr p1, v0

    const/4 p4, 0x3

    aput p1, p0, p4

    xor-int/2addr p2, v1

    and-int p4, p1, p2

    xor-int/2addr p3, p4

    const/4 p4, 0x2

    aput p3, p0, p4

    not-int p2, p2

    and-int/2addr p1, p3

    xor-int/2addr p1, p2

    const/4 p2, 0x0

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method public final b(II[B[B)I
    .registers 16

    iget-object v0, p0, Lv0/e0;->h:[I

    if-eqz v0, :cond_9ba

    add-int/lit8 v0, p1, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_9b2

    add-int/lit8 v0, p2, 0x10

    array-length v1, p4

    if-gt v0, v1, :cond_9aa

    iget-boolean v0, p0, Lv0/e0;->g:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_9a6

    iget v0, p0, Lv0/e0;->i:I

    packed-switch v0, :pswitch_data_9ca

    const/4 v0, 0x4

    new-array v2, v0, [I

    invoke-static {p1, p3}, Lm4/d;->b(I[B)I

    move-result v3

    const/4 v4, 0x3

    aput v3, v2, v4

    add-int/lit8 v3, p1, 0x4

    invoke-static {v3, p3}, Lm4/d;->b(I[B)I

    move-result v3

    const/4 v5, 0x2

    aput v3, v2, v5

    add-int/lit8 v3, p1, 0x8

    invoke-static {v3, p3}, Lm4/d;->b(I[B)I

    move-result v3

    const/4 v6, 0x1

    aput v3, v2, v6

    const/16 v3, 0xc

    add-int/2addr p1, v3

    invoke-static {p1, p3}, Lm4/d;->b(I[B)I

    move-result p1

    const/4 p3, 0x0

    aput p1, v2, p3

    iget-object v7, p0, Lv0/e0;->h:[I

    aget v8, v7, p3

    xor-int/2addr p1, v8

    aget v8, v7, v6

    aget v9, v2, v6

    xor-int/2addr v8, v9

    aget v9, v7, v5

    aget v10, v2, v5

    xor-int/2addr v9, v10

    aget v7, v7, v4

    aget v10, v2, v4

    xor-int/2addr v7, v10

    invoke-static {v2, p1, v8, v9, v7}, Lv0/e0;->q([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/4 v7, 0x5

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/4 v8, 0x6

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/4 v9, 0x7

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->r([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x8

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x9

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0xa

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0xb

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->s([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    aget v0, p1, v3

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0xd

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0xe

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0xf

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->t([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x10

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x11

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x12

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x13

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->u([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x14

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x15

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x16

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x17

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->v([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x18

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x19

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x1a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x1b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->w([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x1c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x1d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x1e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x1f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->x([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x20

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x21

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x22

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x23

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->q([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x24

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x25

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x26

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x27

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->r([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x28

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x29

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x2a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x2b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->s([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x2c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x2d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x2e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x2f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->t([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x30

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x31

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x32

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x33

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->u([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x34

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x35

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x36

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x37

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->v([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x38

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x39

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x3a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x3b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->w([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x3c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x3d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x3e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x3f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->x([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x40

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x41

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x42

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x43

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->q([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x44

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x45

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x46

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x47

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->r([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x48

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x49

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x4a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x4b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->s([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x4c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x4d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x4e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x4f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->t([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x50

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x51

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x52

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x53

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->u([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x54

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x55

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x56

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x57

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->v([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x58

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x59

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x5a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x5b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->w([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x5c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x5d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x5e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x5f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->x([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x60

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x61

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x62

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x63

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->q([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x64

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x65

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x66

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x67

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->r([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x68

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x69

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x6a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x6b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->s([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x6c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x6d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x6e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x6f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->t([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x70

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x71

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x72

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x73

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->u([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x74

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x75

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x76

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x77

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->v([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x78

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x79

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x7a

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x7b

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->w([IIIII)V

    invoke-static {v2}, Lv0/e0;->a([I)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x7c

    aget v0, p1, v0

    aget v7, v2, p3

    xor-int/2addr v0, v7

    const/16 v7, 0x7d

    aget v7, p1, v7

    aget v8, v2, v6

    xor-int/2addr v7, v8

    const/16 v8, 0x7e

    aget v8, p1, v8

    aget v9, v2, v5

    xor-int/2addr v8, v9

    const/16 v9, 0x7f

    aget p1, p1, v9

    aget v9, v2, v4

    xor-int/2addr p1, v9

    invoke-static {v2, v0, v7, v8, p1}, Lv0/e0;->x([IIIII)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x83

    aget p1, p1, v0

    aget v0, v2, v4

    xor-int/2addr p1, v0

    invoke-static {p4, p1, p2}, Lm4/d;->w([BII)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x82

    aget p1, p1, v0

    aget v0, v2, v5

    xor-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x4

    invoke-static {p4, p1, v0}, Lm4/d;->w([BII)V

    iget-object p1, p0, Lv0/e0;->h:[I

    const/16 v0, 0x81

    aget p1, p1, v0

    aget v0, v2, v6

    xor-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x8

    invoke-static {p4, p1, v0}, Lm4/d;->w([BII)V

    iget-object p0, p0, Lv0/e0;->h:[I

    const/16 p1, 0x80

    aget p0, p0, p1

    aget p1, v2, p3

    xor-int/2addr p0, p1

    add-int/2addr p2, v3

    invoke-static {p4, p0, p2}, Lm4/d;->w([BII)V

    goto/16 :goto_9a5

    :pswitch_4e2
    invoke-static {p1, p3}, Lm4/d;->z(I[B)I

    move-result v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {v2, p3}, Lm4/d;->z(I[B)I

    move-result v2

    add-int/lit8 v3, p1, 0x8

    invoke-static {v3, p3}, Lm4/d;->z(I[B)I

    move-result v3

    const/16 v4, 0xc

    add-int/2addr p1, v4

    invoke-static {p1, p3}, Lm4/d;->z(I[B)I

    move-result p1

    filled-new-array {v0, v2, v3, p1}, [I

    move-result-object p1

    iget-object p3, p0, Lv0/e0;->h:[I

    const/4 v0, 0x0

    aget v2, p3, v0

    aget v3, p1, v0

    xor-int/2addr v2, v3

    const/4 v3, 0x1

    aget v5, p3, v3

    aget v6, p1, v3

    xor-int/2addr v5, v6

    const/4 v6, 0x2

    aget v7, p3, v6

    aget v8, p1, v6

    xor-int/2addr v7, v8

    const/4 v8, 0x3

    aget p3, p3, v8

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->q([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/4 v2, 0x4

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/4 v5, 0x5

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/4 v7, 0x6

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/4 v9, 0x7

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->r([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x8

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x9

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0xa

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0xb

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->s([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    aget v2, p3, v4

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0xd

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0xe

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0xf

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->t([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x10

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x11

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x12

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x13

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->u([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x14

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x15

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x16

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x17

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->v([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x18

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x19

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x1a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x1b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->w([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x1c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x1d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x1e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x1f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->x([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x20

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x21

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x22

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x23

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->q([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x24

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x25

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x26

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x27

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->r([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x28

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x29

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x2a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x2b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->s([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x2c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x2d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x2e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x2f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->t([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x30

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x31

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x32

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x33

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->u([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x34

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x35

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x36

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x37

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->v([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x38

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x39

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x3a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x3b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->w([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x3c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x3d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x3e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x3f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->x([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x40

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x41

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x42

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x43

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->q([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x44

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x45

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x46

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x47

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->r([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x48

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x49

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x4a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x4b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->s([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x4c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x4d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x4e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x4f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->t([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x50

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x51

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x52

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x53

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->u([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x54

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x55

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x56

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x57

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->v([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x58

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x59

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x5a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x5b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->w([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x5c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x5d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x5e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x5f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->x([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x60

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x61

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x62

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x63

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->q([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x64

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x65

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x66

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x67

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->r([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x68

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x69

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x6a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x6b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->s([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x6c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x6d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x6e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x6f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->t([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x70

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x71

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x72

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x73

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->u([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x74

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x75

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x76

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x77

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->v([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x78

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x79

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x7a

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x7b

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->w([IIIII)V

    invoke-static {p1}, Lv0/e0;->a([I)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x7c

    aget v2, p3, v2

    aget v5, p1, v0

    xor-int/2addr v2, v5

    const/16 v5, 0x7d

    aget v5, p3, v5

    aget v7, p1, v3

    xor-int/2addr v5, v7

    const/16 v7, 0x7e

    aget v7, p3, v7

    aget v9, p1, v6

    xor-int/2addr v7, v9

    const/16 v9, 0x7f

    aget p3, p3, v9

    aget v9, p1, v8

    xor-int/2addr p3, v9

    invoke-static {p1, v2, v5, v7, p3}, Lv0/e0;->x([IIIII)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v2, 0x80

    aget p3, p3, v2

    aget v0, p1, v0

    xor-int/2addr p3, v0

    invoke-static {p4, p3, p2}, Lm4/d;->x([BII)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v0, 0x81

    aget p3, p3, v0

    aget v0, p1, v3

    xor-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x4

    invoke-static {p4, p3, v0}, Lm4/d;->x([BII)V

    iget-object p3, p0, Lv0/e0;->h:[I

    const/16 v0, 0x82

    aget p3, p3, v0

    aget v0, p1, v6

    xor-int/2addr p3, v0

    add-int/lit8 v0, p2, 0x8

    invoke-static {p4, p3, v0}, Lm4/d;->x([BII)V

    iget-object p0, p0, Lv0/e0;->h:[I

    const/16 p3, 0x83

    aget p0, p0, p3

    aget p1, p1, v8

    xor-int/2addr p0, p1

    add-int/2addr p2, v4

    invoke-static {p4, p0, p2}, Lm4/d;->x([BII)V

    :goto_9a5
    return v1

    :cond_9a6
    invoke-virtual {p0, p1, p2, p3, p4}, Lv0/e0;->d(II[B[B)V

    return v1

    :cond_9aa
    new-instance p0, Lorg/bouncycastle/crypto/d0;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9b2
    new-instance p0, Lorg/bouncycastle/crypto/q;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9ba
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lv0/e0;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const-string p2, " not initialised"

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_9ca
    .packed-switch 0x0
        :pswitch_4e2
    .end packed-switch
.end method

.method public final c()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public final d(II[B[B)V
    .registers 14

    iget v0, p0, Lv0/e0;->i:I

    packed-switch v0, :pswitch_data_6c8

    const/4 v0, 0x4

    new-array v1, v0, [I

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v3, 0x83

    aget v2, v2, v3

    invoke-static {p1, p3}, Lm4/d;->b(I[B)I

    move-result v3

    xor-int/2addr v2, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v4, 0x82

    aget v2, v2, v4

    add-int/lit8 v4, p1, 0x4

    invoke-static {v4, p3}, Lm4/d;->b(I[B)I

    move-result v4

    xor-int/2addr v2, v4

    const/4 v4, 0x2

    aput v2, v1, v4

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v5, 0x81

    aget v2, v2, v5

    add-int/lit8 v5, p1, 0x8

    invoke-static {v5, p3}, Lm4/d;->b(I[B)I

    move-result v5

    xor-int/2addr v2, v5

    const/4 v5, 0x1

    aput v2, v1, v5

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v6, 0x80

    aget v2, v2, v6

    const/16 v6, 0xc

    add-int/2addr p1, v6

    invoke-static {p1, p3}, Lm4/d;->b(I[B)I

    move-result p1

    xor-int/2addr p1, v2

    const/4 p3, 0x0

    aput p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x7c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x7d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x7e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x7f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x78

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x79

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x7a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x7b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x74

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x75

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x76

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x77

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x70

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x71

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x72

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x73

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x6c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x6d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x6e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x6f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x68

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x69

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x6a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x6b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x64

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x65

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x66

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x67

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->f([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x60

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x61

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x62

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x63

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x5c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x5d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x5e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x5f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x58

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x59

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x5a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x5b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x54

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x55

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x56

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x57

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x50

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x51

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x52

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x53

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x4c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x4d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x4e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x4f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x48

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x49

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x4a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x4b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x44

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x45

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x46

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x47

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->f([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x40

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x41

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x42

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x43

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x3c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x3d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x3e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x3f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x38

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x39

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x3a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x3b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x34

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x35

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x36

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x37

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x30

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x31

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x32

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x33

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x2c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x2d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x2e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x2f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x28

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x29

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x2a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x2b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x24

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x25

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x26

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x27

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->f([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x20

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x21

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x22

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x23

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->m([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x1c

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x1d

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x1e

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x1f

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->l([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x18

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x19

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x1a

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x1b

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->k([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x14

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x15

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x16

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x17

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->j([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x10

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x11

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0x12

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0x13

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->i([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    aget v7, v2, v6

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0xd

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0xe

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0xf

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->h([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    const/16 v7, 0x8

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, p3

    aget p1, v1, v5

    const/16 v7, 0x9

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v5

    aget p1, v1, v4

    const/16 v7, 0xa

    aget v7, v2, v7

    xor-int/2addr p1, v7

    aput p1, v1, v4

    aget p1, v1, v3

    const/16 v7, 0xb

    aget v2, v2, v7

    xor-int/2addr p1, v2

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v2, v1, v5

    aget v7, v1, v4

    aget v8, v1, v3

    invoke-static {v1, p1, v2, v7, v8}, Lv0/e0;->g([IIIII)V

    aget p1, v1, p3

    iget-object v2, p0, Lv0/e0;->h:[I

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, p3

    aget p1, v1, v5

    const/4 v0, 0x5

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, v5

    aget p1, v1, v4

    const/4 v0, 0x6

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, v4

    aget p1, v1, v3

    const/4 v0, 0x7

    aget v0, v2, v0

    xor-int/2addr p1, v0

    aput p1, v1, v3

    invoke-static {v1}, Lv0/e0;->n([I)V

    aget p1, v1, p3

    aget v0, v1, v5

    aget v2, v1, v4

    aget v7, v1, v3

    invoke-static {v1, p1, v0, v2, v7}, Lv0/e0;->f([IIIII)V

    aget p1, v1, v3

    iget-object v0, p0, Lv0/e0;->h:[I

    aget v0, v0, v3

    xor-int/2addr p1, v0

    invoke-static {p4, p1, p2}, Lm4/d;->w([BII)V

    aget p1, v1, v4

    iget-object v0, p0, Lv0/e0;->h:[I

    aget v0, v0, v4

    xor-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x4

    invoke-static {p4, p1, v0}, Lm4/d;->w([BII)V

    aget p1, v1, v5

    iget-object v0, p0, Lv0/e0;->h:[I

    aget v0, v0, v5

    xor-int/2addr p1, v0

    add-int/lit8 v0, p2, 0x8

    invoke-static {p4, p1, v0}, Lm4/d;->w([BII)V

    aget p1, v1, p3

    iget-object p0, p0, Lv0/e0;->h:[I

    aget p0, p0, p3

    xor-int/2addr p0, p1

    add-int/2addr p2, v6

    invoke-static {p4, p0, p2}, Lm4/d;->w([BII)V

    return-void

    :pswitch_6c3
    invoke-direct {p0, p1, p2, p3, p4}, Lv0/e0;->e(II[B[B)V

    return-void

    nop

    :pswitch_data_6c8
    .packed-switch 0x0
        :pswitch_6c3
    .end packed-switch
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    iget p0, p0, Lv0/e0;->i:I

    packed-switch p0, :pswitch_data_c

    const-string p0, "Serpent"

    return-object p0

    :pswitch_8
    const-string p0, "Tnepres"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public final init(ZLorg/bouncycastle/crypto/g;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le1/o0;

    if-eqz v2, :cond_b87

    move/from16 v2, p1

    iput-boolean v2, v0, Lv0/e0;->g:Z

    move-object v2, v1

    check-cast v2, Le1/o0;

    iget-object v2, v2, Le1/o0;->c:[B

    iget v3, v0, Lv0/e0;->i:I

    packed-switch v3, :pswitch_data_bb0

    const/16 v3, 0x10

    new-array v4, v3, [I

    array-length v5, v2

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    move v8, v7

    :goto_1f
    if-lez v5, :cond_2d

    add-int/lit8 v9, v8, 0x1

    invoke-static {v5, v2}, Lm4/d;->b(I[B)I

    move-result v10

    aput v10, v4, v8

    add-int/lit8 v5, v5, -0x4

    move v8, v9

    goto :goto_1f

    :cond_2d
    if-nez v5, :cond_5b9

    add-int/lit8 v5, v8, 0x1

    invoke-static {v7, v2}, Lm4/d;->b(I[B)I

    move-result v2

    aput v2, v4, v8

    const/16 v2, 0x8

    const/4 v8, 0x1

    if-ge v5, v2, :cond_3e

    aput v8, v4, v5

    :cond_3e
    const/16 v5, 0x84

    new-array v9, v5, [I

    move v10, v2

    :goto_43
    const v11, -0x61c88647

    const/16 v12, 0xb

    if-ge v10, v3, :cond_68

    add-int/lit8 v13, v10, -0x8

    aget v14, v4, v13

    add-int/lit8 v15, v10, -0x5

    aget v15, v4, v15

    xor-int/2addr v14, v15

    add-int/lit8 v15, v10, -0x3

    aget v15, v4, v15

    xor-int/2addr v14, v15

    add-int/lit8 v15, v10, -0x1

    aget v15, v4, v15

    xor-int/2addr v14, v15

    xor-int/2addr v11, v14

    xor-int/2addr v11, v13

    invoke-static {v11, v12}, Lv0/e0;->o(II)I

    move-result v11

    aput v11, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    :cond_68
    invoke-static {v4, v2, v9, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v2

    :goto_6c
    if-ge v4, v5, :cond_8c

    add-int/lit8 v10, v4, -0x8

    aget v10, v9, v10

    add-int/lit8 v13, v4, -0x5

    aget v13, v9, v13

    xor-int/2addr v10, v13

    add-int/lit8 v13, v4, -0x3

    aget v13, v9, v13

    xor-int/2addr v10, v13

    add-int/lit8 v13, v4, -0x1

    aget v13, v9, v13

    xor-int/2addr v10, v13

    xor-int/2addr v10, v11

    xor-int/2addr v10, v4

    invoke-static {v10, v12}, Lv0/e0;->o(II)I

    move-result v10

    aput v10, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6c

    :cond_8c
    new-array v4, v6, [I

    aget v5, v9, v7

    aget v10, v9, v8

    const/4 v11, 0x2

    aget v13, v9, v11

    const/4 v14, 0x3

    aget v15, v9, v14

    invoke-static {v4, v5, v10, v13, v15}, Lv0/e0;->t([IIIII)V

    aget v5, v4, v7

    aput v5, v9, v7

    aget v5, v4, v8

    aput v5, v9, v8

    aget v5, v4, v11

    aput v5, v9, v11

    aget v5, v4, v14

    aput v5, v9, v14

    aget v5, v9, v6

    const/4 v10, 0x5

    aget v13, v9, v10

    const/4 v15, 0x6

    move/from16 p1, v2

    aget v2, v9, v15

    const/16 v16, 0x7

    move/from16 v17, v3

    aget v3, v9, v16

    invoke-static {v4, v5, v13, v2, v3}, Lv0/e0;->s([IIIII)V

    aget v2, v4, v7

    aput v2, v9, v6

    aget v2, v4, v8

    aput v2, v9, v10

    aget v2, v4, v11

    aput v2, v9, v15

    aget v2, v4, v14

    aput v2, v9, v16

    aget v2, v9, p1

    const/16 v3, 0x9

    aget v5, v9, v3

    const/16 v6, 0xa

    aget v10, v9, v6

    aget v13, v9, v12

    invoke-static {v4, v2, v5, v10, v13}, Lv0/e0;->r([IIIII)V

    aget v2, v4, v7

    aput v2, v9, p1

    aget v2, v4, v8

    aput v2, v9, v3

    aget v2, v4, v11

    aput v2, v9, v6

    aget v2, v4, v14

    aput v2, v9, v12

    const/16 v2, 0xc

    aget v3, v9, v2

    const/16 v5, 0xd

    aget v6, v9, v5

    const/16 v10, 0xe

    aget v12, v9, v10

    const/16 v13, 0xf

    aget v15, v9, v13

    invoke-static {v4, v3, v6, v12, v15}, Lv0/e0;->q([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    aget v2, v4, v14

    aput v2, v9, v13

    aget v2, v9, v17

    const/16 v3, 0x11

    aget v5, v9, v3

    const/16 v6, 0x12

    aget v10, v9, v6

    const/16 v12, 0x13

    aget v13, v9, v12

    invoke-static {v4, v2, v5, v10, v13}, Lv0/e0;->x([IIIII)V

    aget v2, v4, v7

    aput v2, v9, v17

    aget v2, v4, v8

    aput v2, v9, v3

    aget v2, v4, v11

    aput v2, v9, v6

    aget v2, v4, v14

    aput v2, v9, v12

    const/16 v2, 0x14

    aget v3, v9, v2

    const/16 v5, 0x15

    aget v6, v9, v5

    const/16 v10, 0x16

    aget v12, v9, v10

    const/16 v13, 0x17

    aget v15, v9, v13

    invoke-static {v4, v3, v6, v12, v15}, Lv0/e0;->w([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    aget v2, v4, v14

    aput v2, v9, v13

    const/16 v2, 0x18

    aget v3, v9, v2

    const/16 v5, 0x19

    aget v6, v9, v5

    const/16 v10, 0x1a

    aget v12, v9, v10

    const/16 v13, 0x1b

    aget v15, v9, v13

    invoke-static {v4, v3, v6, v12, v15}, Lv0/e0;->v([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    aget v2, v4, v14

    aput v2, v9, v13

    const/16 v2, 0x1c

    aget v3, v9, v2

    const/16 v5, 0x1d

    aget v6, v9, v5

    const/16 v10, 0x1e

    aget v12, v9, v10

    const/16 v13, 0x1f

    aget v15, v9, v13

    invoke-static {v4, v3, v6, v12, v15}, Lv0/e0;->u([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    aget v2, v4, v14

    aput v2, v9, v13

    const/16 v2, 0x20

    aget v3, v9, v2

    const/16 v5, 0x21

    aget v6, v9, v5

    const/16 v10, 0x22

    aget v12, v9, v10

    const/16 v13, 0x23

    aget v15, v9, v13

    invoke-static {v4, v3, v6, v12, v15}, Lv0/e0;->t([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    aget v2, v4, v14

    aput v2, v9, v13

    const/16 v2, 0x24

    aget v3, v9, v2

    const/16 v5, 0x25

    aget v6, v9, v5

    const/16 v10, 0x26

    aget v12, v9, v10

    const/16 v13, 0x27

    aget v15, v9, v13

    invoke-static {v4, v3, v6, v12, v15}, Lv0/e0;->s([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    aget v2, v4, v14

    aput v2, v9, v13

    const/16 v2, 0x28

    aget v3, v9, v2

    const/16 v5, 0x29

    aget v6, v9, v5

    const/16 v10, 0x2a

    aget v12, v9, v10

    const/16 v13, 0x2b

    aget v13, v9, v13

    invoke-static {v4, v3, v6, v12, v13}, Lv0/e0;->r([IIIII)V

    aget v3, v4, v7

    aput v3, v9, v2

    aget v2, v4, v8

    aput v2, v9, v5

    aget v2, v4, v11

    aput v2, v9, v10

    const/16 v2, 0x2b

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x2c

    aget v2, v9, v2

    const/16 v3, 0x2d

    aget v3, v9, v3

    const/16 v5, 0x2e

    aget v5, v9, v5

    const/16 v6, 0x2f

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->q([IIIII)V

    const/16 v2, 0x2c

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x2d

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x2e

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x2f

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x30

    aget v2, v9, v2

    const/16 v3, 0x31

    aget v3, v9, v3

    const/16 v5, 0x32

    aget v5, v9, v5

    const/16 v6, 0x33

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->x([IIIII)V

    const/16 v2, 0x30

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x31

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x32

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x33

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x34

    aget v2, v9, v2

    const/16 v3, 0x35

    aget v3, v9, v3

    const/16 v5, 0x36

    aget v5, v9, v5

    const/16 v6, 0x37

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->w([IIIII)V

    const/16 v2, 0x34

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x35

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x36

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x37

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x38

    aget v2, v9, v2

    const/16 v3, 0x39

    aget v3, v9, v3

    const/16 v5, 0x3a

    aget v5, v9, v5

    const/16 v6, 0x3b

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->v([IIIII)V

    const/16 v2, 0x38

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x39

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x3a

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x3b

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x3c

    aget v2, v9, v2

    const/16 v3, 0x3d

    aget v3, v9, v3

    const/16 v5, 0x3e

    aget v5, v9, v5

    const/16 v6, 0x3f

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->u([IIIII)V

    const/16 v2, 0x3c

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x3d

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x3e

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x3f

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x40

    aget v2, v9, v2

    const/16 v3, 0x41

    aget v3, v9, v3

    const/16 v5, 0x42

    aget v5, v9, v5

    const/16 v6, 0x43

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->t([IIIII)V

    const/16 v2, 0x40

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x41

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x42

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x43

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x44

    aget v2, v9, v2

    const/16 v3, 0x45

    aget v3, v9, v3

    const/16 v5, 0x46

    aget v5, v9, v5

    const/16 v6, 0x47

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->s([IIIII)V

    const/16 v2, 0x44

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x45

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x46

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x47

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x48

    aget v2, v9, v2

    const/16 v3, 0x49

    aget v3, v9, v3

    const/16 v5, 0x4a

    aget v5, v9, v5

    const/16 v6, 0x4b

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->r([IIIII)V

    const/16 v2, 0x48

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x49

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x4a

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x4b

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x4c

    aget v2, v9, v2

    const/16 v3, 0x4d

    aget v3, v9, v3

    const/16 v5, 0x4e

    aget v5, v9, v5

    const/16 v6, 0x4f

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->q([IIIII)V

    const/16 v2, 0x4c

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x4d

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x4e

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x4f

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x50

    aget v2, v9, v2

    const/16 v3, 0x51

    aget v3, v9, v3

    const/16 v5, 0x52

    aget v5, v9, v5

    const/16 v6, 0x53

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->x([IIIII)V

    const/16 v2, 0x50

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x51

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x52

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x53

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x54

    aget v2, v9, v2

    const/16 v3, 0x55

    aget v3, v9, v3

    const/16 v5, 0x56

    aget v5, v9, v5

    const/16 v6, 0x57

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->w([IIIII)V

    const/16 v2, 0x54

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x55

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x56

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x57

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x58

    aget v2, v9, v2

    const/16 v3, 0x59

    aget v3, v9, v3

    const/16 v5, 0x5a

    aget v5, v9, v5

    const/16 v6, 0x5b

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->v([IIIII)V

    const/16 v2, 0x58

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x59

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x5a

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x5b

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x5c

    aget v2, v9, v2

    const/16 v3, 0x5d

    aget v3, v9, v3

    const/16 v5, 0x5e

    aget v5, v9, v5

    const/16 v6, 0x5f

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->u([IIIII)V

    const/16 v2, 0x5c

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x5d

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x5e

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x5f

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x60

    aget v2, v9, v2

    const/16 v3, 0x61

    aget v3, v9, v3

    const/16 v5, 0x62

    aget v5, v9, v5

    const/16 v6, 0x63

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->t([IIIII)V

    const/16 v2, 0x60

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x61

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x62

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x63

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x64

    aget v2, v9, v2

    const/16 v3, 0x65

    aget v3, v9, v3

    const/16 v5, 0x66

    aget v5, v9, v5

    const/16 v6, 0x67

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->s([IIIII)V

    const/16 v2, 0x64

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x65

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x66

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x67

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x68

    aget v2, v9, v2

    const/16 v3, 0x69

    aget v3, v9, v3

    const/16 v5, 0x6a

    aget v5, v9, v5

    const/16 v6, 0x6b

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->r([IIIII)V

    const/16 v2, 0x68

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x69

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x6a

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x6b

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x6c

    aget v2, v9, v2

    const/16 v3, 0x6d

    aget v3, v9, v3

    const/16 v5, 0x6e

    aget v5, v9, v5

    const/16 v6, 0x6f

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->q([IIIII)V

    const/16 v2, 0x6c

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x6d

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x6e

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x6f

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x70

    aget v2, v9, v2

    const/16 v3, 0x71

    aget v3, v9, v3

    const/16 v5, 0x72

    aget v5, v9, v5

    const/16 v6, 0x73

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->x([IIIII)V

    const/16 v2, 0x70

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x71

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x72

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x73

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x74

    aget v2, v9, v2

    const/16 v3, 0x75

    aget v3, v9, v3

    const/16 v5, 0x76

    aget v5, v9, v5

    const/16 v6, 0x77

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->w([IIIII)V

    const/16 v2, 0x74

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x75

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x76

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x77

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x78

    aget v2, v9, v2

    const/16 v3, 0x79

    aget v3, v9, v3

    const/16 v5, 0x7a

    aget v5, v9, v5

    const/16 v6, 0x7b

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->v([IIIII)V

    const/16 v2, 0x78

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x79

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x7a

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x7b

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x7c

    aget v2, v9, v2

    const/16 v3, 0x7d

    aget v3, v9, v3

    const/16 v5, 0x7e

    aget v5, v9, v5

    const/16 v6, 0x7f

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->u([IIIII)V

    const/16 v2, 0x7c

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x7d

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x7e

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x7f

    aget v3, v4, v14

    aput v3, v9, v2

    const/16 v2, 0x80

    aget v2, v9, v2

    const/16 v3, 0x81

    aget v3, v9, v3

    const/16 v5, 0x82

    aget v5, v9, v5

    const/16 v6, 0x83

    aget v6, v9, v6

    invoke-static {v4, v2, v3, v5, v6}, Lv0/e0;->t([IIIII)V

    const/16 v2, 0x80

    aget v3, v4, v7

    aput v3, v9, v2

    const/16 v2, 0x81

    aget v3, v4, v8

    aput v3, v9, v2

    const/16 v2, 0x82

    aget v3, v4, v11

    aput v3, v9, v2

    const/16 v2, 0x83

    aget v3, v4, v14

    aput v3, v9, v2

    goto/16 :goto_b65

    :cond_5b9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be a multiple of 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5c1
    const/16 v3, 0x10

    new-array v4, v3, [I

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_5c8
    add-int/lit8 v8, v6, 0x4

    array-length v9, v2

    if-ge v8, v9, :cond_5d8

    add-int/lit8 v9, v7, 0x1

    invoke-static {v6, v2}, Lm4/d;->z(I[B)I

    move-result v6

    aput v6, v4, v7

    move v6, v8

    move v7, v9

    goto :goto_5c8

    :cond_5d8
    rem-int/lit8 v8, v6, 0x4

    if-nez v8, :cond_b7f

    add-int/lit8 v8, v7, 0x1

    invoke-static {v6, v2}, Lm4/d;->z(I[B)I

    move-result v2

    aput v2, v4, v7

    const/16 v2, 0x8

    const/4 v6, 0x1

    if-ge v8, v2, :cond_5eb

    aput v6, v4, v8

    :cond_5eb
    const/16 v7, 0x84

    new-array v9, v7, [I

    move v8, v2

    :goto_5f0
    const v10, -0x61c88647

    const/16 v11, 0xb

    if-ge v8, v3, :cond_615

    add-int/lit8 v12, v8, -0x8

    aget v13, v4, v12

    add-int/lit8 v14, v8, -0x5

    aget v14, v4, v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v8, -0x3

    aget v14, v4, v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v8, -0x1

    aget v14, v4, v14

    xor-int/2addr v13, v14

    xor-int/2addr v10, v13

    xor-int/2addr v10, v12

    invoke-static {v10, v11}, Lv0/e0;->o(II)I

    move-result v10

    aput v10, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5f0

    :cond_615
    invoke-static {v4, v2, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v2

    :goto_619
    if-ge v4, v7, :cond_639

    add-int/lit8 v8, v4, -0x8

    aget v8, v9, v8

    add-int/lit8 v12, v4, -0x5

    aget v12, v9, v12

    xor-int/2addr v8, v12

    add-int/lit8 v12, v4, -0x3

    aget v12, v9, v12

    xor-int/2addr v8, v12

    add-int/lit8 v12, v4, -0x1

    aget v12, v9, v12

    xor-int/2addr v8, v12

    xor-int/2addr v8, v10

    xor-int/2addr v8, v4

    invoke-static {v8, v11}, Lv0/e0;->o(II)I

    move-result v8

    aput v8, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_619

    :cond_639
    const/4 v4, 0x4

    new-array v7, v4, [I

    aget v8, v9, v5

    aget v10, v9, v6

    const/4 v12, 0x2

    aget v13, v9, v12

    const/4 v14, 0x3

    aget v15, v9, v14

    invoke-static {v7, v8, v10, v13, v15}, Lv0/e0;->t([IIIII)V

    aget v8, v7, v5

    aput v8, v9, v5

    aget v8, v7, v6

    aput v8, v9, v6

    aget v8, v7, v12

    aput v8, v9, v12

    aget v8, v7, v14

    aput v8, v9, v14

    aget v8, v9, v4

    const/4 v10, 0x5

    aget v13, v9, v10

    const/4 v15, 0x6

    move/from16 p1, v2

    aget v2, v9, v15

    const/16 v16, 0x7

    move/from16 v17, v3

    aget v3, v9, v16

    invoke-static {v7, v8, v13, v2, v3}, Lv0/e0;->s([IIIII)V

    aget v2, v7, v5

    aput v2, v9, v4

    aget v2, v7, v6

    aput v2, v9, v10

    aget v2, v7, v12

    aput v2, v9, v15

    aget v2, v7, v14

    aput v2, v9, v16

    aget v2, v9, p1

    const/16 v3, 0x9

    aget v4, v9, v3

    const/16 v8, 0xa

    aget v10, v9, v8

    aget v13, v9, v11

    invoke-static {v7, v2, v4, v10, v13}, Lv0/e0;->r([IIIII)V

    aget v2, v7, v5

    aput v2, v9, p1

    aget v2, v7, v6

    aput v2, v9, v3

    aget v2, v7, v12

    aput v2, v9, v8

    aget v2, v7, v14

    aput v2, v9, v11

    const/16 v2, 0xc

    aget v3, v9, v2

    const/16 v4, 0xd

    aget v8, v9, v4

    const/16 v10, 0xe

    aget v11, v9, v10

    const/16 v13, 0xf

    aget v15, v9, v13

    invoke-static {v7, v3, v8, v11, v15}, Lv0/e0;->q([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    aget v2, v7, v14

    aput v2, v9, v13

    aget v2, v9, v17

    const/16 v3, 0x11

    aget v4, v9, v3

    const/16 v8, 0x12

    aget v10, v9, v8

    const/16 v11, 0x13

    aget v13, v9, v11

    invoke-static {v7, v2, v4, v10, v13}, Lv0/e0;->x([IIIII)V

    aget v2, v7, v5

    aput v2, v9, v17

    aget v2, v7, v6

    aput v2, v9, v3

    aget v2, v7, v12

    aput v2, v9, v8

    aget v2, v7, v14

    aput v2, v9, v11

    const/16 v2, 0x14

    aget v3, v9, v2

    const/16 v4, 0x15

    aget v8, v9, v4

    const/16 v10, 0x16

    aget v11, v9, v10

    const/16 v13, 0x17

    aget v15, v9, v13

    invoke-static {v7, v3, v8, v11, v15}, Lv0/e0;->w([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    aget v2, v7, v14

    aput v2, v9, v13

    const/16 v2, 0x18

    aget v3, v9, v2

    const/16 v4, 0x19

    aget v8, v9, v4

    const/16 v10, 0x1a

    aget v11, v9, v10

    const/16 v13, 0x1b

    aget v15, v9, v13

    invoke-static {v7, v3, v8, v11, v15}, Lv0/e0;->v([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    aget v2, v7, v14

    aput v2, v9, v13

    const/16 v2, 0x1c

    aget v3, v9, v2

    const/16 v4, 0x1d

    aget v8, v9, v4

    const/16 v10, 0x1e

    aget v11, v9, v10

    const/16 v13, 0x1f

    aget v15, v9, v13

    invoke-static {v7, v3, v8, v11, v15}, Lv0/e0;->u([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    aget v2, v7, v14

    aput v2, v9, v13

    const/16 v2, 0x20

    aget v3, v9, v2

    const/16 v4, 0x21

    aget v8, v9, v4

    const/16 v10, 0x22

    aget v11, v9, v10

    const/16 v13, 0x23

    aget v15, v9, v13

    invoke-static {v7, v3, v8, v11, v15}, Lv0/e0;->t([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    aget v2, v7, v14

    aput v2, v9, v13

    const/16 v2, 0x24

    aget v3, v9, v2

    const/16 v4, 0x25

    aget v8, v9, v4

    const/16 v10, 0x26

    aget v11, v9, v10

    const/16 v13, 0x27

    aget v15, v9, v13

    invoke-static {v7, v3, v8, v11, v15}, Lv0/e0;->s([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    aget v2, v7, v14

    aput v2, v9, v13

    const/16 v2, 0x28

    aget v3, v9, v2

    const/16 v4, 0x29

    aget v8, v9, v4

    const/16 v10, 0x2a

    aget v11, v9, v10

    const/16 v13, 0x2b

    aget v13, v9, v13

    invoke-static {v7, v3, v8, v11, v13}, Lv0/e0;->r([IIIII)V

    aget v3, v7, v5

    aput v3, v9, v2

    aget v2, v7, v6

    aput v2, v9, v4

    aget v2, v7, v12

    aput v2, v9, v10

    const/16 v2, 0x2b

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x2c

    aget v2, v9, v2

    const/16 v3, 0x2d

    aget v3, v9, v3

    const/16 v4, 0x2e

    aget v4, v9, v4

    const/16 v8, 0x2f

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->q([IIIII)V

    const/16 v2, 0x2c

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x2d

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x2e

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x2f

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x30

    aget v2, v9, v2

    const/16 v3, 0x31

    aget v3, v9, v3

    const/16 v4, 0x32

    aget v4, v9, v4

    const/16 v8, 0x33

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->x([IIIII)V

    const/16 v2, 0x30

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x31

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x32

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x33

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x34

    aget v2, v9, v2

    const/16 v3, 0x35

    aget v3, v9, v3

    const/16 v4, 0x36

    aget v4, v9, v4

    const/16 v8, 0x37

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->w([IIIII)V

    const/16 v2, 0x34

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x35

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x36

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x37

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x38

    aget v2, v9, v2

    const/16 v3, 0x39

    aget v3, v9, v3

    const/16 v4, 0x3a

    aget v4, v9, v4

    const/16 v8, 0x3b

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->v([IIIII)V

    const/16 v2, 0x38

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x39

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x3a

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x3b

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x3c

    aget v2, v9, v2

    const/16 v3, 0x3d

    aget v3, v9, v3

    const/16 v4, 0x3e

    aget v4, v9, v4

    const/16 v8, 0x3f

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->u([IIIII)V

    const/16 v2, 0x3c

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x3d

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x3e

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x3f

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x40

    aget v2, v9, v2

    const/16 v3, 0x41

    aget v3, v9, v3

    const/16 v4, 0x42

    aget v4, v9, v4

    const/16 v8, 0x43

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->t([IIIII)V

    const/16 v2, 0x40

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x41

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x42

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x43

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x44

    aget v2, v9, v2

    const/16 v3, 0x45

    aget v3, v9, v3

    const/16 v4, 0x46

    aget v4, v9, v4

    const/16 v8, 0x47

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->s([IIIII)V

    const/16 v2, 0x44

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x45

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x46

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x47

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x48

    aget v2, v9, v2

    const/16 v3, 0x49

    aget v3, v9, v3

    const/16 v4, 0x4a

    aget v4, v9, v4

    const/16 v8, 0x4b

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->r([IIIII)V

    const/16 v2, 0x48

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x49

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x4a

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x4b

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x4c

    aget v2, v9, v2

    const/16 v3, 0x4d

    aget v3, v9, v3

    const/16 v4, 0x4e

    aget v4, v9, v4

    const/16 v8, 0x4f

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->q([IIIII)V

    const/16 v2, 0x4c

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x4d

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x4e

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x4f

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x50

    aget v2, v9, v2

    const/16 v3, 0x51

    aget v3, v9, v3

    const/16 v4, 0x52

    aget v4, v9, v4

    const/16 v8, 0x53

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->x([IIIII)V

    const/16 v2, 0x50

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x51

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x52

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x53

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x54

    aget v2, v9, v2

    const/16 v3, 0x55

    aget v3, v9, v3

    const/16 v4, 0x56

    aget v4, v9, v4

    const/16 v8, 0x57

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->w([IIIII)V

    const/16 v2, 0x54

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x55

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x56

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x57

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x58

    aget v2, v9, v2

    const/16 v3, 0x59

    aget v3, v9, v3

    const/16 v4, 0x5a

    aget v4, v9, v4

    const/16 v8, 0x5b

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->v([IIIII)V

    const/16 v2, 0x58

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x59

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x5a

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x5b

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x5c

    aget v2, v9, v2

    const/16 v3, 0x5d

    aget v3, v9, v3

    const/16 v4, 0x5e

    aget v4, v9, v4

    const/16 v8, 0x5f

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->u([IIIII)V

    const/16 v2, 0x5c

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x5d

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x5e

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x5f

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x60

    aget v2, v9, v2

    const/16 v3, 0x61

    aget v3, v9, v3

    const/16 v4, 0x62

    aget v4, v9, v4

    const/16 v8, 0x63

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->t([IIIII)V

    const/16 v2, 0x60

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x61

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x62

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x63

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x64

    aget v2, v9, v2

    const/16 v3, 0x65

    aget v3, v9, v3

    const/16 v4, 0x66

    aget v4, v9, v4

    const/16 v8, 0x67

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->s([IIIII)V

    const/16 v2, 0x64

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x65

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x66

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x67

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x68

    aget v2, v9, v2

    const/16 v3, 0x69

    aget v3, v9, v3

    const/16 v4, 0x6a

    aget v4, v9, v4

    const/16 v8, 0x6b

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->r([IIIII)V

    const/16 v2, 0x68

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x69

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x6a

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x6b

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x6c

    aget v2, v9, v2

    const/16 v3, 0x6d

    aget v3, v9, v3

    const/16 v4, 0x6e

    aget v4, v9, v4

    const/16 v8, 0x6f

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->q([IIIII)V

    const/16 v2, 0x6c

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x6d

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x6e

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x6f

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x70

    aget v2, v9, v2

    const/16 v3, 0x71

    aget v3, v9, v3

    const/16 v4, 0x72

    aget v4, v9, v4

    const/16 v8, 0x73

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->x([IIIII)V

    const/16 v2, 0x70

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x71

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x72

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x73

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x74

    aget v2, v9, v2

    const/16 v3, 0x75

    aget v3, v9, v3

    const/16 v4, 0x76

    aget v4, v9, v4

    const/16 v8, 0x77

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->w([IIIII)V

    const/16 v2, 0x74

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x75

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x76

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x77

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x78

    aget v2, v9, v2

    const/16 v3, 0x79

    aget v3, v9, v3

    const/16 v4, 0x7a

    aget v4, v9, v4

    const/16 v8, 0x7b

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->v([IIIII)V

    const/16 v2, 0x78

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x79

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x7a

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x7b

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x7c

    aget v2, v9, v2

    const/16 v3, 0x7d

    aget v3, v9, v3

    const/16 v4, 0x7e

    aget v4, v9, v4

    const/16 v8, 0x7f

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->u([IIIII)V

    const/16 v2, 0x7c

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x7d

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x7e

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x7f

    aget v3, v7, v14

    aput v3, v9, v2

    const/16 v2, 0x80

    aget v2, v9, v2

    const/16 v3, 0x81

    aget v3, v9, v3

    const/16 v4, 0x82

    aget v4, v9, v4

    const/16 v8, 0x83

    aget v8, v9, v8

    invoke-static {v7, v2, v3, v4, v8}, Lv0/e0;->t([IIIII)V

    const/16 v2, 0x80

    aget v3, v7, v5

    aput v3, v9, v2

    const/16 v2, 0x81

    aget v3, v7, v6

    aput v3, v9, v2

    const/16 v2, 0x82

    aget v3, v7, v12

    aput v3, v9, v2

    const/16 v2, 0x83

    aget v3, v7, v14

    aput v3, v9, v2

    :goto_b65
    iput-object v9, v0, Lv0/e0;->h:[I

    instance-of v0, v1, Lorg/bouncycastle/crypto/j;

    if-nez v0, :cond_b77

    sget-object v0, Lorg/bouncycastle/crypto/o;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_b77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "params should not be CryptoServicePurpose"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be a multiple of 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b87
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid parameter passed to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lv0/e0;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_bb0
    .packed-switch 0x0
        :pswitch_5c1
    .end packed-switch
.end method

.method public final reset()V
    .registers 1

    return-void
.end method
