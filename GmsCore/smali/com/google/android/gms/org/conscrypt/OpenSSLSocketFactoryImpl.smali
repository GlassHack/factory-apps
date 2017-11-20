.class public Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field private final instantiationException:Ljava/io/IOException;

.field private final sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 34
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getDefault()Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 40
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 41
    return-void

    .line 35
    :catch_0
    move-exception v2

    .line 36
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Delayed instantiation exception:"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    .line 46
    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->instantiationException:Ljava/io/IOException;

    throw v0

    .line 63
    :cond_0
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;-><init>(Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 68
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6

    .prologue
    .line 74
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/lang/String;ILjava/net/InetAddress;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 2

    .prologue
    .line 83
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-direct {v1, p1, p2, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 6

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImpl;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketImplWrapper;-><init>(Ljava/net/Socket;Ljava/lang/String;IZLcom/google/android/gms/org/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLSocketFactoryImpl;->sslParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
