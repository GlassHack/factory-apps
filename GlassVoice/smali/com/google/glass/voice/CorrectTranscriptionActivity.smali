.class public Lcom/google/glass/voice/CorrectTranscriptionActivity;
.super Lcom/google/glass/voice/VoiceInputActionActivity;
.source "CorrectTranscriptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/CorrectTranscriptionActivity$2;,
        Lcom/google/glass/voice/CorrectTranscriptionActivity$State;,
        Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/voice/VoiceInputActionActivity",
        "<",
        "Lcom/google/glass/voice/VoiceInputActionController;",
        ">;"
    }
.end annotation


# static fields
.field private static final HOTWORD_CONFIG:Lcom/google/glass/voice/VoiceConfig;

.field public static final WORD_PIXEL_DELTA_SWIPE_THRESHOLD:I = 0x96


# instance fields
.field protected allowVoiceControl:Z

.field private correctionStartedTime:J

.field private didYouMeanTips:Lcom/google/glass/widget/TipsView;

.field private hasInteracted:Z

.field private lastAccumulatorX:F

.field private lastIntent:Landroid/content/Intent;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private microphoneView:Landroid/view/View;

.field private originalText:Ljava/lang/String;

.field private selectedTextView:Lcom/google/glass/voice/SelectedTextView;

.field state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private streamingTextContainer:Landroid/view/View;

.field private tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

.field private unusedDeltaX:F

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/voice/VoiceConfig;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "confirm"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "replace"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "delete"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "next"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "previous"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->HOTWORD_CONFIG:Lcom/google/glass/voice/VoiceConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->correctionStartedTime:J

    .line 73
    iput-boolean v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->hasInteracted:Z

    .line 78
    iput-boolean v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->allowVoiceControl:Z

    .line 88
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->UNKNOWN:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    return-void
.end method

.method private getDesiredVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->HOTWORD_CONFIG:Lcom/google/glass/voice/VoiceConfig;

    .line 184
    :goto_0
    return-object v0

    .line 181
    :cond_0
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    sget-object v0, Lcom/google/glass/voice/OpenEndedMode;->DICTATION:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->forOpenEnded(Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method private handleTipsWhenSwiping()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SWIPE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    if-ne v0, v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->didYouMeanTips:Lcom/google/glass/widget/TipsView;

    iget-boolean v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->allowVoiceControl:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/google/glass/voice/R$string;->did_you_mean_tip_tap:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 289
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->TAP:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 291
    :cond_0
    return-void

    .line 287
    :cond_1
    sget v0, Lcom/google/glass/voice/R$string;->did_you_mean_tip_tap_no_voice:I

    goto :goto_0
.end method

.method private restartAudio()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getDesiredVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 165
    return-void
.end method

.method private returnCorrection()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 377
    iget-object v5, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v5}, Lcom/google/glass/voice/SelectedTextView;->getText()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "text":Ljava/lang/String;
    iget-object v5, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->originalText:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 379
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 380
    .local v0, "returnIntent":Landroid/content/Intent;
    const-string v5, "correctedtext"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->setResult(ILandroid/content/Intent;)V

    .line 383
    .end local v0    # "returnIntent":Landroid/content/Intent;
    :cond_0
    const-string v5, "textBefore"

    iget-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->originalText:Ljava/lang/String;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "textAfter"

    aput-object v8, v7, v4

    aput-object v1, v7, v3

    const/4 v8, 0x2

    const-string v9, "isDifferent"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->originalText:Ljava/lang/String;

    .line 386
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v8

    const/4 v3, 0x4

    const-string v4, "duration"

    aput-object v4, v7, v3

    const/4 v3, 0x5

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->correctionStartedTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    .line 383
    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "tuple":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_CONFIRMED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v3, v4, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    sget-object v4, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_COMPLETED:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v3, v4}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 390
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->finish()V

    .line 391
    return-void

    .end local v2    # "tuple":Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 386
    goto :goto_0
.end method

.method private startReplace()V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 230
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->switchToEditMode()V

    .line 231
    return-void
.end method

.method private switchToEditMode()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 218
    :cond_0
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    .line 219
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->restartAudio()V

    .line 220
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->turnOnMicrophoneView()V

    .line 221
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->didYouMeanTips:Lcom/google/glass/widget/TipsView;

    sget v1, Lcom/google/glass/voice/R$string;->did_you_mean_tip_speak:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 222
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SPEAK:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    goto :goto_0
.end method

.method private switchToHotwordMode()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    .line 202
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->turnOffMicrophoneView()V

    .line 203
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->restartAudio()V

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SPEAK:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->GONE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    if-ne v0, v1, :cond_0

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->didYouMeanTips:Lcom/google/glass/widget/TipsView;

    sget v1, Lcom/google/glass/voice/R$string;->did_you_mean_tip_search:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 206
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SEARCH:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    goto :goto_0
.end method

