.class public Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alias:Ljava/lang/String;

.field private final ctx:J

.field private final engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(JLcom/google/android/gms/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    .line 46
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    .line 47
    iput-object p4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static fromPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 4

    .prologue
    .line 72
    instance-of v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 78
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_1
    const-string v1, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown key format "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_2
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key encoding is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    goto :goto_0
.end method

.method public static fromPublicKey(Ljava/security/PublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 4

    .prologue
    .line 104
    instance-of v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_0

    .line 105
    check-cast p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    .line 108
    :cond_0
    const-string v0, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown key format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 113
    if-nez v0, :cond_2

    .line 114
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Key encoding is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_2
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    goto :goto_0
.end method

.method static getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .locals 4

    .prologue
    .line 174
    .line 178
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p0}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 184
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Unexpected key type"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 189
    :catch_1
    move-exception v0

    .line 190
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .locals 4

    .prologue
    .line 137
    .line 141
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p0}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 147
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Unexpected key type"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    .line 152
    :catch_1
    move-exception v0

    .line 153
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static wrapPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 3

    .prologue
    .line 92
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v0, :cond_1

    .line 95
    check-cast p0, Ljava/security/interfaces/DSAPrivateKey;

    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/DSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    .line 97
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown key type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 217
    if-ne p1, p0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    if-nez v2, :cond_2

    move v0, v1

    .line 222
    goto :goto_0

    .line 225
    :cond_2
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 226
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    if-nez v2, :cond_3

    .line 234
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getEngine()Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 235
    goto :goto_0

    .line 237
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getEngine()Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 238
    goto :goto_0

    .line 240
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 243
    goto :goto_0

    .line 247
    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_cmp(JJ)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    .line 207
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 212
    return-void

    .line 211
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getEngine()Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    return-object v0
.end method

.method public getPkeyContext()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    return-wide v0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 168
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :sswitch_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 166
    :goto_0
    return-object v0

    .line 162
    :sswitch_1
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPrivateKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 164
    :sswitch_2
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 166
    :sswitch_3
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x1c -> :sswitch_1
        0x74 -> :sswitch_2
        0x198 -> :sswitch_3
    .end sparse-switch
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 131
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :sswitch_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 129
    :goto_0
    return-object v0

    .line 125
    :sswitch_1
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 127
    :sswitch_2
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 129
    :sswitch_3
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    goto :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x1c -> :sswitch_1
        0x74 -> :sswitch_2
        0x198 -> :sswitch_3
    .end sparse-switch
.end method

.method public getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 200
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :sswitch_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;-><init>(Ljava/lang/String;Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    return-object v0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x357 -> :sswitch_0
        0x37e -> :sswitch_0
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 252
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->ctx:J

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x11

    .line 254
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    long-to-int v0, v0

    add-int/2addr v0, v2

    .line 255
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    move-result-wide v0

    goto :goto_0
.end method

.method isEngineBased()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->engine:Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
