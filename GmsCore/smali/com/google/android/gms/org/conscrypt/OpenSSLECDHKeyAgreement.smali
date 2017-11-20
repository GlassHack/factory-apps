.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;
.super Ljavax/crypto/KeyAgreementSpi;
.source "SourceFile"


# instance fields
.field private mExpectedResultLength:I

.field private mOpenSslPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private mResult:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljavax/crypto/KeyAgreementSpi;-><init>()V

    return-void
.end method

.method private checkCompleted()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Key agreement not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public final engineDoPhase(Ljava/security/Key;Z)Ljava/security/Key;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    if-nez p2, :cond_1

    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ECDH only has one phase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    if-nez p1, :cond_2

    .line 59
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    instance-of v0, p1, Ljava/security/PublicKey;

    if-nez v0, :cond_3

    .line 62
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a public key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_3
    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 66
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    new-array v0, v0, [B

    .line 67
    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ECDH_compute_key([BIJJ)I

    move-result v2

    .line 73
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Engine returned "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_4
    iget v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ne v2, v3, :cond_5

    .line 87
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_5
    iget v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    if-ge v2, v3, :cond_6

    .line 80
    new-array v2, v2, [B

    .line 81
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v4, v4

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto :goto_0

    .line 84
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Engine produced a longer than expected result. Expected: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", actual: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final engineGenerateSecret([BI)I
    .locals 4

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 96
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 97
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 98
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Needed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    array-length v0, v0

    return v0
.end method

.method protected final engineGenerateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 115
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->engineGenerateSecret()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method protected final engineGenerateSecret()[B
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->checkCompleted()V

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mResult:[B

    return-object v0
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 4

    .prologue
    .line 120
    if-nez p1, :cond_0

    .line 121
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a private key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_get_degree(J)I

    move-result v1

    .line 130
    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mExpectedResultLength:I

    .line 131
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->mOpenSslPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 132
    return-void
.end method

.method protected final engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 138
    if-eqz p2, :cond_0

    .line 139
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No algorithm parameters supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLECDHKeyAgreement;->engineInit(Ljava/security/Key;Ljava/security/SecureRandom;)V

    .line 142
    return-void
.end method
