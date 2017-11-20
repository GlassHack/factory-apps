.class public Lcom/google/glass/voice/MockMicrophoneInputStream;
.super Lcom/google/glass/voice/MicrophoneInputStream;
.source "MockMicrophoneInputStream.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/voice/ConcurrentAudioInterface;I)V
    .locals 1
    .param p1, "audioInterface"    # Lcom/google/glass/voice/ConcurrentAudioInterface;
    .param p2, "sampleRate"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/MicrophoneInputStream;-><init>(Lcom/google/glass/voice/ConcurrentAudioInterface;I)V

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    return-void
.end method


# virtual methods
.method public declared-synchronized feedCannedAudio(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "cannedAudioInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 75
    monitor-enter p0

    if-nez p1, :cond_0

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Canned audio input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 79
    :cond_0
    :try_start_1
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "received canned audio input stream"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 40
    monitor-enter p0

    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 41
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .local v0, "cannedAudioInputStream":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 44
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 45
    .local v3, "readReturn":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 64
    .end local v3    # "readReturn":I
    :goto_0
    monitor-exit p0

    return v3

    .line 48
    .restart local v3    # "readReturn":I
    :cond_0
    :try_start_2
    sget-object v4, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "finished reading from canned audio, passing zeros"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 52
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .end local v3    # "readReturn":I
    :cond_1
    :goto_1
    move v2, p2

    .local v2, "i":I
    :goto_2
    add-int v4, p2, p3

    if-ge v2, v4, :cond_2

    .line 61
    const/4 v4, 0x0

    :try_start_3
    aput-byte v4, p1, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 54
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error reading canned audio, passing zeros instead"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    iget-object v4, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->cannedAudioInputStreamRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 40
    .end local v0    # "cannedAudioInputStream":Ljava/io/InputStream;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0    # "cannedAudioInputStream":Ljava/io/InputStream;
    .restart local v2    # "i":I
    :cond_2
    move v3, p3

    .line 64
    goto :goto_0
.end method

.method public declared-synchronized startListening()V
    .locals 3

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "starting listening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 3

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/MockMicrophoneInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "stopping listening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MockMicrophoneInputStream;->listening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
