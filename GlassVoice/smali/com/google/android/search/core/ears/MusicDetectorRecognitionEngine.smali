.class public Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;
.super Ljava/lang/Object;
.source "MusicDetectorRecognitionEngine.java"

# interfaces
.implements Lcom/google/android/speech/engine/RecognitionEngine;


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0xfa0

.field private static final HOTWORD_BUFFER_SIZE_BYTES:I = 0x1f40

.field private static final HOTWORD_MIN_CONSECUTIVE_DETECTIONS:I = 0x3

.field private static final MUSIC_RESPONSE:Lcom/google/android/shared/speech/MusicResponse;

.field private static final TAG:Ljava/lang/String; = "MusicDetectorRecognitionEngine"


# instance fields
.field mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/shared/speech/MusicResponse;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/shared/speech/MusicResponse;-><init>(I)V

    sput-object v0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->MUSIC_RESPONSE:Lcom/google/android/shared/speech/MusicResponse;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/android/speech/SpeechSettings;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    iput-object p1, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput-object p2, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 52
    return-void
.end method

.method private getMusicDetectorThreshold()F
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->hasMusicDetectorThreshold()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v0}, Lcom/google/android/speech/SpeechSettings;->getConfiguration()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;

    move-result-object v0

    iget-object v0, v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Configuration;->soundSearch:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$SoundSearch;->getMusicDetectorThreshold()F

    move-result v0

    goto :goto_0
.end method

.method private processAudio([B)Ljava/lang/Float;
    .locals 1
    .param p1, "buffer"    # [B

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/google/audio/ears/MusicDetector;->process([BI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$2;

    const-string v2, "close"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$2;-><init>(Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;Ljava/lang/String;[I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method initMusicDetector(I)Z
    .locals 5
    .param p1, "sampleRateHz"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    :goto_0
    return v1

    .line 90
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/audio/ears/MusicDetector;->init(I)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v1, 0x1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "MusicDetectorRecognitionEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on native init(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method processInputStream(Ljava/io/InputStream;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V
    .locals 9
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p3, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    const/16 v8, 0x8

    .line 112
    invoke-direct {p0}, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->getMusicDetectorThreshold()F

    move-result v4

    .line 113
    .local v4, "musicThreshold":F
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v7

    if-ne v7, v8, :cond_1

    const/16 v0, 0x1f40

    .line 115
    .local v0, "bufferSize":I
    :goto_0
    new-array v2, v0, [B

    .line 117
    .local v2, "increment":[B
    const/4 v5, 0x0

    .line 119
    .local v5, "numConsecutiveDetections":I
    :cond_0
    :goto_1
    :try_start_0
    invoke-static {p1, v2}, Lcom/google/android/shared/util/IoUtils;->readFully(Ljava/io/InputStream;[B)V

    .line 120
    invoke-direct {p0, v2}, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->processAudio([B)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 121
    .local v6, "score":Ljava/lang/Float;
    if-nez v6, :cond_2

    .line 145
    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    .end local v6    # "score":Ljava/lang/Float;
    :goto_2
    return-void

    .line 113
    .end local v0    # "bufferSize":I
    .end local v2    # "increment":[B
    .end local v5    # "numConsecutiveDetections":I
    :cond_1
    const/16 v0, 0xfa0

    goto :goto_0

    .line 123
    .restart local v0    # "bufferSize":I
    .restart local v2    # "increment":[B
    .restart local v5    # "numConsecutiveDetections":I
    .restart local v6    # "score":Ljava/lang/Float;
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v4

    if-ltz v7, :cond_4

    .line 124
    add-int/lit8 v5, v5, 0x1

    .line 125
    invoke-virtual {p3}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v7

    if-ne v7, v8, :cond_3

    .line 126
    const/4 v7, 0x3

    if-lt v5, v7, :cond_0

    .line 127
    sget-object v7, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->MUSIC_RESPONSE:Lcom/google/android/shared/speech/MusicResponse;

    invoke-interface {p2, v7}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 137
    .end local v6    # "score":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/EOFException;
    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .line 130
    .end local v1    # "e":Ljava/io/EOFException;
    .restart local v6    # "score":Ljava/lang/Float;
    :cond_3
    :try_start_2
    sget-object v7, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->MUSIC_RESPONSE:Lcom/google/android/shared/speech/MusicResponse;

    invoke-interface {p2, v7}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .line 134
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 140
    .end local v6    # "score":Ljava/lang/Float;
    :catch_1
    move-exception v3

    .line 141
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_3
    new-instance v7, Lcom/google/android/shared/speech/exception/MusicRecognizeException;

    const-string v8, "Error reading from input stream."

    invoke-direct {v7, v8, v3}, Lcom/google/android/shared/speech/exception/MusicRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p2, v7}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    invoke-static {p1}, Lcom/google/android/shared/util/IoUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v7
.end method

.method public startRecognition(Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V
    .locals 8
    .param p1, "input"    # Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p3, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    .line 58
    iget-object v7, p0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;

    const-string v2, "startRecognition"

    const/4 v1, 0x0

    new-array v3, v1, [I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine$1;-><init>(Lcom/google/android/search/core/ears/MusicDetectorRecognitionEngine;Ljava/lang/String;[ILcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/callback/RecognitionEngineCallback;Lcom/google/android/speech/params/SessionParams;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
