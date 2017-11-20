.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private source:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->source:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    .line 32
    return-void
.end method

.method public static wrap(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;

    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    new-instance v2, Lcom/google/android/gms/org/conscrypt/h;

    invoke-direct {v2, p0}, Lcom/google/android/gms/org/conscrypt/h;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;-><init>(Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;)V

    return-object v0
.end method


# virtual methods
.method protected final finalize()V
    .locals 1

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 51
    return-void

    .line 50
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getContext()J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->source:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized release()V
    .locals 2

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->source:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->source:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;

    invoke-virtual {v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSource;->source:Lcom/google/android/gms/org/conscrypt/OpenSSLBIOInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
