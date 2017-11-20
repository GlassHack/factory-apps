.class public Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;
.super Ljava/lang/Object;
.source "GlassEndpointerEventProcessor.java"

# interfaces
.implements Lcom/google/android/speech/endpointing/EndpointerEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;,
        Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;
    }
.end annotation


# static fields
.field private static final EXTRA_TIME_ALLOWED_FOR_NO_SPEECH_DETECTED_MS:J = 0xc8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private audioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

.field private currentProgressMs:J

.field private endOfSpeechTriggerMs:J

.field private endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

.field private endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

.field private final eventPreprocessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTimeForNoSpeechDetectedMs:J

.field private final isClientEndpointerUiControlEnabled:Z

.field private noSpeechDetectedOffsetMs:J

.field private stateMachine:Lcom/google/android/shared/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/shared/util/StateMachine",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;",
            ">;"
        }
    .end annotation
.end field

.field private treatNoSpeechDetectedAsEndOfSpeech:Z

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Lcom/google/android/speech/ResponseProcessor$AudioCallback;Z)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "epListener"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p4, "endpointerParams"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .param p5, "audioCallback"    # Lcom/google/android/speech/ResponseProcessor$AudioCallback;
    .param p6, "isClientEndpointerUiControlEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/google/android/speech/listeners/RecognitionEventListener;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;",
            "Lcom/google/android/speech/ResponseProcessor$AudioCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "eventPreprocessors":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->noSpeechDetectedOffsetMs:J

    .line 118
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    .line 119
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p2}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 120
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/listeners/RecognitionEventListener;

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 121
    iput-object p4, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 122
    iput-object p5, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->audioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    .line 123
    invoke-static {}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->createStateMachine()Lcom/google/android/shared/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    .line 124
    iput-boolean p6, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->isClientEndpointerUiControlEnabled:Z

    .line 125
    return-void
.end method

