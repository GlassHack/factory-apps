.class public Lcom/google/android/speech/audio/AudioController;
.super Ljava/lang/Object;
.source "AudioController.java"


# static fields
.field private static final DBG:Z = false

.field public static final DEBUG_BLUETOOTH:Z = false

.field private static final PERMISSION_CAPTURE_AUDIO_HOTWORD:Ljava/lang/String; = "android.permission.CAPTURE_AUDIO_HOTWORD"

.field private static final TAG:Ljava/lang/String; = "AudioController"

.field public static final TEE_BUFFER_SIZE:I = 0x3e8

.field public static final TEE_KEEP_SIZE:I = 0x1f4


# instance fields
.field private final mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

.field private mAudioSource:Lcom/google/android/speech/audio/AudioSource;

.field final mContext:Landroid/content/Context;

.field private mListening:Z

.field private final mLogExtras:Lcom/google/android/voicesearch/LogExtras;

.field private mNoiseSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mRequestAudioFocus:Z

.field private final mSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mSoundManager:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;

.field private final mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

.field private final mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/shared/util/SpeechLevelSource;Lcom/google/android/speech/audio/SpeakNowSoundPlayer;Lcom/google/android/voicesearch/audio/AudioRouter;Lcom/google/android/voicesearch/LogExtras;Lcom/google/android/speech/SpeechLibFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/google/android/speech/SpeechSettings;
    .param p3, "speechLevelSource"    # Lcom/google/android/shared/util/SpeechLevelSource;
    .param p4, "soundManager"    # Lcom/google/android/speech/audio/SpeakNowSoundPlayer;
    .param p5, "audioRouter"    # Lcom/google/android/voicesearch/audio/AudioRouter;
    .param p6, "logExtras"    # Lcom/google/android/voicesearch/LogExtras;
    .param p7, "speechLibFactory"    # Lcom/google/android/speech/SpeechLibFactory;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 91
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/google/android/speech/audio/AudioController;->mSettings:Lcom/google/android/speech/SpeechSettings;

    .line 93
    iput-object p4, p0, Lcom/google/android/speech/audio/AudioController;->mSoundManager:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;

    .line 94
    iput-object p3, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    .line 95
    iput-object p5, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    .line 96
    iput-object p6, p0, Lcom/google/android/speech/audio/AudioController;->mLogExtras:Lcom/google/android/voicesearch/LogExtras;

    .line 97
    iput-object p7, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    .line 98
    return-void
.end method

