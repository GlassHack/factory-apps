.class public Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;
.super Ljavax/net/ssl/SSLContextSpi;
.source "SourceFile"


# static fields
.field private static DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;


# instance fields
.field private final clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

.field private final serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

.field protected sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    invoke-direct {v0}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    .line 51
    new-instance v0, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    invoke-direct {v0}, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;)V
    .locals 8

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/net/ssl/SSLContextSpi;-><init>()V

    .line 61
    const-class v7, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    monitor-enter v7

    .line 62
    :try_start_0
    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    invoke-direct {v1}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    .line 64
    new-instance v1, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    invoke-direct {v1}, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    .line 65
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    move-object v1, v0

    sput-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    .line 70
    :goto_0
    new-instance v1, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    sget-object v2, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v2}, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v3}, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/google/android/gms/org/conscrypt/ClientSessionContext;Lcom/google/android/gms/org/conscrypt/ServerSessionContext;)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 75
    monitor-exit v7

    return-void

    .line 67
    :cond_0
    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->engineGetClientSessionContext()Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    .line 68
    sget-object v1, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->DEFAULT_SSL_CONTEXT_IMPL:Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->engineGetServerSessionContext()Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v7

    throw v1
.end method


# virtual methods
.method public engineCreateSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 128
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;-><init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineCreateSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 117
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 118
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLEngineImpl;-><init>(Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public engineGetClientSessionContext()Lcom/google/android/gms/org/conscrypt/ClientSessionContext;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetClientSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->engineGetClientSessionContext()Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSessionContext()Lcom/google/android/gms/org/conscrypt/ServerSessionContext;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public bridge synthetic engineGetServerSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->engineGetServerSessionContext()Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public engineGetServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;-><init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineGetSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSLContext is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;-><init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 6

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    iget-object v5, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/google/android/gms/org/conscrypt/ClientSessionContext;Lcom/google/android/gms/org/conscrypt/ServerSessionContext;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 93
    return-void
.end method
