.class public Lcom/google/glass/voice/DefaultInputCorrectionController;
.super Ljava/lang/Object;
.source "DefaultInputCorrectionController.java"

# interfaces
.implements Lcom/google/glass/voice/InputCorrectionController;


# static fields
.field private static final ANIMATE_IN_CORRECT_TIP_DURATION_MILLIS:J = 0x1f4L

.field private static final CORRECTION_REQUEST:I = 0x64

.field private static final LOW_CONFIDENCE_THRESHOLD:F = 0.9f

.field private static final MIN_LOW_CONFIDENCE_WAITING_MS:J = 0xbb8L

.field private static final MSG_HANDLE_DELAYED_SEARCH_RESULT:I


# instance fields
.field private delaySearchResults:Z

.field private final glassVoiceActivity:Landroid/app/Activity;

.field private final handler:Landroid/os/Handler;

.field private hasReceivedSearchResults:Z

.field private ignoreSearchResults:Z

.field private final inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

.field private returningFromCorrection:Z

.field private savedHtmlResponse:Ljava/lang/String;

.field private stoppedByDismiss:Z

.field private stoppedByTap:Z

.field private tipShownTime:J

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;Landroid/app/Activity;)V
    .locals 3
    .param p1, "inputCorrectionCallback"    # Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;
    .param p2, "glassVoiceActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->returningFromCorrection:Z

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    .line 71
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->hasReceivedSearchResults:Z

    .line 77
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->delaySearchResults:Z

    .line 83
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->ignoreSearchResults:Z

    .line 88
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByTap:Z

    .line 90
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByDismiss:Z

    .line 92
    new-instance v0, Lcom/google/glass/voice/DefaultInputCorrectionController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/DefaultInputCorrectionController$1;-><init>(Lcom/google/glass/voice/DefaultInputCorrectionController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    .line 106
    iput-object p1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    .line 107
    iput-object p2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->glassVoiceActivity:Landroid/app/Activity;

    .line 108
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/DefaultInputCorrectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/DefaultInputCorrectionController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/voice/DefaultInputCorrectionController;->displaySearchResultsIfReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/DefaultInputCorrectionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/DefaultInputCorrectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/voice/DefaultInputCorrectionController;->sendHtmlAnswerCardResultEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/DefaultInputCorrectionController;)Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/DefaultInputCorrectionController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    return-object v0
.end method

.method private displaySearchResultsIfReady()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->delaySearchResults:Z

    .line 203
    iget-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->hasReceivedSearchResults:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->savedHtmlResponse:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/DefaultInputCorrectionController;->sendHtmlAnswerCardResultEvent(Ljava/lang/String;)V

    .line 206
    :cond_0
    return-void
.end method

.method private isLowConfidenceTranscription(F)Z
    .locals 1
    .param p1, "resultConfidence"    # F

    .prologue
    .line 209
    const v0, 0x3f666666    # 0.9f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendDirectGwsRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v3, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->glassVoiceActivity:Landroid/app/Activity;

    const-string v4, "location"

    .line 276
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 277
    .local v1, "locationManager":Landroid/location/LocationManager;
    new-instance v2, Lcom/google/glass/location/LocationManagerHelper;

    iget-object v3, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 278
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lcom/google/glass/location/LocationManagerHelper;-><init>(Landroid/location/LocationManager;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/time/Clock;)V

    .line 279
    .local v2, "locationManagerHelper":Lcom/google/glass/location/LocationManagerHelper;
    new-instance v0, Lcom/google/glass/voice/network/DirectGwsRequest;

    iget-object v3, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->glassVoiceActivity:Landroid/app/Activity;

    invoke-direct {v0, v3, v2}, Lcom/google/glass/voice/network/DirectGwsRequest;-><init>(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;)V

    .line 281
    .local v0, "directGwsRequest":Lcom/google/glass/voice/network/DirectGwsRequest;
    const/4 v3, 0x1

    new-instance v4, Lcom/google/glass/voice/DefaultInputCorrectionController$2;

    invoke-direct {v4, p0}, Lcom/google/glass/voice/DefaultInputCorrectionController$2;-><init>(Lcom/google/glass/voice/DefaultInputCorrectionController;)V

    invoke-virtual {v0, p1, v3, v4}, Lcom/google/glass/voice/network/DirectGwsRequest;->sendGwsRequest(Ljava/lang/String;ZLcom/google/glass/voice/network/GwsResponseHandler;)V

    .line 316
    return-void
.end method

.method private sendHtmlAnswerCardResultEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "htmlResults"    # Ljava/lang/String;

    .prologue
    .line 268
    sget-object v1, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->HTML_ANSWER_CARD_RESULT:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v1

    const-string v2, "resultDoc"

    .line 269
    invoke-virtual {v1, v2, p1}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 271
    .local v0, "inputEvent":Lcom/google/glass/voice/network/OpenEndedInputEvent;
    iget-object v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->inputCorrectionCallback:Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;

    invoke-interface {v1, v0}, Lcom/google/glass/voice/InputCorrectionController$InputCorrectionCallback;->onGwsResult(Lcom/google/glass/voice/network/OpenEndedInputEvent;)V

    .line 272
    return-void
.end method


