.class public Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private ctx:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-static {p0}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->create_BIO_InputStream(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    .line 35
    return-void
.end method


# virtual methods
.method public getBioContext()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method public gets([B)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 74
    :cond_0
    return v0

    .line 55
    :cond_1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v2

    .line 58
    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    .line 60
    const/16 v1, 0xa

    if-ne v2, v1, :cond_2

    .line 63
    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_2
    add-int/lit8 v1, v0, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 43
    return-void
.end method
