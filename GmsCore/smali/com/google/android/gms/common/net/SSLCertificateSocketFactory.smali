.class public Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation


# static fields
.field private static final a:[Ljavax/net/ssl/TrustManager;


# instance fields
.field private b:Ljavax/net/ssl/SSLSocketFactory;

.field private c:Ljavax/net/ssl/SSLSocketFactory;

.field private d:[Ljavax/net/ssl/TrustManager;

.field private e:[Ljavax/net/ssl/KeyManager;

.field private f:[B

.field private g:[B

.field private h:Ljava/security/PrivateKey;

.field private final i:I

.field private final j:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/net/a;

    invoke-direct {v2}, Lcom/google/android/gms/common/net/a;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a:[Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/common/net/SSLSessionCache;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 95
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 96
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 97
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->d:[Ljavax/net/ssl/TrustManager;

    .line 98
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->e:[Ljavax/net/ssl/KeyManager;

    .line 99
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    .line 100
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    .line 101
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    .line 115
    iput p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    .line 116
    if-nez p2, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->j:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->k:Z

    .line 118
    return-void

    .line 116
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/common/net/SSLSessionCache;->a:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    goto :goto_0
.end method

.method private declared-synchronized a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->k:Z

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 265
    const-string v0, "SSLCertificateSocketFactory"

    const-string v1, "Bypassing SSL security checks at caller\'s request"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->e:[Ljavax/net/ssl/KeyManager;

    sget-object v1, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->b:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_0
    monitor-exit p0

    return-object v0

    .line 270
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->e:[Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->d:[Ljavax/net/ssl/TrustManager;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->c:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a(ILcom/google/android/gms/common/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(ILcom/google/android/gms/common/net/SSLSessionCache;)V

    return-object v0
.end method

.method private a([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .prologue
    .line 251
    :try_start_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;

    invoke-direct {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;-><init>()V

    .line 252
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 253
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->j:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->setPersistentCache(Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;)V

    .line 254
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    const-string v1, "SSLCertificateSocketFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method private static a(Ljava/net/Socket;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 230
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to verify non-SSL socket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_0
    check-cast p0, Ljavax/net/ssl/SSLSocket;

    .line 237
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 239
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 240
    if-nez v0, :cond_1

    .line 241
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Cannot verify SSL socket without session"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_1
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot verify hostname: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    return-void
.end method

.method private static b(ILcom/google/android/gms/common/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 187
    :try_start_0
    const-class v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljavax/net/ssl/SSLSocketFactory;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 190
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(ILcom/google/android/gms/common/net/SSLSessionCache;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultWithSessionCache(ILandroid/content/Context;)Ljavax/net/SocketFactory;
    .locals 2
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;

    new-instance v1, Lcom/google/android/gms/common/net/SSLSessionCache;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;-><init>(ILcom/google/android/gms/common/net/SSLSessionCache;)V

    return-object v0
.end method

.method public static getHttpSocketFactoryWithSessionCache(ILandroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/RetainForClient;
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/gms/common/net/SSLSessionCache;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->b(ILcom/google/android/gms/common/net/SSLSessionCache;)Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/security/PrivateKey;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    .line 407
    return-void
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    .line 488
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 489
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 490
    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 491
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 492
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    .line 561
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 562
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 563
    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 564
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 565
    iget-boolean v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->k:Z

    if-eqz v1, :cond_0

    .line 566
    invoke-static {v0, p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 568
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    .line 542
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 543
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 544
    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 545
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 546
    iget-boolean v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->k:Z

    if-eqz v1, :cond_0

    .line 547
    invoke-static {v0, p1}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 549
    :cond_0
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    .line 524
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 525
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 526
    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 527
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 528
    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 505
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    .line 507
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 508
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 509
    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 510
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 511
    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    .line 467
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->f:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setNpnProtocols([B)V

    .line 468
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->g:[B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setAlpnProtocols([B)V

    .line 469
    iget v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->i:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setHandshakeTimeout(I)V

    .line 470
    iget-object v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->h:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;->setChannelIdPrivateKey(Ljava/security/PrivateKey;)V

    .line 471
    iget-boolean v1, p0, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->k:Z

    if-eqz v1, :cond_0

    .line 472
    invoke-static {v0, p2}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a(Ljava/net/Socket;Ljava/lang/String;)V

    .line 474
    :cond_0
    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/google/android/gms/common/net/SSLCertificateSocketFactory;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
