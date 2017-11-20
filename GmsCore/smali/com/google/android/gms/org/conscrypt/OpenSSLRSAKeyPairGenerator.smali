.class public Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# instance fields
.field private modulusBits:I

.field private publicExponent:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 40
    const/16 v0, 0x800

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    return-void

    .line 33
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_generate_key_ex(I[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 47
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;

    move-result-object v1

    .line 48
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 50
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 56
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 61
    instance-of v0, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only RSAKeyGenParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    check-cast p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 67
    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 72
    :cond_1
    invoke-virtual {p1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 73
    return-void
.end method
