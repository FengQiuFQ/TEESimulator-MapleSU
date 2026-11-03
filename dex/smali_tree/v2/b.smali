.class public final Lv2/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/HashMap;

.field public static final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv2/b;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lv2/b;->b:Ljava/util/HashMap;

    sget-object v1, Ld0/r;->k:Lm/q;

    const-string v2, "RSASSA-PSS"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lt/a;->a:Lm/q;

    const-string v2, "ED25519"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lt/a;->b:Lm/q;

    const-string v2, "ED448"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    new-instance v1, Lm/q;

    const-string v2, "1.2.840.113549.1.1.5"

    invoke-direct {v1, v2}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v2, "SHA1WITHRSA"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ld0/r;->o:Lm/q;

    const-string v3, "SHA224WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ld0/r;->l:Lm/q;

    const-string v3, "SHA256WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ld0/r;->m:Lm/q;

    const-string v3, "SHA384WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ld0/r;->n:Lm/q;

    const-string v3, "SHA512WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ll0/e1;->z0:Lm/q;

    const-string v3, "SHAKE128WITHRSAPSS"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ll0/e1;->A0:Lm/q;

    const-string v3, "SHAKE256WITHRSAPSS"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lr/a;->m:Lm/q;

    const-string v3, "GOST3411WITHGOST3410"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lr/a;->n:Lm/q;

    const-string v3, "GOST3411WITHECGOST3410"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Le0/a;->c:Lm/q;

    const-string v3, "GOST3411-2012-256WITHECGOST3410-2012-256"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Le0/a;->d:Lm/q;

    const-string v3, "GOST3411-2012-512WITHECGOST3410-2012-512"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->a:Lm/q;

    const-string v3, "SHA1WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->b:Lm/q;

    const-string v3, "SHA224WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->c:Lm/q;

    const-string v3, "SHA256WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->d:Lm/q;

    const-string v3, "SHA384WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->e:Lm/q;

    const-string v3, "SHA512WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->g:Lm/q;

    const-string v3, "SHA3-224WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->h:Lm/q;

    const-string v3, "SHA3-256WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->i:Lm/q;

    const-string v3, "SHA3-384WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->j:Lm/q;

    const-string v3, "SHA3-512WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lp/a;->f:Lm/q;

    const-string v3, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ls/a;->a:Lm/q;

    const-string v3, "SHA1WITHCVC-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ls/a;->b:Lm/q;

    const-string v3, "SHA224WITHCVC-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ls/a;->c:Lm/q;

    const-string v3, "SHA256WITHCVC-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ls/a;->d:Lm/q;

    const-string v3, "SHA384WITHCVC-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ls/a;->e:Lm/q;

    const-string v3, "SHA512WITHCVC-ECDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lw/a;->a:Lm/q;

    const-string v3, "XMSS"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lw/a;->b:Lm/q;

    const-string v3, "XMSSMT"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lg0/b;->e:Lm/q;

    const-string v3, "RIPEMD128WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lg0/b;->d:Lm/q;

    const-string v3, "RIPEMD160WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lg0/b;->f:Lm/q;

    const-string v3, "RIPEMD256WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    new-instance v1, Lm/q;

    const-string v3, "1.2.840.113549.1.1.4"

    invoke-direct {v1, v3}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v3, "MD5WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    new-instance v1, Lm/q;

    const-string v3, "1.2.840.113549.1.1.2"

    invoke-direct {v1, v3}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v3, "MD2WITHRSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    new-instance v1, Lm/q;

    const-string v3, "1.2.840.10040.4.3"

    invoke-direct {v1, v3}, Lm/q;-><init>(Ljava/lang/String;)V

    const-string v3, "SHA1WITHDSA"

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lm0/m;->L0:Lm/q;

    const-string v4, "SHA1WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lm0/m;->O0:Lm/q;

    const-string v4, "SHA224WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lm0/m;->P0:Lm/q;

    const-string v4, "SHA256WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lm0/m;->Q0:Lm/q;

    const-string v4, "SHA384WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lm0/m;->R0:Lm/q;

    const-string v4, "SHA512WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ll0/e1;->B0:Lm/q;

    const-string v4, "SHAKE128WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ll0/e1;->C0:Lm/q;

    const-string v4, "SHAKE256WITHECDSA"

    invoke-static {v4, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lc0/a;->c:Lm/q;

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lc0/a;->b:Lm/q;

    invoke-static {v3, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->V:Lm/q;

    const-string v2, "SHA224WITHDSA"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->W:Lm/q;

    const-string v2, "SHA256WITHDSA"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Ld0/r;->f0:Lm/q;

    const-string v2, "LMS"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->l0:Lm/q;

    const-string v2, "ML-DSA-44"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->m0:Lm/q;

    const-string v2, "ML-DSA-65"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->n0:Lm/q;

    const-string v2, "ML-DSA-87"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->o0:Lm/q;

    const-string v2, "ML-DSA-44-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->p0:Lm/q;

    const-string v2, "ML-DSA-65-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->q0:Lm/q;

    const-string v2, "ML-DSA-87-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->r0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-128S"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->s0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-128F"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->t0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-192S"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->u0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-192F"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->v0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-256S"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->w0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-256F"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->x0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-128S"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->y0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-128F"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->z0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-192S"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->A0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-192F"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->B0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-256S"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->C0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-256F"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->D0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->E0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->F0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->G0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->H0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->I0:Lm/q;

    const-string v2, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->J0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->K0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->L0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->M0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->N0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lz/b;->O0:Lm/q;

    const-string v2, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-static {v2, v1}, Lv2/b;->a(Ljava/lang/String;Lm/q;)V

    sget-object v1, Lc0/a;->a:Lm/q;

    const-string v2, "SHA1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->d:Lm/q;

    const-string v2, "SHA224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->a:Lm/q;

    const-string v2, "SHA256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->b:Lm/q;

    const-string v2, "SHA384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->c:Lm/q;

    const-string v2, "SHA512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->k:Lm/q;

    const-string v2, "SHAKE128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->l:Lm/q;

    const-string v2, "SHAKE256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->g:Lm/q;

    const-string v2, "SHA3-224"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->h:Lm/q;

    const-string v2, "SHA3-256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->i:Lm/q;

    const-string v2, "SHA3-384"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lz/b;->j:Lm/q;

    const-string v2, "SHA3-512"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg0/b;->b:Lm/q;

    const-string v2, "RIPEMD128"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg0/b;->a:Lm/q;

    const-string v2, "RIPEMD160"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lg0/b;->c:Lm/q;

    const-string v2, "RIPEMD256"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lm/q;)V
    .registers 4

    sget-object v0, Lv2/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object identifier already present in addSignatureName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lm/q;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lv2/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lm/q;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
