.class public Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;
.super Ljava/lang/Object;
.source "HotwordRecognitionRunner.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final BUFFER_SIZE_MS:I = 0x14

.field private static final HOTWORD_RESPONSE:Lcom/google/android/shared/speech/HotwordResponse;

.field private static final TAG:Ljava/lang/String; = "HotwordRecognitionRnr"


# instance fields
.field private final mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field private mCurrentRecognition:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mHotwordLoopRunnable:Ljava/lang/Runnable;

.field private final mHotwordModel:[B

.field private final mInputStream:Ljava/io/InputStream;

.field private final mRunner:Ljava/util/concurrent/ExecutorService;

.field private final mSampleRateHz:I

.field private mSpeakerIdModel:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSpeakerMode:I

.field private final mdataManager:Lcom/google/android/search/core/hotword/HotwordDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/shared/speech/HotwordResponse;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/shared/speech/HotwordResponse;-><init>(I)V

    sput-object v0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->HOTWORD_RESPONSE:Lcom/google/android/shared/speech/HotwordResponse;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/google/android/speech/callback/RecognitionEngineCallback;ILcom/google/android/search/core/hotword/HotwordDataManager;Ljava/lang/String;I)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "callback"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .param p3, "sampleRateHz"    # I
    .param p4, "dataManager"    # Lcom/google/android/search/core/hotword/HotwordDataManager;
    .param p5, "locale"    # Ljava/lang/String;
    .param p6, "speakerMode"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner$1;

    invoke-direct {v0, p0}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner$1;-><init>(Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;)V

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mHotwordLoopRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p4, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mdataManager:Lcom/google/android/search/core/hotword/HotwordDataManager;

    .line 61
    invoke-virtual {p4, p5}, Lcom/google/android/search/core/hotword/HotwordDataManager;->getMicroHotwordModel(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mHotwordModel:[B

    .line 62
    invoke-virtual {p4}, Lcom/google/android/search/core/hotword/HotwordDataManager;->getSpeakerModel()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerIdModel:[B

    .line 63
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    .line 64
    iput-object p2, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 65
    iput p3, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSampleRateHz:I

    .line 66
    const-string v0, "HotwordRecognitionRunner"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->createSafeSingleThreadedBackgroundExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    .line 68
    iput p6, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerMode:I

    .line 69
    return-void
.end method

.method private static checkInterrupted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 248
    :cond_0
    return-void
.end method

.method private createMicroHotword()Lcom/google/speech/micro/MicroHotword;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    iget v4, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerMode:I

    packed-switch v4, :pswitch_data_0

    .line 222
    :goto_0
    const-string v2, "HotwordRecognitionRnr"

    const-string v4, "Not verifying the user"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 223
    new-instance v0, Lcom/google/speech/micro/MicroHotword;

    iget v2, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSampleRateHz:I

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mHotwordModel:[B

    check-cast v1, [[B

    invoke-direct {v0, v2, v3, v1}, Lcom/google/speech/micro/MicroHotword;-><init>(I[B[[B)V

    :goto_1
    return-object v0

    .line 207
    :pswitch_0
    const-string v2, "HotwordRecognitionRnr"

    const-string v4, "SPEAKER_MODE_ENROLLMENT"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 208
    new-instance v0, Lcom/google/speech/micro/MicroHotword;

    iget v2, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSampleRateHz:I

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mHotwordModel:[B

    check-cast v1, [[B

    invoke-direct {v0, v2, v3, v1}, Lcom/google/speech/micro/MicroHotword;-><init>(I[B[[B)V

    .line 209
    .local v0, "hotword":Lcom/google/speech/micro/MicroHotword;
    invoke-virtual {v0}, Lcom/google/speech/micro/MicroHotword;->createSpeakerModel()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerIdModel:[B

    goto :goto_1

    .line 212
    .end local v0    # "hotword":Lcom/google/speech/micro/MicroHotword;
    :pswitch_1
    const-string v1, "HotwordRecognitionRnr"

    const-string v4, "SPEAKER_MODE_VERIFICATION"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerIdModel:[B

    if-eqz v1, :cond_0

    move v1, v2

    :goto_2
    const-string v4, "Speaker model cannot be null in verification mode!"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 215
    new-instance v0, Lcom/google/speech/micro/MicroHotword;

    iget v1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSampleRateHz:I

    iget-object v4, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mHotwordModel:[B

    new-array v2, v2, [[B

    iget-object v5, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerIdModel:[B

    aput-object v5, v2, v3

    invoke-direct {v0, v1, v4, v2}, Lcom/google/speech/micro/MicroHotword;-><init>(I[B[[B)V

    goto :goto_1

    :cond_0
    move v1, v3

    .line 213
    goto :goto_2

    .line 218
    :pswitch_2
    const-string v2, "HotwordRecognitionRnr"

    const-string v4, "SPEAKER_MODE_NONE"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private waitForHotword()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v13, 0x59

    const/4 v9, 0x0

    .line 98
    const/4 v5, 0x0

    .line 100
    .local v5, "microHotword":Lcom/google/speech/micro/MicroHotword;
    const/16 v10, 0x58

    :try_start_0
    invoke-static {v10}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 102
    invoke-direct {p0}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->createMicroHotword()Lcom/google/speech/micro/MicroHotword;

    move-result-object v5

    .line 103
    invoke-static {}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->checkInterrupted()V

    .line 104
    iget v10, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSampleRateHz:I

    mul-int/lit8 v10, v10, 0x14

    div-int/lit16 v10, v10, 0x3e8

    new-array v0, v10, [B

    .line 110
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 111
    .local v4, "extraByte":Z
    const/4 v7, 0x0

    .line 112
    .local v7, "overflowByte":B
    :cond_0
    iget-object v11, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    if-eqz v4, :cond_4

    move v10, v8

    :goto_0
    array-length v12, v0

    invoke-virtual {v11, v0, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .local v6, "numRead":I
    if-ltz v6, :cond_5

    .line 113
    invoke-static {}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->checkInterrupted()V

    .line 115
    if-eqz v4, :cond_1

    .line 116
    const/4 v10, 0x0

    aput-byte v7, v0, v10

    .line 117
    const/4 v4, 0x0

    .line 118
    add-int/lit8 v6, v6, 0x1

    .line 121
    :cond_1
    rem-int/lit8 v10, v6, 0x2

    if-ne v10, v8, :cond_2

    .line 122
    const/4 v4, 0x1

    .line 123
    add-int/lit8 v10, v6, -0x1

    aget-byte v7, v0, v10

    .line 124
    add-int/lit8 v6, v6, -0x1

    .line 126
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Lcom/google/speech/micro/MicroHotword;->process([BII)Z

    move-result v1

    .line 127
    .local v1, "detected":Z
    invoke-static {}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->checkInterrupted()V

    .line 130
    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->processHotwordDetected(Lcom/google/speech/micro/MicroHotword;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 150
    iget-object v10, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v10}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    if-eqz v5, :cond_3

    .line 152
    invoke-virtual {v5}, Lcom/google/speech/micro/MicroHotword;->close()V

    .line 154
    :cond_3
    iget-object v10, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    invoke-static {v13}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 157
    const-string v10, "HotwordRecognitionRnr"

    const-string v11, "Hotword detection finished"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v11, v9}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .end local v0    # "buffer":[B
    .end local v1    # "detected":Z
    .end local v4    # "extraByte":Z
    .end local v6    # "numRead":I
    .end local v7    # "overflowByte":B
    :goto_1
    return v8

    .restart local v0    # "buffer":[B
    .restart local v4    # "extraByte":Z
    .restart local v7    # "overflowByte":B
    :cond_4
    move v10, v9

    .line 112
    goto :goto_0

    .line 134
    .restart local v6    # "numRead":I
    :cond_5
    :try_start_1
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Reached EOF for InputStream."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    if-eqz v5, :cond_6

    .line 152
    invoke-virtual {v5}, Lcom/google/speech/micro/MicroHotword;->close()V

    .line 154
    :cond_6
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    invoke-static {v13}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 157
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Hotword detection finished"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v8, v9

    goto :goto_1

    .line 136
    .end local v0    # "buffer":[B
    .end local v4    # "extraByte":Z
    .end local v6    # "numRead":I
    .end local v7    # "overflowByte":B
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Interrupted recognition."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/google/android/shared/util/L;->dWithStackTrace(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    if-eqz v5, :cond_7

    .line 152
    invoke-virtual {v5}, Lcom/google/speech/micro/MicroHotword;->close()V

    .line 154
    :cond_7
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    invoke-static {v13}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 157
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Hotword detection finished"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v8, v9

    goto :goto_1

    .line 139
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 140
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Error creating MicroHotword"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v3, v10, v11}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 141
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v10, Lcom/google/android/shared/speech/exception/HotwordRecognizeException;

    const-string v11, "Error creating MicroHotword"

    invoke-direct {v10, v11, v3}, Lcom/google/android/shared/speech/exception/HotwordRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v8, v10}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    if-eqz v5, :cond_8

    .line 152
    invoke-virtual {v5}, Lcom/google/speech/micro/MicroHotword;->close()V

    .line 154
    :cond_8
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    invoke-static {v13}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 157
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Hotword detection finished"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v8, v9

    goto/16 :goto_1

    .line 144
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 145
    .local v3, "ex":Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Error while using MicroHotword"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v3, v10, v11}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 146
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v10, Lcom/google/android/shared/speech/exception/HotwordRecognizeException;

    const-string v11, "Error while using MicroHotword"

    invoke-direct {v10, v11, v3}, Lcom/google/android/shared/speech/exception/HotwordRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v8, v10}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 150
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v8}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    if-eqz v5, :cond_9

    .line 152
    invoke-virtual {v5}, Lcom/google/speech/micro/MicroHotword;->close()V

    .line 154
    :cond_9
    iget-object v8, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v8}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    invoke-static {v13}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 157
    const-string v8, "HotwordRecognitionRnr"

    const-string v10, "Hotword detection finished"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v8, v9

    goto/16 :goto_1

    .line 150
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v8

    iget-object v10, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v10}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 151
    if-eqz v5, :cond_a

    .line 152
    invoke-virtual {v5}, Lcom/google/speech/micro/MicroHotword;->close()V

    .line 154
    :cond_a
    iget-object v10, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 155
    invoke-static {v13}, Lcom/google/android/shared/logger/EventLogger;->recordClientEvent(I)V

    .line 157
    const-string v10, "HotwordRecognitionRnr"

    const-string v11, "Hotword detection finished"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v10, v11, v9}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    throw v8
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "HotwordRecognitionRnr"

    const-string v1, "Stopping hotword detection."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 242
    :cond_0
    return-void
.end method

.method protected processHotwordDetected(Lcom/google/speech/micro/MicroHotword;)Z
    .locals 6
    .param p1, "microHotword"    # Lcom/google/speech/micro/MicroHotword;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    const-string v3, "HotwordRecognitionRnr"

    const-string v4, "Hotword detected"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 164
    iget v3, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerMode:I

    packed-switch v3, :pswitch_data_0

    .line 190
    const-string v3, "HotwordRecognitionRnr"

    const-string v4, "Not verifying the user"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 191
    :goto_0
    return v1

    .line 166
    :pswitch_0
    const-string v3, "HotwordRecognitionRnr"

    const-string v4, "Enrolling speaker. Flushing to disk"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 167
    iget-object v2, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerIdModel:[B

    invoke-virtual {p1, v2}, Lcom/google/speech/micro/MicroHotword;->adaptSpeakerModel([B)Lcom/google/speech/micro/MicroHotword$SpeakerModelQuality;

    .line 170
    iget-object v2, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mdataManager:Lcom/google/android/search/core/hotword/HotwordDataManager;

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mSpeakerIdModel:[B

    invoke-virtual {v2, v3}, Lcom/google/android/search/core/hotword/HotwordDataManager;->setSpeakerModel([B)V

    goto :goto_0

    .line 174
    :pswitch_1
    const-string v3, "HotwordRecognitionRnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Verifying the user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/speech/micro/MicroHotword;->speakerDetected()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p1}, Lcom/google/speech/micro/MicroHotword;->speakerDetected()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 177
    invoke-virtual {p1}, Lcom/google/speech/micro/MicroHotword;->speakerScores()[F

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/speech/micro/MicroHotword;->speakerDetected()I

    move-result v4

    aget v0, v3, v4

    .line 179
    .local v0, "score":F
    const-string v3, "HotwordRecognitionRnr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Speaker ID score: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 183
    .end local v0    # "score":F
    :cond_0
    const-string v1, "HotwordRecognitionRnr"

    const-string v3, "Hotword triggered from a different speaker!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v1, v2

    .line 184
    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method runHotwordLoop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 80
    const-string v1, "HotwordRecognitionRnr"

    const-string v2, "Starting hotword detection."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->waitForHotword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    sget-object v2, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->HOTWORD_RESPONSE:Lcom/google/android/shared/speech/HotwordResponse;

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onResult(Lcom/google/android/shared/speech/RecognitionResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "HotwordRecognitionRnr"

    const-string v2, "Error reading from input stream"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->dWithStackTrace(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 87
    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCallback:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v2, Lcom/google/android/shared/speech/exception/HotwordRecognizeException;

    const-string v3, "Error at processing input stream"

    invoke-direct {v2, v3, v0}, Lcom/google/android/shared/speech/exception/HotwordRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Duplicate call to start."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mRunner:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mHotwordLoopRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordRecognitionRunner;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 230
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