# virtual methods
.method public deactivate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 153
    iput-boolean v7, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->returningFromCorrection:Z

    .line 154
    iget-wide v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 155
    const-string v2, "tipDuration"

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v1, "trigger"

    aput-object v1, v4, v7

    const/4 v5, 0x1

    iget-boolean v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByTap:Z

    if-eqz v1, :cond_1

    const-string v1, "tap"

    :goto_0
    aput-object v1, v4, v5

    .line 155
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "tuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECT_TIP_HIDDEN:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 160
    .end local v0    # "tuple":Ljava/lang/String;
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    .line 161
    iput-boolean v7, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByTap:Z

    .line 162
    iput-boolean v7, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByDismiss:Z

    .line 163
    return-void

    .line 156
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByDismiss:Z

    if-eqz v1, :cond_2

    const-string v1, "dismiss"

    goto :goto_0

    :cond_2
    const-string v1, "notUser"

    goto :goto_0
.end method

.method public isReturningFromCorrection()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->returningFromCorrection:Z

    return v0
.end method

.method public maybeShowCorrectionHint(Landroid/widget/TextView;F)V
    .locals 5
    .param p1, "tipView"    # Landroid/widget/TextView;
    .param p2, "resultConfidence"    # F

    .prologue
    const/4 v4, 0x0

    .line 179
    if-eqz p1, :cond_0

    .line 180
    sget v1, Lcom/google/glass/common/R$string;->correct_tip:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 182
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    .line 185
    const-string v1, "confidence"

    .line 186
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 185
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "tuple":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECT_TIP_SHOWN:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 189
    .end local v0    # "tuple":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public maybeUnderlineLowConfidenceSegments(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/voice/InputMode;F)Z
    .locals 1
    .param p1, "streamingTextView"    # Lcom/google/glass/voice/StreamingTextView;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "lowConf"    # Ljava/lang/String;
    .param p4, "postfix"    # Ljava/lang/String;
    .param p5, "currentMode"    # Lcom/google/glass/voice/InputMode;
    .param p6, "resultConfidence"    # F

    .prologue
    .line 194
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ULC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6}, Lcom/google/glass/voice/DefaultInputCorrectionController;->isLowConfidenceTranscription(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1, p2, p3, p4}, Lcom/google/glass/voice/StreamingTextView;->setFinalRecognizedText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 142
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->returningFromCorrection:Z

    .line 144
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 145
    const-string v0, "correctedtext"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "lowConf"    # Ljava/lang/String;
    .param p3, "postfix"    # Ljava/lang/String;
    .param p4, "isListening"    # Z
    .param p5, "finalRecognitionResult"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p4, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->glassVoiceActivity:Landroid/app/Activity;

    .line 116
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 121
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->glassVoiceActivity:Landroid/app/Activity;

    const/16 v5, 0x64

    move-object v1, p5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/glass/voice/CorrectTranscriptionHelper;->startCorrectTranscriptionActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    const-string v6, ""

    .line 124
    .local v6, "tuple":Ljava/lang/String;
    iget-wide v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 125
    const-string v0, "timeSinceTip"

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->tipShownTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 125
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_INPUT_CORRECTION_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1, v6}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByTap:Z

    .line 130
    sget-object v0, Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;->CORRECTION_STARTED:Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;

    invoke-static {v0}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forType(Lcom/google/glass/voice/network/OpenEndedInputEvent$EventType;)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    .line 132
    .end local v6    # "tuple":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->stoppedByDismiss:Z

    .line 138
    return-void
.end method

.method public onSearchCorrectionStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->hasReceivedSearchResults:Z

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->ignoreSearchResults:Z

    goto :goto_0
.end method

.method public onSearchRecognitionDone(Ljava/lang/String;F)V
    .locals 4
    .param p1, "recognitionResult"    # Ljava/lang/String;
    .param p2, "resultConfidence"    # F

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/google/glass/voice/DefaultInputCorrectionController;->isReturningFromCorrection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->delaySearchResults:Z

    .line 238
    iput-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->ignoreSearchResults:Z

    .line 239
    invoke-direct {p0, p1}, Lcom/google/glass/voice/DefaultInputCorrectionController;->sendDirectGwsRequest(Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/glass/voice/DefaultInputCorrectionController;->isLowConfidenceTranscription(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->delaySearchResults:Z

    .line 242
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onSearchStopped()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    return-void
.end method

.method public resetAfterReturningFromCorrection(Lcom/google/glass/voice/StreamingTextView;Ljava/lang/String;)Lcom/google/glass/voice/network/OpenEndedInputEvent;
    .locals 3
    .param p1, "streamingTextView"    # Lcom/google/glass/voice/StreamingTextView;
    .param p2, "recognitionResult"    # Ljava/lang/String;

    .prologue
    .line 168
    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/google/glass/voice/StreamingTextView;->reset()V

    .line 172
    :cond_0
    const-string v0, ""

    const-string v1, ""

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v0, v1, v2}, Lcom/google/glass/voice/network/OpenEndedInputEvent;->forRecognitionResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;F)Lcom/google/glass/voice/network/OpenEndedInputEvent;

    move-result-object v0

    return-object v0
.end method

.method public shouldFinishWhenStopped()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public shouldShowSearchResultsNow(Ljava/lang/String;)Z
    .locals 3
    .param p1, "htmlResponse"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 256
    iget-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->ignoreSearchResults:Z

    if-eqz v2, :cond_0

    .line 264
    :goto_0
    return v0

    .line 259
    :cond_0
    iget-boolean v2, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->delaySearchResults:Z

    if-nez v2, :cond_1

    move v0, v1

    .line 260
    goto :goto_0

    .line 262
    :cond_1
    iput-boolean v1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->hasReceivedSearchResults:Z

    .line 263
    iput-object p1, p0, Lcom/google/glass/voice/DefaultInputCorrectionController;->savedHtmlResponse:Ljava/lang/String;

    goto :goto_0
.end method
