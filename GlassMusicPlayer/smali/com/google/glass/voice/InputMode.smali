.class public Lcom/google/glass/voice/InputMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private audioInputViewResId:I

.field private enableCorrections:Z

.field private enableOmniInput:Z

.field private errorHandler:Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

.field private final eventReceivers:Ljava/util/List;

.field private finalSelectedCommand:Ljava/lang/String;

.field private id:Ljava/lang/Object;

.field private layoutId:I

.field private loggingType:I

.field private navigationResponseExpected:Z

.field private playVoiceCompletedSound:Z

.field private playVoiceResultSound:Z

.field private resultSanitizer:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

.field private rootLayoutId:I

.field private searchResponseExpected:Z

.field private selectedCommand:Ljava/lang/String;

.field private showPostRecognitionGracePeriod:Z

.field private showProgressOnRecognitionResult:Z

.field private speakNowPrompt:Ljava/lang/String;

.field private startSound:Lcom/google/glass/sound/SoundManager$SoundId;

.field private voiceConfig:Lcom/google/glass/voice/VoiceConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/google/glass/voice/InputMode;->layoutId:I

    .line 18
    iput v0, p0, Lcom/google/glass/voice/InputMode;->rootLayoutId:I

    .line 19
    iput v0, p0, Lcom/google/glass/voice/InputMode;->audioInputViewResId:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/InputMode;->playVoiceCompletedSound:Z

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/InputMode;->showPostRecognitionGracePeriod:Z

    .line 40
    new-instance v0, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler;

    invoke-direct {v0}, Lcom/google/glass/voice/DefaultOpenEndedInputErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/InputMode;->errorHandler:Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    .line 42
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/InputMode;->eventReceivers:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/google/glass/voice/DefaultResultSanitizer;

    invoke-direct {v0}, Lcom/google/glass/voice/DefaultResultSanitizer;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/InputMode;->resultSanitizer:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

    return-void
.end method


# virtual methods
.method public addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->eventReceivers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    return-object p0
.end method

.method public enableOmniInput()Lcom/google/glass/voice/InputMode;
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/InputMode;->enableOmniInput:Z

    .line 140
    return-object p0
.end method

.method public getAudioInputViewResId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/glass/voice/InputMode;->audioInputViewResId:I

    return v0
.end method

.method public getEnableCorrections()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->enableCorrections:Z

    return v0
.end method

.method public getErrorHandler()Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->errorHandler:Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    return-object v0
.end method

.method public getEventReceivers()Ljava/util/List;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->eventReceivers:Ljava/util/List;

    return-object v0
.end method

.method public getFinalSelectedCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->finalSelectedCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/google/glass/voice/InputMode;->layoutId:I

    return v0
.end method

.method public getLoggingType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/google/glass/voice/InputMode;->loggingType:I

    return v0
.end method

.method public getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceConfig;->getOpenEndedMode()Lcom/google/glass/voice/OpenEndedMode;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->speakNowPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getResultSanitizer()Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->resultSanitizer:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

    return-object v0
.end method

.method public getRootLayoutId()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/glass/voice/InputMode;->rootLayoutId:I

    return v0
.end method

.method public getSelectedCommand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->selectedCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getStartSound()Lcom/google/glass/sound/SoundManager$SoundId;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->startSound:Lcom/google/glass/sound/SoundManager$SoundId;

    return-object v0
.end method

.method public getVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/glass/voice/InputMode;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    return-object v0
.end method

.method public isNavigationResponseExpected()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->navigationResponseExpected:Z

    return v0
.end method

.method public isOmniInputEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->enableOmniInput:Z

    return v0
.end method

.method public isSearchResponseExpected()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->searchResponseExpected:Z

    return v0
.end method

.method public setAudioInputViewResId(I)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/google/glass/voice/InputMode;->audioInputViewResId:I

    .line 89
    return-object p0
.end method

.method public setEnableCorrections(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 235
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->enableCorrections:Z

    .line 236
    return-object p0
.end method

.method public setErrorHandler(Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->errorHandler:Lcom/google/glass/voice/OpenEndedInputController$ErrorHandler;

    .line 245
    return-object p0
.end method

.method public setFinalSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->finalSelectedCommand:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public setId(Ljava/lang/Object;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->id:Ljava/lang/Object;

    .line 107
    return-object p0
.end method

.method public setLayoutId(I)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/google/glass/voice/InputMode;->layoutId:I

    .line 47
    return-object p0
.end method

.method public setLoggingType(I)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/google/glass/voice/InputMode;->loggingType:I

    .line 227
    return-object p0
.end method

.method public setNavigationResponseExpected(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->navigationResponseExpected:Z

    .line 171
    return-object p0
.end method

.method public setOpenEndedMode(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/InputMode;
    .locals 1

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/InputMode;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 71
    return-object p0
.end method

.method public setPlayVoiceCompletedSound(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->playVoiceCompletedSound:Z

    .line 185
    return-object p0
.end method

.method public setPlayVoiceResultSound(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->playVoiceResultSound:Z

    .line 201
    return-object p0
.end method

.method public setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->speakNowPrompt:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setResultSanitizer(Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->resultSanitizer:Lcom/google/glass/voice/OpenEndedInputController$ResultSanitizer;

    .line 263
    return-object p0
.end method

.method public setRootLayoutId(I)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/google/glass/voice/InputMode;->rootLayoutId:I

    .line 80
    return-object p0
.end method

.method public setSearchResponseExpected(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->searchResponseExpected:Z

    .line 166
    return-object p0
.end method

.method public setSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->selectedCommand:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public setShowGracePeriodAfterRecognitionResults(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->showPostRecognitionGracePeriod:Z

    .line 218
    return-object p0
.end method

.method public setShowProgressOnRecognitionResult(Z)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/google/glass/voice/InputMode;->showProgressOnRecognitionResult:Z

    .line 153
    return-object p0
.end method

.method public setStartSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->startSound:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 98
    return-object p0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/InputMode;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/InputMode;->voiceConfig:Lcom/google/glass/voice/VoiceConfig;

    .line 56
    return-object p0
.end method

.method public shouldPlayVoiceCompletedSound()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->playVoiceCompletedSound:Z

    return v0
.end method

.method public shouldPlayVoiceResultSound()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->playVoiceResultSound:Z

    return v0
.end method

.method public shouldShowPostRecognitionGracePeriod()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->showPostRecognitionGracePeriod:Z

    return v0
.end method

.method public shouldShowProgressOnRecognitionResult()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/glass/voice/InputMode;->showProgressOnRecognitionResult:Z

    return v0
.end method
