.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljava/security/interfaces/ECPrivateKey;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = -0x380500de1e729812L


# instance fields
.field protected transient group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

.field protected transient key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 43
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v0

    .line 48
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 49
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPrivateKeySpec;)V
    .locals 6

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 55
    invoke-virtual {p1}, Ljava/security/spec/ECPrivateKeySpec;->getS()Ljava/math/BigInteger;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getInstance(Ljava/security/interfaces/ECPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 8

    .prologue
    .line 80
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v1

    .line 87
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {p0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    .line 92
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v4, v5, v6, v7, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getPrivateKey()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get_private_key(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 199
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PKCS8_PRIV_KEY_INFO([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v0

    .line 202
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 203
    return-void
.end method

.method public static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 3

    .prologue
    .line 66
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    invoke-static {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unknown group parameters"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getECPrivateKeyWrapper(Ljava/security/interfaces/ECPrivateKey;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 211
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 212
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 157
    if-ne p1, p0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v2, :cond_2

    .line 162
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v1, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 166
    :cond_2
    instance-of v2, p1, Ljava/security/interfaces/ECPrivateKey;

    if-nez v2, :cond_3

    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :cond_3
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    .line 171
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 172
    goto :goto_0

    .line 175
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 176
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 178
    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/spec/EllipticCurve;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v2

    invoke-virtual {v3}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "EC"

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public final getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public final getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getS()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "private key value S cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_print_private(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
