.class public Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# instance fields
.field private g:[B

.field private p:[B

.field private primeBits:I

.field private q:[B

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 29
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->primeBits:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_0
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->primeBits:I

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->g:[B

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->p:[B

    iget-object v5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->q:[B

    invoke-static {v2, v0, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DSA_generate_key(I[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 52
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 53
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;

    invoke-direct {v2, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 55
    new-instance v1, Ljava/security/KeyPair;

    invoke-direct {v1, v2, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    .line 45
    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->primeBits:I

    .line 61
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 62
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 67
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 69
    instance-of v0, p1, Ljava/security/spec/DSAParameterSpec;

    if-eqz v0, :cond_3

    .line 70
    check-cast p1, Ljava/security/spec/DSAParameterSpec;

    .line 72
    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->g:[B

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->p:[B

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAKeyPairGenerator;->q:[B

    .line 89
    :cond_2
    return-void

    .line 86
    :cond_3
    if-eqz p1, :cond_2

    .line 87
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Params must be DSAParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
