.class public final Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final ctx:J

.field private position:I


# direct methods
.method private constructor <init>(Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->ctx:J

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 34
    return-void
.end method

.method public static create()Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    new-instance v1, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;

    invoke-direct {v1, v0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;-><init>(Ljava/io/ByteArrayOutputStream;)V

    return-object v1
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected final finalize()V
    .locals 2

    .prologue
    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->ctx:J

    invoke-static {v0, v1}, Lcom/google/android/gms/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getContext()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->ctx:J

    return-wide v0
.end method

.method public final position()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position:I

    return v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 43
    return-void
.end method

.method public final skip(J)J
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->available()I

    move-result v0

    long-to-int v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 47
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position:I

    .line 48
    iget v1, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->position:I

    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->reset()V

    .line 51
    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public final toByteArray()[B
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/OpenSSLBIOSink;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