.method private turnOffMicrophoneView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 364
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->microphoneView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->streamingTextContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    return-void
.end method

.method private turnOnMicrophoneView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->microphoneView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->streamingTextContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 358
    return-void
.end method


# virtual methods
.method protected createController()Lcom/google/glass/voice/VoiceInputActionController;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/glass/voice/InputMode;

    .line 396
    invoke-static {}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$layout;->correct_transcription_activity:I

    .line 397
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setLayoutId(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$id;->correct_transcription_input_card:I

    .line 398
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setRootLayoutId(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$id;->microphone_container:I

    .line 399
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setAudioInputViewResId(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget v2, Lcom/google/glass/voice/R$string;->voice_correction_speak_now:I

    .line 400
    invoke-virtual {p0, v2}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 401
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/InputMode;->setPlayVoiceResultSound(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/CorrectTranscriptionActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity$1;-><init>(Lcom/google/glass/voice/CorrectTranscriptionActivity;)V

    .line 402
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 418
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    sget-object v2, Lcom/google/glass/voice/CorrectTranscriptionActivity;->HOTWORD_CONFIG:Lcom/google/glass/voice/VoiceConfig;

    .line 419
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    aput-object v1, v0, v3

    .line 395
    invoke-static {v0}, Lcom/google/glass/voice/VoiceInputActionController;->createSimpleController([Lcom/google/glass/voice/InputMode;)Lcom/google/glass/voice/VoiceInputActionController;

    move-result-object v0

    return-object v0
.end method

.method public onConfirm()Z
    .locals 2

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->hasInteracted:Z

    .line 237
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->startReplace()V

    .line 242
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->switchToHotwordMode()V

    goto :goto_0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/google/glass/voice/VoiceInputActionActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 94
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    .line 95
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 96
    return-void
.end method

.method protected onDisallowedInput()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 4
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 150
    const-string v1, "didInteract"

    iget-boolean v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->hasInteracted:Z

    .line 151
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 150
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "tuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_CANCELED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 154
    invoke-super {p0, p1}, Lcom/google/glass/voice/VoiceInputActionActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v1

    return v1
.end method

.method public onFingerCountChanged(IZ)Z
    .locals 3
    .param p1, "count"    # I
    .param p2, "wentDown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 341
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v0}, Lcom/google/glass/voice/SelectedTextView;->deleteWord()V

    .line 344
    :cond_0
    if-nez p2, :cond_1

    .line 345
    iput v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->lastAccumulatorX:F

    .line 346
    iput v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/glass/voice/VoiceInputActionActivity;->onFingerCountChanged(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->setIntent(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method public onPauseInternal()V
    .locals 0

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->onPauseInternal()V

    .line 145
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->finish()V

    .line 146
    return-void
.end method

.method public onPrepareSwipe(IFFFFII)Z
    .locals 6
    .param p1, "fingerCount"    # I
    .param p2, "accumulatorX"    # F
    .param p3, "accumulatorY"    # F
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "numSwipeX"    # I
    .param p7, "numSwipeY"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x43160000    # 150.0f

    .line 302
    if-ne p1, v5, :cond_3

    .line 303
    iget-object v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v3, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v2, v3, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->switchToHotwordMode()V

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->handleTipsWhenSwiping()V

    .line 308
    iget v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->lastAccumulatorX:F

    sub-float v0, p2, v2

    .line 310
    .local v0, "delta":F
    iput p2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->lastAccumulatorX:F

    .line 311
    iget v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    .line 314
    :cond_1
    :goto_0
    iget v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_3

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "moved":Z
    iget v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 317
    iget v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    .line 318
    iget-object v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v2}, Lcom/google/glass/voice/SelectedTextView;->highlightNextWord()Z

    move-result v1

    .line 324
    :goto_1
    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 326
    iput-boolean v5, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->hasInteracted:Z

    goto :goto_0

    .line 320
    :cond_2
    iget v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    add-float/2addr v2, v4

    iput v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->unusedDeltaX:F

    .line 321
    iget-object v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v2}, Lcom/google/glass/voice/SelectedTextView;->highlightPreviousWord()Z

    move-result v1

    goto :goto_1

    .line 331
    .end local v0    # "delta":F
    .end local v1    # "moved":Z
    :cond_3
    invoke-super/range {p0 .. p7}, Lcom/google/glass/voice/VoiceInputActionActivity;->onPrepareSwipe(IFFFFII)Z

    move-result v2

    return v2
.end method

.method protected onRecognitionResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_1

    .line 278
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v0, p1}, Lcom/google/glass/voice/SelectedTextView;->setCorrection(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->switchToHotwordMode()V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->HOTWORD:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->restartAudio()V

    goto :goto_0
.end method

.method public onResumeInternal()V
    .locals 9

    .prologue
    .line 108
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionActivity;->onResumeInternal()V

    .line 110
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 111
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->lastIntent:Landroid/content/Intent;

    if-ne v6, v2, :cond_0

    .line 139
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-object v2, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->lastIntent:Landroid/content/Intent;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->correctionStartedTime:J

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v6

    sget v7, Lcom/google/glass/voice/R$id;->select_text_view:I

    invoke-virtual {v6, v7}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/voice/SelectedTextView;

    iput-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    .line 120
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v6

    sget v7, Lcom/google/glass/voice/R$id;->did_you_mean_tips_view:I

    invoke-virtual {v6, v7}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/glass/widget/TipsView;

    iput-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->didYouMeanTips:Lcom/google/glass/widget/TipsView;

    .line 121
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v6

    sget v7, Lcom/google/glass/voice/R$id;->did_you_mean_microphone_container:I

    invoke-virtual {v6, v7}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->microphoneView:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getInputController()Lcom/google/glass/voice/OpenEndedInputController;

    move-result-object v6

    sget v7, Lcom/google/glass/voice/R$id;->streaming_text_container:I

    invoke-virtual {v6, v7}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->streamingTextContainer:Landroid/view/View;

    .line 124
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "origtext"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->originalText:Ljava/lang/String;

    .line 126
    const-string v6, "prefix"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "prefix":Ljava/lang/String;
    const-string v6, "lowconf"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "lowConf":Ljava/lang/String;
    const-string v6, "postfix"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "postfix":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v6, v5, v3, v4}, Lcom/google/glass/voice/SelectedTextView;->setInitialText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getDesiredVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 132
    .local v0, "config":Lcom/google/glass/voice/VoiceConfig;
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 133
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->switchToHotwordMode()V

    .line 134
    iget-object v7, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->didYouMeanTips:Lcom/google/glass/widget/TipsView;

    iget-boolean v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->allowVoiceControl:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/google/glass/voice/R$string;->did_you_mean_tip_swipe:I

    :goto_1
    invoke-virtual {v7, v6}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 136
    sget-object v6, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->SWIPE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    iput-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 137
    iget-object v6, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->microphoneView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v6

    const-string v7, "VOICE_CORRECTION"

    sget-object v8, Lcom/google/glass/voice/CorrectTranscriptionActivity;->HOTWORD_CONFIG:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v6, v7, v8}, Lcom/google/glass/voice/VoiceInputHelper;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    goto/16 :goto_0

    .line 134
    :cond_1
    sget v6, Lcom/google/glass/voice/R$string;->did_you_mean_tip_swipe_no_voice:I

    goto :goto_1
.end method

.method protected onUpdateRecognizedText()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->state:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    sget-object v1, Lcom/google/glass/voice/CorrectTranscriptionActivity$State;->EDITING:Lcom/google/glass/voice/CorrectTranscriptionActivity$State;

    if-ne v0, v1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->didYouMeanTips:Lcom/google/glass/widget/TipsView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    sget-object v0, Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;->GONE:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    iput-object v0, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->tipsValue:Lcom/google/glass/voice/CorrectTranscriptionActivity$TipsValues;

    .line 274
    :cond_0
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 6
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 247
    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "onVoiceCommand %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "com":Ljava/lang/String;
    const-string v1, "confirm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->returnCorrection()V

    .line 266
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 253
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->allowVoiceControl:Z

    if-eqz v1, :cond_0

    .line 254
    const-string v1, "previous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v1}, Lcom/google/glass/voice/SelectedTextView;->highlightPreviousWord()Z

    .line 256
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->handleTipsWhenSwiping()V

    goto :goto_0

    .line 257
    :cond_2
    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v1}, Lcom/google/glass/voice/SelectedTextView;->highlightNextWord()Z

    .line 259
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->handleTipsWhenSwiping()V

    goto :goto_0

    .line 260
    :cond_3
    const-string v1, "replace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/google/glass/voice/CorrectTranscriptionActivity;->startReplace()V

    goto :goto_0

    .line 262
    :cond_4
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/google/glass/voice/CorrectTranscriptionActivity;->selectedTextView:Lcom/google/glass/voice/SelectedTextView;

    invoke-virtual {v1}, Lcom/google/glass/voice/SelectedTextView;->deleteWord()V

    goto :goto_0
.end method

.method public setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/google/glass/voice/VoiceInputActionActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 170
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    if-eq p1, v0, :cond_0

    .line 174
    :cond_0
    return-void
.end method
