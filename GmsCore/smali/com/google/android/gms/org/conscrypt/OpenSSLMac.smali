.class public abstract Lcom/google/android/gms/org/conscrypt/OpenSSLMac;
.super Ljavax/crypto/MacSpi;
.source "SourceFile"


# instance fields
.field private ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

.field private final evp_md:J

.field private final evp_pkey_type:I

.field private macKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JII)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->singleByte:[B

    .line 58
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->evp_md:J

    .line 59
    iput p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->size:I

    .line 60
    iput p4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->evp_pkey_type:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(JIILcom/google/android/gms/org/conscrypt/n;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;-><init>(JII)V

    return-void
.end method

.method private final resetContext()V
    .locals 6

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;-><init>(J)V

    .line 95
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->macKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 98
    if-eqz v1, :cond_0

    .line 99
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->evp_md:J

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_DigestSignInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;JJ)V

    .line 102
    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 103
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_DigestSignFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)[B

    move-result-object v0

    .line 121
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 122
    return-object v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->size:I

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .prologue
    .line 71
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key must be a SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-eqz p2, :cond_1

    .line 76
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "unknown parameter type"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_2

    .line 80
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->macKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 90
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 91
    return-void

    .line 82
    :cond_2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_3
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->evp_pkey_type:I

    invoke-static {v2, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->macKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_0
.end method

.method protected engineReset()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->resetContext()V

    .line 128
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->singleByte:[B

    aput-byte p1, v0, v2

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->engineUpdate([BII)V

    .line 109
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLMac;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 114
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V

    .line 115
    return-void
.end method
