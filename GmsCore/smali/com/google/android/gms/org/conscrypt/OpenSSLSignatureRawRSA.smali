.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2

    .prologue
    .line 86
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 88
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    .line 101
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 103
    return-void

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_1

    .line 90
    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 91
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 92
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_2

    .line 93
    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 96
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA private key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2

    .prologue
    .line 107
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_0

    .line 108
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    .line 109
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    .line 119
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 121
    return-void

    .line 110
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 111
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 112
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method protected engineSign()[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need RSA private key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/security/SignatureException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input length "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (modulus size)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v0, v0

    new-array v3, v0, [B

    .line 141
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BJI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iput v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    return-object v3

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_1
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :catchall_0
    move-exception v0

    iput v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 3

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 58
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    goto :goto_0
.end method

.method protected engineUpdate([BII)V
    .locals 3

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 69
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 71
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v1, :cond_0

    .line 155
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need RSA public key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v1, :cond_1

    .line 184
    :goto_0
    return v7

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v1, v1

    new-array v3, v1, [B

    .line 166
    :try_start_0
    array-length v1, p1

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    const/4 v6, 0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BJI)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 174
    :try_start_1
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v2, v1, :cond_3

    :goto_1
    move v1, v7

    .line 175
    :goto_2
    if-ge v1, v2, :cond_4

    .line 176
    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v4, v4, v1

    aget-byte v5, v3, v1

    if-eq v4, v5, :cond_2

    move v0, v7

    .line 175
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    :try_start_2
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :catchall_0
    move-exception v0

    iput v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v0

    :catch_2
    move-exception v0

    .line 171
    iput v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    goto :goto_0

    :cond_3
    move v0, v7

    .line 174
    goto :goto_1

    .line 184
    :cond_4
    iput v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    move v7, v0

    goto :goto_0
.end method
