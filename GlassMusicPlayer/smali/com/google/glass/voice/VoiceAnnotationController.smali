.class public Lcom/google/glass/voice/VoiceAnnotationController;
.super Lcom/google/glass/voice/VoiceInputActionController;
.source "SourceFile"


# static fields
.field private static final BUNDLE_MAX_SIZE_BYTES:I = 0x100000

.field static final CANCEL_TIP_FADE_ANIMATION_DURATION_MILLIS:J = 0x1f4L

.field private static final INTENT_MODE_RECOGNIZER_INTENT:I = 0x0

.field private static final INTENT_MODE_VOICE_ANNOTATION_HELPER:I = 0x1

.field private static final MSG_CONFIRM_ANNOTATION:I = 0x0

.field private static final PROGRESS_SLIDER_COMMIT_ANNOTATION_MS:J = 0x3e8L


# instance fields
.field private audioOutputStream:Ljava/io/ByteArrayOutputStream;

.field private cancelTip:Landroid/widget/TextView;

.field private final context:Landroid/content/Context;

.field private final customMenuConfirmed:Ljava/lang/String;

.field private final customMenuPending:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private final intent:Landroid/content/Intent;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private recognitionResult:Ljava/lang/String;

.field private final recordAudio:Z

.field private final replyToId:Ljava/lang/String;

.field private final replyToMenuId:Ljava/lang/String;

