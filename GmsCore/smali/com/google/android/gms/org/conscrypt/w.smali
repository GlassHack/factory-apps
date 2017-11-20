.class final Lcom/google/android/gms/org/conscrypt/w;
.super Lcom/google/android/gms/org/conscrypt/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;


# direct methods
.method constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;)V
    .locals 1

    .prologue
    .line 243
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/w;->a:Lcom/google/android/gms/org/conscrypt/OpenSSLX509CertificateFactory;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/org/conscrypt/x;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1

    .prologue
    .line 259
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/io/InputStream;)Ljava/util/List;
    .locals 1

    .prologue
    .line 265
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic c(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->fromX509DerInputStream(Ljava/io/InputStream;)Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic d(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;->fromX509PemInputStream(Ljava/io/InputStream;)Lcom/google/android/gms/org/conscrypt/OpenSSLX509CRL;

    move-result-object v0

    return-object v0
.end method
