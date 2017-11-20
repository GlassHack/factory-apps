.class public Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "SourceFile"


# static fields
.field private static final ALL_ENCODINGS:Ljava/util/List;

.field private static final DEFAULT_ENCODING:Lcom/google/android/gms/org/conscrypt/u;

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40


# instance fields
.field private final mCertificates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/org/conscrypt/u;->a:Lcom/google/android/gms/org/conscrypt/u;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/u;->a(Lcom/google/android/gms/org/conscrypt/u;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/org/conscrypt/u;->b:Lcom/google/android/gms/org/conscrypt/u;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/u;->a(Lcom/google/android/gms/org/conscrypt/u;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    .line 73
    sget-object v0, Lcom/google/android/gms/org/conscrypt/u;->a:Lcom/google/android/gms/org/conscrypt/u;

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/google/android/gms/org/conscrypt/u;

    return-void

    .line 35
    nop

    :array_0
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 82
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 84
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    .line 85
    return-void
.end method

.method public static fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/google/android/gms/org/conscrypt/u;

    invoke-static {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/google/android/gms/org/conscrypt/u;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method private static fromEncoding(Ljava/io/InputStream;Lcom/google/android/gms/org/conscrypt/u;)Ljava/security/cert/CertPath;
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/google/android/gms/org/conscrypt/t;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/u;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 227
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_0
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 3

    .prologue
    .line 233
    if-nez p0, :cond_0

    .line 234
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/u;->a(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/u;

    move-result-object v0

    .line 238
    if-nez v0, :cond_1

    .line 239
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lcom/google/android/gms/org/conscrypt/u;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method private static fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 5

    .prologue
    const/16 v3, 0x40

    .line 179
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    :cond_0
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-object v0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Problem reading input stream"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 186
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    .line 187
    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 192
    :cond_2
    new-instance v2, Ljava/io/PushbackInputStream;

    invoke-direct {v2, p0, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 194
    :try_start_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 196
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v3

    .line 197
    if-gez v3, :cond_4

    .line 199
    new-instance v0, Lcom/google/android/gms/org/conscrypt/y;

    const-string v2, "inStream is empty"

    invoke-direct {v0, v2}, Lcom/google/android/gms/org/conscrypt/y;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    :catch_1
    move-exception v0

    .line 209
    if-eqz v1, :cond_3

    .line 211
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 215
    :cond_3
    :goto_1
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    :cond_4
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 203
    sget-object v4, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v4, v4

    if-ne v3, v4, :cond_5

    sget-object v3, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 207
    :cond_5
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private static fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 8

    .prologue
    .line 139
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v1, p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    .line 141
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    .line 142
    if-eqz v2, :cond_0

    .line 143
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->mark(I)V

    .line 148
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 161
    if-nez v2, :cond_2

    .line 162
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    .line 174
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    if-eqz v2, :cond_1

    .line 152
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :cond_1
    :goto_1
    :try_start_2
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v0

    .line 165
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    .line 168
    aget-wide v4, v2, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 169
    new-instance v3, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    aget-wide v4, v2, v0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 174
    :cond_4
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getEncoded(Lcom/google/android/gms/org/conscrypt/u;)[B
    .locals 8

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    .line 94
    array-length v0, v3

    new-array v4, v0, [J

    .line 96
    const/4 v1, 0x0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 99
    instance-of v5, v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_0

    .line 100
    check-cast v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    aput-object v0, v3, v1

    .line 105
    :goto_1
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 96
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lcom/google/android/gms/org/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_1

    .line 108
    :cond_1
    sget-object v0, Lcom/google/android/gms/org/conscrypt/t;->a:[I

    invoke-virtual {p1}, Lcom/google/android/gms/org/conscrypt/u;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    invoke-static {v4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object v0

    .line 112
    :goto_2
    return-object v0

    :pswitch_1
    invoke-static {v4}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object v0

    goto :goto_2

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getEncodingsIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lcom/google/android/gms/org/conscrypt/u;

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/google/android/gms/org/conscrypt/u;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 125
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/u;->a(Ljava/lang/String;)Lcom/google/android/gms/org/conscrypt/u;

    move-result-object v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->getEncoded(Lcom/google/android/gms/org/conscrypt/u;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 135
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
