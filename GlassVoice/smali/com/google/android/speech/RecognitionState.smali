.class public Lcom/google/android/speech/RecognitionState;
.super Ljava/lang/Object;
.source "RecognitionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;,
        Lcom/google/android/speech/RecognitionState$State;
    }
.end annotation


# static fields
.field public static final ERROR_FALLBACK:I = 0x1

.field public static final ERROR_IGNORE:I = 0x2

.field public static final ERROR_PROCESS:I = 0x0

.field public static final RESPONSE_IGNORE:I = 0x2

.field public static final RESPONSE_PROCESS:I = 0x0

.field public static final RESPONSE_PROCESS_FOR_UI:I = 0x3

.field public static final RESPONSE_QUEUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RecognitionState"


# instance fields
.field protected final mClock:Lcom/google/android/shared/util/Clock;

.field private final mEmbeddedEndpointingEnabled:Z

.field private mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

.field final mExecutor:Ljava/util/concurrent/ExecutorService;

.field mInvalid:Z

.field mLastNetworkActivityMs:J

.field protected final mPrimaryEngine:I

.field private final mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field mScheduledNetworkActivityTimeout:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mSecondaryEngine:I

.field private mSelectedEndpointingEngine:I

.field final mServerEndpointingActivityTimeoutMs:J

.field protected final mServerEndpointingEnabled:Z

.field private mSpeechDetected:Z

.field protected final mStateMachine:Lcom/google/android/shared/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/shared/util/StateMachine",
            "<",
            "Lcom/google/android/speech/RecognitionState$State;",
            ">;"
        }
    .end annotation
.end field

.field private final mStopMusicDetectorOnStartOfSpeech:Z

.field private final mSwitchTimeoutMs:J

.field final mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(IIJZLcom/google/android/speech/dispatcher/RecognitionDispatcher;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/shared/util/Clock;Lcom/google/android/speech/SpeechSettings;)V
    .locals 4
    .param p1, "primary"    # I
    .param p2, "secondary"    # I
    .param p3, "switchTimeoutMs"    # J
    .param p5, "stopMusicDetectorOnStartOfSpeech"    # Z
    .param p6, "recognitionDispatcher"    # Lcom/google/android/speech/dispatcher/RecognitionDispatcher;
    .param p7, "executor"    # Ljava/util/concurrent/ExecutorService;
    .param p8, "timeoutExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p9, "clock"    # Lcom/google/android/shared/util/Clock;
    .param p10, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "RecognitionState"

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    invoke-static {v0, v1}, Lcom/google/android/shared/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/shared/util/StateMachine$Builder;->setStrictMode(Z)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/shared/util/StateMachine$Builder;->setSingleThreadOnly(Z)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/shared/util/StateMachine$Builder;->setDebug(Z)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/shared/util/StateMachine$Builder;->build()Lcom/google/android/shared/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/speech/RecognitionState;->mLastNetworkActivityMs:J

    .line 147
    iput p1, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    .line 148
    iput p2, p0, Lcom/google/android/speech/RecognitionState;->mSecondaryEngine:I

    .line 149
    iput-wide p3, p0, Lcom/google/android/speech/RecognitionState;->mSwitchTimeoutMs:J

    .line 150
    iput-boolean p5, p0, Lcom/google/android/speech/RecognitionState;->mStopMusicDetectorOnStartOfSpeech:Z

    .line 151
    iput-object p6, p0, Lcom/google/android/speech/RecognitionState;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    .line 152
    iput-object p7, p0, Lcom/google/android/speech/RecognitionState;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 153
    iput-object p8, p0, Lcom/google/android/speech/RecognitionState;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 154
    iput-object p9, p0, Lcom/google/android/speech/RecognitionState;->mClock:Lcom/google/android/shared/util/Clock;

    .line 155
    invoke-interface {p10}, Lcom/google/android/speech/SpeechSettings;->isEmbeddedEndpointingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mEmbeddedEndpointingEnabled:Z

    .line 156
    invoke-interface {p10}, Lcom/google/android/speech/SpeechSettings;->isServerEndpointingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mServerEndpointingEnabled:Z

    .line 157
    invoke-interface {p10}, Lcom/google/android/speech/SpeechSettings;->getServerEndpointingActivityTimeoutMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/speech/RecognitionState;->mServerEndpointingActivityTimeoutMs:J

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/speech/RecognitionState;)Lcom/google/android/speech/callback/RecognitionEngineCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/speech/RecognitionState;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    return-object v0
.end method

.method private asState(I)Lcom/google/android/speech/RecognitionState$State;
    .locals 1
    .param p1, "engine"    # I

    .prologue
    .line 316
    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    if-ne p1, v0, :cond_0

    .line 317
    sget-object v0, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    .line 319
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/speech/RecognitionState$State;->USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

    goto :goto_0
.end method

