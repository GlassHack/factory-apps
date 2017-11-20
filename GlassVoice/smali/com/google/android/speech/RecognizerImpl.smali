.class public Lcom/google/android/speech/RecognizerImpl;
.super Ljava/lang/Object;
.source "RecognizerImpl.java"

# interfaces
.implements Lcom/google/android/speech/Recognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/RecognizerImpl$State;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecognizerImpl"


# instance fields
.field private final mAudioController:Lcom/google/android/speech/audio/AudioController;

.field final mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

.field private mCurrentRequestId:Ljava/lang/String;

.field private final mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

.field final mListeningState:Lcom/google/android/shared/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/shared/util/StateMachine",
            "<",
            "Lcom/google/android/speech/RecognizerImpl$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

.field private mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

.field private final mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/audio/AudioRecorder;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/RecognitionEngineStore;Lcom/google/android/speech/SpeechLibFactory;)V
    .locals 4
    .param p1, "audioController"    # Lcom/google/android/speech/audio/AudioController;
    .param p2, "audioRecorder"    # Lcom/google/android/speech/audio/AudioRecorder;
    .param p3, "recognitionDispatcher"    # Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
    .param p4, "engineStore"    # Lcom/google/android/speech/RecognitionEngineStore;
    .param p5, "speechLibFactory"    # Lcom/google/android/speech/SpeechLibFactory;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "RecognizerImpl"

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-static {v0, v1}, Lcom/google/android/shared/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    sget-object v2, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    sget-object v2, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    sget-object v2, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    sget-object v2, Lcom/google/android/speech/RecognizerImpl$State;->STOPPED:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->STOPPED:Lcom/google/android/speech/RecognizerImpl$State;

    sget-object v2, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/shared/util/StateMachine$Builder;->setSingleThreadOnly(Z)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/shared/util/StateMachine$Builder;->setStrictMode(Z)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/shared/util/StateMachine$Builder;->build()Lcom/google/android/shared/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    .line 111
    iput-object p1, p0, Lcom/google/android/speech/RecognizerImpl;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    .line 112
    iput-object p2, p0, Lcom/google/android/speech/RecognizerImpl;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    .line 113
    iput-object p3, p0, Lcom/google/android/speech/RecognizerImpl;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    .line 114
    iput-object p4, p0, Lcom/google/android/speech/RecognizerImpl;->mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

    .line 115
    iput-object p5, p0, Lcom/google/android/speech/RecognizerImpl;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    .line 116
    return-void
.end method

.method public static create(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/SpeechLibFactory;)Lcom/google/android/speech/Recognizer;
    .locals 6
    .param p0, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p1, "audioController"    # Lcom/google/android/speech/audio/AudioController;
    .param p2, "speechLibFactory"    # Lcom/google/android/speech/SpeechLibFactory;

    .prologue
    .line 120
    new-instance v0, Lcom/google/android/speech/RecognizerImpl;

    new-instance v2, Lcom/google/android/speech/audio/AudioRecorder;

    invoke-direct {v2}, Lcom/google/android/speech/audio/AudioRecorder;-><init>()V

    new-instance v3, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-direct {v3, p0, p2}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/google/android/speech/SpeechLibFactory;)V

    invoke-interface {p2}, Lcom/google/android/speech/SpeechLibFactory;->buildRecognitionEngineStore()Lcom/google/android/speech/RecognitionEngineStore;

    move-result-object v4

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/RecognizerImpl;-><init>(Lcom/google/android/speech/audio/AudioController;Lcom/google/android/speech/audio/AudioRecorder;Lcom/google/android/speech/dispatcher/RecognitionDispatcher;Lcom/google/android/speech/RecognitionEngineStore;Lcom/google/android/speech/SpeechLibFactory;)V

    invoke-static {p0, v0}, Lcom/google/android/speech/RecognizerImpl;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/Recognizer;

    return-object v0
.end method

.method private internalShutdownAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 286
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 287
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    invoke-virtual {v0}, Lcom/google/android/speech/ResponseProcessor;->invalidate()V

    .line 288
    iput-object v2, p0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 289
    iput-object v2, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioController;->shutdown()V

    .line 291
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder;->waitForRecording()V

    .line 292
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    invoke-virtual {v0}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->cancel()V

    .line 293
    return-void
