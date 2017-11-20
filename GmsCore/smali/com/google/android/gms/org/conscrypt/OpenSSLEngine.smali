.class public Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mLoadingLock:Ljava/lang/Object;


# instance fields
.field private final ctx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_load_dynamic()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    .line 55
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_init(J)I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_free(J)I

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not initialize engine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;
    .locals 6

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "engine == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->mLoadingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_by_id(Ljava/lang/String;)J

    move-result-wide v2

    .line 42
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown ENGINE id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_add(J)I

    .line 47
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    if-ne p1, p0, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 117
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    if-nez v2, :cond_2

    move v0, v1

    .line 118
    goto :goto_0

    .line 121
    :cond_2
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;

    .line 123
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 127
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_get_id(J)Ljava/lang/String;

    move-result-object v0

    .line 128
    if-nez v0, :cond_3

    move v0, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->getEngineContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_get_id(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_finish(J)I

    .line 105
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_free(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 108
    return-void

    .line 107
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method getEngineContext()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    return-wide v0
.end method

.method public getPrivateKeyById(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 4

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_load_private_key(JLjava/lang/String;)J

    move-result-wide v0

    .line 67
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :cond_1
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(JLcom/google/android/gms/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V

    .line 73
    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSecretKeyById(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 4

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "id == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ENGINE_load_private_key(JLjava/lang/String;)J

    move-result-wide v0

    .line 85
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 86
    const/4 v0, 0x0

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_1
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-direct {v2, v0, v1, p0, p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;-><init>(JLcom/google/android/gms/org/conscrypt/OpenSSLEngine;Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-virtual {v2, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getSecretKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngine;->ctx:J

    long-to-int v0, v0

    return v0
.end method
