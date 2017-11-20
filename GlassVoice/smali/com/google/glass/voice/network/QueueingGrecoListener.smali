.class public Lcom/google/glass/voice/network/QueueingGrecoListener;
.super Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;
.source "QueueingGrecoListener.java"


# static fields
.field private static final ON_BEGINNING_OF_SPEECH:I = 0x1

.field private static final ON_DONE:I = 0xa

.field private static final ON_END_OF_SPEECH:I = 0x2

.field private static final ON_ERROR:I = 0xb

.field private static final ON_MEDIA_DATA_RESULT:I = 0x7

.field private static final ON_MUSIC_DETECTED:I = 0x5

.field private static final ON_NO_SPEECH_DETECTED:I = 0x3

.field private static final ON_PINHOLE_RESULT:I = 0x6

.field private static final ON_READY_FOR_SPEECH:I = 0x0

.field private static final ON_RECOGNITION_CANCELLED:I = 0x4

.field private static final ON_RECOGNITION_RESULT:I = 0x8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private isCanceled:Z

.field private listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    return-void
.end method

.method private declared-synchronized addToQueue(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 84
    if-eqz p2, :cond_0

    .line 85
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 88
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Adding message to queue: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 82
    .end local v0    # "message":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private dispatchOnBeginningOfSpeech(J)V
    .locals 1
    .param p1, "startMs"    # J

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onBeginningOfSpeech(J)V

    .line 116
    return-void
.end method

.method private dispatchOnDone()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onDone()V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 133
    return-void
.end method

.method private dispatchOnEndOfSpeech()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onEndOfSpeech()V

    .line 149
    return-void
.end method

.method private dispatchOnError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 1
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 182
    return-void
.end method

.method private dispatchOnMediaDataResult([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onMediaDataResult([B)V

    .line 214
    return-void
.end method

.method private dispatchOnMusicDetected()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onMusicDetected()V

    .line 165
    return-void
.end method

.method private dispatchOnNoSpeechDetected()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onNoSpeechDetected()V

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    .line 231
    return-void
.end method

.method private dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 1
    .param p1, "pinholeResponse"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    .line 198
    return-void
.end method

.method private dispatchOnReadyForSpeech()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onReadyForSpeech()V

    .line 247
    return-void
.end method

.method private dispatchOnRecognitionCancelled()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onRecognitionCancelled()V

    .line 263
    return-void
.end method

.method private dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 1
    .param p1, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;->onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    .line 279
    return-void
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 282
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 318
    :goto_0
    :pswitch_0
    return-void

    .line 284
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 285
    .local v0, "startMs":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech(J)V

    goto :goto_0

    .line 288
    .end local v0    # "startMs":Ljava/lang/Long;
    :pswitch_2
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V

    goto :goto_0

    .line 291
    :pswitch_3
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V

    goto :goto_0

    .line 294
    :pswitch_4
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMusicDetected()V

    goto :goto_0

    .line 297
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/shared/speech/exception/RecognizeException;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0

    .line 300
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V

    goto :goto_0

    .line 303
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V

    goto :goto_0

    .line 306
    :pswitch_8
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V

    goto :goto_0

    .line 309
    :pswitch_9
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech()V

    goto :goto_0

    .line 312
    :pswitch_a
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V

    goto :goto_0

    .line 315
    :pswitch_b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method getQueueForTest()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 322
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method public declared-synchronized onBeginningOfSpeech(J)V
    .locals 5
    .param p1, "startMs"    # J

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onBeginningOfSpeech: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 107
    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnBeginningOfSpeech(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDone()V
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onDone"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 123
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 125
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEndOfSpeech()V
    .locals 3

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onEndOfSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 140
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnEndOfSpeech()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    .locals 3
    .param p1, "exception"    # Lcom/google/android/shared/speech/exception/RecognizeException;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onError"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 172
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 174
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMediaDataResult([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onMediaDataResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 205
    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMediaDataResult([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onMusicDetected()V
    .locals 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onMusicDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 156
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnMusicDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNoSpeechDetected()V
    .locals 3

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onNoSpeechDetected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 221
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnNoSpeechDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    .locals 3
    .param p1, "pinholeResponse"    # Lcom/google/speech/s3/PinholeStream$PinholeOutput;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onPinholeResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 189
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnPinholeResult(Lcom/google/speech/s3/PinholeStream$PinholeOutput;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onReadyForSpeech()V
    .locals 3

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onReadyForSpeech"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 238
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnReadyForSpeech()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecognitionCancelled()V
    .locals 3

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onRecognitionCancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 254
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 256
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionCancelled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    .locals 3
    .param p1, "recognitionEvent"    # Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onRecognitionResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    iget-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-nez v0, :cond_1

    .line 270
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->addToQueue(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 272
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/QueueingGrecoListener;->dispatchOnRecognitionResult(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetCanceledForTest()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCanceled()V
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setListener(Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;)V
    .locals 5
    .param p1, "listener"    # Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/google/glass/voice/network/QueueingGrecoListener;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Listener was already set - current: %s new: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->listener:Lcom/google/android/speech/listeners/RecognitionEventListenerAdapter;

    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/network/QueueingGrecoListener;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/glass/voice/network/QueueingGrecoListener;->queue:Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :cond_2
    monitor-exit p0

    return-void
.end method
