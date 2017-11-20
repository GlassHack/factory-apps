.class public Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "DonDoffCalibrationActivity.java"


# static fields
.field private static final CALIBRATION_VIDEO_PATH:Ljava/lang/String; = "/system/media/video/don_doff_background.mov"

.field private static final MAXIMUM_CALIBRATION_TIME_MS:J

.field private static final tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;


# instance fields
.field private backgroundVideoView:Landroid/widget/VideoView;

.field private doCalibrationTimeout:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private isCalibrating:Z

.field private isDismissed:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private wasOhdEnabled:Z

.field private wasWinkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract;

    invoke-direct {v0}, Lcom/google/glass/tutorial/TutorialStatusContract;-><init>()V

    sput-object v0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->MAXIMUM_CALIBRATION_TIME_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 37
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 73
    new-instance v0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$1;-><init>(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->doCalibrationTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    return-void
.end method

.method private beginDonDoffCalibrationInterval()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 228
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Begin don/doff calibration interval..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->DON:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->startCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 230
    .local v0, "success":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done beginning don/doff calibration interval!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iput-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->isCalibrating:Z

    .line 232
    return v0
.end method

.method private endDonDoffCalibrationInterval()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    iget-boolean v3, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->isCalibrating:Z

    if-nez v3, :cond_0

    .line 248
    :goto_0
    return v2

    .line 241
    :cond_0
    iget-object v3, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "End don/doff calibration interval..."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v3

    sget-object v4, Lcom/google/android/glass/eye/EyeGesture;->DON:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v3, v4}, Lcom/google/android/glass/eye/EyeGestureManager;->endCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 243
    .local v0, "success":Z
    iget-object v3, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "... done ending don/doff calibration interval!"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->isCalibrating:Z

    goto :goto_0
.end method

.method private pauseBackgroundVideo()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 108
    return-void
.end method

.method private showConfirmationMessageThenFinish()V
    .locals 2

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->stopCalibrationTimeoutClock()V

    .line 284
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->pauseBackgroundVideo()V

    .line 287
    new-instance v0, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v1, Lcom/google/glass/settings/ui/R$string;->don_doff_calibrated_confirmation:I

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_done_50:I

    .line 289
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 290
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$4;

    invoke-direct {v1, p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$4;-><init>(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;)V

    .line 291
    invoke-virtual {v0, v1}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 287
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 299
    return-void
.end method

.method private showErrorDialogAndFinish(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->pauseBackgroundVideo()V

    .line 265
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 266
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_warning_150:I

    .line 267
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 268
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$3;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$3;-><init>(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;)V

    .line 269
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 278
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 279
    return-void
.end method

.method private startBackgroundVideo()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 104
    return-void
.end method

.method private startCalibrationTimeoutClock()V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->doCalibrationTimeout:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->MAXIMUM_CALIBRATION_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    return-void
.end method

.method private stopCalibrationTimeoutClock()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->doCalibrationTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    return-void
.end method

.method private updateAndSaveDonDoffCalibration()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 253
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Update and save don/doff calibration data..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->DON:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->applyAndSaveCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    .line 255
    .local v0, "success":Z
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "... done updating and save don/doff calibration data!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    return v0
.end method


# virtual methods
.method public onConfirm()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "End don doff calibration interval."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->endDonDoffCalibrationInterval()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to end don/doff calibration interval."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    sget v0, Lcom/google/glass/settings/ui/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    .line 207
    :goto_0
    return v3

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->updateAndSaveDonDoffCalibration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to update and save don doff calibration."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    sget v0, Lcom/google/glass/settings/ui/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-static {p0, v3}, Lcom/google/glass/settings/ui/DonDoffSettingsItemView;->setDonDoffDetectionEnabled(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to enable the don doff detector."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    sget v0, Lcom/google/glass/settings/ui/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 204
    sget-object v0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->OnHeadDetection:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/tutorial/TutorialStatusContract;->setCompletionStatusAsync(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;Z)V

    .line 206
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showConfirmationMessageThenFinish()V

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 84
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->handler:Landroid/os/Handler;

    .line 87
    sget v1, Lcom/google/glass/settings/ui/R$id;->don_doff_background_video_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    .line 88
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$2;

    invoke-direct {v2, p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity$2;-><init>(Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 96
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/video/don_doff_background.mov"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "calibrationVideoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->isDismissed:Z

    .line 118
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 160
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->pauseBackgroundVideo()V

    .line 161
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->endDonDoffCalibrationInterval()Z

    .line 162
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->stopCalibrationTimeoutClock()V

    .line 165
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 170
    :cond_0
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->wasOhdEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->isDismissed:Z

    if-eqz v0, :cond_1

    .line 171
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v0

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->DON:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/eye/EyeGestureManager;->loadCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    .line 172
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_head_detection_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 174
    :cond_1
    return-void
.end method

.method protected onResumeInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 124
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting don doff calibration interval..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_head_detection_enabled"

    invoke-static {v0, v1, v3}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->wasOhdEnabled:Z

    .line 131
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->wasOhdEnabled:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "on_head_detection_enabled"

    invoke-static {v0, v1, v3}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 139
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->beginDonDoffCalibrationInterval()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to start don / doff calibration interval."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    sget v0, Lcom/google/glass/settings/ui/R$string;->don_doff_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->showErrorDialogAndFinish(I)V

    .line 154
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v3}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->wasWinkEnabled:Z

    .line 148
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->wasWinkEnabled:Z

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v3}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->startBackgroundVideo()V

    .line 153
    invoke-direct {p0}, Lcom/google/glass/settings/ui/DonDoffCalibrationActivity;->startCalibrationTimeoutClock()V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 112
    sget v0, Lcom/google/glass/settings/ui/R$layout;->don_doff_calibration_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method
