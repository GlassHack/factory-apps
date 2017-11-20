.class public Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "LookAtScreenCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$EndCalibrationListener;
    }
.end annotation


# static fields
.field static final BACKGROUND_IMAGE_FADE_DURATION_MS:J = 0x96L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CALIBRATION_TIME_MS:J = 0x5dcL
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final ERROR_MESSAGE_DIALOG_DURATION:J = 0xbb8L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final TIME_TO_START_CALIBRATION_MS:J = 0x3e8L
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;


# instance fields
.field endCalibrationListener:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$EndCalibrationListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field endCalibrationState:Ljava/lang/Runnable;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

.field fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field firstLookAtScreenState:Ljava/lang/Runnable;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private isCalibrating:Z

.field isCalibrationEnding:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private isDismissed:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field lookAtCircleTextView:Landroid/widget/TextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field lookBackAtScreenState:Ljava/lang/Runnable;

.field lookStraightAheadState:Ljava/lang/Runnable;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field lookStraightAheadTextView:Landroid/widget/TextView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private numberOfCalibrationFailures:I

.field ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wasWinkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 105
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$1;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->endCalibrationState:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$2;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->firstLookAtScreenState:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$3;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookStraightAheadState:Ljava/lang/Runnable;

    .line 133
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$4;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$4;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookBackAtScreenState:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->onEndCalibration()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->showErrorMessageAndFinish()V

    return-void
.end method

.method private beginLookAtScreenCalibrationInterval()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Begin LAS calibration interval..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->startCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 289
    .local v0, "success":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done beginning LAS calibration interval!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isCalibrating:Z

    .line 291
    if-nez v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->showErrorMessageAndFinish()V

    .line 295
    :cond_0
    return v0
.end method

.method private createTtsCompleteListener()Landroid/speech/tts/UtteranceProgressListener;
    .locals 1

    .prologue
    .line 407
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$8;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    return-object v0
.end method

.method private createTtsInitListener()Landroid/speech/tts/TextToSpeech$OnInitListener;
    .locals 1

    .prologue
    .line 364
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$7;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    return-object v0
.end method

.method private endLookAtScreenCalibrationInterval(Z)Z
    .locals 6
    .param p1, "shouldShowErrorDialogOnFailure"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    iget-boolean v3, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isCalibrating:Z

    if-nez v3, :cond_0

    .line 313
    :goto_0
    return v1

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "End LAS calibration interval..."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v3, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v4, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v3, v4}, Lcom/google/android/glass/eye/EyeGestureManager;->endCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 306
    .local v0, "success":Z
    iget-object v3, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "... done ending LAS calibration interval!"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isCalibrating:Z

    .line 309
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->showErrorMessageAndFinish()V

    :cond_1
    move v1, v0

    .line 313
    goto :goto_0

    :cond_2
    move v1, v2

    .line 307
    goto :goto_1
.end method

.method private logCalibrationResult(Z)V
    .locals 2
    .param p1, "calibrationSuccess"    # Z

    .prologue
    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->LOOK_AT_SCREEN_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method private onEndCalibration()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "End LAS calibration interval."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-direct {p0, v4}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->endLookAtScreenCalibrationInterval(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->updateAndSaveLookAtScreenCalibration()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v4}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 267
    :cond_2
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_LOOK_AT_SCREEN_PRACTICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->finish()V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to update and save LAS calibration."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    invoke-static {p0, v3}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->setLookAtScreenDetectionEnabled(Landroid/content/Context;Z)Z

    .line 274
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->numberOfCalibrationFailures:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->numberOfCalibrationFailures:I

    .line 277
    iget v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->numberOfCalibrationFailures:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->beginLookAtScreenCalibrationInterval()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookStraightAheadState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 280
    :cond_4
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->showErrorMessageAndFinish()V

    goto :goto_0
.end method

.method private showErrorMessageAndFinish()V
    .locals 3

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logCalibrationResult(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_calibration_failure_label:I

    .line 346
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$string;->look_at_screen_calibration_failure_message:I

    .line 347
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 348
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 349
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    .line 350
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 351
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$6;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$6;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    .line 352
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 345
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 361
    :cond_0
    return-void
.end method

.method private updateAndSaveLookAtScreenCalibration()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 322
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Update and save LAS calibration data..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->applyAndSaveCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 324
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->LOOK_AT_SCREEN:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->loadCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done updating and save LAS calibration data!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    return v0
.end method


# virtual methods
.method handleInstructionByName(Ljava/lang/String;)V
    .locals 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v2, 0x5dc

    .line 388
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->FIRST_LOOK_AT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookStraightAheadState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/settings/ui/FillingCircle;->startFilling(J)V

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_AWAY:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookBackAtScreenState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 397
    :cond_2
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_BACK:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/settings/ui/FillingCircle;->startFilling(J)V

    .line 402
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->endCalibrationState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 143
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LASER_RLU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->assertIsEnabled(Lcom/google/glass/util/Labs$Feature;)V

    .line 145
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 146
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 148
    sget v0, Lcom/google/glass/settings/ui/R$id;->filling_circle:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/FillingCircle;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;

    .line 149
    sget v0, Lcom/google/glass/settings/ui/R$id;->look_at_circle_message:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookAtCircleTextView:Landroid/widget/TextView;

    .line 150
    sget v0, Lcom/google/glass/settings/ui/R$id;->look_straightahead_message:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookStraightAheadTextView:Landroid/widget/TextView;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isCalibrating:Z

    .line 153
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$5;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$5;-><init>(Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->endCalibrationListener:Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity$EndCalibrationListener;

    .line 161
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    .line 162
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->createTtsInitListener()Landroid/speech/tts/TextToSpeech$OnInitListener;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->createTtsCompleteListener()Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    .line 164
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->stop()V

    .line 206
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onDestroyInternal()V

    .line 207
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isDismissed:Z

    .line 218
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method onLookAtScreen()V
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->FIRST_LOOK_AT:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V

    .line 231
    return-void
.end method

.method onLookBackAtScreen()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/FillingCircle;->setRadius(F)V

    .line 246
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/FillingCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 247
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookAtCircleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookStraightAheadTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_BACK:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V

    .line 250
    return-void
.end method

.method onLookStraightAhead()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->fillingCircle:Lcom/google/glass/settings/ui/FillingCircle;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/FillingCircle;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 237
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookAtCircleTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->lookStraightAheadTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->ttsPlayer:Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;

    sget-object v1, Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;->LOOK_AWAY:Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenTtsPlayer;->speak(Lcom/google/glass/settings/ui/LookAtScreenTtsInstruction;)V

    .line 240
    return-void
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->endLookAtScreenCalibrationInterval(Z)Z

    .line 195
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->isDismissed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 200
    :cond_0
    sget-object v0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method protected onResumeInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 174
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting LAS calibration interval..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v3}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->wasWinkEnabled:Z

    .line 179
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v3}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 186
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenCalibrationActivity;->beginLookAtScreenCalibrationInterval()Z

    .line 187
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 168
    sget v0, Lcom/google/glass/settings/ui/R$layout;->look_at_screen_calibration_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method