.field private final showAddingDialog:Z

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1

    .prologue
    .line 134
    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/voice/VoiceAnnotationController;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/google/glass/userevent/UserEventHelper;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceInputActionController;-><init>()V

    .line 59
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 83
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceAnnotationController$1;-><init>(Lcom/google/glass/voice/VoiceAnnotationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    .line 139
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    .line 142
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 143
    iput-object p3, p0, Lcom/google/glass/voice/VoiceAnnotationController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/VoiceAnnotationController;->wantAudioData(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p4}, Lcom/google/glass/voice/VoiceAnnotationController;->callingActivityHasRecordAudioPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recordAudio:Z

    .line 147
    const-string v0, "reply_to_timeline_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->replyToId:Ljava/lang/String;

    .line 148
    const-string v0, "reply_to_menu_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->replyToMenuId:Ljava/lang/String;

    .line 149
    const-string v0, "custom_menu_pending"

    .line 150
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuPending:Ljava/lang/String;

    .line 151
    const-string v0, "custom_menu_confirmed"

    .line 152
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuConfirmed:Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p2}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldShowAddingDialog(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->showAddingDialog:Z

    .line 155
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/glass/voice/VoiceAnnotationController;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->confirmAnnotation()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/VoiceAnnotationController;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/VoiceAnnotationController;)Lcom/google/glass/sound/SoundManager;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceAnnotationController;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method private attachResult(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 445
    const-string v0, "android.speech.extra.RESULTS"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 446
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 445
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 447
    return-void
.end method

.method private callingActivityHasRecordAudioPermission(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 252
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private confirmAnnotation()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recognitionResult:Ljava/lang/String;

    .line 308
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Empty annotation returned. Finishing..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCanceled()V

    .line 322
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-boolean v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->showAddingDialog:Z

    if-eqz v1, :cond_1

    .line 315
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->showAddingDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldShowCommitSlider(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->showCommitSlider(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getForwardExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getIntentMode()I
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method private getSelectedCommand()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    const-string v1, "header_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/av;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSpeakNowPromptText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldShowPrompt(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 495
    const-string v0, ""

    .line 504
    :cond_0
    :goto_0
    return-object v0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->getCustomPromptText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    sget v1, Lcom/google/glass/common/R$string;->voice_message_speak_message:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasPendingIntent()Z
    .locals 2

    .prologue
    .line 459
    const-string v0, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    const-string v1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 460
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x1

    .line 463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVoiceTrigger()Z
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    const-string v1, "trigger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private launchPendingIntent(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 428
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    .line 429
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getForwardExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 430
    if-nez v0, :cond_0

    .line 431
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 433
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->attachResult(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 435
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    .line 442
    return-void

    .line 439
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Pending intent canceled, cannot forward"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private launchVoiceTrigger(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    const-string v1, "trigger"

    .line 420
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTrigger;

    .line 421
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 422
    invoke-direct {p0, v1, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->attachResult(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/glass/app/VoiceTrigger;->activate(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 424
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    .line 425
    return-void
.end method

.method private recordAudioData([BII)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 291
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->sliderView:Lcom/google/glass/widget/SliderView;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->cancelTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMessageController;->fadeOut(Landroid/view/View;)V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recognitionResult:Ljava/lang/String;

    .line 535
    return-void
.end method

.method private shouldShowPostRecognitionGracePeriod()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldAutoCommit(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCommitSlider(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->sliderView:Lcom/google/glass/widget/SliderView;

    const-wide/16 v1, 0x3e8

    new-instance v3, Lcom/google/glass/voice/VoiceAnnotationController$2;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/voice/VoiceAnnotationController$2;-><init>(Lcom/google/glass/voice/VoiceAnnotationController;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/Animator$AnimatorListener;)V

    .line 359
    return-void
.end method

.method private showMessage(Lcom/google/glass/widget/MessageDialog;)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/google/glass/app/GlassActivity;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    check-cast v0, Lcom/google/glass/app/GlassActivity;

    invoke-virtual {v0, p1}, Lcom/google/glass/app/GlassActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 395
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method getCustomPromptText(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getIntentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const-string v0, "android.speech.extra.PROMPT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "prompt_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputModes()Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 472
    new-array v0, v4, [Lcom/google/glass/voice/InputMode;

    .line 473
    invoke-static {}, Lcom/google/glass/voice/BaseVoiceInputActivity;->createDefaultInputMode()Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 474
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getSpeakNowPromptText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setPrompt(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 475
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getSelectedCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setSelectedCommand(Ljava/lang/String;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 476
    invoke-virtual {v1, v4}, Lcom/google/glass/voice/InputMode;->setPlayVoiceResultSound(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 477
    invoke-virtual {v1, v3}, Lcom/google/glass/voice/InputMode;->setShowProgressOnRecognitionResult(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    .line 478
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldShowPostRecognitionGracePeriod()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setShowGracePeriodAfterRecognitionResults(Z)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/LongInputEventReceiver;

    invoke-direct {v2}, Lcom/google/glass/voice/LongInputEventReceiver;-><init>()V

    .line 479
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationController$4;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationController$4;-><init>(Lcom/google/glass/voice/VoiceAnnotationController;)V

    .line 480
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->addEventReceiver(Lcom/google/glass/voice/OpenEndedInputController$OpenEndedEventReceiver;)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    const/4 v2, 0x5

    .line 490
    invoke-virtual {v1, v2}, Lcom/google/glass/voice/InputMode;->setLoggingType(I)Lcom/google/glass/voice/InputMode;

    move-result-object v1

    aput-object v1, v0, v3

    .line 472
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initViews(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 2

    .prologue
    .line 551
    sget v0, Lcom/google/glass/common/R$id;->header:I

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    .line 552
    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldHideHeader(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 551
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 554
    sget v0, Lcom/google/glass/common/R$id;->cancel_tip:I

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->cancelTip:Landroid/widget/TextView;

    .line 555
    sget v0, Lcom/google/glass/common/R$id;->progress_slider:I

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/OpenEndedInputController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/SliderView;

    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 556
    return-void

    .line 552
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onAnnotationCommitted(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->hasVoiceTrigger()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->launchVoiceTrigger(Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->launchPendingIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 408
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recordAudio:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->audioOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 409
    :goto_1
    invoke-virtual {p0, v1, p1, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V

    .line 410
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getCallback()Lcom/google/glass/voice/ActionController$Callback;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/glass/voice/ActionController$Callback;->onActionCompleted(Landroid/os/Bundle;)V

    goto :goto_0

    .line 408
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onBack()Z
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->reset()V

    .line 541
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onBack()Z

    move-result v0

    return v0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/google/glass/voice/VoiceInputActionController;->onConfirm()Z

    move-result v0

    goto :goto_0
.end method

.method public onDismissAction()V
    .locals 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onDismiss"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->reset()V

    .line 526
    return-void
.end method

.method onFinalResult(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;)V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recognitionResult:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "PROBLEM: Recognition result was already set!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController;->getSanitizedRecognitionResult()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    iput-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recognitionResult:Ljava/lang/String;

    .line 265
    invoke-virtual {p1}, Lcom/google/glass/voice/OpenEndedInputController;->deactivate()V

    .line 267
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldAutoCommit(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onResampledAudioData([BII)Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recordAudio:Z

    if-nez v0, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 282
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationController;->recordAudioData([BII)V

    .line 283
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStartAction(Lcom/google/glass/voice/ActionController$Callback;)V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->inputController:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->initViews(Lcom/google/glass/voice/OpenEndedInputController;)V

    .line 519
    return-void
.end method

.method setResultExtras(Landroid/content/Intent;Ljava/lang/String;[B)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getIntentMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 213
    const-string v0, "android.speech.extra.RESULTS"

    new-array v1, v2, [Ljava/lang/String;

    aput-object p2, v1, v4

    .line 214
    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 226
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 227
    array-length v0, p3

    const/high16 v1, 0x100000

    if-ge v0, v1, :cond_4

    .line 228
    const-string v0, "audio_data"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 234
    :cond_1
    :goto_1
    return-void

    .line 216
    :cond_2
    const-string v0, "annotation_result"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->replyToId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    const-string v0, "reply_to_timeline_id"

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->replyToId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->replyToMenuId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const-string v0, "reply_to_menu_id"

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->replyToMenuId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Audio data too large to fit in Intent; byte length: %d"

    new-array v2, v2, [Ljava/lang/Object;

    array-length v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method shouldAutoCommit(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 186
    const-string v0, "auto_commit"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method shouldHideHeader(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    const-string v2, "hide_header"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getIntentMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    move v0, v1

    .line 200
    goto :goto_0

    .line 204
    :cond_2
    const-string v2, "header_msg"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 205
    goto :goto_0
.end method

.method public shouldProvideAudioData()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController;->recordAudio:Z

    return v0
.end method

.method shouldShowAddingDialog(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getIntentMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 175
    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuPending:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuConfirmed:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    const-string v2, "hide_adding_dialog"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method shouldShowCommitSlider(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 182
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getIntentMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/VoiceAnnotationController;->shouldAutoCommit(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldShowPrompt(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Lcom/google/glass/voice/VoiceAnnotationController;->getIntentMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "hide_prompt"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public showAddingDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/glass/voice/VoiceAnnotationController;->soundManager:Lcom/google/glass/sound/SoundManager;

    invoke-direct {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/common/R$string;->voice_annotation_adding:I

    .line 367
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_message_50:I

    .line 368
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 369
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$string;->voice_annotation_added:I

    .line 370
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$drawable;->ic_done_50:I

    .line 371
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceAnnotationController$3;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/voice/VoiceAnnotationController$3;-><init>(Lcom/google/glass/voice/VoiceAnnotationController;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuPending:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuPending:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuConfirmed:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController;->customMenuConfirmed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 386
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceAnnotationController;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 387
    return-void
.end method

.method wantAudioData(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 190
    const-string v0, "want_audio_data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
