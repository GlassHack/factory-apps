.class public Lcom/google/android/s3/message/S3RequestStream;
.super Ljava/lang/Object;
.source "S3RequestStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final S3_STREAM_PREFIX:[B

.field private static final TAG:Ljava/lang/String; = "S3RequestStream"


# instance fields
.field private final mChunked:Z

.field private final mHeader:Ljava/lang/String;

.field private mHeaderWritten:Z

.field private final mOut:Ljava/io/OutputStream;

.field private final mScratch:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/s3/message/S3RequestStream;->S3_STREAM_PREFIX:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "chunked"    # Z

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    .line 34
    iput-object p1, p0, Lcom/google/android/s3/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    .line 35
    iput-object p2, p0, Lcom/google/android/s3/message/S3RequestStream;->mHeader:Ljava/lang/String;

    .line 36
    iput-boolean p3, p0, Lcom/google/android/s3/message/S3RequestStream;->mChunked:Z

    .line 37
    return-void
.end method

.method private internalWrite(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 5
    .param p1, "s3Request"    # Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v1, "S3RequestStream"

    invoke-static {v1}, Lcom/google/android/shared/util/L;->isVerboseEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string v1, "S3RequestStream"

    const-string v2, "S3Request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->v(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 93
    :cond_0
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 94
    .local v0, "bytes":[B
    invoke-direct {p0, v0}, Lcom/google/android/s3/message/S3RequestStream;->maybeChunkAndSendBytes([B)V

    .line 95
    return-void
.end method

.method private maybeChunkAndSendBytes([B)V
    .locals 6
    .param p1, "request"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    array-length v0, p1

    .line 55
    .local v0, "count":I
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 58
    :try_start_0
    iget-boolean v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mChunked:Z

    if-nez v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 65
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 66
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 81
    return-void

    .line 68
    :cond_1
    :goto_0
    if-lez v0, :cond_0

    .line 69
    :try_start_1
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 70
    .local v1, "toWrite":I
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-virtual {v2, p1, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 71
    sub-int/2addr v0, v1

    .line 72
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 74
    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 79
    .end local v1    # "toWrite":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    throw v2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 104
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 99
    return-void
.end method

.method public write(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 1
    .param p1, "s3Request"    # Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mHeaderWritten:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 86
    invoke-direct {p0, p1}, Lcom/google/android/s3/message/S3RequestStream;->internalWrite(Lcom/google/speech/s3/S3$S3Request;)V

    .line 87
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeHeader(Lcom/google/speech/s3/S3$S3Request;)V
    .locals 6
    .param p1, "initial"    # Lcom/google/speech/s3/S3$S3Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 40
    iget-boolean v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mHeaderWritten:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 41
    iget-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 43
    const-string v0, "S3RequestStream"

    const-string v3, "Header: %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/s3/message/S3RequestStream;->mHeader:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    sget-object v2, Lcom/google/android/s3/message/S3RequestStream;->S3_STREAM_PREFIX:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 46
    iget-object v0, p0, Lcom/google/android/s3/message/S3RequestStream;->mScratch:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/s3/message/S3RequestStream;->mHeader:Ljava/lang/String;

    const-string v3, "_"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/speech/utils/HexUtils;->hexToBytes(Ljava/lang/CharSequence;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/s3/message/S3RequestStream;->internalWrite(Lcom/google/speech/s3/S3$S3Request;)V

    .line 50
    iput-boolean v1, p0, Lcom/google/android/s3/message/S3RequestStream;->mHeaderWritten:Z

    .line 51
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v0, v2

    .line 41
    goto :goto_1
.end method
