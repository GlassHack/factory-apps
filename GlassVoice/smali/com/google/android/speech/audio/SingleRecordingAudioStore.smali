.class public Lcom/google/android/speech/audio/SingleRecordingAudioStore;
.super Ljava/lang/Object;
.source "SingleRecordingAudioStore.java"

# interfaces
.implements Lcom/google/android/speech/audio/AudioStore;


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingleRecordingAudioStore"


# instance fields
.field private mLastAudioRecording:Lcom/google/android/speech/audio/AudioStore$AudioRecording;

.field private mLastRequestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getAudio(Ljava/lang/String;)Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;->mLastRequestId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;->mLastAudioRecording:Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAudio()Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;->mLastAudioRecording:Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAudio(Ljava/lang/String;)Z
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    const-string v0, "SingleRecordingAudioStore"

    const-string v1, "hasAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;->mLastRequestId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Lcom/google/android/speech/audio/AudioStore$AudioRecording;)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "recording"    # Lcom/google/android/speech/audio/AudioStore$AudioRecording;

    .prologue
    .line 23
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;->mLastRequestId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/google/android/speech/audio/SingleRecordingAudioStore;->mLastAudioRecording:Lcom/google/android/speech/audio/AudioStore$AudioRecording;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    return-void

    .line 23
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
