.class public Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljava/security/interfaces/RSAPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x1b56d8a5b2600a4L


# instance fields
.field private transient fetchedParams:Z

.field private transient key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/security/spec/RSAPublicKeySpec;)V
    .locals 9

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_0
    new-instance v8, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureReadParams()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_RSA_public_params(J)[[B

    move-result-object v0

    .line 101
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    .line 102
    new-instance v1, Ljava/math/BigInteger;

    aget-object v0, v0, v3

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    .line 104
    iput-boolean v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    goto :goto_0
.end method

.method static getInstance(Ljava/security/interfaces/RSAPublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 9

    .prologue
    .line 66
    :try_start_0
    new-instance v8, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 173
    new-instance v8, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->fetchedParams:Z

    .line 183
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 188
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 125
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;

    .line 132
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 133
    goto :goto_0

    .line 137
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_2

    move v0, v2

    .line 138
    goto :goto_0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 143
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 144
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

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
    .line 82
    const-string v0, "RSA"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "X.509"

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 157
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->ensureReadParams()V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLRSAPublicKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
