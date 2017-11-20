.class public Lcom/google/android/search/core/util/VelvetSslSocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "VelvetSslSocketFactory.java"


# static fields
.field private static final NPN_PROTOCOLS:[[B

.field private static final SSL_SESSION_CACHE_SIZE:I = 0x19

.field private static final TAG:Ljava/lang/String; = "SSLSocketFactory"

.field private static sSslSessionCache:Landroid/net/SSLSessionCache;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "VelvetSslSocketFactory.class"
    .end annotation
.end field


# instance fields
.field private final mAdvertiseSpdy:Z

.field private final mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

.field private final mContext:Landroid/content/Context;

.field private mDelegate:Ljavax/net/ssl/SSLSocketFactory;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSessionCacheSizeAdjusted:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->NPN_PROTOCOLS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;Landroid/content/Context;Z)V
    .locals 0
    .param p1, "config"    # Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "advertiseSpdy"    # Z

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    .line 80
    iput-object p2, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mContext:Landroid/content/Context;

    .line 81
    iput-boolean p3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mAdvertiseSpdy:Z

    .line 82
    return-void
.end method

.method private static declared-synchronized createOrGetSessionCache(Landroid/content/Context;)Landroid/net/SSLSessionCache;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 136
    const-class v1, Lcom/google/android/search/core/util/VelvetSslSocketFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->sSslSessionCache:Landroid/net/SSLSessionCache;

    if-nez v0, :cond_0

    .line 137
    const-string v0, "SSLSocketFactory"

    const-string v2, "Creating SSL Session cache"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 138
    new-instance v0, Landroid/net/SSLSessionCache;

    invoke-direct {v0, p0}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->sSslSessionCache:Landroid/net/SSLSessionCache;

    .line 141
    :cond_0
    sget-object v0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->sSslSessionCache:Landroid/net/SSLSessionCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized maybeAdjustSessionCacheSize(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 6
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mSessionCacheSizeAdjusted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return-object p1

    .line 149
    :cond_1
    :try_start_1
    instance-of v3, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v3, :cond_0

    .line 150
    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v2, v0

    .line 155
    .local v2, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "SSLSocketFactory"

    const-string v4, "Adjusting session cache size."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    .line 158
    .local v1, "ctx":Ljavax/net/ssl/SSLSessionContext;
    const/16 v3, 0x19

    invoke-interface {v1, v3}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    .line 159
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mSessionCacheSizeAdjusted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    .end local v1    # "ctx":Ljavax/net/ssl/SSLSessionContext;
    .end local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 161
    .restart local v2    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_2
    :try_start_2
    const-string v3, "SSLSocketFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No session found for socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized maybeInitDelegate()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    invoke-interface {v3}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->isSslSessionCacheEnabled()Z

    move-result v1

    .line 171
    .local v1, "sessionCacheEnabled":Z
    iget-boolean v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mAdvertiseSpdy:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    invoke-interface {v3}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->isSpdyEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 174
    .local v2, "spdyEnabled":Z
    :cond_0
    const-string v3, "SSLSocketFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating socket factory: cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spdy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 178
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->createOrGetSessionCache(Landroid/content/Context;)Landroid/net/SSLSessionCache;

    move-result-object v0

    .line 179
    .local v0, "cache":Landroid/net/SSLSessionCache;
    :goto_0
    iget-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mConfig:Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;

    invoke-interface {v3}, Lcom/google/android/search/core/util/HttpHelper$ConnectionConfig;->getConnectTimeoutMs()I

    move-result v3

    invoke-static {v3, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    .line 181
    if-eqz v2, :cond_1

    .line 182
    iget-object v3, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    check-cast v3, Landroid/net/SSLCertificateSocketFactory;

    sget-object v4, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->NPN_PROTOCOLS:[[B

    invoke-virtual {v3, v4}, Landroid/net/SSLCertificateSocketFactory;->setNpnProtocols([[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v0    # "cache":Landroid/net/SSLSessionCache;
    .end local v1    # "sessionCacheEnabled":Z
    .end local v2    # "spdyEnabled":Z
    :cond_1
    monitor-exit p0

    return-void

    .line 178
    .restart local v1    # "sessionCacheEnabled":Z
    .restart local v2    # "spdyEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    .end local v1    # "sessionCacheEnabled":Z
    .end local v2    # "spdyEnabled":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v0, "SSLSocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#createSocket["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 107
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 108
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeAdjustSessionCacheSize(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v0, "SSLSocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#createSocket["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 116
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeAdjustSessionCacheSize(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v0, "SSLSocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#createSocket["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 124
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "SSLSocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#createSocket["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 132
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "SSLSocketFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#createSocket["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 101
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeAdjustSessionCacheSize(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 87
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->maybeInitDelegate()V

    .line 93
    iget-object v0, p0, Lcom/google/android/search/core/util/VelvetSslSocketFactory;->mDelegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
