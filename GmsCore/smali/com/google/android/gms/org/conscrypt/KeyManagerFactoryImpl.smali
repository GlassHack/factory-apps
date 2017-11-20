.class public Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "SourceFile"


# instance fields
.field private keyStore:Ljava/security/KeyStore;

.field private pwd:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;

    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    iget-object v4, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;-><init>(Ljava/security/KeyStore;[C)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 4

    .prologue
    .line 53
    if-eqz p1, :cond_1

    .line 54
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 87
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 62
    const-string v0, "javax.net.ssl.keyStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    :cond_3
    const-string v1, "javax.net.ssl.keyStorePassword"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_4

    .line 75
    sget-object v1, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->CHAR:[C

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    .line 80
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 81
    :catch_2
    move-exception v0

    .line 82
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 77
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerFactoryImpl;->pwd:[C

    goto :goto_1

    .line 83
    :catch_3
    move-exception v0

    .line 84
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 85
    :catch_4
    move-exception v0

    .line 86
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