.method private isEndpointingEngineEnabled(I)Z
    .locals 1
    .param p1, "engine"    # I

    .prologue
    .line 243
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 244
    iget-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mEmbeddedEndpointingEnabled:Z

    .line 248
    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 246
    iget-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mServerEndpointingEnabled:Z

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartWaitingForPrimaryEngine()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 324
    const-string v0, "RecognitionState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#maybeStartWaitingForPrimaryEngine "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/speech/RecognitionState;->mSwitchTimeoutMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mTimeoutExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/speech/RecognitionState$1;

    const-string v2, "Timeout"

    new-array v3, v4, [I

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/speech/RecognitionState$1;-><init>(Lcom/google/android/speech/RecognitionState;Ljava/lang/String;[I)V

    iget-wide v2, p0, Lcom/google/android/speech/RecognitionState;->mSwitchTimeoutMs:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 342
    :cond_1
    return-void
.end method


# virtual methods
.method handlePrimaryEngineTimeout()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 346
    const-string v0, "RecognitionState"

    const-string v1, "#handlePrimaryEngineTimeout"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 352
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v1, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EmbeddedRecognizerTimeoutException;

    invoke-direct {v1}, Lcom/google/android/shared/speech/exception/EmbeddedRecognizeException$EmbeddedRecognizerTimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    .line 358
    :cond_1
    :goto_0
    return-void

    .line 353
    :cond_2
    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 354
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    new-instance v1, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;

    const v2, 0x10017

    invoke-direct {v1, v2}, Lcom/google/android/shared/speech/exception/NetworkRecognizeException;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/google/android/speech/callback/RecognitionEngineCallback;->onFatalError(Lcom/google/android/shared/speech/exception/RecognizeException;)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mScheduledNetworkActivityTimeout:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mScheduledNetworkActivityTimeout:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 169
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/speech/RecognitionState;->mInvalid:Z

    .line 170
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/android/speech/RecognitionState;->maybeStartWaitingForPrimaryEngine()V

    .line 265
    return-void
.end method

.method public onEndpointerResponse(I)I
    .locals 3
    .param p1, "engine"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x2

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognitionState;->onEngineActivity(I)V

    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognitionState;->isEndpointingEngineEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    if-nez v2, :cond_3

    .line 216
    iput p1, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    .line 217
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    if-ne v2, v0, :cond_2

    .line 220
    new-instance v0, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;

    invoke-direct {v0, p0}, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;-><init>(Lcom/google/android/speech/RecognitionState;)V

    invoke-virtual {v0}, Lcom/google/android/speech/RecognitionState$ServerEndpointingTimeoutProcessor;->run()V

    :cond_2
    move v0, v1

    .line 222
    goto :goto_0

    .line 223
    :cond_3
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    if-ne p1, v2, :cond_0

    move v0, v1

    .line 224
    goto :goto_0
.end method

.method public onEngineActivity(I)V
    .locals 3
    .param p1, "engine"    # I

    .prologue
    .line 307
    const-string v0, "RecognitionState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#onEngineActivity: engine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSelectedEndpointingEngine="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 310
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mClock:Lcom/google/android/shared/util/Clock;

    invoke-interface {v0}, Lcom/google/android/shared/util/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/speech/RecognitionState;->mLastNetworkActivityMs:J

    .line 313
    :cond_0
    return-void
.end method

.method public onError(I)I
    .locals 5
    .param p1, "engine"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 268
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    if-eq p1, v2, :cond_1

    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mSecondaryEngine:I

    if-eq p1, v2, :cond_1

    .line 269
    const-string v2, "RecognitionState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 274
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    if-ne p1, v2, :cond_3

    .line 275
    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mSecondaryEngine:I

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/RecognitionState$State;->USE_SECONDARY:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    move v0, v1

    .line 280
    goto :goto_0

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    goto :goto_0

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    if-ne p1, v2, :cond_5

    .line 288
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    move v0, v1

    .line 289
    goto :goto_0

    .line 291
    :cond_5
    const-string v2, "RecognitionState"

    const-string v3, "Repeated error from secondary engine."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 294
    :cond_6
    iget-object v2, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognitionState;->asState(I)Lcom/google/android/speech/RecognitionState$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->ERROR:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    move v0, v1

    .line 296
    goto :goto_0
.end method

.method public onProgressResponse(I)I
    .locals 1
    .param p1, "engine"    # I

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognitionState;->onEngineActivity(I)V

    .line 234
    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mSelectedEndpointingEngine:I

    if-ne v0, p1, :cond_1

    .line 236
    :cond_0
    const/4 v0, 0x0

    .line 238
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public onRecognitionEventResponse(I)I
    .locals 5
    .param p1, "engine"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/android/speech/RecognitionState;->onEngineActivity(I)V

    .line 180
    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    if-eq p1, v2, :cond_1

    iget v2, p0, Lcom/google/android/speech/RecognitionState;->mSecondaryEngine:I

    if-eq p1, v2, :cond_1

    .line 181
    const-string v2, "RecognitionState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    invoke-direct {p0, p1}, Lcom/google/android/speech/RecognitionState;->asState(I)Lcom/google/android/speech/RecognitionState$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognitionState$State;->WAITING:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/RecognitionState$State;->WAITING_SECONDARY_FAILED:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    :cond_3
    iget v0, p0, Lcom/google/android/speech/RecognitionState;->mPrimaryEngine:I

    if-ne p1, v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/RecognitionState$State;->USE_PRIMARY:Lcom/google/android/speech/RecognitionState$State;

    invoke-virtual {v0, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    move v0, v1

    .line 191
    goto :goto_0

    .line 193
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStartOfSpeech()V
    .locals 2

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mStopMusicDetectorOnStartOfSpeech:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mSpeechDetected:Z

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/speech/RecognitionState;->mRecognitionDispatcher:Lcom/google/android/speech/dispatcher/RecognitionDispatcher;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/speech/dispatcher/RecognitionDispatcher;->stopEngine(I)V

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/speech/RecognitionState;->mSpeechDetected:Z

    .line 261
    :cond_0
    return-void
.end method

.method public setErrorProcessor(Lcom/google/android/speech/callback/RecognitionEngineCallback;)V
    .locals 0
    .param p1, "errorProcessor"    # Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/speech/RecognitionState;->mErrorProcessor:Lcom/google/android/speech/callback/RecognitionEngineCallback;

    .line 163
    return-void
.end method