.method private createAudioSource(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioSource;
    .locals 7
    .param p1, "inputStreamFactory"    # Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .param p2, "params"    # Lcom/google/android/speech/params/AudioInputParams;

    .prologue
    .line 266
    new-instance v0, Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {p2}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->getMicrophoneReadSize(I)I

    move-result v2

    const/16 v3, 0x1f4

    const/16 v4, 0x3e8

    invoke-virtual {p2}, Lcom/google/android/speech/params/AudioInputParams;->shouldReportSoundLevels()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    :goto_0
    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/audio/AudioSource;-><init>(IIIILcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/shared/util/SpeechLevelSource;)V

    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private createDefaultRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 6
    .param p1, "params"    # Lcom/google/android/speech/params/AudioInputParams;

    .prologue
    .line 242
    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->usePreemptibleAudioSource()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/speech/audio/AudioController;->isPreemptibleAudioSourceSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    .line 246
    .local v5, "preemptible":Z
    :goto_0
    new-instance v0, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;

    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/speech/audio/AudioController;->isNoiseSuppressionEnabled(Lcom/google/android/speech/params/AudioInputParams;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->isPlayBeepEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/speech/audio/AudioController;->mSoundManager:Lcom/google/android/speech/audio/SpeakNowSoundPlayer;

    :goto_1
    iget-object v4, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;-><init>(IZLcom/google/android/speech/audio/SpeakNowSoundPlayer;Lcom/google/android/voicesearch/audio/AudioRouter;Z)V

    .line 252
    .local v0, "microphoneInputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    return-object v0

    .line 242
    .end local v0    # "microphoneInputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .end local v5    # "preemptible":Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 246
    .restart local v5    # "preemptible":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private createFactoryForRecordedUri(Landroid/net/Uri;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 1
    .param p1, "recordedAudioUri"    # Landroid/net/Uri;

    .prologue
    .line 101
    new-instance v0, Lcom/google/android/speech/audio/AudioController$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/speech/audio/AudioController$1;-><init>(Lcom/google/android/speech/audio/AudioController;Landroid/net/Uri;)V

    return-object v0
.end method

.method private getRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 1
    .param p1, "params"    # Lcom/google/android/speech/params/AudioInputParams;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;

    .line 234
    :goto_0
    return-object v0

    .line 230
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->getRecordedAudioUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->getRecordedAudioUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/speech/audio/AudioController;->createFactoryForRecordedUri(Landroid/net/Uri;)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v0

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/speech/audio/AudioController;->createDefaultRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v0

    goto :goto_0
.end method

.method private isNoiseSuppressionEnabled(Lcom/google/android/speech/params/AudioInputParams;)Z
    .locals 2
    .param p1, "params"    # Lcom/google/android/speech/params/AudioInputParams;

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p1}, Lcom/google/android/speech/params/AudioInputParams;->isNoiseSuppressionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mNoiseSuppressors:Ljava/util/List;

    if-nez v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v1

    iget-object v1, v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->platform:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;

    invoke-static {v1}, Lcom/google/android/speech/audio/AudioUtils;->getNoiseSuppressors(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Platform;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mNoiseSuppressors:Ljava/util/List;

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mNoiseSuppressors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPreemptibleAudioSourceSupported()Z
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 257
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.permission.CAPTURE_AUDIO_HOTWORD"

    iget-object v2, p0, Lcom/google/android/speech/audio/AudioController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized createInputStreamFactory(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .locals 4
    .param p1, "params"    # Lcom/google/android/speech/params/AudioInputParams;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    const-string v1, "AudioController"

    const-string v2, "createInputStreamFactory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 151
    invoke-direct {p0, p1}, Lcom/google/android/speech/audio/AudioController;->getRawInputStreamFactoryLocked(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;

    move-result-object v0

    .line 154
    .local v0, "inputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    invoke-direct {p0, v0, p1}, Lcom/google/android/speech/audio/AudioController;->createAudioSource(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioSource;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    .line 155
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 150
    .end local v0    # "inputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setRawInputStreamFactory(Lcom/google/android/speech/audio/AudioInputStreamFactory;)V
    .locals 1
    .param p1, "rawInputStreamFactory"    # Lcom/google/android/speech/audio/AudioInputStreamFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/speech/audio/AudioController;->mRawInputStreamFactory:Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 3

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    const-string v0, "AudioController"

    const-string v1, "shutdown"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource;->shutdown()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/speech/audio/AudioController;->stopListening()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startListening(ZLcom/google/android/speech/listeners/OnReadyForSpeechListener;)V
    .locals 4
    .param p1, "requestAudioFocus"    # Z
    .param p2, "listener"    # Lcom/google/android/speech/listeners/OnReadyForSpeechListener;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    const-string v1, "AudioController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startListening [mListening="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requestAudioFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 173
    iget-boolean v1, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    if-nez v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    invoke-virtual {v1}, Lcom/google/android/shared/util/SpeechLevelSource;->reset()V

    .line 176
    iput-boolean p1, p0, Lcom/google/android/speech/audio/AudioController;->mRequestAudioFocus:Z

    .line 177
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    invoke-interface {v1, p1}, Lcom/google/android/voicesearch/audio/AudioRouter;->onStartListening(Z)V

    .line 179
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v1, p2}, Lcom/google/android/speech/audio/AudioSource;->start(Lcom/google/android/speech/listeners/OnReadyForSpeechListener;)V

    .line 183
    :cond_0
    new-instance v0, Lcom/google/android/shared/logger/EventLogger$LogData;

    iget-object v1, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    invoke-interface {v1}, Lcom/google/android/voicesearch/audio/AudioRouter;->getInputDeviceToLog()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/speech/audio/AudioController;->mLogExtras:Lcom/google/android/voicesearch/LogExtras;

    invoke-virtual {v2}, Lcom/google/android/voicesearch/LogExtras;->getNetworkType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/shared/logger/EventLogger$LogData;-><init>(II)V

    .line 185
    .local v0, "data":Lcom/google/android/shared/logger/EventLogger$LogData;
    const/16 v1, 0x4c

    invoke-static {v1, v0}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(ILjava/lang/Object;)V

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v0    # "data":Lcom/google/android/shared/logger/EventLogger$LogData;
    :cond_1
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    const-string v0, "AudioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopListening [mListening="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 201
    iget-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioSource:Lcom/google/android/speech/audio/AudioSource;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioSource;->stopListening()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mAudioRouter:Lcom/google/android/voicesearch/audio/AudioRouter;

    iget-boolean v1, p0, Lcom/google/android/speech/audio/AudioController;->mRequestAudioFocus:Z

    invoke-interface {v0, v1}, Lcom/google/android/voicesearch/audio/AudioRouter;->onStopListening(Z)V

    .line 208
    iget-object v0, p0, Lcom/google/android/speech/audio/AudioController;->mSpeechLevelSource:Lcom/google/android/shared/util/SpeechLevelSource;

    invoke-virtual {v0}, Lcom/google/android/shared/util/SpeechLevelSource;->reset()V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/speech/audio/AudioController;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
