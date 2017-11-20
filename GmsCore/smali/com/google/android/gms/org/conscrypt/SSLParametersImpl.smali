.class public Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final KEY_TYPE_DH_DSA:Ljava/lang/String; = "DH_DSA"

.field private static final KEY_TYPE_DH_RSA:Ljava/lang/String; = "DH_RSA"

.field private static final KEY_TYPE_DSA:Ljava/lang/String; = "DSA"

.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_EC_EC:Ljava/lang/String; = "EC_EC"

.field private static final KEY_TYPE_EC_RSA:Ljava/lang/String; = "EC_RSA"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static volatile defaultParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

.field private static volatile defaultSecureRandom:Ljava/security/SecureRandom;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field alpnProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private enable_session_creation:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field private need_client_auth:Z

.field npnProtocols:[B

.field private final pskKeyManager:Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

.field private secureRandom:Ljava/security/SecureRandom;

.field private final serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

.field useSessionTickets:Z

.field useSni:Z

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method protected constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/google/android/gms/org/conscrypt/ClientSessionContext;Lcom/google/android/gms/org/conscrypt/ServerSessionContext;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 90
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 94
    iput-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 120
    iput-object p5, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    .line 121
    iput-object p4, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    .line 124
    if-nez p1, :cond_1

    .line 125
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    .line 134
    :goto_0
    if-nez p2, :cond_2

    .line 135
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 145
    :goto_1
    iput-object p3, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 148
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getDefaultProtocols()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 150
    :goto_2
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_4

    .line 151
    :goto_3
    invoke-static {v0, v2}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 153
    return-void

    .line 129
    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 130
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    :cond_3
    move v0, v1

    .line 149
    goto :goto_2

    :cond_4
    move v2, v1

    .line 150
    goto :goto_3
.end method

.method private static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1004
    .line 1005
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 1006
    array-length v4, v4

    add-int/2addr v2, v4

    .line 1005
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    new-array v3, v2, [Ljava/lang/String;

    .line 1010
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 1011
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    array-length v5, v5

    add-int/2addr v2, v5

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1014
    :cond_1
    return-object v3
.end method

.method private static createCertChain([J)[Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;
    .locals 6

    .prologue
    .line 359
    if-nez p0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 366
    :goto_0
    return-object v0

    .line 362
    :cond_0
    array-length v0, p0

    new-array v1, v0, [Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 363
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 364
    new-instance v2, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, p0, v0

    invoke-direct {v2, v4, v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    aput-object v2, v1, v0

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 366
    goto :goto_0
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 4

    .prologue
    .line 766
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 768
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 769
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 770
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    .line 771
    if-nez v1, :cond_0

    .line 772
    new-instance v1, Ljava/security/KeyManagementException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No X509KeyManager among default KeyManagers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 776
    :catch_0
    move-exception v0

    .line 777
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 778
    :catch_1
    move-exception v0

    .line 779
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 780
    :catch_2
    move-exception v0

    .line 781
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 775
    :cond_0
    return-object v1
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 831
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 832
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 833
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 834
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 835
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v1

    .line 836
    if-nez v1, :cond_0

    .line 837
    new-instance v1, Ljava/security/KeyManagementException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No X509TrustManager in among default TrustManagers: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 842
    :catch_0
    move-exception v0

    .line 843
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 844
    :catch_1
    move-exception v0

    .line 845
    new-instance v1, Ljava/security/KeyManagementException;

    invoke-direct {v1, v0}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 841
    :cond_0
    return-object v1
.end method

.method static encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3

    .prologue
    .line 346
    array-length v0, p0

    new-array v1, v0, [[B

    .line 347
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 348
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 350
    :cond_0
    return-object v1
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lcom/google/android/gms/org/conscrypt/PSKKeyManager;
    .locals 4

    .prologue
    .line 805
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 806
    instance-of v3, v0, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_0

    .line 807
    check-cast v0, Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    .line 810
    :goto_1
    return-object v0

    .line 805
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 810
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4

    .prologue
    .line 791
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 792
    instance-of v3, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 793
    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    .line 796
    :goto_1
    return-object v0

    .line 791
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 855
    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 856
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 857
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 860
    :goto_1
    return-object v0

    .line 855
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 860
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getClientKeyType(B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    sparse-switch p0, :sswitch_data_0

    .line 962
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 948
    :sswitch_0
    const-string v0, "RSA"

    goto :goto_0

    .line 950
    :sswitch_1
    const-string v0, "DSA"

    goto :goto_0

    .line 952
    :sswitch_2
    const-string v0, "DH_RSA"

    goto :goto_0

    .line 954
    :sswitch_3
    const-string v0, "DH_DSA"

    goto :goto_0

    .line 956
    :sswitch_4
    const-string v0, "EC"

    goto :goto_0

    .line 958
    :sswitch_5
    const-string v0, "EC_RSA"

    goto :goto_0

    .line 960
    :sswitch_6
    const-string v0, "EC_EC"

    goto :goto_0

    .line 946
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x40 -> :sswitch_4
        0x41 -> :sswitch_5
        0x42 -> :sswitch_6
    .end sparse-switch
.end method

.method protected static getDefault()Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    sget-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 157
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    new-instance v4, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    invoke-direct {v4}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;-><init>()V

    new-instance v5, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    invoke-direct {v5}, Lcom/google/android/gms/org/conscrypt/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lcom/google/android/gms/org/conscrypt/ClientSessionContext;Lcom/google/android/gms/org/conscrypt/ServerSessionContext;)V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultParameters:Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;

    return-object v0
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 969
    if-eqz p0, :cond_1

    .line 971
    if-eqz p1, :cond_0

    .line 978
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 995
    :goto_0
    return-object v0

    .line 984
    :cond_0
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 988
    :cond_1
    if-eqz p1, :cond_2

    .line 990
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 995
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private static getDefaultProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1000
    sget-object v0, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    .prologue
    .line 757
    sget-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 758
    if-nez v0, :cond_0

    .line 760
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 762
    :cond_0
    return-object v0
.end method

.method public static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 820
    sget-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 821
    if-nez v0, :cond_0

    .line 823
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 825
    :cond_0
    return-object v0
.end method

.method private static getServerX509KeyType(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v0, 0x0

    .line 898
    invoke-static {p0, p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_SSL_CIPHER_algorithm_mkey(J)I

    move-result v1

    .line 899
    invoke-static {p0, p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_SSL_CIPHER_algorithm_auth(J)I

    move-result v2

    .line 900
    sparse-switch v1, :sswitch_data_0

    .line 933
    :goto_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported key exchange. mkey: 0x"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-long v4, v1

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", auth: 0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, v2

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :sswitch_0
    const-string v0, "RSA"

    .line 930
    :goto_1
    :pswitch_0
    :sswitch_1
    return-object v0

    .line 904
    :sswitch_2
    packed-switch v2, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 908
    :pswitch_2
    const-string v0, "RSA"

    goto :goto_1

    .line 906
    :pswitch_3
    const-string v0, "DSA"

    goto :goto_1

    .line 914
    :sswitch_3
    const-string v0, "EC_RSA"

    goto :goto_1

    .line 916
    :sswitch_4
    const-string v0, "EC_EC"

    goto :goto_1

    .line 918
    :sswitch_5
    sparse-switch v2, :sswitch_data_1

    goto :goto_0

    .line 922
    :sswitch_6
    const-string v0, "RSA"

    goto :goto_1

    .line 920
    :sswitch_7
    const-string v0, "EC_EC"

    goto :goto_1

    .line 900
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_5
        0x100 -> :sswitch_1
    .end sparse-switch

    .line 904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 918
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_1
        0x40 -> :sswitch_7
        0x80 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method chooseClientCertificate([B[[BJLcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 594
    array-length v0, p1

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 595
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 596
    aget-byte v4, p1, v0

    invoke-static {v4}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    :cond_0
    if-nez p2, :cond_3

    move-object v0, v2

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    .line 609
    if-eqz v1, :cond_2

    invoke-interface {p5, v1, v0, v3}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 611
    :cond_2
    invoke-virtual {p0, p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V

    .line 612
    return-void

    .line 603
    :cond_3
    array-length v0, p2

    new-array v0, v0, [Ljavax/security/auth/x500/X500Principal;

    .line 604
    :goto_1
    array-length v4, p2

    if-ge v1, v4, :cond_1

    .line 605
    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    aget-object v5, p2, v1

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v4, v0, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[BLcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    move-result-object v3

    .line 620
    if-nez v3, :cond_0

    move v0, v2

    .line 657
    :goto_0
    return v0

    .line 624
    :cond_0
    invoke-interface {p4, v3, p1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    if-nez v1, :cond_1

    .line 628
    const-string v1, ""

    .line 629
    sget-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    .line 639
    :goto_1
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    array-length v5, p2

    if-le v4, v5, :cond_3

    move v0, v2

    .line 641
    goto :goto_0

    .line 630
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 631
    sget-object v0, Lcom/google/android/gms/org/conscrypt/util/EmptyArray;->BYTE:[B

    goto :goto_1

    .line 634
    :cond_2
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 635
    :catch_0
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 encoding not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 643
    :cond_3
    array-length v4, v0

    if-lez v4, :cond_4

    .line 644
    array-length v4, v0

    invoke-static {v0, v2, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    :cond_4
    array-length v0, v0

    aput-byte v2, p2, v0

    .line 648
    invoke-interface {p4, v3, p1, v1}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 649
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    .line 650
    if-nez v0, :cond_5

    move v0, v2

    .line 651
    goto :goto_0

    .line 652
    :cond_5
    array-length v1, v0

    array-length v3, p3

    if-le v1, v3, :cond_6

    move v0, v2

    .line 654
    goto :goto_0

    .line 656
    :cond_6
    array-length v1, v0

    invoke-static {v0, v2, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 657
    array-length v0, v0

    goto :goto_0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 750
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method getCachedClientSession(Lcom/google/android/gms/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 685
    if-nez p2, :cond_1

    move-object v0, v1

    .line 717
    :cond_0
    :goto_0
    return-object v0

    .line 688
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/org/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    .line 689
    if-nez v0, :cond_2

    move-object v0, v1

    .line 690
    goto :goto_0

    .line 693
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v5

    .line 695
    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v7, v6

    move v4, v3

    :goto_1
    if-ge v4, v7, :cond_7

    aget-object v8, v6, v4

    .line 696
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v2

    .line 701
    :goto_2
    if-nez v4, :cond_4

    move-object v0, v1

    .line 702
    goto :goto_0

    .line 695
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 705
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    .line 707
    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v7, v6

    move v4, v3

    :goto_3
    if-ge v4, v7, :cond_6

    aget-object v8, v6, v4

    .line 708
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 713
    :goto_4
    if-nez v2, :cond_0

    move-object v0, v1

    .line 714
    goto :goto_0

    .line 707
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v4, v3

    goto :goto_2
.end method

.method protected getClientSessionContext()Lcom/google/android/gms/org/conscrypt/ClientSessionContext;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method protected getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method protected getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method protected getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method protected getPSKKeyManager()Lcom/google/android/gms/org/conscrypt/PSKKeyManager;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->pskKeyManager:Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method protected getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 223
    :goto_0
    return-object v0

    .line 217
    :cond_0
    sget-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 218
    if-nez v0, :cond_1

    .line 220
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 222
    :cond_1
    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    .line 223
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    goto :goto_0
.end method

.method protected getSecureRandomMember()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->secureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method protected getServerSessionContext()Lcom/google/android/gms/org/conscrypt/ServerSessionContext;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    return-object v0
.end method

.method public getSessionContext()Lcom/google/android/gms/org/conscrypt/a;
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->serverSessionContext:Lcom/google/android/gms/org/conscrypt/ServerSessionContext;

    goto :goto_0
.end method

.method getSessionToReuse(JLjava/lang/String;I)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;
    .locals 5

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->clientSessionContext:Lcom/google/android/gms/org/conscrypt/ClientSessionContext;

    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getCachedClientSession(Lcom/google/android/gms/org/conscrypt/ClientSessionContext;Ljava/lang/String;I)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    iget-wide v2, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->sslSessionNativePointer:J

    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_session(JJ)V

    .line 382
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getUseClientMode()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method protected getUseSni()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->useSni:Z

    return v0
.end method

.method protected getWantClientAuth()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method protected getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method protected getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 665
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    move-result-object v1

    .line 666
    if-nez v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 669
    :cond_1
    invoke-interface {p4, v1, p1, p2}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 670
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    .line 671
    if-eqz v1, :cond_0

    .line 673
    array-length v2, v1

    array-length v3, p3

    if-gt v2, v3, :cond_0

    .line 676
    array-length v2, v1

    invoke-static {v1, v0, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    array-length v0, v1

    goto :goto_0
.end method

.method setCertificate(JLjava/lang/String;)V
    .locals 9

    .prologue
    .line 405
    if-nez p3, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, p3}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_0

    .line 416
    invoke-interface {v0, p3}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 417
    if-eqz v2, :cond_0

    .line 427
    array-length v0, v2

    new-array v3, v0, [Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 428
    array-length v0, v2

    new-array v4, v0, [J

    .line 429
    const/4 v0, 0x0

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_2

    .line 430
    aget-object v5, v2, v0

    invoke-static {v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->fromCertificate(Ljava/security/cert/Certificate;)Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    .line 432
    aput-object v5, v3, v0

    .line 433
    invoke-virtual {v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 429
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    :cond_2
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_use_certificate(J[J)V

    .line 441
    :try_start_0
    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_use_PrivateKey(JJ)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_check_private_key(J)V

    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    new-instance v1, Ljavax/net/ssl/SSLException;

    invoke-direct {v1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method setCertificateValidation(J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 528
    iget-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-nez v2, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    const/4 v1, 0x3

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    .line 546
    :goto_0
    if-eqz v0, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 552
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 556
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_client_CA_list(J[[B)V

    .line 560
    :cond_0
    return-void

    .line 537
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 538
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    goto :goto_0

    .line 542
    :cond_2
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_verify(JI)V

    move v0, v1

    .line 543
    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Problem encoding principals"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected setEnableSessionCreation(Z)V
    .locals 0

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 318
    return-void
.end method

.method protected setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 244
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 245
    return-void
.end method

.method protected setEnabledProtocols([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 869
    return-void
.end method

.method protected setNeedClientAuth(Z)V
    .locals 1

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 285
    return-void
.end method

.method setSSLParameters(JJLcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 454
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->npnProtocols:[B

    if-eqz v2, :cond_0

    .line 455
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_CTX_enable_npn(J)V

    .line 458
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    if-eqz v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->alpnProtocols:[B

    invoke-static {p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_alpn_protos(J[B)I

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->setEnabledProtocols(J[Ljava/lang/String;)V

    .line 463
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->setEnabledCipherSuites(J[Ljava/lang/String;)V

    .line 467
    iget-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-nez v2, :cond_4

    .line 468
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 469
    invoke-static {p3, p4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_ciphers(J)[J

    move-result-object v6

    array-length v7, v6

    move v2, v4

    :goto_0
    if-ge v2, v7, :cond_3

    aget-wide v8, v6, v2

    .line 470
    invoke-static {v8, v9}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v8

    .line 471
    if-eqz v8, :cond_2

    .line 472
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    .line 476
    if-eqz v2, :cond_4

    .line 477
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 479
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    move-object/from16 v0, p5

    invoke-interface {v0, v6, v2}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->setCertificate(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 481
    :catch_0
    move-exception v2

    .line 482
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 484
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lcom/google/android/gms/org/conscrypt/PSKKeyManager;

    move-result-object v5

    .line 490
    if-eqz v5, :cond_5

    .line 492
    iget-object v6, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v7, v6

    move v2, v4

    :goto_2
    if-ge v2, v7, :cond_b

    aget-object v8, v6, v2

    .line 493
    if-eqz v8, :cond_9

    const-string v9, "PSK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    move v2, v3

    .line 498
    :goto_3
    if-eqz v2, :cond_5

    .line 499
    iget-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v2, :cond_a

    .line 500
    invoke-static {p3, p4, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JZ)V

    .line 509
    :cond_5
    :goto_4
    iget-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    if-eqz v2, :cond_6

    .line 510
    const-wide/16 v2, 0x4000

    invoke-static {p3, p4, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_clear_options(JJ)J

    .line 512
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->useSni:Z

    if-eqz v2, :cond_7

    .line 513
    move-object/from16 v0, p7

    invoke-static {p3, p4, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLjava/lang/String;)V

    .line 518
    :cond_7
    const-wide/16 v2, 0x100

    invoke-static {p3, p4, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_mode(JJ)J

    .line 520
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v2

    .line 521
    if-nez v2, :cond_8

    .line 522
    invoke-static {p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JZ)V

    .line 524
    :cond_8
    return-void

    .line 492
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 502
    :cond_a
    invoke-static {p3, p4, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JZ)V

    .line 503
    move-object/from16 v0, p6

    invoke-interface {v0, v5}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lcom/google/android/gms/org/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v2

    .line 504
    invoke-static {p3, p4, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLjava/lang/String;)V

    goto :goto_4

    :cond_b
    move v2, v4

    goto :goto_3
.end method

.method setTlsChannelId(JLcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 3

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-eqz v0, :cond_1

    .line 389
    iget-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_2

    .line 391
    if-nez p3, :cond_0

    .line 392
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JJ)V

    .line 401
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(J)V

    goto :goto_0
.end method

.method protected setUseClientMode(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 268
    return-void
.end method

.method protected setUseSni(Z)V
    .locals 0

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->useSni:Z

    .line 334
    return-void
.end method

.method protected setWantClientAuth(Z)V
    .locals 1

    .prologue
    .line 299
    iput-boolean p1, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 302
    return-void
.end method

.method setupSession(JJLcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;Ljava/lang/String;IZ)Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;
    .locals 9

    .prologue
    .line 565
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    .line 567
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->getId()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p5, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 570
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_SESSION_free(J)V

    move-object v1, p5

    .line 588
    :cond_0
    :goto_0
    return-object v1

    .line 572
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SSL Session may not be created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_2
    invoke-static {p3, p4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_certificate(J)[J

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v4

    .line 579
    invoke-static {p3, p4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->SSL_get_peer_cert_chain(J)[J

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->createCertChain([J)[Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    .line 581
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;

    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/google/android/gms/org/conscrypt/a;

    move-result-object v8

    move-wide v2, p1

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/org/conscrypt/OpenSSLSessionImpl;-><init>(J[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILcom/google/android/gms/org/conscrypt/a;)V

    .line 584
    if-eqz p8, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/SSLParametersImpl;->getSessionContext()Lcom/google/android/gms/org/conscrypt/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/org/conscrypt/a;->putSession(Ljavax/net/ssl/SSLSession;)V

    goto :goto_0
.end method
