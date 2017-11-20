.class public final Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;
.source "SourceFile"


# static fields
.field private static KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

.field private static TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLContextImpl;-><init>(Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;)V

    .line 60
    return-void
.end method


# virtual methods
.method public final engineInit([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Do not init() the default SSLContext "

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 64
    sget-object v0, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    if-eqz v0, :cond_1

    .line 65
    sget-object v1, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    .line 90
    :cond_0
    :goto_0
    return-object v1

    .line 68
    :cond_1
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    if-eqz v3, :cond_0

    .line 72
    const-string v0, "javax.net.ssl.keyStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    if-nez v0, :cond_2

    move-object v0, v1

    .line 75
    :goto_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 78
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :try_start_1
    invoke-virtual {v4, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 86
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 88
    invoke-virtual {v1, v4, v0}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 89
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 90
    sput-object v1, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->KEY_MANAGERS:[Ljavax/net/ssl/KeyManager;

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 81
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method final getTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 95
    sget-object v0, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    if-eqz v0, :cond_1

    .line 96
    sget-object v1, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    .line 122
    :cond_0
    :goto_0
    return-object v1

    .line 100
    :cond_1
    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    if-eqz v3, :cond_0

    .line 104
    const-string v0, "javax.net.ssl.trustStorePassword"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_2

    move-object v0, v1

    .line 108
    :goto_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 111
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-virtual {v4, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 118
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 121
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 122
    sput-object v1, Lcom/google/android/gms/org/conscrypt/DefaultSSLContextImpl;->TRUST_MANAGERS:[Ljavax/net/ssl/TrustManager;

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    .line 114
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_3
    throw v0

    .line 114
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
