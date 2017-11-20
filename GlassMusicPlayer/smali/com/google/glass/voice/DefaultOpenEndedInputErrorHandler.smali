.class public Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method public getErrorUi(Lcom/google/glass/voice/network/SpeechException;)Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NETWORK_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->NETWORK_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    .line 59
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->NO_MATCH:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->NO_MATCH_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcom/google/glass/voice/network/SpeechException;->getType()Lcom/google/glass/voice/network/SpeechException$Type;

    move-result-object v0

    sget-object v1, Lcom/google/glass/voice/network/SpeechException$Type;->AUDIO_RECOGNIZE:Lcom/google/glass/voice/network/SpeechException$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/network/SpeechException$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    sget-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->AUDIO_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;->GENERIC_ERROR_RESPONSE:Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler$ErrorUi;

    goto :goto_0
.end method

.method public shouldPreemptVoiceMenu()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowError()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowNoSpeechDetected()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method