.method private abortProcessing(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;

    .line 182
    .local v0, "eventPreprocessor":Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;->process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const/4 v1, 0x1

    .line 186
    .end local v0    # "eventPreprocessor":Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private abortProgressUpdate(J)Z
    .locals 3
    .param p1, "endMs"    # J

    .prologue
    .line 232
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;

    .line 233
    .local v0, "eventPreprocessor":Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;->updateProgress(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/4 v1, 0x1

    .line 237
    .end local v0    # "eventPreprocessor":Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createStateMachine()Lcom/google/android/shared/util/StateMachine;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/shared/util/StateMachine",
            "<",
            "Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 129
    invoke-interface {v0}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-static {v0, v1}, Lcom/google/android/shared/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/google/android/shared/util/StateMachine$Builder;->build()Lcom/google/android/shared/util/StateMachine;

    move-result-object v0

    return-object v0
.end method

.method private getEventType(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)I
    .locals 4
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 379
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    :cond_0
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received EP event without type."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :goto_0
    return v0

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "End of speech has been already notified"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v0

    goto :goto_0
.end method

.method private getPreprocessorEndOfSpeechDelay(J)Ljava/lang/Long;
    .locals 4
    .param p1, "timeMs"    # J

    .prologue
    .line 277
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->eventPreprocessors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;

    .line 278
    .local v0, "eventPreprocessor":Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
    invoke-virtual {v0, p1, p2}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;->getEndOfSpeechTriggerPoint(J)Ljava/lang/Long;

    move-result-object v1

    .local v1, "preprocessorDelay":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 282
    .end local v0    # "eventPreprocessor":Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$EventPreprocessor;
    .end local v1    # "preprocessorDelay":Ljava/lang/Long;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleEndOfSpeech()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->audioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-interface {v0}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->stopAudio()V

    .line 272
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    .line 273
    return-void
.end method

.method private handleNoSpeechDetected()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 209
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onNoSpeechDetected()"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-boolean v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->treatNoSpeechDetectedAsEndOfSpeech:Z

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Treating NoSpeechDetected as EndOfSpeech"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->handleEndOfSpeech()V

    .line 215
    const-string v1, "delta"

    iget-wide v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->currentProgressMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "eventTuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_NO_SPEECH_DETECTED_TREATED_AS_END_OF_SPEECH:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 221
    .end local v0    # "eventTuple":Ljava/lang/String;
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onNoSpeechDetected()V

    goto :goto_0
.end method

.method private declared-synchronized processEndOfAudioAsEndOfSpeech()Z
    .locals 2

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfAudioAsNoSpeechDetected()Z
    .locals 2

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfSpeech(J)Z
    .locals 7
    .param p1, "timeMs"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->getPreprocessorEndOfSpeechDelay(J)Ljava/lang/Long;

    move-result-object v0

    .line 254
    .local v0, "preprocessorDelay":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 255
    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Preprocessor requests delay of end of speech by %s at %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    .line 256
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 255
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :goto_0
    monitor-exit p0

    return v1

    .line 260
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v3

    if-lez v3, :cond_1

    .line 261
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 262
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 253
    .end local v0    # "preprocessorDelay":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 265
    .restart local v0    # "preprocessorDelay":Ljava/lang/Long;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v1, v3}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 266
    goto :goto_0
.end method

.method private processEndOfSpeechForUi()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->isClientEndpointerUiControlEnabled:Z

    return v0
.end method

.method private declared-synchronized processStartOfSpeech()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x1

    .line 248
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 244
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processStartOfSpeechForUi()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->isClientEndpointerUiControlEnabled:Z

    return v0
.end method

.method private declared-synchronized setEndOfSpeechTriggerPoint(J)V
    .locals 5
    .param p1, "timeMs"    # J

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#setEndOfSpeechTriggerPoint %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iput-wide p1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endOfSpeechTriggerMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerEndOfSpeech()Z
    .locals 4

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->currentProgressMs:J

    iget-wide v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endOfSpeechTriggerMs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method isTreatNoSpeechDetectedAsEndOfSpeech()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->treatNoSpeechDetectedAsEndOfSpeech:Z

    return v0
.end method

.method public onRecognitionResult()V
    .locals 4

    .prologue
    .line 324
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#resetNoSpeechDetectedTimer"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->treatNoSpeechDetectedAsEndOfSpeech:Z

    .line 326
    iget-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->extraTimeForNoSpeechDetectedMs:J

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->extraTimeForNoSpeechDetectedMs:J

    .line 327
    return-void
.end method

.method public process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->abortProcessing(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    :cond_2
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Received EP event without type."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 151
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "End of speech has been already notified"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->getEventType(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)I

    move-result v0

    .line 156
    .local v0, "type":I
    if-nez v0, :cond_5

    .line 157
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->processStartOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->audioCallback:Lcom/google/android/speech/ResponseProcessor$AudioCallback;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/ResponseProcessor$AudioCallback;->recordingStarted(J)V

    .line 159
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onStartOfSpeech() time=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    div-long/2addr v2, v8

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onBeginningOfSpeech(J)V

    goto :goto_0

    .line 162
    :cond_5
    if-ne v0, v7, :cond_6

    .line 163
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v1

    div-long/2addr v1, v8

    invoke-direct {p0, v1, v2}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->processEndOfSpeech(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onEndOfSpeech() time=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->handleEndOfSpeech()V

    goto :goto_0

    .line 167
    :cond_6
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->processEndOfAudioAsEndOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onEndOfAudio() time=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    .line 173
    :cond_7
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->processEndOfAudioAsNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onNoSpeechDetected() time=%s"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->handleNoSpeechDetected()V

    goto/16 :goto_0
.end method

.method public processForUi(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 355
    invoke-direct {p0, p1}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->getEventType(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)I

    move-result v0

    .line 356
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->processStartOfSpeechForUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onStartOfSpeechForUi() time=%s us"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    check-cast v1, Lcom/google/android/speech/DefaultRecognizerEventListener;

    .line 360
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 359
    invoke-virtual {v1, v2, v3}, Lcom/google/android/speech/DefaultRecognizerEventListener;->onStartOfSpeechForUi(J)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    if-ne v0, v3, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->processEndOfSpeechForUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "#onEndOfSpeech() time=%s us"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    check-cast v1, Lcom/google/android/speech/DefaultRecognizerEventListener;

    invoke-virtual {v1}, Lcom/google/android/speech/DefaultRecognizerEventListener;->onEndOfSpeechForUi()V

    goto :goto_0
.end method

.method public resetNoSpeechDetectedTimer()V
    .locals 6

    .prologue
    .line 331
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#resetNoSpeechDetectedTimer to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->currentProgressMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->currentProgressMs:J

    iput-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->noSpeechDetectedOffsetMs:J

    .line 333
    return-void
.end method

.method public setClientEndpointerDelay(I)V
    .locals 5
    .param p1, "delayMs"    # I

    .prologue
    .line 225
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "ignoring updateEndpointerDelay: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method declared-synchronized shouldTriggerNoSpeechDetected()Z
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->currentProgressMs:J

    iget-wide v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->noSpeechDetectedOffsetMs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->extraTimeForNoSpeechDetectedMs:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 344
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getNoSpeechDetectedTimeoutMsec()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->stateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/glass/voice/network/GlassEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    const/4 v0, 0x1

    .line 348
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgress(IJ)V
    .locals 5
    .param p1, "engine"    # I
    .param p2, "endMs"    # J

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iput-wide p2, p0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->currentProgressMs:J

    .line 193
    invoke-direct {p0, p2, p3}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->abortProgressUpdate(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "abort progress update: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->shouldTriggerEndOfSpeech()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    sget-object v0, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "#onEndOfSpeech()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->handleEndOfSpeech()V

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->shouldTriggerNoSpeechDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/google/glass/voice/network/GlassEndpointerEventProcessor;->handleNoSpeechDetected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
