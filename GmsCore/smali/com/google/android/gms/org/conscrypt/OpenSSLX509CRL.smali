.class public Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;
.super Ljava/security/cert/X509CRL;
.source "SourceFile"


# instance fields
.field private final mContext:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/security/cert/X509CRL;-><init>()V

    .line 51
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    .line 52
    return-void
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8

    .prologue
    .line 72
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v1, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 84
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 85
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 86
    new-instance v3, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;

    aget-wide v4, v2, v0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    :try_start_1
    new-instance v2, Lcom/google/android/gms/org/conscrypt/y;

    invoke-direct {v2, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v0

    .line 90
    :cond_1
    return-object v1
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 8

    .prologue
    .line 111
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v1, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    const/4 v0, 0x2

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 124
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 125
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 126
    new-instance v3, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;

    aget-wide v4, v2, v0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;-><init>(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_1
    new-instance v2, Lcom/google/android/gms/org/conscrypt/y;

    invoke-direct {v2, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v0

    .line 130
    :cond_1
    return-object v1
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;
    .locals 6

    .prologue
    .line 55
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v1, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->d2i_X509_CRL_bio(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 59
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 62
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    :try_start_2
    new-instance v2, Lcom/google/android/gms/org/conscrypt/y;

    invoke-direct {v2, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v0
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;
    .locals 6

    .prologue
    .line 94
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v1, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->PEM_read_bio_X509_CRL(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 98
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 101
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_2
    new-instance v2, Lcom/google/android/gms/org/conscrypt/y;

    invoke-direct {v2, v0}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/Exception;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v0
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    .line 205
    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_0
    if-nez p2, :cond_1

    .line 211
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 216
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getTBSCertList()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Ljava/security/SignatureException;

    const-string v1, "signature did not verify"

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_2
    return-void
.end method

.method private verifyOpenSSL(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V
    .locals 4

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKey;->getPkeyContext()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_verify(JJ)V

    .line 199
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 383
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 384
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_free(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    .line 143
    array-length v0, v1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_X509_CRL(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 2

    .prologue
    .line 254
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_issuer_name(J)[B

    move-result-object v0

    .line 255
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getNextUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 269
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 270
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 271
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_nextUpdate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    .line 168
    array-length v0, v1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;
    .locals 4

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_serial(J[B)J

    move-result-wide v2

    .line 280
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    goto :goto_0
.end method

.method public getRevokedCertificate(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRLEntry;
    .locals 4

    .prologue
    .line 289
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_1

    .line 290
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 291
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    move-result-wide v2

    .line 294
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 298
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_REVOKED_dup(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getRevokedCertificates()Ljava/util/Set;
    .locals 7

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_REVOKED(J)[J

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_2

    .line 308
    :cond_0
    const/4 v0, 0x0

    .line 316
    :cond_1
    return-object v0

    .line 311
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 312
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-wide v4, v2, v1

    .line 313
    new-instance v6, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;

    invoke-direct {v6, v4, v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;-><init>(J)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->OBJ_txt2nid_longName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_oid(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_sig_alg_parameter(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_signature(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertList()[B
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_crl_enc(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getThisUpdate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 260
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 261
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 262
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_lastUpdate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_version(J)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 179
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_CRL_ext_oids(JI)[Ljava/lang/String;

    move-result-object v3

    .line 181
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 182
    iget-wide v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get_ext(JLjava/lang/String;)J

    move-result-wide v6

    .line 183
    invoke-static {v6, v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 188
    :goto_1
    return v0

    .line 181
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 188
    goto :goto_1
.end method

.method public isRevoked(Ljava/security/cert/Certificate;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 346
    instance-of v1, p1, Ljava/security/cert/X509Certificate;

    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v1, :cond_2

    .line 352
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 362
    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_get0_by_cert(JJ)J

    move-result-wide v2

    .line 365
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 355
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "cannot convert certificate"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 371
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 373
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->mContext:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_CRL_print(JJ)V

    .line 374
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 376
    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1

    .prologue
    .line 226
    instance-of v0, p1, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_0

    .line 227
    check-cast p1, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;

    invoke-interface {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lcom/google/android/gms/org/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 228
    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->verifyOpenSSL(Lcom/google/android/gms/org/conscrypt/OpenSSLKey;)V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 240
    return-void
.end method
