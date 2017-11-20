.class public abstract Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# instance fields
.field private blockSize:I

.field private calledUpdate:Z

.field private cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

.field private encodedKey:[B

.field private encrypting:Z

.field private iv:[B

.field private mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

.field private modeBlockSize:I

.field private padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 118
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/gms/org/conscrypt/j;

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/j;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    .line 79
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 84
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
    .locals 4

    .prologue
    .line 121
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 73
    new-instance v0, Lcom/google/android/gms/org/conscrypt/j;

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/j;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    .line 79
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 84
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 123
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->blockSize:I

    .line 125
    return-void
.end method

.method private doFinalInternal([BII[BII)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 409
    .line 411
    if-lez p3, :cond_4

    .line 412
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v1

    .line 414
    add-int v0, p5, v1

    .line 415
    sub-int/2addr p6, v1

    .line 422
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    if-nez v1, :cond_0

    move v0, v2

    .line 446
    :goto_1
    return v0

    .line 427
    :cond_0
    array-length v1, p4

    sub-int v3, v1, v0

    .line 429
    if-lt v3, p6, :cond_2

    .line 430
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v2, v1, Lcom/google/android/gms/org/conscrypt/j;->a:J

    invoke-static {v2, v3, p4, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(J[BI)I

    move-result v1

    .line 442
    :cond_1
    :goto_2
    add-int/2addr v0, v1

    .line 444
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->reset()V

    .line 446
    sub-int/2addr v0, p5

    goto :goto_1

    .line 433
    :cond_2
    new-array v4, p6, [B

    .line 434
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v6, v1, Lcom/google/android/gms/org/conscrypt/j;->a:J

    invoke-static {v6, v7, v4, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(J[BI)I

    move-result v1

    .line 435
    if-le v1, v3, :cond_3

    .line 436
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "buffer is too short: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_3
    if-lez v1, :cond_1

    .line 439
    invoke-static {v4, v2, p4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_4
    move v0, p5

    goto :goto_0
.end method

.method private engineInitInternal(ILjava/security/Key;[BLjava/security/SecureRandom;)V
    .locals 8

    .prologue
    .line 245
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    .line 253
    :goto_0
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_4

    .line 254
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only SecretKey is supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 248
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_0

    .line 250
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

    .line 257
    :cond_4
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v7

    .line 258
    if-nez v7, :cond_5

    .line 259
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "key.getEncoded() == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_5
    array-length v0, v7

    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 262
    iput-object v7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 264
    array-length v0, v7

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getCipherName(ILcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v2

    .line 266
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_6

    .line 267
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find name for key length = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v7

    mul-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_6
    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v0

    .line 272
    if-nez p3, :cond_9

    if-eqz v0, :cond_9

    .line 273
    new-array p3, v0, [B

    .line 274
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    if-eqz v0, :cond_8

    .line 275
    if-nez p4, :cond_7

    .line 276
    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    .line 278
    :cond_7
    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 284
    :cond_8
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->iv:[B

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->supportsVariableSizeKey()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    array-length v2, v7

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(JI)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    const-wide/16 v2, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    move-object v4, v7

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v2, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(JZ)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    .line 301
    return-void

    .line 280
    :cond_9
    if-eqz p3, :cond_8

    array-length v1, p3

    if-eq v1, v0, :cond_8

    .line 281
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "expected IV length of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    iget-boolean v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    move-object v4, v7

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    goto :goto_1

    .line 297
    :cond_b
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private getOutputSize(I)I
    .locals 3

    .prologue
    .line 204
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 212
    :goto_0
    return p1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(J)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v1, v2, :cond_1

    .line 209
    add-int/2addr p1, v0

    goto :goto_0

    .line 211
    :cond_1
    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    add-int/2addr v0, v1

    .line 212
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->modeBlockSize:I

    rem-int v1, v0, v1

    sub-int p1, v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 7

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    iget-object v5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->iv:[B

    iget-boolean v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(JJ[B[BZ)V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    .line 403
    return-void
.end method

.method private final updateInternal([BII[BII)I
    .locals 7

    .prologue
    .line 345
    .line 347
    array-length v0, p4

    sub-int/2addr v0, p5

    .line 348
    if-ge v0, p6, :cond_0

    .line 349
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "output buffer too small during update: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " < "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->cipherCtx:Lcom/google/android/gms/org/conscrypt/j;

    iget-wide v0, v0, Lcom/google/android/gms/org/conscrypt/j;->a:J

    move-object v2, p4

    move v3, p5

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(J[BI[BII)I

    move-result v0

    add-int/2addr v0, p5

    .line 356
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    .line 358
    sub-int/2addr v0, p5

    return v0
.end method


# virtual methods
.method protected abstract checkSupportedKeySize(I)V
.end method

.method protected abstract checkSupportedMode(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)V
.end method

.method protected abstract checkSupportedPadding(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 7

    .prologue
    .line 485
    if-nez p4, :cond_0

    .line 486
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 490
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 456
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->encrypting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->calledUpdate:Z

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 457
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->reset()V

    .line 458
    const/4 v4, 0x0

    .line 477
    :cond_0
    :goto_0
    return-object v4

    .line 461
    :cond_1
    invoke-direct {p0, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    .line 463
    new-array v4, v6, [B

    .line 466
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 472
    array-length v1, v4

    if-eq v0, v1, :cond_0

    .line 474
    if-nez v0, :cond_2

    .line 475
    sget-object v4, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 469
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "our calculated buffer was too small"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 477
    :cond_2
    invoke-static {v4, v7, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->iv:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->iv:[B

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :goto_0
    return-object v0

    .line 235
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 237
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 240
    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 330
    if-eqz p3, :cond_0

    .line 332
    :try_start_0
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 340
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 341
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 337
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->engineInitInternal(ILjava/security/Key;[BLjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1

    .prologue
    .line 316
    instance-of v0, p3, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v0, :cond_0

    .line 317
    check-cast p3, Ljavax/crypto/spec/IvParameterSpec;

    .line 318
    invoke-virtual {p3}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    .line 323
    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->engineInitInternal(ILjava/security/Key;[BLjava/security/SecureRandom;)V

    .line 324
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 166
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 174
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->mode:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;

    .line 175
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No such mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 171
    throw v1
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 179
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 190
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->padding:Lcom/google/android/gms/org/conscrypt/OpenSSLCipher$Padding;

    .line 191
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No such padding: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 187
    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 3

    .prologue
    .line 509
    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v1

    .line 510
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 511
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 512
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 513
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 514
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 515
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0

    .line 516
    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2

    .line 517
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 519
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

    .line 523
    :catch_1
    move-exception v0

    .line 524
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 525
    :catch_2
    move-exception v0

    .line 526
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7

    .prologue
    .line 393
    invoke-direct {p0, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 394
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 363
    invoke-direct {p0, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->getOutputSize(I)I

    move-result v6

    .line 367
    if-lez v6, :cond_0

    .line 368
    new-array v4, v6, [B

    .line 375
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 381
    array-length v1, v4

    if-ne v1, v0, :cond_1

    .line 386
    :goto_1
    return-object v4

    .line 370
    :cond_0
    sget-object v4, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "calculated buffer size was wrong: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_1
    if-nez v0, :cond_2

    .line 384
    sget-object v4, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_1

    .line 386
    :cond_2
    invoke-static {v4, v7, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    goto :goto_1
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 3

    .prologue
    .line 496
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 497
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 500
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 501
    throw v1
.end method

.method protected abstract getBaseCipherName()Ljava/lang/String;
.end method

.method protected abstract getCipherBlockSize()I
.end method

.method protected abstract getCipherName(ILcom/google/android/gms/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method protected supportsVariableSizeKey()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method
