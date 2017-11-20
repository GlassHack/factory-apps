.class final Lcom/google/android/gms/org/conscrypt/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method


# virtual methods
.method public final available()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v0, v1, v0

    return v0
.end method

.method public final read([BII)I
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 87
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 93
    return-void
.end method

.method public final skip(J)J
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    int-to-long v2, v0

    add-long/2addr v2, p1

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    iget-object v1, p0, Lcom/google/android/gms/org/conscrypt/h;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v0, v1, v0

    int-to-long v0, v0

    return-wide v0
.end method
