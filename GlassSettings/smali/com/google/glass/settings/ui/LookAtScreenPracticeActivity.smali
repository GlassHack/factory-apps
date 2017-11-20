.class public Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "LookAtScreenPracticeActivity.java"


# static fields
.field static final ERROR_MESSAGE_DIALOG_DURATION:J = 0xbb8L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_CHECK_LAS_PERFORMED_MS:J = 0x1388L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_FINISH_AFTER_SUCCESS_MS:J = 0x1f4L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_PLAY_INSTRUCTION_SOUND_MS:J = 0xfaL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_PLAY_NOTIFICATION_SOUND_MS:J = 0x3e8L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_SLIDE_NOTIFICATION_MS:J = 0xc8L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private checkLasPerformed:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field exampleNotificationCard:Landroid/view/View;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private handleFirstLookAtScreenFailure:Ljava/lang/Runnable;

.field private handleSecondLookAtScreenFailure:Ljava/lang/Runnable;

.field private isNotificationShown:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field lookAtScreenDetected:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field messageTextView:Landroid/widget/TextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private numberOfLookAtScreenFailed:I

.field private playNotificationSound:Ljava/lang/Runnable;

.field private showConfirmationDialog:Ljava/lang/Runnable;

.field private showLookAtScreenWelcomeScreen:Ljava/lang/Runnable;

.field private showNotification:Ljava/lang/Runnable;

.field ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private wasWinkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 102
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showLookAtScreenWelcomeScreen:Ljava/lang/Runnable;

    .line 110
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$2;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->playNotificationSound:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$3;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showNotification:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$4;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$4;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handleFirstLookAtScreenFailure:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$5;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handleSecondLookAtScreenFailure:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$6;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$6;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->checkLasPerformed:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$7;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$7;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showConfirmationDialog:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->checkLasPerformed:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->onCheckLasPerformed()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->onShowConfirmationDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->logCalibrationResult(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showNotification:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showLookAtScreenWelcomeScreen:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private createLookAtScreenListener()Lcom/google/android/glass/eye/EyeGestureManager$Listener;
    .locals 1

    .prologue
    .line 335
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    return-object v0
.end method

.method private createTtsCompleteListener()Landroid/speech/tts/UtteranceProgressListener;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$11;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    return-object v0
.end method

.method private createTtsInitListener()Landroid/speech/tts/TextToSpeech$OnInitListener;
    .locals 1

    .prologue
    .line 365
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$10;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    return-object v0
.end method

.method private enableLookAtScreenDetector(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->register(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->unregister(Lcom/google/android/glass/eye/EyeGesture;Lcom/google/android/glass/eye/EyeGestureManager$Listener;)Z

    goto :goto_0
.end method

.method private logCalibrationResult(Z)V
    .locals 2
    .param p1, "calibrationSuccess"    # Z

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method private onCheckLasPerformed()V
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenDetected:Z

    if-nez v0, :cond_0

    .line 302
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->numberOfLookAtScreenFailed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->numberOfLookAtScreenFailed:I

    .line 303
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->numberOfLookAtScreenFailed:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 304
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handleSecondLookAtScreenFailure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handleFirstLookAtScreenFailure:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onShowConfirmationDialog()V
    .locals 2

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_calibrated_success_label:I

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 315
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 316
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$8;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V

    .line 317
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 313
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 332
    :cond_0
    return-void
.end method


# virtual methods
.method handleInstructionByName(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 387
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_STRAIGHT_AHEAD:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->playNotificationSound:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->NOW_YOU_CAN:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showConfirmationDialog:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 391
    :cond_2
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->WE_DIDNT_CATCH_THAT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->showLookAtScreenWelcomeScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 178
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LASER_RLU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->assertIsEnabled(Lcom/google/glass/util/Labs$Feature;)V

    .line 180
    iput-object p0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->context:Landroid/content/Context;

    .line 181
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 182
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 183
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->createLookAtScreenListener()Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenListener:Lcom/google/android/glass/eye/EyeGestureManager$Listener;

    .line 184
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->context:Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->createTtsInitListener()Landroid/speech/tts/TextToSpeech$OnInitListener;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->createTtsCompleteListener()Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    .line 188
    sget v0, Lcom/google/glass/settings/ui/R$id;->calibration_message:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->messageTextView:Landroid/widget/TextView;

    .line 189
    sget v0, Lcom/google/glass/settings/ui/R$id;->mock_notification_card:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->exampleNotificationCard:Landroid/view/View;

    .line 190
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->stop()V

    .line 237
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 238
    return-void
.end method

.method onFirstLookAtScreenFailure()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0, v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->enableLookAtScreenDetector(Z)V

    .line 290
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->WE_DIDNT_CATCH_THAT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V

    .line 292
    return-void
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->enableLookAtScreenDetector(Z)V

    .line 219
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 224
    :cond_0
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->isNotificationShown:Z

    if-eqz v0, :cond_1

    .line 229
    invoke-static {p0, v2}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->setLookAtScreenDetectionEnabled(Landroid/content/Context;Z)Z

    .line 232
    :cond_1
    return-void
.end method

.method onPlayNotificationSound()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->enableLookAtScreenDetector(Z)V

    .line 262
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->messageTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->NOTIFICATION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenDetected:Z

    .line 265
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 199
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 202
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->wasWinkEnabled:Z

    .line 204
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 209
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->enableLookAtScreenDetector(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 211
    return-void
.end method

.method onSecondLookAtScreenFailure()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->logCalibrationResult(Z)V

    .line 297
    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->enableLookAtScreenDetector(Z)V

    .line 298
    return-void
.end method

.method onShowNotification()V
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 272
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 273
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v1, v2

    .line 274
    .local v1, "negativeHeight":I
    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->exampleNotificationCard:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->exampleNotificationCard:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 276
    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->exampleNotificationCard:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 279
    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->exampleNotificationCard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 280
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    .line 281
    invoke-direct {p0, v5}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->enableLookAtScreenDetector(Z)V

    .line 283
    iget-object v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    sget-object v3, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->NOW_YOU_CAN:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v2, v3}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V

    .line 284
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->isNotificationShown:Z

    .line 285
    return-void
.end method

.method onShowWelcomeScreen()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_STRAIGHT_AHEAD:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V

    .line 257
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 194
    sget v0, Lcom/google/glass/settings/ui/R$layout;->look_at_screen_practice_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method
