.class public Lcom/google/android/speech/audio/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final AUDIO_SOURCE:I = 0x6

.field private static final AUDIO_SOURCE_HOTWORD:I = 0x7cf

.field private static final CHANNEL_CONFIG:I = 0x10

.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"

.field private static volatile sAwaitRouteTokenCounter:I


# instance fields
.field protected mAudioRecord:Landroid/media/AudioRecord;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAudioRecordCreated:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mAwaitRouteToken:Ljava/lang/String;

.field private final mBufferSize:I

.field protected final mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field protected final mNoiseSuppressionEnabled:Z

.field private final mPreemptible:Z

.field private final mSampleRate:I

.field private mStarted:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZLcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;Z)V
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "minBufferSize"    # I
    .param p3, "noiseSuppressionEnabled"    # Z
    .param p4, "callbacks"    # Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "preemptible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    .line 46
    iput-boolean v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecordCreated:Z

    .line 47
    iput-boolean v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStarted:Z

    .line 107
    iput p1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mSampleRate:I

    .line 108
    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mBufferSize:I

    .line 111
    iput-boolean p3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mNoiseSuppressionEnabled:Z

    .line 112
    if-eqz p4, :cond_0

    .end local p4    # "callbacks":Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
    :goto_0
    iput-object p4, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    .line 113
    iput-boolean p5, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mPreemptible:Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MicrophoneInputStream_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/speech/audio/MicrophoneInputStream;->sAwaitRouteTokenCounter:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/google/android/speech/audio/MicrophoneInputStream;->sAwaitRouteTokenCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAwaitRouteToken:Ljava/lang/String;

    .line 115
    return-void

    .line 112
    .restart local p4    # "callbacks":Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
    :cond_0
    new-instance p4, Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    .end local p4    # "callbacks":Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;
    invoke-direct {p4}, Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;-><init>()V

    goto :goto_0
.end method

.method private ensureStartedLocked()Landroid/media/AudioRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/android/shared/util/ExtraPreconditions;->checkHoldsLock(Ljava/lang/Object;)V

    .line 141
    iget-boolean v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecordCreated:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord failed to initialize."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStarted:Z

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 176
    :goto_0
    return-object v1

    .line 149
    :cond_1
    const-string v1, "MicrophoneInputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic_starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    iget-object v2, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAwaitRouteToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;->awaitingRouting(Ljava/lang/String;)V

    .line 153
    iget-boolean v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecordCreated:Z

    if-nez v1, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->createAudioRecord()Landroid/media/AudioRecord;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    .line 156
    iput-boolean v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecordCreated:Z

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_3

    .line 160
    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord failed to initialize."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->createNoiseSuppressor()V

    .line 165
    invoke-virtual {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->startRecording()V

    .line 167
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    .line 168
    .local v0, "recordingState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 169
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t start recording, state is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_4
    iput-boolean v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mStarted:Z

    .line 174
    const-string v1, "MicrophoneInputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic_started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mCallbacks:Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;

    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAwaitRouteToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/MicrophoneInputStream$Callbacks;->cancelPendingAwaitRouting(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    if-nez v0, :cond_0

    .line 249
    const-string v0, "MicrophoneInputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mic_close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 253
    invoke-virtual {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->releaseNoiseSuppressor()V

    .line 254
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    .line 257
    :cond_0
    monitor-exit v1

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected createAudioRecord()Landroid/media/AudioRecord;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 119
    const-string v2, "MicrophoneInputStream"

    const-string v3, "#createAudioRecord"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 120
    const/4 v1, 0x6

    .line 121
    .local v1, "audioSource":I
    iget-boolean v2, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mPreemptible:Z

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "MicrophoneInputStream"

    const-string v3, "Using Hotword AudioSource"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    const/16 v1, 0x7cf

    .line 125
    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mSampleRate:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    iget v5, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mBufferSize:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 128
    .local v0, "ar":Landroid/media/AudioRecord;
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 129
    const-string v2, "MicrophoneInputStream"

    const-string v3, "Failed to initialize AudioRecord"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 130
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 131
    const/4 v0, 0x0

    .line 134
    .end local v0    # "ar":Landroid/media/AudioRecord;
    :cond_1
    return-object v0
.end method

.method protected createNoiseSuppressor()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public read()I
    .locals 2

    .prologue
    .line 190
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
    .line 195
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/speech/audio/MicrophoneInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 206
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 207
    :try_start_0
    iget-boolean v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    if-eqz v4, :cond_1

    .line 208
    monitor-exit v3

    move v1, v2

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    invoke-direct {p0}, Lcom/google/android/speech/audio/MicrophoneInputStream;->ensureStartedLocked()Landroid/media/AudioRecord;

    move-result-object v0

    .line 211
    .local v0, "record":Landroid/media/AudioRecord;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    .line 218
    .local v1, "rtn":I
    iget-object v3, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 219
    :try_start_1
    iget-boolean v4, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mClosed:Z

    if-eqz v4, :cond_2

    .line 220
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, v2

    goto :goto_0

    .line 211
    .end local v0    # "record":Landroid/media/AudioRecord;
    .end local v1    # "rtn":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 222
    .restart local v0    # "record":Landroid/media/AudioRecord;
    .restart local v1    # "rtn":I
    :cond_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 224
    if-ge v1, v2, :cond_0

    .line 225
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    .line 226
    new-instance v2, Ljava/io/IOException;

    const-string v3, "not open"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 229
    :cond_3
    const/4 v2, -0x2

    if-ne v1, v2, :cond_4

    .line 230
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Bad offset/length arguments for buffer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected releaseNoiseSuppressor()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method protected startRecording()V
    .locals 3

    .prologue
    .line 180
    const-string v0, "MicrophoneInputStream"

    const-string v1, "startRecording()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/speech/audio/MicrophoneInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 186
    return-void
.end method
