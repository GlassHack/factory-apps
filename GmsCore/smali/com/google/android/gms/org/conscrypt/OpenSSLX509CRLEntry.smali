.class public Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "SourceFile"


# instance fields
.field private final mContext:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 35
    return-void
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    .line 48
    array-length v0, v1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v0, 0x0

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    .line 54
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
    .line 99
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    .line 73
    array-length v0, v1

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v0, 0x1

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 109
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 110
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 111
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 113
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 118
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 84
    iget-wide v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v3

    .line 87
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 88
    iget-wide v6, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v6, v7, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

    move-result-wide v6

    .line 89
    invoke-static {v6, v7}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v5

    if-eq v5, v0, :cond_0

    .line 94
    :goto_1
    return v0

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 94
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 129
    :try_start_0
    iget-wide v4, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

    .line 130
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v0
.end method
