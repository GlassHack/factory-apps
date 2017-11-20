.class public Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;
.super Ljava/lang/Object;
.source "DefaultEndpointerEventProcessor.java"

# interfaces
.implements Lcom/google/android/speech/endpointing/EndpointerEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultEndpointerEventProcessor"


# instance fields
.field private mEndOfSpeechTriggerMs:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mEndpointerDelayMs:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

.field private final mEndpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mIsClientEndpointerUiControlEnabled:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mStateMachine:Lcom/google/android/shared/util/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/shared/util/StateMachine",
            "<",
            "Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/listeners/RecognitionEventListener;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;Z)V
    .locals 3
    .param p1, "epListener"    # Lcom/google/android/speech/listeners/RecognitionEventListener;
    .param p2, "endpointerParams"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;
    .param p3, "isClientEndpointerUiControlEnabled"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "DefaultEndpointerEventProcessor"

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-static {v0, v1}, Lcom/google/android/shared/util/StateMachine;->newBuilder(Ljava/lang/String;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/shared/util/StateMachine$Builder;->addTransition(Ljava/lang/Enum;Ljava/lang/Enum;)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine$Builder;->setDebug(Z)Lcom/google/android/shared/util/StateMachine$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/shared/util/StateMachine$Builder;->build()Lcom/google/android/shared/util/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    .line 51
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/listeners/RecognitionEventListener;

    iput-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    .line 52
    iput-object p2, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerDelayMs:I

    .line 54
    iput-boolean p3, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mIsClientEndpointerUiControlEnabled:Z

    .line 55
    return-void
.end method

.method private getEventType(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)I
    .locals 4
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->hasEventType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    const-string v1, "DefaultEndpointerEventProcessor"

    const-string v2, "Received EP event without type."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    const-string v1, "DefaultEndpointerEventProcessor"

    const-string v2, "End of speech has been already notified"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getEventType()I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized processEndOfAudioAsEndOfSpeech()Z
    .locals 2

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfAudioAsNoSpeechDetected()Z
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized processEndOfSpeech(J)Z
    .locals 5
    .param p1, "timeMs"    # J

    .prologue
    const/4 v1, 0x0

    .line 155
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerDelayMs:I

    if-lez v2, :cond_0

    .line 157
    iget v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerDelayMs:I

    .line 163
    .local v0, "extraSilence":I
    :goto_0
    if-lez v0, :cond_1

    .line 164
    const-string v2, "DefaultEndpointerEventProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#processEndOfSpeech delaying end of speech for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 166
    iget-object v2, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v3, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v2, v3}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V

    .line 167
    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->setEndOfSpeechTriggerPoint(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_1
    monitor-exit p0

    return v1

    .line 160
    .end local v0    # "extraSilence":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getExtraSilenceAfterEndOfSpeechMsec()I

    move-result v0

    .restart local v0    # "extraSilence":I
    goto :goto_0

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    const/4 v1, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "extraSilence":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private processEndOfSpeechForUi()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mIsClientEndpointerUiControlEnabled:Z

    return v0
.end method

.method private declared-synchronized processStartOfSpeech()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const/4 v0, 0x1

    .line 149
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 145
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v2, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v1, v2}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processStartOfSpeechForUi()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mIsClientEndpointerUiControlEnabled:Z

    return v0
.end method

.method private declared-synchronized setEndOfSpeechTriggerPoint(J)V
    .locals 3
    .param p1, "timeMs"    # J

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    const-string v0, "DefaultEndpointerEventProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#setEndOfSpeechTriggerPoint "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 195
    iput-wide p1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndOfSpeechTriggerMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerEndOfSpeech(J)Z
    .locals 2
    .param p1, "progressMs"    # J

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndOfSpeechTriggerMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->DELAY_END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized shouldTriggerNoSpeechDetected(J)Z
    .locals 2
    .param p1, "progressMs"    # J

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->NO_SPEECH_DETECTED:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->isIn(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;->getNoSpeechDetectedTimeoutMsec()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mStateMachine:Lcom/google/android/shared/util/StateMachine;

    sget-object v1, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;->END_OF_SPEECH:Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor$State;

    invoke-virtual {v0, v1}, Lcom/google/android/shared/util/StateMachine;->moveTo(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/4 v0, 0x1

    .line 213
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public process(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->getEventType(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)I

    move-result v0

    .line 105
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->processStartOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "DefaultEndpointerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onStartOfSpeech() time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onBeginningOfSpeech(J)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 111
    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v1

    div-long/2addr v1, v6

    invoke-direct {p0, v1, v2}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->processEndOfSpeech(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "DefaultEndpointerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onEndOfSpeech() time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->processEndOfAudioAsEndOfSpeech()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const-string v1, "DefaultEndpointerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onEndOfSpeech() time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    .line 121
    :cond_3
    invoke-direct {p0}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->processEndOfAudioAsNoSpeechDetected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "DefaultEndpointerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onNoSpeechDetected() time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v1}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onNoSpeechDetected()V

    goto/16 :goto_0
.end method

.method public processForUi(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->getEventType(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)I

    move-result v0

    .line 80
    .local v0, "type":I
    if-nez v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->processStartOfSpeechForUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "DefaultEndpointerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onStartOfSpeechForUi() time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    check-cast v1, Lcom/google/android/speech/DefaultRecognizerEventListener;

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/speech/DefaultRecognizerEventListener;->onStartOfSpeechForUi(J)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->processEndOfSpeechForUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string v1, "DefaultEndpointerEventProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onEndOfSpeech() time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->getTimeUsec()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "us"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    check-cast v1, Lcom/google/android/speech/DefaultRecognizerEventListener;

    invoke-virtual {v1}, Lcom/google/android/speech/DefaultRecognizerEventListener;->onEndOfSpeechForUi()V

    goto :goto_0
.end method

.method public declared-synchronized setClientEndpointerDelay(I)V
    .locals 3
    .param p1, "delayMs"    # I

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    const-string v0, "DefaultEndpointerEventProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEndpointerDelay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 60
    iput p1, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerDelayMs:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProgress(IJ)V
    .locals 3
    .param p1, "engine"    # I
    .param p2, "progressMs"    # J

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->shouldTriggerEndOfSpeech(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "DefaultEndpointerEventProcessor"

    const-string v1, "#onEndOfSpeech()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onEndOfSpeech()V

    .line 135
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->shouldTriggerNoSpeechDetected(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const-string v0, "DefaultEndpointerEventProcessor"

    const-string v1, "#onNoSpeechDetected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/speech/endpointing/DefaultEndpointerEventProcessor;->mEndpointerListener:Lcom/google/android/speech/listeners/RecognitionEventListener;

    invoke-interface {v0}, Lcom/google/android/speech/listeners/RecognitionEventListener;->onNoSpeechDetected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
