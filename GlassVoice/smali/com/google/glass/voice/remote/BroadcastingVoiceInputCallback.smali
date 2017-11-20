.class public Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;
.super Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.source "BroadcastingVoiceInputCallback.java"

# interfaces
.implements Lcom/google/glass/voice/network/VoiceInputCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster",
        "<",
        "Lcom/google/glass/voice/network/IVoiceInputCallback;",
        ">;",
        "Lcom/google/glass/voice/network/VoiceInputCallback;"
    }
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

.field private final voiceEngine:Lcom/google/glass/voice/VoiceEngine;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/VoiceEngine;)V
    .locals 1
    .param p1, "voiceEngine"    # Lcom/google/glass/voice/VoiceEngine;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 36
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    .line 37
    return-void
.end method

.method private getCallbackTag(Lcom/google/glass/voice/network/IVoiceInputCallback;)Ljava/lang/String;
    .locals 4
    .param p1, "callback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;

    .prologue
    .line 41
    :try_start_0
    invoke-interface {p1}, Lcom/google/glass/voice/network/IVoiceInputCallback;->getTag()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to get callback tag"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    const-string v1, "(tag unavailable)"

    goto :goto_0
.end method

.method private declared-synchronized maybeAttachCallbackToEngine()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 156
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 157
    .local v0, "callbackConut":I
    if-ne v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1, p0}, Lcom/google/glass/voice/VoiceEngine;->attachVoiceInputCallback(Lcom/google/glass/voice/network/VoiceInputCallback;)V

    .line 170
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Already have %d remote voice input callback(s) attached; not attaching to VoiceEngine."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v0, -0x1

    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 167
    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v0    # "callbackConut":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V
    .locals 1
    .param p1, "inputEvent"    # Lcom/google/glass/voice/network/OpenEndedInputEvent;

    .prologue
    .line 49
    new-instance v0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback$1;-><init>(Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getSpeechLevelSource()Lcom/google/glass/voice/network/SpeechLevelSource;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    return-object v0
.end method

.method public onActionResponse([B)V
    .locals 3
    .param p1, "response"    # [B

    .prologue
    .line 105
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ACTION_RESPONSE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    const-string v2, "protoBytes"

    .line 106
    invoke-virtual {v1, v2, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putByteArrayExtra(Ljava/lang/String;[B)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 107
    .local v0, "inputEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 108
    return-void
.end method

.method public onError(Lcom/google/glass/voice/network/SpeechException;)V
    .locals 3
    .param p1, "exception"    # Lcom/google/glass/voice/network/SpeechException;

    .prologue
    .line 112
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->ERROR:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    const-string v2, "error"

    .line 113
    invoke-virtual {v1, v2, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putParcelableExtra(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 114
    .local v0, "inputEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 115
    return-void
.end method

.method public onHtmlAnswerCardResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "resultDoc"    # Ljava/lang/String;

    .prologue
    .line 98
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    const-string v2, "resultDoc"

    .line 99
    invoke-virtual {v1, v2, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 100
    .local v0, "inputEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 101
    return-void
.end method

.method public onRecognitionResult(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;F)V
    .locals 3
    .param p1, "textPrefix"    # Ljava/lang/CharSequence;
    .param p2, "textLowConf"    # Ljava/lang/CharSequence;
    .param p3, "textPostfix"    # Ljava/lang/CharSequence;
    .param p4, "confidence"    # F

    .prologue
    .line 92
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v1, v2, p4}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 94
    return-void
.end method

.method public bridge synthetic onRegister(Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onRegister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public declared-synchronized onRegister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registered %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->getCallbackTag(Lcom/google/glass/voice/network/IVoiceInputCallback;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->maybeAttachCallbackToEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onUnregister(Landroid/os/IInterface;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/google/glass/voice/network/IVoiceInputCallback;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->onUnregister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V

    return-void
.end method

.method public declared-synchronized onUnregister(Lcom/google/glass/voice/network/IVoiceInputCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/google/glass/voice/network/IVoiceInputCallback;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unregistered %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->getCallbackTag(Lcom/google/glass/voice/network/IVoiceInputCallback;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->beginBroadcast()I

    move-result v0

    .line 145
    .local v0, "callbackCount":I
    if-nez v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->endpointNetworkRecognizer()V

    .line 147
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->voiceEngine:Lcom/google/glass/voice/VoiceEngine;

    invoke-virtual {v1}, Lcom/google/glass/voice/VoiceEngine;->detachVoiceInputCallback()V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 149
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Not detaching from VoiceEngine; %d callback(s) remain."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "callbackCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setSpeechLevelSource(Lcom/google/glass/voice/network/SpeechLevelSource;)V
    .locals 0
    .param p1, "source"    # Lcom/google/glass/voice/network/SpeechLevelSource;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->speechLevelSource:Lcom/google/glass/voice/network/SpeechLevelSource;

    .line 123
    return-void
.end method

.method public showDone()V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->DONE:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 80
    return-void
.end method

.method public showListening()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->LISTENING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 60
    return-void
.end method

.method public showNoSpeechDetected()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->NO_SPEECH_DETECTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 75
    return-void
.end method

.method public showRecognizing()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECOGNIZING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 70
    return-void
.end method

.method public showRecording()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->RECORDING:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 65
    return-void
.end method

.method public updateRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "stableText"    # Ljava/lang/CharSequence;
    .param p2, "pendingText"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forUpdatedResults(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/google/glass/voice/remote/BroadcastingVoiceInputCallback;->safeDeliver(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 86
    return-void
.end method
