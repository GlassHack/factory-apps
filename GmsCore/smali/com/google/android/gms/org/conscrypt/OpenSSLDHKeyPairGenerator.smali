.class public Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SourceFile"


# static fields
.field private static final DEFAULT_GENERATOR:Ljava/math/BigInteger;


# instance fields
.field private generator:Ljava/math/BigInteger;

.field private prime:Ljava/math/BigInteger;

.field private primeBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 34
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    .line 38
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2, v3, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DH_generate_key(J)V

    .line 53
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPrivateKey;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 54
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;

    invoke-direct {v2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 56
    new-instance v0, Ljava/security/KeyPair;

    invoke-direct {v0, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DH_generate_parameters_ex(IJ)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    goto :goto_0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    .line 62
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    .line 63
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    .line 64
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    .line 70
    const/16 v0, 0x400

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->primeBits:I

    .line 71
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->DEFAULT_GENERATOR:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    .line 73
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v0, :cond_1

    .line 74
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    .line 76
    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->prime:Ljava/math/BigInteger;

    .line 77
    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHKeyPairGenerator;->generator:Ljava/math/BigInteger;

    .line 84
    :cond_0
    return-void

    .line 81
    :cond_1
    if-eqz p1, :cond_0

    .line 82
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Params must be DHParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
