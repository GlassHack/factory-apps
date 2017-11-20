.class public Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljava/security/interfaces/DSAPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x48b34795d19308e8L


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
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 39
    return-void
.end method

.method constructor <init>(Ljava/security/spec/DSAPublicKeySpec;)V
    .locals 6

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/spec/DSAPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
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
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    .line 63
    :cond_0
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/DSAPublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 6

    .prologue
    .line 67
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6

    .prologue
    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 168
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 169
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 170
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/math/BigInteger;

    .line 173
    new-instance v4, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v1, v2, v0, v3, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DSA([B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 179
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 187
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 140
    :goto_0
    return v0

    .line 121
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;

    .line 128
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 129
    goto :goto_0

    .line 133
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v0, :cond_2

    move v0, v2

    .line 134
    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 139
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "DSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "X.509"

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljava/security/interfaces/DSAParams;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->hasParams()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    goto :goto_0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->ensureReadParams()V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    const-string v1, "Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->getY()Ljava/math/BigInteger;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAPublicKey;->params:Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLDSAParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
