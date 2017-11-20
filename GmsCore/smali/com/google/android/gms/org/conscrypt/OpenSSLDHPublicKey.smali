.class public Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljavax/crypto/interfaces/DHPublicKey;


# static fields
.field private static final serialVersionUID:J = 0x54fbd0cf86de321bL


# instance fields
.field private transient g:[B

.field private transient key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private final transient mParamsLock:Ljava/lang/Object;

.field private transient p:[B

.field private transient readParams:Z

.field private transient y:[B


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->mParamsLock:Ljava/lang/Object;

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 49
    return-void
.end method

.method constructor <init>(Ljavax/crypto/spec/DHPublicKeySpec;)V
    .locals 5

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->mParamsLock:Ljava/lang/Object;

    .line 58
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHPublicKeySpec;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureReadParams()V
    .locals 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->mParamsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->readParams:Z

    if-eqz v0, :cond_0

    .line 71
    monitor-exit v1

    .line 81
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_DH_params(J)[[B

    move-result-object v0

    .line 76
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->p:[B

    .line 77
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->g:[B

    .line 78
    const/4 v2, 0x2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->y:[B

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->readParams:Z

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getInstance(Ljavax/crypto/interfaces/DHPublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 5

    .prologue
    .line 86
    :try_start_0
    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    .line 87
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-interface {p0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    .prologue
    .line 187
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 189
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    .line 190
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    .line 193
    new-instance v3, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_DH([B[B[B[B)J

    move-result-wide v0

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 198
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 203
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->ensureReadParams()V

    .line 204
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->g:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->p:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 206
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->y:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 126
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 130
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 131
    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;

    .line 137
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 138
    goto :goto_0

    .line 142
    :cond_1
    instance-of v0, p1, Ljavax/crypto/interfaces/DHPublicKey;

    if-nez v0, :cond_2

    move v0, v2

    .line 143
    goto :goto_0

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->ensureReadParams()V

    .line 148
    check-cast p1, Ljavax/crypto/interfaces/DHPublicKey;

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->y:[B

    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 150
    goto :goto_0

    .line 153
    :cond_3
    invoke-interface {p1}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    .line 154
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->g:[B

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->p:[B

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 105
    const-string v0, "DH"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-string v0, "X.509"

    return-object v0
.end method

.method public getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 4

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->ensureReadParams()V

    .line 100
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->p:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v2, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->g:[B

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->ensureReadParams()V

    .line 121
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->y:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->ensureReadParams()V

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->y:[B

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    .line 162
    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->p:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    mul-int/lit8 v0, v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->g:[B

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    const/16 v3, 0x10

    .line 170
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->ensureReadParams()V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLDHPublicKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "Y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->y:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "P="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->p:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "G="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDHPublicKey;->g:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
