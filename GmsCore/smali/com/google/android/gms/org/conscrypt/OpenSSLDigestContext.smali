.class public Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;
.super Lcom/google/android/gms/org/conscrypt/OpenSSLNativeReference;
.source "SourceFile"


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/org/conscrypt/OpenSSLNativeReference;-><init>(J)V

    .line 22
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    .prologue
    .line 27
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLDigestContext;->context:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->EVP_MD_CTX_destroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
