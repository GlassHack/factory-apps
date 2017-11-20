.class public Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "SourceFile"


# static fields
.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40


# instance fields
.field private certificateParser:Lcom/google/android/gms/org/conscrypt/x;

.field private crlParser:Lcom/google/android/gms/org/conscrypt/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-void

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

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 215
    new-instance v0, Lcom/google/android/gms/org/conscrypt/v;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/v;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/google/android/gms/org/conscrypt/x;

    .line 242
    new-instance v0, Lcom/google/android/gms/org/conscrypt/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/org/conscrypt/w;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;)V

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/google/android/gms/org/conscrypt/x;

    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->PKCS7_MARKER:[B

    return-object v0
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 2

    .prologue
    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/google/android/gms/org/conscrypt/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/x;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CRL;
    :try_end_0
    .catch Lcom/google/android/gms/org/conscrypt/y; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 304
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->crlParser:Lcom/google/android/gms/org/conscrypt/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/x;->f(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Lcom/google/android/gms/org/conscrypt/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-direct {v1, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 317
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 323
    invoke-static {p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 4

    .prologue
    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 331
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 333
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_0

    .line 334
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Certificate not X.509 type at index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v0, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 2

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/google/android/gms/org/conscrypt/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/x;->e(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Lcom/google/android/gms/org/conscrypt/y; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 2

    .prologue
    .line 282
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;->certificateParser:Lcom/google/android/gms/org/conscrypt/x;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/org/conscrypt/x;->f(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Lcom/google/android/gms/org/conscrypt/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 312
    invoke-static {}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
