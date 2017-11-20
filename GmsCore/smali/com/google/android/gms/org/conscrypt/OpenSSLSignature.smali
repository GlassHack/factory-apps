.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;
.super Ljava/security/SignatureSpi;
.source "SourceFile"


# instance fields
.field private ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

.field private final engineType:Lcom/google/android/gms/org/conscrypt/q;

.field private final evpAlgorithm:J

.field private key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private signing:Z

.field private final singleByte:[B


# direct methods
.method private constructor <init>(JLcom/google/android/gms/org/conscrypt/q;)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->singleByte:[B

    .line 70
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    .line 71
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    .line 72
    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/gms/org/conscrypt/q;Lcom/google/android/gms/org/conscrypt/p;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;-><init>(JLcom/google/android/gms/org/conscrypt/q;)V

    return-void
.end method

.method private checkEngineType(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    .line 110
    sget-object v1, Lcom/google/android/gms/org/conscrypt/p;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/q;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key must be of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :pswitch_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signature initialized as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not RSA)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_1
    const/16 v1, 0x74

    if-eq v0, v1, :cond_0

    .line 119
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signature initialized as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not DSA)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_2
    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    .line 125
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Signature initialized as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not EC)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enableDSASignatureNonceHardeningIfApplicable()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 156
    sget-object v1, Lcom/google/android/gms/org/conscrypt/p;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineType:Lcom/google/android/gms/org/conscrypt/q;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/q;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->set_DSA_flag_nonce_from_hash(J)V

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_set_nonce_from_hash(JZ)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initInternal(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;Z)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->checkEngineType(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 136
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 138
    iput-boolean p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->signing:Z

    .line 139
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->resetContext()V

    .line 140
    return-void
.end method

.method private final resetContext()V
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;-><init>(J)V

    .line 76
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_init(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;)V

    .line 77
    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->enableDSASignatureNonceHardeningIfApplicable()V

    .line 79
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_SignInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;J)I

    .line 83
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 84
    return-void

    .line 81
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->evpAlgorithm:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_VerifyInit(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;J)I

    goto :goto_0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2

    .prologue
    .line 144
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;Z)V

    .line 145
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->initInternal(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;Z)V

    .line 171
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method protected engineSign()[B
    .locals 6

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need DSA or RSA or EC private key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_size(J)I

    move-result v1

    new-array v1, v1, [B

    .line 187
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_SignFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BIJ)I

    move-result v0

    .line 190
    new-array v2, v0, [B

    .line 191
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->resetContext()V

    return-object v2

    .line 194
    :catch_0
    move-exception v0

    .line 195
    :try_start_1
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->resetContext()V

    throw v0
.end method

.method protected engineUpdate(B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->singleByte:[B

    aput-byte p1, v0, v2

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->engineUpdate([BII)V

    .line 90
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    .line 95
    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->signing:Z

    if-eqz v1, :cond_0

    .line 96
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_SignUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-static {v0, p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_VerifyUpdate(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BII)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "Need DSA or RSA public key"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->ctx:Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;

    const/4 v2, 0x0

    array-length v3, p1

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_VerifyFinal(Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;[BIIJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 215
    if-ne v0, v6, :cond_1

    move v0, v6

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->resetContext()V

    :goto_1
    return v0

    :cond_1
    move v0, v7

    .line 215
    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->resetContext()V

    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSignature;->resetContext()V

    throw v0
.end method
