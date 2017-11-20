.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private cipherSuite:Ljava/lang/String;

.field private creationTime:J

.field private id:[B

.field private isValid:Z

.field lastAccessedTime:J

.field final localCertificates:[Ljava/security/cert/X509Certificate;

.field private volatile peerCertificateChain:[Ljavax/security/cert/X509Certificate;

.field final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field private protocol:Ljava/lang/String;

.field private sessionContext:Lcom/google/android/gms/org/conscrypt/a;

.field protected sslSessionNativePointer:J

.field private final values:Ljava/util/Map;


# direct methods
.method protected constructor <init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/a;)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    .line 40
    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    .line 62
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    .line 63
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 64
    iput-object p4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 65
    iput-object p5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 66
    iput p6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    .line 67
    iput-object p7, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/google/android/gms/org/conscrypt/a;

    .line 68
    return-void
.end method

.method constructor <init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lcom/google/android/gms/org/conscrypt/a;)V
    .locals 9

    .prologue
    .line 80
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, p4

    move-object v6, p2

    move v7, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/a;)V

    .line 87
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid session data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    return-void
.end method

.method private checkPeerCertificatesPresent()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificates"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    return-void
.end method

.method private createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 3

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    new-array v1, v0, [Ljavax/security/cert/X509Certificate;

    .line 229
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 231
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 237
    throw v1

    .line 238
    :catch_1
    move-exception v0

    .line 239
    new-instance v1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v0}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 241
    throw v1

    .line 233
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 466
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationBufferSize()I
    .locals 1

    .prologue
    .line 155
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object v1

    .line 322
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->OPENSSL_TO_STANDARD_CIPHER_SUITES:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 324
    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTime()J
    .locals 4

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 131
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    .line 133
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method getEncoded()[B
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->id:[B

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->resetId()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 4

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    goto :goto_0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPacketBufferSize()I
    .locals 1

    .prologue
    .line 165
    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 212
    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->createPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificateChain:[Ljavax/security/cert/X509Certificate;

    .line 216
    :cond_0
    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->checkPeerCertificatesPresent()V

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 337
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/google/android/gms/org/conscrypt/a;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 394
    if-nez p1, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/google/android/gms/org/conscrypt/a;

    .line 380
    return-void
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sessionContext:Lcom/google/android/gms/org/conscrypt/a;

    .line 363
    iget-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->getCreationTime()J

    move-result-wide v2

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    .line 370
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->isValid:Z

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 426
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 430
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2

    .line 431
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 434
    :cond_2
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_3

    .line 435
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 438
    :cond_3
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 457
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_1

    .line 458
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 459
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 461
    :cond_1
    return-void
.end method

.method resetId()V
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->id:[B

    .line 114
    return-void
.end method
