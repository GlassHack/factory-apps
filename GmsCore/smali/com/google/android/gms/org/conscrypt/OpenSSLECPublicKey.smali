.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;
.implements Ljava/security/interfaces/ECPublicKey;


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "EC"

.field private static final serialVersionUID:J = 0x2ca0f81a89dc7224L


# instance fields
.field protected transient group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

.field protected transient key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 42
    iput-object p2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v0

    .line 47
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 48
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECPublicKeySpec;)V
    .locals 6

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(J)I

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {p1}, Ljava/security/spec/ECPublicKeySpec;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/k;->a(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/google/android/gms/org/conscrypt/k;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/org/conscrypt/k;->a:J

    const/4 v0, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
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

.method public static getInstance(Ljava/security/interfaces/ECPublicKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 6

    .prologue
    .line 65
    :try_start_0
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getInstance(Ljava/security/spec/ECParameterSpec;)Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_EC_GROUP_type(J)I

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/k;->a(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;Ljava/security/spec/ECPoint;)Lcom/google/android/gms/org/conscrypt/k;

    move-result-object v1

    .line 69
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getContext()J

    move-result-wide v4

    iget-wide v0, v1, Lcom/google/android/gms/org/conscrypt/k;->a:J

    const/4 v3, 0x0

    invoke-static {v4, v5, v0, v1, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_new_EC_KEY(JJ[B)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getPublicKey()Ljava/security/spec/ECPoint;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gms/org/conscrypt/k;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get_public_key(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/k;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;J)V

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/k;->a()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4

    .prologue
    .line 153
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 155
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 157
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PUBKEY([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_KEY_get0_group(J)J

    move-result-wide v0

    .line 160
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EC_GROUP_dup(J)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    .line 161
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->isEngineBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "engine-based keys can not be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 169
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 170
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p1, p0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;

    if-eqz v2, :cond_2

    .line 120
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    iget-object v1, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLECPrivateKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_2
    instance-of v2, p1, Ljava/security/interfaces/ECPublicKey;

    if-nez v2, :cond_3

    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_3
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 129
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 130
    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 134
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    .line 136
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
    .line 78
    const-string v0, "EC"

    return-object v0
.end method

.method public final getEncoded()[B
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    return-object v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "X.509"

    return-object v0
.end method

.method public final getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    return-object v0
.end method

.method public final getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->group:Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public final getW()Ljava/security/spec/ECPoint;
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->getPublicKey()Ljava/security/spec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PUBKEY(J)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLECPublicKey;->key:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_PKEY_print_public(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
