.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljavax/crypto/SecretKey;


# static fields
.field private static final serialVersionUID:J = 0x1969350f33bb57ddL


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final encoded:[B

.field private transient key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 49
    invoke-virtual {p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_type(J)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->type:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    .line 41
    const/16 v0, 0x357

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->type:I

    .line 42
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->type:I

    invoke-static {v1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 43
    return-void
.end method

.method public static getInstance(Ljavax/crypto/SecretKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 4

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    const/16 v1, 0x357

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 127
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->type:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_mac_key(I[B)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 128
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 136
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    if-ne p1, p0, :cond_0

    .line 93
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    .line 96
    :cond_0
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-nez v0, :cond_1

    move v0, v1

    .line 97
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 100
    check-cast v0, Ljavax/crypto/SecretKey;

    .line 101
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;

    if-eqz v2, :cond_3

    .line 106
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 108
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->encoded:[B

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "RAW"

    goto :goto_0
.end method

.method public getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSecretKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->hashCode()I

    move-result v0

    return v0
.end method
