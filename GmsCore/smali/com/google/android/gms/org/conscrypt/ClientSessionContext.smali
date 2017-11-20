.class public Lcom/google/android/gms/org/conscrypt/ClientSessionContext;
.super Lcom/google/android/gms/org/conscrypt/a;
.source "SourceFile"


# instance fields
.field private persistentCache:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

.field final sessionsByHostAndPort:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/org/conscrypt/a;-><init>(II)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method public getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_1

    move-object v0, v1

    .line 98
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    new-instance v2, Lcom/google/android/gms/org/conscrypt/e;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/org/conscrypt/e;-><init>(Ljava/lang/String;I)V

    .line 76
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 78
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    if-eqz v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v0

    .line 86
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    invoke-super {p0, v0}, Lcom/google/android/gms/org/conscrypt/a;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 90
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v1

    .line 91
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 78
    :catchall_1
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move-object v0, v1

    .line 98
    goto :goto_0
.end method

.method public bridge synthetic getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/a;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public putSession(Ljavax/net/ssl/SSLSession;)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/a;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 105
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v1

    .line 107
    if-nez v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    new-instance v2, Lcom/google/android/gms/org/conscrypt/e;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/e;-><init>(Ljava/lang/String;I)V

    .line 112
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->toBytes(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected sessionRemoved(Ljavax/net/ssl/SSLSession;)V
    .locals 3

    .prologue
    .line 52
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v1

    .line 54
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v2, Lcom/google/android/gms/org/conscrypt/e;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/org/conscrypt/e;-><init>(Ljava/lang/String;I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPersistentCache(Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->persistentCache:Lcom/google/android/gms/org/conscrypt/SSLClientSessionCache;

    .line 48
    return-void
.end method

.method public bridge synthetic setSessionTimeout(I)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/google/android/gms/org/conscrypt/a;->setSessionTimeout(I)V

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
