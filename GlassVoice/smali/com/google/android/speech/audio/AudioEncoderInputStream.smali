.class public Lcom/google/android/speech/audio/AudioEncoderInputStream;
.super Ljava/io/InputStream;
.source "AudioEncoderInputStream.java"


# static fields
.field public static final AAC_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final ADTS_HEADER_LENGTH:I = 0x7

.field private static final AMR_HEADER:Ljava/lang/String; = "#!AMR-WB\n"

.field public static final AMR_WB_MIME_TYPE:Ljava/lang/String; = "audio/amr-wb"

.field public static final AMR_WB_MODE_8_BITRATE:I = 0x5d2a

.field public static final AMR_WB_SAMPLE_RATE:I = 0x3e80

.field private static final CODEC_AAC:I = 0x0

.field private static final CODEC_AMR_WB:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioEncoderInputStream"

.field private static final TIMEOUT_USECS:I = 0x2710


# instance fields
.field private final mChannels:I

.field private mCodec:Landroid/media/MediaCodec;

.field private mCodecInputBuffers:[Ljava/nio/ByteBuffer;

.field private mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

.field private final mCodecType:I

.field private mCurrentOutputBufferIndex:I

.field private final mDataIn:Ljava/nio/ByteBuffer;

.field private mEof:Z

.field private final mMimeType:Ljava/lang/String;

.field private final mPendingHeader:Ljava/nio/ByteBuffer;

.field private final mReadSize:I

.field private final mSampleRate:I

.field private final mStream:Ljava/io/InputStream;

.field private mTotalRead:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;IIII)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "sampleRate"    # I
    .param p4, "readSize"    # I
    .param p5, "outputBitrate"    # I
    .param p6, "channels"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    .line 58
    iput p4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    .line 59
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mStream:Ljava/io/InputStream;

    .line 60
    iput p3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    .line 61
    iput p6, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    .line 62
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mMimeType:Ljava/lang/String;

    .line 63
    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    const/16 v5, 0x2b11

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 65
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 66
    iput v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecType:I

    .line 67
    const/4 v2, 0x7

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    .line 77
    :goto_2
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    new-array v2, v2, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    .line 78
    iget-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    new-instance v1, Landroid/media/MediaFormat;

    invoke-direct {v1}, Landroid/media/MediaFormat;-><init>()V

    .line 81
    .local v1, "format":Landroid/media/MediaFormat;
    const-string v2, "mime"

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v2, "sample-rate"

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 83
    const-string v2, "bitrate"

    invoke-virtual {v1, v2, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 84
    const-string v2, "channel-count"

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 86
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->isAac()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 89
    :try_start_0
    const-string v2, "OMX.google.aac.encoder"

    invoke-direct {p0, v2, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startCodecByName(Ljava/lang/String;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_3
    return-void

    .end local v1    # "format":Landroid/media/MediaFormat;
    :cond_0
    move v2, v4

    .line 64
    goto :goto_0

    :cond_1
    move v3, v4

    .line 65
    goto :goto_1

    .line 68
    :cond_2
    const-string v2, "audio/amr-wb"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 69
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    const/16 v5, 0x3e80

    if-ne v2, v5, :cond_4

    move v2, v3

    :goto_4
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 70
    iget v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    if-ne v2, v3, :cond_3

    move v4, v3

    :cond_3
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 71
    iput v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecType:I

    .line 72
    const-string v2, "#!AMR-WB\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    goto :goto_2

    :cond_4
    move v2, v4

    .line 69
    goto :goto_4

    .line 74
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported audio codec"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    .restart local v1    # "format":Landroid/media/MediaFormat;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startCodecByMimeType(Ljava/lang/String;Landroid/media/MediaFormat;)V

    goto :goto_3

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-direct {p0, p2, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startCodecByMimeType(Ljava/lang/String;Landroid/media/MediaFormat;)V

    goto :goto_3
.end method

.method private encodeStream()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, -0x2

    const-wide/16 v6, 0x2710

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 152
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    if-le v0, v5, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    iget v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    invoke-virtual {v0, v4, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 154
    iput v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v6, v7}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    .line 158
    .local v2, "index":I
    if-eq v2, v5, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-direct {p0, v0, v2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->onInputBufferReady(Landroid/media/MediaCodec;I)V

    .line 162
    :cond_1
    new-instance v9, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v9}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 163
    .local v9, "info":Landroid/media/MediaCodec$BufferInfo;
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 164
    if-ne v2, v10, :cond_2

    .line 166
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    .line 167
    .local v8, "format":Landroid/media/MediaFormat;
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mSampleRate:I

    const-string v4, "sample-rate"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 168
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mChannels:I

    const-string v4, "channel-count"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 169
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mMimeType:Ljava/lang/String;

    const-string v4, "mime"

    invoke-virtual {v8, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 170
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v9, v6, v7}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 172
    .end local v8    # "format":Landroid/media/MediaFormat;
    :cond_2
    if-eq v2, v10, :cond_6

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 173
    if-ne v2, v5, :cond_7

    .line 183
    :cond_3
    :goto_3
    return-void

    .restart local v8    # "format":Landroid/media/MediaFormat;
    :cond_4
    move v0, v3

    .line 167
    goto :goto_0

    :cond_5
    move v0, v3

    .line 168
    goto :goto_1

    .end local v8    # "format":Landroid/media/MediaFormat;
    :cond_6
    move v1, v3

    .line 172
    goto :goto_2

    .line 177
    :cond_7
    const/4 v0, -0x3

    if-ne v2, v0, :cond_8

    .line 178
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 179
    :cond_8
    if-eq v2, v5, :cond_3

    .line 180
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    iget v3, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v4, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v5, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v7, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->onOutputBufferReady(Landroid/media/MediaCodec;IIIJI)V

    goto :goto_3
.end method

.method private static hexdumpDebug(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 11
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "size"    # I

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 344
    const/4 v3, 0x0

    .line 345
    .local v3, "pos":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v2, "line":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v3, p2, :cond_6

    .line 347
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%08x:    "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v10, :cond_2

    .line 350
    const/16 v4, 0x8

    if-ne v1, v4, :cond_0

    .line 351
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    add-int v4, v3, v1

    if-lt v4, p2, :cond_1

    .line 355
    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 357
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, p1, v3

    add-int/2addr v7, v1

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 361
    :cond_2
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v10, :cond_3

    .line 364
    add-int v4, v3, v1

    if-lt v4, p2, :cond_4

    .line 376
    :cond_3
    add-int/lit8 v3, v3, 0x10

    .line 377
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 368
    :cond_4
    add-int v4, p1, v3

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 369
    .local v0, "b":B
    invoke-static {v0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->isPrintableDebug(B)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 370
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%c"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 372
    :cond_5
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 379
    .end local v0    # "b":B
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isAac()Z
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPrintableDebug(B)Z
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 340
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onInputBufferReady(Landroid/media/MediaCodec;I)V
    .locals 10
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 186
    const-string v0, "AudioEncoderInputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onInputBufferReady "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v7, v0, p2

    .line 189
    .local v7, "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 191
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 193
    :goto_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    if-ge v0, v1, :cond_1

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v3, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mReadSize:I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 197
    .local v9, "numToRead":I
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v7, v0, v1, v9}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 200
    .end local v9    # "numToRead":I
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mStream:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 201
    .local v8, "n":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 211
    .end local v8    # "n":I
    :cond_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_3

    .line 212
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move-object v0, p1

    move v1, p2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 217
    :goto_1
    return-void

    .line 205
    .restart local v8    # "n":I
    :cond_2
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 206
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 207
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mTotalRead:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mTotalRead:I

    goto :goto_0

    .line 214
    .end local v8    # "n":I
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    .line 215
    const/4 v6, 0x4

    move-object v0, p1

    move v1, p2

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1
.end method

.method private onOutputBufferReady(Landroid/media/MediaCodec;IIIJI)V
    .locals 4
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "index"    # I
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .param p5, "presentationTimeUs"    # J
    .param p7, "flags"    # I

    .prologue
    .line 226
    const-string v1, "AudioEncoderInputStream"

    const-string v2, "#onOutputBufferReady"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 229
    iput p2, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    .line 231
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->isAac()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 233
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p4, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->setAdtsHeaderBytes(ILjava/nio/ByteBuffer;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v1, p2

    .line 238
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 239
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 240
    add-int v1, p3, p4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 241
    return-void
.end method

.method private release()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 148
    return-void
.end method

.method private setAdtsHeaderBytes(ILjava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "frameLength"    # I
    .param p2, "header"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x2

    const-wide/16 v6, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 308
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v5, 0x7

    if-lt v2, v5, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 312
    const-wide/16 v0, 0x0

    .line 313
    .local v0, "bits":J
    const/16 v2, 0xc

    const/16 v5, 0xfff

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 314
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 315
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 316
    invoke-static {v0, v1, v3, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 317
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 318
    const/4 v2, 0x4

    const/16 v5, 0xa

    invoke-static {v0, v1, v2, v5}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 319
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 320
    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 321
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 322
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 323
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 324
    invoke-static {v0, v1, v3, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 325
    const/16 v2, 0xd

    add-int/lit8 v3, p1, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 326
    const/16 v2, 0xb

    const/16 v3, 0x7ff

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 327
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->writeBits(JII)J

    move-result-wide v0

    .line 329
    const/16 v2, 0x30

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 330
    const/16 v2, 0x28

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 331
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 332
    const/16 v2, 0x18

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 333
    const/16 v2, 0x10

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 334
    const/16 v2, 0x8

    ushr-long v2, v0, v2

    and-long/2addr v2, v6

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 335
    long-to-int v2, v0

    int-to-byte v2, v2

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 336
    return-void

    .end local v0    # "bits":J
    :cond_0
    move v2, v4

    .line 308
    goto/16 :goto_0
.end method

.method private startAndConfigureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 6
    .param p1, "codec"    # Landroid/media/MediaCodec;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    const/4 v5, 0x0

    .line 114
    :try_start_0
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 115
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 116
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 117
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 118
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not create codec"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    iput-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    .line 121
    iput-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecInputBuffers:[Ljava/nio/ByteBuffer;

    .line 122
    iput-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private startCodecByMimeType(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 108
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 109
    .local v0, "codec":Landroid/media/MediaCodec;
    invoke-direct {p0, v0, p2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startAndConfigureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 110
    return-void
.end method

.method private startCodecByName(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 103
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 104
    .local v0, "codec":Landroid/media/MediaCodec;
    invoke-direct {p0, v0, p2}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->startAndConfigureCodec(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    .line 105
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 141
    :cond_0
    return-void
.end method

.method private static writeBits(JII)J
    .locals 6
    .param p0, "bits"    # J
    .param p2, "length"    # I
    .param p3, "value"    # I

    .prologue
    .line 300
    const-wide/16 v2, -0x1

    rsub-int/lit8 v4, p2, 0x40

    ushr-long v0, v2, v4

    .line 301
    .local v0, "mask":J
    shl-long v2, p0, p2

    int-to-long v4, p3

    and-long/2addr v4, v0

    or-long/2addr v2, v4

    return-wide v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 133
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->stop()V

    .line 134
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->release()V

    .line 135
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->close()V

    .line 294
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no one closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    return-void
.end method

.method public getTotalRead()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mTotalRead:I

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Single-byte read not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 255
    iget-boolean v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 256
    .local v1, "endOfInput":Z
    :goto_0
    if-nez v1, :cond_2

    iget v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_2

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioEncoderInputStream;->encodeStream()V

    goto :goto_0

    .line 255
    .end local v1    # "endOfInput":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 264
    .restart local v1    # "endOfInput":Z
    :cond_2
    iget-boolean v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mEof:Z

    if-eqz v5, :cond_3

    .line 281
    :goto_1
    return v4

    .line 268
    :cond_3
    const/4 v2, 0x0

    .line 269
    .local v2, "headerToCopy":I
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 270
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 271
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mPendingHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 272
    add-int/2addr p2, v2

    .line 273
    sub-int/2addr p3, v2

    .line 276
    :cond_4
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCodecOutputBuffers:[Ljava/nio/ByteBuffer;

    iget v5, p0, Lcom/google/android/speech/audio/AudioEncoderInputStream;->mCurrentOutputBufferIndex:I

    aget-object v0, v4, v5

    .line 277
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 279
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 280
    .local v3, "toCopy":I
    invoke-virtual {v0, p1, p2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 281
    add-int v4, v3, v2

    goto :goto_1
.end method
