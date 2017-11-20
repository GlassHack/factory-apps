.class public Lcom/google/android/speech/audio/AudioSource;
.super Ljava/lang/Object;
.source "AudioSource.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioInputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/audio/AudioSource$CaptureThread;
    }
.end annotation


# static fields
.field private static final MAX_SIBLINGS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AudioSource"

.field private static final USE_GRECO3_SPEECH_LEVELS:Z


# instance fields
.field private mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

.field private mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

.field private final mMaxBuffers:I

.field private final mMinBuffers:I

.field private final mReadSize:I

.field private final mSampleRate:I

.field private final mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mTee:Lcom/google/android/speech/audio/Tee;


# direct methods
.method public constructor <init>(IIIILcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/shared/util/SpeechLevelSource;)V
    .locals 3
    .param p1, "sampleRate"    # I
    .param p2, "readSize"    # I
    .param p3, "minBuffers"    # I
    .param p4, "maxBuffers"    # I
    .param p5, "inputStreamFactory"    # Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .param p6, "speechLevelSource"    # Lcom/google/android/shared/util/SpeechLevelSource;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "AudioSource"

    const-string v1, "AudioBuffer.constructor"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 55
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iput p1, p0, Lcom/google/android/speech/audio/AudioSource;->mSampleRate:I

    .line 58
    iput p2, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    .line 59
    iput p3, p0, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    .line 60
    iput p4, p0, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    .line 61
    iput-object p5, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 62
    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    .line 64
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/google/android/speech/audio/SpeechLevelGenerator;

    invoke-direct {v0, p6}, Lcom/google/android/speech/audio/SpeechLevelGenerator;-><init>(Lcom/google/android/shared/util/SpeechLevelSource;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/speech/audio/AudioSource;)V
    .locals 1
    .param p1, "oldAudioSource"    # Lcom/google/android/speech/audio/AudioSource;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    monitor-enter p1

    .line 73
    :try_start_0
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mSampleRate:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mSampleRate:I

    .line 74
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    .line 75
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    .line 76
    iget v0, p1, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    iput v0, p0, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    .line 77
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 78
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    .line 79
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    .line 80
    iget-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 85
    monitor-exit p1

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized createInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stopped"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/google/android/speech/audio/Tee;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-interface {v1}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    iget v3, p0, Lcom/google/android/speech/audio/AudioSource;->mMinBuffers:I

    iget v4, p0, Lcom/google/android/speech/audio/AudioSource;->mMaxBuffers:I

    const/16 v5, 0x10

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/Tee;-><init>(Ljava/io/InputStream;IIII)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    .line 97
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/Tee;->getLeader()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->setInputStream(Ljava/io/InputStream;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->start()V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/Tee;->split()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized shutdown()V
    .locals 1

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioSource;->stopListening()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Lcom/google/android/speech/listeners/OnReadyForSpeechListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/google/android/speech/listeners/OnReadyForSpeechListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 114
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iget v1, p0, Lcom/google/android/speech/audio/AudioSource;->mReadSize:I

    iget-object v2, p0, Lcom/google/android/speech/audio/AudioSource;->mSpeechLevelGenerator:Lcom/google/android/speech/audio/SpeechLevelGenerator;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;-><init>(ILcom/google/android/speech/audio/SpeechLevelGenerator;Lcom/google/android/speech/listeners/OnReadyForSpeechListener;)V

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 117
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    invoke-virtual {v1}, Lcom/google/android/speech/audio/Tee;->getLeader()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->setInputStream(Ljava/io/InputStream;)V

    .line 119
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 1

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->closeLeader()V

    .line 138
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource$CaptureThread;->interrupt()V

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mCaptureThread:Lcom/google/android/speech/audio/AudioSource$CaptureThread;

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mTee:Lcom/google/android/speech/audio/Tee;

    if-nez v0, :cond_2

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioSource;->mInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_2
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
