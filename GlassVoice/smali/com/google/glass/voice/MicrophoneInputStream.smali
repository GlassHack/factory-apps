.class public Lcom/google/glass/voice/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/MicrophoneInputStream$1;,
        Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;
    }
.end annotation


# static fields
.field static final READ_BUFFER_BYTES_PER_READ:I = 0x2c0
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final READ_BUFFER_LENGTH_MILLIS:I = 0xfa0

.field public static final SAMPLE_RATE_16000_HZ:I = 0x3e80

.field public static final SAMPLE_RATE_8000_HZ:I = 0x1f40

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

.field private delegateStream:Ljava/io/InputStream;

.field protected listening:Z

.field private final sampleRate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/ConcurrentAudioInterface;I)V
    .locals 0
    .param p1, "audioInterface"    # Lcom/google/glass/voice/ConcurrentAudioInterface;
    .param p2, "sampleRate"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 98
    iput p2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    .line 99
    iput-object p1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/MicrophoneInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

    return-object v0
.end method


# virtual methods
.method protected createInputStream()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 132
    const-wide/16 v2, 0xfa0

    iget v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v0

    .line 133
    .local v0, "bufferSizeBytes":I
    new-instance v1, Lcom/google/glass/voice/BufferingStreamRecorder;

    new-instance v2, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;-><init>(Lcom/google/glass/voice/MicrophoneInputStream;Lcom/google/glass/voice/MicrophoneInputStream$1;)V

    const/16 v3, 0x2c0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/glass/voice/BufferingStreamRecorder;-><init>(Ljava/io/InputStream;II)V

    .line 135
    .local v1, "bufferingRecorder":Lcom/google/glass/voice/BufferingStreamRecorder;
    invoke-virtual {v1}, Lcom/google/glass/voice/BufferingStreamRecorder;->startRecording()V

    .line 136
    return-object v1
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    return v0
.end method

.method public declared-synchronized isListening()Z
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z

    if-eqz v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    iget v2, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 111
    .local v0, "readReturn":I
    if-lez v0, :cond_0

    .line 119
    .end local v0    # "readReturn":I
    :goto_0
    monitor-exit p0

    return v0

    .line 115
    .restart local v0    # "readReturn":I
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error reading from delegate input stream. Stopped listening."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->stopListening()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v0    # "readReturn":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startListening()V
    .locals 5

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "MicrophoneInputStream is already listening."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_0
    monitor-exit p0

    return-void

    .line 145
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting listening on MicrophoneInputStream with sample rate %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/glass/voice/MicrophoneInputStream;->sampleRate:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->audioInterface:Lcom/google/glass/voice/ConcurrentAudioInterface;

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->acquireLock()V

    .line 147
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->createInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 3

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/MicrophoneInputStream;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget-object v0, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "MicrophoneInputStream has already stopped listening."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    sget-object v1, Lcom/google/glass/voice/MicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->delegateStream:Ljava/io/InputStream;

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream;->listening:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
