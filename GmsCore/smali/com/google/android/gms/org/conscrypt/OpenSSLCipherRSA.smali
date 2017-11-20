.class public abstract Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private encrypting:Z

.field private inputTooLarge:Z

.field private key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private padding:I

.field private usingPrivateKey:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 84
    iput p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 85
    return-void
.end method

.method private engineInitInternal(ILjava/security/Key;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    if-eq p1, v1, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 156
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    .line 163
    :goto_0
    instance-of v0, p2, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_4

    .line 164
    check-cast p2, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;

    .line 165
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 166
    invoke-virtual {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    .line 188
    iput-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 189
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 158
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    goto :goto_0

    .line 160
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported opmode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_5

    .line 168
    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 169
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 170
    invoke-static {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 171
    :cond_5
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_6

    .line 172
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    .line 173
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 174
    invoke-static {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 175
    :cond_6
    instance-of v0, p2, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_7

    .line 176
    check-cast p2, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    .line 177
    iput-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 178
    invoke-virtual {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 179
    :cond_7
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_8

    .line 180
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    .line 181
    iput-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    .line 182
    invoke-static {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    goto :goto_1

    .line 184
    :cond_8
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Need RSA private or public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private keySizeBytes()I
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cipher is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_size(J)I

    move-result v0

    return v0
.end method

.method private paddedBlockSizeBytes()I
    .locals 3

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 130
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 131
    add-int/lit8 v0, v0, -0x1

    .line 132
    add-int/lit8 v0, v0, -0xa

    .line 134
    :cond_0
    return v0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 4

    .prologue
    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v0

    .line 299
    array-length v1, v0

    add-int/2addr v1, p5

    .line 300
    array-length v2, p4

    if-le v1, v2, :cond_0

    .line 301
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "output buffer is too small "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    array-length v0, v0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 240
    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    if-eqz v0, :cond_1

    .line 245
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "input must be under "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    if-eq v0, v1, :cond_4

    .line 250
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 251
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v0, v0

    new-array v2, v0, [B

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v0, v7, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v0, v0

    new-array v3, v0, [B

    .line 262
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_6

    .line 263
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_5

    .line 264
    array-length v1, v2

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BJI)I

    move-result v0

    .line 285
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-nez v1, :cond_2

    array-length v1, v3

    if-eq v0, v1, :cond_2

    .line 286
    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 289
    :cond_2
    iput v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 290
    return-object v3

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    goto :goto_0

    .line 267
    :cond_5
    array-length v1, v2

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_public_encrypt(I[B[BJI)I

    move-result v0

    goto :goto_1

    .line 272
    :cond_6
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->usingPrivateKey:Z

    if-eqz v0, :cond_7

    .line 273
    array-length v1, v2

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_private_decrypt(I[B[BJI)I

    move-result v0

    goto :goto_1

    .line 276
    :cond_7
    array-length v1, v2

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    iget v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BJI)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 281
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 282
    throw v1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->encrypting:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->keySizeBytes()I

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->paddedBlockSizeBytes()I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3

    .prologue
    .line 210
    if-eqz p3, :cond_0

    .line 211
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown param type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 216
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 194
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .prologue
    .line 199
    if-eqz p3, :cond_0

    .line 200
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown param type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;)V

    .line 205
    return-void
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 89
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "NONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ECB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    return-void

    .line 94
    :cond_1
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mode not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 99
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "NOPADDING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->padding:I

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "padding not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 3

    .prologue
    .line 325
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B

    move-result-object v1

    .line 326
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 327
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 328
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 329
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 330
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 331
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0

    .line 332
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 333
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 335
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wrappedKeyType == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    .line 339
    :catch_1
    move-exception v0

    .line 340
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :catch_2
    move-exception v0

    .line 342
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineUpdate([BII)[B

    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->inputTooLarge:Z

    .line 222
    sget-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    .line 227
    :goto_0
    return-object v0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->bufferOffset:I

    .line 227
    sget-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 3

    .prologue
    .line 312
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 313
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipherRSA;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 316
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 317
    throw v1
.end method
