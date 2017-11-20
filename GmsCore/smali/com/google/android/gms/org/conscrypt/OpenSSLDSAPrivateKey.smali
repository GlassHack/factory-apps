.class public Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljava/security/interfaces/DSAPrivateKey;


# static fields
.field private static final serialVersionUID:J = 0x5a8c83870b5c3f74L


# instance fields
.field private transient key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private transient params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/security/spec/DSAPrivateKeySpec;)V
    .locals 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/security/spec/DSAPrivateKeySpec;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureReadParams()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    .line 63
    :cond_0
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/DSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 6

    .prologue
    .line 70
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/DSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 76
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    invoke-static {v2, v3, v1, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 220
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 221
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 223
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 225
    new-instance v4, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v0, v5, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 231
    return-void
.end method

.method public static wrapPlatformKey(Ljava/security/interfaces/DSAPrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getDSAPrivateKeyWrapper(Ljava/security/interfaces/DSAPrivateKey;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 241
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 245
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 176
    :goto_0
    return v0

    .line 146
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 154
    goto :goto_0

    .line 158
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-nez v0, :cond_2

    move v0, v2

    .line 159
    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v0

    .line 165
    if-nez v0, :cond_3

    move v0, v2

    .line 172
    goto :goto_0

    .line 175
    :cond_3
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .line 176
    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "DSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PKCS8_PRIV_KEY_INFO(J)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "PKCS#8"

    goto :goto_0
.end method

.method public getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "private key value X cannot be extracted"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 183
    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    .line 186
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 190
    :cond_0
    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x7d

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAPrivateKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->ensureReadParams()V

    .line 207
    const-string v1, "X="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getX()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPrivateKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