.end method

.method private internalStopAudio()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->STOPPED:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 316
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioController;->stopListening()V

    .line 317
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-virtual {v0}, Lcom/google/android/speech/audio/AudioRecorder;->waitForRecording()V

    .line 319
    :cond_0
    return-void
.end method

.method private isRequestIdStillCurrent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 322
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    :cond_0
    const-string v1, "RecognizerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied requestId ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is not the one that is currently "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "active ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 327
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private recordStartRecognitionEvent(Lcom/google/android/speech/params/SessionParams;)V
    .locals 3
    .param p1, "params"    # Lcom/google/android/speech/params/SessionParams;

    .prologue
    const/16 v2, 0x8

    .line 332
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 342
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(ILjava/lang/Object;)V

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 358
    invoke-static {v2}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    .line 360
    :goto_0
    return-void

    .line 346
    :pswitch_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 349
    :pswitch_1
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 352
    :pswitch_2
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 355
    :pswitch_3
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/google/android/shared/logger/EventLogger;->recordSpeechEvent(I)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "delegate":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/android/shared/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "delegate":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Lcom/google/android/shared/util/ThreadChanger;->createNonBlockingThreadChangeProxy(Ljava/util/concurrent/Executor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 250
    const-string v0, "RecognizerImpl"

    const-string v1, "cancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognizerImpl;->isRequestIdStillCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/shared/logger/RequestLoggingContext;

    invoke-direct {v1, p1}, Lcom/google/android/shared/logger/RequestLoggingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    invoke-virtual {v0}, Lcom/google/android/speech/ResponseProcessor;->onRecognitionCancelled()V

    .line 258
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognizerImpl;->internalShutdownAudio(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method getAudioCallback(Ljava/lang/String;)Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/speech/RecognizerImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/speech/RecognizerImpl$1;-><init>(Lcom/google/android/speech/RecognizerImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method internalShutdownAudio(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "RecognizerImpl"

    const-string v1, "internalShutdownAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognizerImpl;->isRequestIdStillCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/RecognizerImpl;->internalShutdownAudio()V

    goto :goto_0
.end method

.method internalStopAudio(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 302
    const-string v0, "RecognizerImpl"

    const-string v1, "internalStopAudio"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 303
    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognizerImpl;->isRequestIdStillCurrent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/google/android/speech/RecognizerImpl;->internalStopAudio()V

    goto :goto_0
.end method

.method setResponseProcessor(Lcom/google/android/speech/ResponseProcessor;)V
    .locals 0
    .param p1, "responseProcessor"    # Lcom/google/android/speech/ResponseProcessor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 372
    iput-object p1, p0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 373
    return-void
.end method

.method public startListening(Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;Lcom/google/android/speech/audio/AudioStore;)V
    .locals 17
    .param p1, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;
    .param p2, "listener"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "audioStore"    # Lcom/google/android/speech/audio/AudioStore;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    const-string v2, "RecognizerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startListening: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const-string v2, "RecognizerImpl"

    const-string v3, "Multiple recognitions in progress, the first will be cancelled."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 135
    :try_start_0
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    new-instance v3, Lcom/google/android/shared/logger/RequestLoggingContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/google/android/shared/logger/RequestLoggingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 137
    invoke-direct/range {p0 .. p0}, Lcom/google/android/speech/RecognizerImpl;->internalShutdownAudio()V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->checkIn(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 145
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    .line 146
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    new-instance v3, Lcom/google/android/shared/logger/RequestLoggingContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/google/android/shared/logger/RequestLoggingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 147
    const-class v2, Lcom/google/android/speech/listeners/RecognitionEventListener;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v2, v1}, Lcom/google/android/speech/RecognizerImpl;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 149
    .local v15, "eventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    invoke-direct/range {p0 .. p1}, Lcom/google/android/speech/RecognizerImpl;->recordStartRecognitionEvent(Lcom/google/android/speech/params/SessionParams;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/google/android/speech/SpeechLibFactory;->buildEngineSelector(Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;

    move-result-object v13

    .line 152
    .local v13, "engineSelector":Lcom/google/android/speech/EngineSelector;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/speech/RecognizerImpl;->getAudioCallback(Ljava/lang/String;)Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v15, v0}, Lcom/google/android/speech/SpeechLibFactory;->buildResponseProcessor(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/ResponseProcessor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 154
    invoke-interface {v13}, Lcom/google/android/speech/EngineSelector;->getEngineList()Ljava/util/List;

    move-result-object v14

    .line 155
    .local v14, "engines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    new-instance v2, Lcom/google/android/shared/speech/exception/NoEnginesRecognizeException;

    invoke-direct {v2}, Lcom/google/android/shared/speech/exception/NoEnginesRecognizeException;-><init>()V

    invoke-interface {v15, v2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 189
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 140
    .end local v13    # "engineSelector":Lcom/google/android/speech/EngineSelector;
    .end local v14    # "engines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "eventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2

    .line 160
    .restart local v13    # "engineSelector":Lcom/google/android/speech/EngineSelector;
    .restart local v14    # "engines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "eventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    :cond_1
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->getAudioInputParams()Lcom/google/android/speech/params/AudioInputParams;

    move-result-object v11

    .line 161
    .local v11, "audioInputParams":Lcom/google/android/speech/params/AudioInputParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v2, v11}, Lcom/google/android/speech/audio/AudioController;->createInputStreamFactory(Lcom/google/android/speech/params/AudioInputParams;)Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v16

    .line 164
    .local v16, "inputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    if-eqz p4, :cond_2

    .line 166
    :try_start_3
    invoke-virtual {v11}, Lcom/google/android/speech/params/AudioInputParams;->getSamplingRate()I

    move-result v4

    .line 167
    .local v4, "sampleRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mAudioRecorder:Lcom/google/android/speech/audio/AudioRecorder;

    invoke-interface/range {v16 .. v16}, Lcom/google/android/speech/audio/AudioInputStreamFactory;->createInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v4}, Lcom/google/android/speech/audio/MicrophoneInputStreamFactory;->getMicrophoneReadSize(I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->getMinRecordedAudioBufferSizeMs()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->getMaxRecordedAudioBufferSizeMs()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/speech/params/SessionParams;->useCircularBufferForRecordedAudio()Z

    move-result v10

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/speech/audio/AudioRecorder;->startRecording(Ljava/io/InputStream;IILcom/google/android/speech/audio/AudioStore;Ljava/lang/String;IIZ)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 182
    .end local v4    # "sampleRate":I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mAudioController:Lcom/google/android/speech/audio/AudioController;

    invoke-virtual {v11}, Lcom/google/android/speech/params/AudioInputParams;->shouldRequestAudioFocus()Z

    move-result v3

    invoke-virtual {v2, v3, v15}, Lcom/google/android/speech/audio/AudioController;->startListening(ZLcom/google/android/speech/listeners/OnReadyForSpeechListener;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/speech/RecognizerImpl;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/speech/RecognizerImpl;->mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

    invoke-interface {v2, v14}, Lcom/google/android/speech/RecognitionEngineStore;->getEngines(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    move-object/from16 v7, v16

    move-object/from16 v8, p1

    move-object v9, v13

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->startRecognition(Ljava/util/Collection;Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 189
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v12

    .line 176
    .local v12, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Lcom/google/android/shared/speech/exception/AudioRecognizeException;

    const-string v3, "Unable to start the audio recording"

    invoke-direct {v2, v3, v12}, Lcom/google/android/shared/speech/exception/AudioRecognizeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v15, v2}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onError(Lcom/google/android/shared/speech/exception/RecognizeException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 189
    sget-object v2, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .end local v11    # "audioInputParams":Lcom/google/android/speech/params/AudioInputParams;
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "engineSelector":Lcom/google/android/speech/EngineSelector;
    .end local v14    # "engines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "eventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    .end local v16    # "inputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    :catchall_1
    move-exception v2

    sget-object v3, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v2
.end method

.method public startRecordedAudioRecognition(Lcom/google/android/speech/params/SessionParams;[BLcom/google/android/speech/listeners/RecognitionEventListener;Ljava/util/concurrent/Executor;)V
    .locals 8
    .param p1, "sessionParams"    # Lcom/google/android/speech/params/SessionParams;
    .param p2, "audio"    # [B
    .param p3, "listener"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 197
    const-string v0, "RecognizerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecordedAudioRecognition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getMode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->notIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "RecognizerImpl"

    const-string v1, "Multiple recognitions in progress, the first will be cancelled."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 201
    :try_start_0
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/shared/logger/RequestLoggingContext;

    iget-object v3, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/google/android/shared/logger/RequestLoggingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 203
    invoke-direct {p0}, Lcom/google/android/speech/RecognizerImpl;->internalShutdownAudio()V

    .line 204
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->checkIn(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 211
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/speech/params/SessionParams;->getRequestId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/shared/logger/RequestLoggingContext;

    iget-object v3, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/google/android/shared/logger/RequestLoggingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 213
    const-class v0, Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-static {p4, v0, p3}, Lcom/google/android/speech/RecognizerImpl;->threadChange(Ljava/util/concurrent/Executor;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 215
    .local v6, "eventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->IDLE:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->checkIn(Ljava/lang/Enum;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognizerImpl;->recordStartRecognitionEvent(Lcom/google/android/speech/params/SessionParams;)V

    .line 217
    new-instance v2, Lcom/google/android/speech/RecognizerImpl$2;

    invoke-direct {v2, p0, p2}, Lcom/google/android/speech/RecognizerImpl$2;-><init>(Lcom/google/android/speech/RecognizerImpl;[B)V

    .line 223
    .local v2, "inputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    invoke-interface {v0, p1}, Lcom/google/android/speech/SpeechLibFactory;->buildEngineSelector(Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/EngineSelector;

    move-result-object v4

    .line 225
    .local v4, "engineSelector":Lcom/google/android/speech/EngineSelector;
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mSpeechLibFactory:Lcom/google/android/speech/SpeechLibFactory;

    iget-object v1, p0, Lcom/google/android/speech/RecognizerImpl;->mCurrentRequestId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/speech/RecognizerImpl;->getAudioCallback(Ljava/lang/String;)Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    move-result-object v1

    invoke-interface {v0, v1, v6, p1}, Lcom/google/android/speech/SpeechLibFactory;->buildResponseProcessor(Lcom/google/android/speech/ResponseProcessor$AudioCallback;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/android/speech/params/SessionParams;)Lcom/google/android/speech/ResponseProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    .line 227
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    iget-object v1, p0, Lcom/google/android/speech/RecognizerImpl;->mEngineStore:Lcom/google/android/speech/RecognitionEngineStore;

    invoke-interface {v4}, Lcom/google/android/speech/EngineSelector;->getEngineList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/speech/RecognitionEngineStore;->getEngines(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/speech/RecognizerImpl;->mResponseProcessor:Lcom/google/android/speech/ResponseProcessor;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->startRecognition(Ljava/util/Collection;Lcom/google/android/speech/audio/AudioInputStreamFactory;Lcom/google/android/speech/params/SessionParams;Lcom/google/android/speech/EngineSelector;Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 231
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 233
    return-void

    .line 206
    .end local v2    # "inputStreamFactory":Lcom/google/android/speech/audio/AudioInputStreamFactory;
    .end local v4    # "engineSelector":Lcom/google/android/speech/EngineSelector;
    .end local v6    # "eventListener":Lcom/google/android/speech/listeners/RecognitionEventListener;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    .line 231
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method

.method public stopListening(Ljava/lang/String;)V
    .locals 4
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string v0, "RecognizerImpl"

    const-string v1, "stopListening"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/speech/RecognizerImpl;->mListeningState:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognizerImpl$State;->LISTENING:Lcom/google/android/speech/RecognizerImpl$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/google/android/shared/logger/RequestLoggingContext;

    invoke-direct {v1, p1}, Lcom/google/android/shared/logger/RequestLoggingContext;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognizerImpl;->internalStopAudio(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    sget-object v0, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 246
    :cond_0
    return-void

    .line 243
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/google/android/shared/logger/EventLogger;->sRequestLoggingContext:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
.end method
