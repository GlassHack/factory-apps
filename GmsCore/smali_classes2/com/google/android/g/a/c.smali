.class public final Lcom/google/android/g/a/c;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected final createConnectionPool(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/g/a/f;

    iget-object v1, p0, Lcom/google/android/g/a/c;->connOperator:Lorg/apache/http/conn/ClientConnectionOperator;

    invoke-direct {v0, v1, p1}, Lcom/google/android/g/a/f;-><init>(Lorg/apache/http/conn/ClientConnectionOperator;Lorg/apache/http/params/HttpParams;)V

    .line 39
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->enableConnectionGC()V

    .line 43
    return-object v0
.end method

.method public final releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 74
    instance-of v0, p1, Lcom/google/android/g/a/e;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/google/android/g/a/e;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/google/android/g/a/e;->a:J

    sub-long/2addr v2, v0

    .line 78
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->getRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1388

    .line 79
    :goto_0
    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 81
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/conn/ManagedClientConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->releaseConnection(Lorg/apache/http/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void

    .line 78
    :cond_1
    const-wide/16 v0, 0x9c4

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/g/a/c;->connectionPool:Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/AbstractConnPool;->requestPoolEntry(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/google/android/g/a/d;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/g/a/d;-><init>(Lcom/google/android/g/a/c;Lorg/apache/http/impl/conn/tsccm/PoolEntryRequest;Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 68
    return-object v1
.end method
