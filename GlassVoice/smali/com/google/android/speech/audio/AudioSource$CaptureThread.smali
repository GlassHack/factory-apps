.class Lcom/google/android/speech/audio/AudioSource$CaptureThread;
.super Ljava/lang/Thread;
.source "AudioSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/speech/audio/AudioSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaptureThread"
.end annotation


# instance fields
.field private mLeader:Ljava/io/InputStream;

.field private final mListener:Lcom/google/android/speech/listeners/OnReadyForSpeechListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mReadSize:I

.field private final mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/google/android/speech/audio/SpeechLevelGenerator;Lcom/google/android/speech/listeners/OnReadyForSpeechListener;)V
    .locals 1
    .param p1, "readSize"    # I
    .param p2, "speechLevelGenerator"    # Lcom/google/android/speech/audio/SpeechLevelGenerator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/google/android/speech/listeners/OnReadyForSpeechListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 171
    const-string v0, "MicrophoneReader"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 172
    iput p1, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mReadSize:I

    .line 173
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    .line 174
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mListener:Lcom/google/android/speech/listeners/OnReadyForSpeechListener;

    .line 175
    return-void
.end method


# virtual methods
.method public closeLeader()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 183
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 187
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mReadSize:I

    new-array v0, v3, [B

    .line 190
    .local v0, "buffer":[B
    const/4 v2, -0x1

    .line 191
    .local v2, "read":I
    const/4 v1, 0x1

    .line 192
    .local v1, "first":Z
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_3

    .line 194
    if-eqz v1, :cond_2

    .line 195
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mListener:Lcom/google/android/speech/listeners/OnReadyForSpeechListener;

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mListener:Lcom/google/android/speech/listeners/OnReadyForSpeechListener;

    invoke-interface {v3}, Lcom/google/android/speech/listeners/OnReadyForSpeechListener;->onReadyForSpeech()V

    .line 198
    :cond_1
    const/4 v1, 0x0

    .line 201
    :cond_2
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Lcom/google/android/speech/audio/SpeechLevelGenerator;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v3

    .line 209
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    :goto_1
    return-void

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v3
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .param p1, "leader"    # Ljava/io/InputStream;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->mLeader:Ljava/io/InputStream;

    .line 179
    return-void
.end method
