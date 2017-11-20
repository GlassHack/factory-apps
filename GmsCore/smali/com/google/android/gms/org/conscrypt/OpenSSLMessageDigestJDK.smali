.class public Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigestSpi;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

.field private final evp_md:J

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 47
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 48
    iput p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 50
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->resetContext()V

    .line 51
    return-void
.end method

.method private constructor <init>(JILcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 54
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 55
    iput p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 56
    iput-object p4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(JILcom/google/android/gms/org/conscrypt/o;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JI)V

    return-void
.end method

.method private final resetContext()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;-><init>(J)V

    .line 61
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V

    .line 62
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_DigestInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;J)I

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 64
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;-><init>(J)V

    .line 146
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V

    .line 147
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_copy(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)I

    .line 148
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iget v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V

    return-object v1
.end method

.method protected engineDigest()[B
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v0, [B

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_DigestFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BI)I

    .line 91
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->resetContext()V

    .line 92
    return-object v0
.end method

.method protected engineGetDigestLength()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected engineReset()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->resetContext()V

    .line 69
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    aput-byte p1, v0, v2

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V

    .line 80
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V

    .line 85
    return-void
.end method
