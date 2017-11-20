.class public Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;
.super Ljavax/net/ssl/SSLEngine;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static nullSource:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;


# instance fields
.field channelIdPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

.field private engineState:Lcom/google/android/gms/org/conscrypt/m;

.field private handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

.field private handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

.field private final localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

.field private sslNativePointer:J

.field private final sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

.field private sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

.field private final stateLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljavax/net/ssl/SSLEngine;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 108
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->create()Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLEngine;-><init>(Ljava/lang/String;I)V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 108
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->create()Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    .line 128
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 129
    return-void
.end method

.method private static checkIndex(III)V
    .locals 2

    .prologue
    .line 374
    if-gez p1, :cond_0

    .line 375
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    if-gez p2, :cond_1

    .line 377
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "count < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    if-le p1, p0, :cond_2

    .line 379
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset > length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    sub-int v0, p0, p2

    if-le p1, v0, :cond_3

    .line 381
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "offset + count > length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_3
    return-void
.end method

.method private free()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 703
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_free(J)V

    .line 707
    iput-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    goto :goto_0
.end method

.method private getNextAvailableByteBuffer([Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 499
    :goto_0
    if-ge p2, p3, :cond_1

    .line 500
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    aget-object v0, p1, p2

    .line 504
    :goto_1
    return-object v0

    .line 499
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 504
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private shutdown()V
    .locals 7

    .prologue
    .line 684
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v4}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v4

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_shutdown_BIO(JJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private shutdownAndFreeSslNative()V
    .locals 1

    .prologue
    .line 696
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->free()V

    .line 699
    return-void

    .line 698
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->free()V

    throw v0
.end method

.method private static writeSinkToByteBuffer(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 602
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 603
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->skip(J)J

    .line 604
    return v0
.end method


# virtual methods
.method public beginHandshake()V
    .locals 9

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v0, v2, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Engine has already been closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 138
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v0, v2, :cond_2

    .line 139
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Handshake has already been started"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_3

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Client/server mode must be set before handshake"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->c:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 149
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/google/android/gms/org/conscrypt/a;

    move-result-object v0

    .line 154
    iget-wide v2, v0, Lcom/google/android/gms/org/conscrypt/a;->sslCtxNativePointer:J

    .line 155
    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_new(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v8

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setSSLParameters(JJLcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setCertificateValidation(J)V

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->channelIdPrivateKey:Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setTlsChannelId(JLcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_connect_state(J)V

    .line 165
    :goto_1
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->create()Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 166
    return-void

    .line 147
    :cond_4
    :try_start_3
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 163
    :cond_5
    :try_start_4
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_accept_state(J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 169
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v2, "unexpected CCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 172
    const-string v1, "ssl_unexpected_ccs: host=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 175
    :cond_6
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    :catchall_1
    move-exception v0

    .line 178
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_6
    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 180
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 181
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    throw v0

    .line 180
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 732
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v0, :cond_0

    .line 733
    check-cast p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 734
    invoke-virtual {p1, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 736
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, p3, p2, v0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public chooseClientPSKIdentity(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    invoke-interface {p1, p2, p0}, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 721
    instance-of v0, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v0, :cond_0

    .line 722
    check-cast p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 723
    invoke-virtual {p1, p2, v1, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    .line 725
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1, p2, v1, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public chooseServerPSKIdentityHint(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
    invoke-interface {p1, p0}, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 7

    .prologue
    .line 678
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->chooseClientCertificate([B[[BJLcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;)V

    .line 680
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public closeInbound()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v0, v2, :cond_0

    .line 190
    monitor-exit v1

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v0, v2, :cond_1

    .line 193
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 197
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 195
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public closeOutbound()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v0, v2, :cond_1

    .line 205
    :cond_0
    monitor-exit v1

    .line 217
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->shutdownAndFreeSslNative()V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v0, v2, :cond_3

    .line 211
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 215
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->shutdown()V

    goto :goto_0

    .line 213
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 713
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 4

    .prologue
    .line 242
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 243
    :try_start_0
    sget-object v0, Lcom/google/android/gms/org/conscrypt/l;->a:[I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/m;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 275
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected engine state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    .line 271
    :goto_0
    return-object v0

    .line 248
    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    if-lez v0, :cond_1

    .line 252
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 254
    :cond_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 257
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    if-nez v0, :cond_2

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    .line 259
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->g:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 260
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 262
    :cond_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1

    goto :goto_0

    .line 271
    :pswitch_3
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPSKKey(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 752
    invoke-interface {p1, p2, p3, p0}, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v0, :cond_0

    .line 287
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLNullSession;->getNullSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    goto :goto_0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isInboundDone()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 314
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 315
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 316
    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 320
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public isOutboundDone()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 326
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 327
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 328
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    .line 328
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 332
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_shutdown(J)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public onSSLStateChange(JII)V
    .locals 4

    .prologue
    .line 619
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 620
    sparse-switch p3, :sswitch_data_0

    .line 635
    :goto_0
    :try_start_0
    monitor-exit v1

    return-void

    .line 622
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->f:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    .line 624
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Completed handshake while in mode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 627
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->e:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    goto :goto_0

    .line 632
    :sswitch_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 620
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I

    move-result v0

    return v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 349
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 354
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 4

    .prologue
    .line 358
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v0, v2, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can not change mode after handshake: engineState == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 363
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 364
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 366
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 371
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 21

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "src == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
    :cond_0
    if-nez p2, :cond_1

    .line 391
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "dsts == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 393
    :cond_1
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v4, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->checkIndex(III)V

    .line 394
    const/4 v5, 0x0

    .line 395
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p2

    array-length v6, v0

    if-ge v4, v6, :cond_5

    .line 396
    aget-object v6, p2, v4

    .line 397
    if-nez v6, :cond_2

    .line 398
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "one of the dst == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    :cond_2
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 400
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v4

    .line 402
    :cond_3
    move/from16 v0, p3

    if-lt v4, v0, :cond_4

    add-int v7, p3, p4

    if-ge v4, v7, :cond_4

    .line 403
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    .line 395
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 407
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 409
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v7, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v4, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v7, Lcom/google/android/gms/org/conscrypt/m;->h:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v4, v7, :cond_7

    .line 410
    :cond_6
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v4, v5, v7, v8, v9}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v6

    .line 493
    :goto_1
    return-object v4

    .line 412
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v7, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v4, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v7, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v4, v7, :cond_9

    .line 413
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V

    .line 415
    :cond_9
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    .line 419
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v4, :cond_e

    .line 420
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    move-result-object v16

    .line 421
    const-wide/16 v14, 0x0

    .line 423
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v8}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v12, v10, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v13, v10, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v13}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_do_handshake_bio(JJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-wide v6

    .line 426
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-eqz v4, :cond_b

    .line 427
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v5, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v4, v5, :cond_a

    .line 428
    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->f:Lcom/google/android/gms/org/conscrypt/m;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 430
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 433
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v4}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position()I

    move-result v5

    .line 434
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v4, v8, v9, v10, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 439
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v5, :cond_c

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 440
    invoke-static {v6, v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 442
    :cond_c
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->release()V

    goto/16 :goto_1

    .line 415
    :catchall_0
    move-exception v4

    monitor-exit v6

    throw v4

    .line 435
    :catch_0
    move-exception v4

    move-wide v6, v14

    .line 436
    :goto_2
    :try_start_3
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v8, "Handshake failed"

    invoke-direct {v5, v8}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLHandshakeException;

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 439
    :catchall_1
    move-exception v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v5, :cond_d

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d

    .line 440
    invoke-static {v6, v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 442
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->release()V

    throw v4

    .line 444
    :cond_e
    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v4, :cond_f

    .line 445
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 448
    :cond_f
    if-nez v5, :cond_10

    .line 449
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 452
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 453
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    move-result-object v19

    .line 455
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v20

    .line 456
    const/4 v5, 0x0

    .line 457
    const/4 v4, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    .line 459
    :goto_4
    if-nez v16, :cond_14

    .line 460
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getNextAvailableByteBuffer([Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 461
    if-nez v15, :cond_11

    .line 462
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 463
    goto :goto_4

    .line 466
    :cond_11
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 467
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 470
    :goto_5
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int v8, v5, v6

    .line 472
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v12}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v12

    move-object/from16 v14, p0

    invoke-static/range {v5 .. v14}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_read_BIO(J[BIIJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v5

    .line 475
    if-gtz v5, :cond_12

    .line 476
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 477
    goto :goto_4

    .line 479
    :cond_12
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 480
    add-int v5, v5, v17

    .line 481
    if-eq v15, v4, :cond_13

    .line 482
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 483
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_13
    move/from16 v17, v5

    .line 485
    goto :goto_4

    .line 487
    :cond_14
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int v5, v4, v20

    .line 488
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 489
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    move/from16 v0, v17

    invoke-direct {v4, v6, v7, v5, v0}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 493
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->release()V

    goto/16 :goto_1

    .line 490
    :catch_1
    move-exception v4

    .line 491
    :try_start_5
    new-instance v5, Ljavax/net/ssl/SSLException;

    invoke-direct {v5, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 493
    :catchall_2
    move-exception v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->release()V

    throw v4

    .line 439
    :catchall_3
    move-exception v4

    move-wide v6, v14

    goto/16 :goto_3

    .line 435
    :catch_2
    move-exception v4

    goto/16 :goto_2

    :cond_15
    move-object v4, v15

    goto :goto_5
.end method

.method public verifyCertificateChain(J[JLjava/lang/String;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 642
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v9

    .line 643
    if-nez v9, :cond_0

    .line 644
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No X.509 TrustManager"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    :catchall_0
    move-exception v0

    iput-object v10, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    throw v0

    .line 646
    :cond_0
    if-eqz p3, :cond_1

    :try_start_2
    array-length v1, p3

    if-nez v1, :cond_2

    .line 647
    :cond_1
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Peer sent no certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    :catch_1
    move-exception v0

    .line 668
    :try_start_3
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    :cond_2
    :try_start_4
    array-length v1, p3

    new-array v5, v1, [Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 650
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 651
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v2, p3, v0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v1, v5, v0

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_3
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v7

    const/4 v8, 0x0

    move-wide v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/a;)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 658
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    .line 659
    if-eqz v0, :cond_4

    .line 660
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v5, p4, v0}, Lcom/google/android/gms/org/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 671
    :goto_1
    iput-object v10, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 672
    return-void

    .line 662
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    aget-object v0, v5, v0

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-interface {v9, v5, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 14

    .prologue
    .line 510
    if-nez p1, :cond_0

    .line 511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "srcs == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    :cond_0
    if-nez p4, :cond_1

    .line 513
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "dst == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v2

    .line 517
    :cond_2
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, p1, v2

    .line 518
    if-nez v4, :cond_3

    .line 519
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "one of the src == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 517
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_4
    array-length v2, p1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->checkIndex(III)V

    .line 524
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x4145

    if-ge v2, v3, :cond_5

    .line 525
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 592
    :goto_1
    return-object v2

    .line 528
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->j:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->i:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v2, v4, :cond_7

    .line 531
    :cond_6
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 536
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 533
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->a:Lcom/google/android/gms/org/conscrypt/m;

    if-eq v2, v4, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v4, Lcom/google/android/gms/org/conscrypt/m;->b:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v2, v4, :cond_9

    .line 534
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->beginHandshake()V

    .line 536
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    .line 540
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v2, :cond_e

    .line 541
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v2

    if-nez v2, :cond_c

    .line 542
    const-wide/16 v12, 0x0

    .line 544
    :try_start_2
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    sget-object v4, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->nullSource:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    invoke-virtual {v4}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->getContext()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getUseClientMode()Z

    move-result v9

    iget-object v8, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v10, v8, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    iget-object v8, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v11, v8, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    move-object v8, p0

    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_do_handshake_bio(JJJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Z[B[B)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v4

    .line 548
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_b

    .line 549
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    sget-object v3, Lcom/google/android/gms/org/conscrypt/m;->d:Lcom/google/android/gms/org/conscrypt/m;

    if-ne v2, v3, :cond_a

    .line 550
    sget-object v2, Lcom/google/android/gms/org/conscrypt/m;->f:Lcom/google/android/gms/org/conscrypt/m;

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->engineState:Lcom/google/android/gms/org/conscrypt/m;

    .line 552
    :cond_a
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-wide v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-object v8, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getPeerPort()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setupSession(JJLcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 559
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v2, :cond_c

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_c

    .line 560
    invoke-static {v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    .line 564
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->handshakeSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->writeSinkToByteBuffer(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 565
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 555
    :catch_0
    move-exception v2

    move-wide v4, v12

    .line 556
    :goto_2
    :try_start_4
    new-instance v3, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "Handshake failed"

    invoke-direct {v3, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLHandshakeException;

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 559
    :catchall_1
    move-exception v2

    :goto_3
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslSession:Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    if-nez v3, :cond_d

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_d

    .line 560
    invoke-static {v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    :cond_d
    throw v2

    .line 566
    :cond_e
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, v2, :cond_f

    .line 567
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v4, v3, v5, v6}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto/16 :goto_1

    .line 571
    :cond_f
    const/4 v9, 0x0

    .line 572
    const/4 v4, 0x0

    .line 574
    :try_start_5
    array-length v11, p1

    const/4 v2, 0x0

    move v10, v2

    :goto_4
    if-ge v10, v11, :cond_12

    aget-object v12, p1, v10

    .line 575
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 576
    if-eqz v4, :cond_10

    array-length v2, v4

    if-le v5, v2, :cond_11

    .line 577
    :cond_10
    new-array v4, v5, [B

    .line 583
    :cond_11
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 584
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->sslNativePointer:J

    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-virtual {v6}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->getContext()J

    move-result-wide v6

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_write_BIO(J[BIJLcom/google/android/gms/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v2

    .line 586
    if-lez v2, :cond_13

    .line 587
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v12, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 588
    add-int/2addr v2, v9

    .line 574
    :goto_5
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    move v9, v2

    goto :goto_4

    .line 592
    :cond_12
    new-instance v2, Ljavax/net/ssl/SSLEngineResult;

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->localToRemoteSink:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    move-object/from16 v0, p4

    invoke-static {v5, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;->writeSinkToByteBuffer(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;Ljava/nio/ByteBuffer;)I

    move-result v5

    invoke-direct {v2, v3, v4, v9, v5}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 594
    :catch_1
    move-exception v2

    .line 595
    new-instance v3, Ljavax/net/ssl/SSLException;

    invoke-direct {v3, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 559
    :catchall_2
    move-exception v2

    move-wide v4, v12

    goto :goto_3

    .line 555
    :catch_2
    move-exception v2

    goto/16 :goto_2

    :cond_13
    move v2, v9

    goto :goto_5
.end method
