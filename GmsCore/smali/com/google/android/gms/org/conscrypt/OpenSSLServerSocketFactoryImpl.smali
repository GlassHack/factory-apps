.class public Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;
.super Ljavax/net/ssl/SSLServerSocketFactory;
.source "SourceFile"


# instance fields
.field private instantiationException:Ljava/io/IOException;

.field private sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 31
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Delayed instantiation exception:"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljavax/net/ssl/SSLServerSocketFactory;-><init>()V

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public createServerSocket()Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 57
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;-><init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 62
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;-><init>(ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createServerSocket(II)Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 68
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;-><init>(IILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createServerSocket(IILjava/net/InetAddress;)Ljava/net/ServerSocket;
    .locals 2

    .prologue
    .line 77
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketImpl;-><init>(IILjava/net/InetAddress;Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLServerSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
