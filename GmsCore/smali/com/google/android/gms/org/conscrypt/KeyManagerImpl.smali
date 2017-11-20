.class public Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "SourceFile"


# instance fields
.field private final hash:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 4

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 69
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    :try_start_1
    const-class v1, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v1}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v1, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-virtual {p1, v0, v1}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 75
    iget-object v3, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 84
    :cond_1
    return-void

    .line 82
    :catch_2
    move-exception v0

    goto :goto_0

    .line 80
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 13

    .prologue
    .line 152
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 153
    :cond_0
    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 155
    :cond_1
    if-nez p2, :cond_6

    const/4 v0, 0x0

    move-object v2, v0

    .line 156
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 158
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PrivateKeyEntry;

    .line 160
    invoke-virtual {v1}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v8

    .line 161
    const/4 v1, 0x0

    aget-object v1, v8, v1

    .line 162
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 163
    instance-of v3, v1, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_7

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 166
    :goto_2
    array-length v10, p1

    const/4 v1, 0x0

    move v5, v1

    :goto_3
    if-ge v5, v10, :cond_2

    aget-object v4, p1, v5

    .line 167
    if-eqz v4, :cond_5

    .line 168
    const/16 v1, 0x5f

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .line 173
    const/4 v1, -0x1

    if-ne v11, v1, :cond_8

    .line 174
    const/4 v1, 0x0

    .line 180
    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 181
    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    :cond_3
    if-eqz p2, :cond_4

    array-length v1, p2

    if-nez v1, :cond_9

    .line 196
    :cond_4
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 155
    :cond_6
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 163
    :cond_7
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_2

    .line 176
    :cond_8
    add-int/lit8 v1, v11, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    const/4 v12, 0x0

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 200
    :cond_9
    array-length v11, v8

    const/4 v1, 0x0

    move v4, v1

    :goto_5
    if-ge v4, v11, :cond_5

    aget-object v1, v8, v4

    .line 201
    instance-of v12, v1, Ljava/security/cert/X509Certificate;

    if-eqz v12, :cond_a

    .line 203
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 214
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 215
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 216
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_a
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_5

    .line 221
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 222
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto/16 :goto_0

    .line 224
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    if-nez p1, :cond_0

    move-object v0, v2

    .line 114
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 106
    aget-object v0, v3, v1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_2

    .line 107
    array-length v0, v3

    new-array v2, v0, [Ljava/security/cert/X509Certificate;

    .line 108
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 109
    aget-object v0, v3, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    aput-object v0, v2, v1

    .line 108
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 111
    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 114
    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/org/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
