.class public Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "WinkCalibrationActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;
    }
.end annotation


# static fields
.field private static final INTERVAL_BETWEEN_TWO_HINTS_MS:J

.field private static final MAXIMUM_CALIBRATION_TIME_MS:J

.field private static final SUCCESS_TIP_VISIBLE_DURATION_MS:J

.field private static final TIME_TO_SHOW_TAP_FOR_HELP_HINT_MS:J

.field private static final tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;


# instance fields
.field private alphaAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private alphaAnimationImageView:Landroid/widget/ImageView;

.field private backgroundVideoView:Landroid/widget/VideoView;

.field private final calibrationExecutor:Ljava/util/concurrent/ExecutorService;

.field private calibrationFailed:Z

.field private calibrationTimeoutRunner:Ljava/lang/Runnable;

.field private eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

.field private firstWinkHints:[Ljava/lang/String;

.field private followingWinkHints:[Ljava/lang/String;

.field private gotEnoughCalibrationWinks:Z

.field private handler:Landroid/os/Handler;

.field private hintIndex:I

.field private hintTextView:Landroid/widget/TextView;

.field private hintUpdater:Ljava/lang/Runnable;

.field private isDismissed:Z

.field private isInCalibration:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private numWinksDetected:I

.field private soundManager:Lcom/google/glass/sound/SoundManager;

.field private tapForHelpHintRunner:Ljava/lang/Runnable;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private wasWinkTurnedOn:Z

.field private final winkReceiver:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract;

    invoke-direct {v0}, Lcom/google/glass/tutorial/TutorialStatusContract;-><init>()V

    sput-object v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    .line 52
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->INTERVAL_BETWEEN_TWO_HINTS_MS:J

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->MAXIMUM_CALIBRATION_TIME_MS:J

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->TIME_TO_SHOW_TAP_FOR_HELP_HINT_MS:J

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->SUCCESS_TIP_VISIBLE_DURATION_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 48
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 67
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 69
    invoke-interface {v1}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/calibrationExecutor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 67
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    iput v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    .line 224
    new-instance v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->winkReceiver:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    .line 225
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 230
    iput v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    .line 233
    new-instance v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$1;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintUpdater:Ljava/lang/Runnable;

    .line 242
    new-instance v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$2;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationTimeoutRunner:Ljava/lang/Runnable;

    .line 250
    new-instance v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$3;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    iput-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->tapForHelpHintRunner:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getWinkReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopHintCarousel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->pauseBackgroundVideo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->SUCCESS_TIP_VISIBLE_DURATION_MS:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/glass/tutorial/TutorialStatusContract;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showErrorDialogAndFinish(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->advanceHintCarousel()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    return v0
.end method

.method static synthetic access$2000()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->INTERVAL_BETWEEN_TWO_HINTS_MS:J

    return-wide v0
.end method

.method static synthetic access$204(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    return v0
.end method

.method static synthetic access$2100(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showTapForHelpHint()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/VideoView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->alphaAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->alphaAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->alphaAnimationImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationFailed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->restartHintCarousel()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->restartTapForHelpHintRunner()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/glass/sound/SoundManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->playAlphaAnimation(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->gotEnoughCalibrationWinks:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->gotEnoughCalibrationWinks:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)Lcom/google/android/glass/eye/EyeGestureManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopCalibrationTimeoutRunner()V

    return-void
.end method

.method private advanceHintCarousel()V
    .locals 3

    .prologue
    .line 343
    iget v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->firstWinkHints:[Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->firstWinkHints:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    .line 350
    :goto_0
    return-void

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->followingWinkHints:[Ljava/lang/String;

    iget v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->followingWinkHints:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    goto :goto_0
.end method

.method private static getWinkReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.glass.action.EYE_GESTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "filter":Landroid/content/IntentFilter;
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 110
    return-object v0
.end method

.method private logCalibrationResult()V
    .locals 2

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->gotEnoughCalibrationWinks:Z

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_SUCCESS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 550
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_ENABLED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 554
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->EYE_GESTURES_WINK_CALIBRATION_FAILURE:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    goto :goto_0
.end method

.method private pauseBackgroundVideo()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$8;

    invoke-direct {v1, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$8;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 392
    return-void
.end method

.method private playAlphaAnimation(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$6;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method private restartHintCarousel()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopHintCarousel()V

    .line 316
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startHintCarousel()V

    .line 317
    return-void
.end method

.method private restartTapForHelpHintRunner()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopTapForHelpHintRunner()V

    .line 338
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startTapForHelpHintRunner()V

    .line 339
    return-void
.end method

.method private showErrorDialogAndFinish(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopHintCarousel()V

    .line 562
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->pauseBackgroundVideo()V

    .line 563
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    .line 564
    invoke-virtual {v1, p1}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/gesture/R$drawable;->ic_warning_150:I

    .line 565
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 566
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 567
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$9;

    invoke-direct {v2, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$9;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    .line 568
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    .line 575
    invoke-virtual {v1}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v0

    .line 576
    .local v0, "dialog":Lcom/google/glass/widget/MessageDialog;
    invoke-virtual {p0, v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 577
    return-void
.end method

.method private showTapForHelpHint()V
    .locals 3

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Show tap-for-help hint"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 590
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopHintCarousel()V

    .line 591
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintTextView:Landroid/widget/TextView;

    sget v1, Lcom/google/glass/gesture/R$string;->wink_calibration_tap_for_help_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 592
    return-void
.end method

.method private startBackgroundVideo()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$7;

    invoke-direct {v1, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$7;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method private startCalibrationTimeoutRunner()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationTimeoutRunner:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->MAXIMUM_CALIBRATION_TIME_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    return-void
.end method

.method private startHintCarousel()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintIndex:I

    .line 305
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 306
    return-void
.end method

.method private startTapForHelpHintRunner()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->tapForHelpHintRunner:Ljava/lang/Runnable;

    sget-wide v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->TIME_TO_SHOW_TAP_FOR_HELP_HINT_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    return-void
.end method

.method private stopCalibrationTimeoutRunner()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationTimeoutRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method private stopHintCarousel()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method private stopTapForHelpHintRunner()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->tapForHelpHintRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method


# virtual methods
.method protected endCalibration()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isInCalibration:Z

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not in calibration. Do not need to end it."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "<<< End calibration interval."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/eye/EyeGestureManager;->endCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    iput-boolean v5, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationFailed:Z

    .line 511
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to end wink calibration interval."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->gotEnoughCalibrationWinks:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationFailed:Z

    if-eqz v0, :cond_3

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Only %s winks detected during last calibration. Not enough. Turning off wink detection."

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    .line 517
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 516
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    invoke-static {v0, v1, v4}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Failed to turn off wink detection."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iput-boolean v5, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationFailed:Z

    .line 524
    :cond_3
    iput-boolean v4, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isInCalibration:Z

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 537
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->finish()V

    .line 538
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logCalibrationResult()V

    .line 539
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 263
    sget v1, Lcom/google/glass/gesture/R$id;->wink_calibration_hint:I

    invoke-virtual {p0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->hintTextView:Landroid/widget/TextView;

    .line 265
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 266
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/google/glass/gesture/R$array;->wink_calibration_first_wink_hints:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->firstWinkHints:[Ljava/lang/String;

    .line 267
    sget v1, Lcom/google/glass/gesture/R$array;->wink_calibration_following_wink_hints:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->followingWinkHints:[Ljava/lang/String;

    .line 269
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->handler:Landroid/os/Handler;

    .line 272
    sget v1, Lcom/google/glass/gesture/R$id;->wink_background_video_view:I

    invoke-virtual {p0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    .line 273
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->backgroundVideoView:Landroid/widget/VideoView;

    new-instance v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$4;

    invoke-direct {v2, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$4;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 280
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$5;

    invoke-direct {v2, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$5;-><init>(Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 289
    sget v1, Lcom/google/glass/gesture/R$id;->wink_alpha_animation:I

    invoke-virtual {p0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->alphaAnimationImageView:Landroid/widget/ImageView;

    .line 291
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 292
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    .line 294
    iput-boolean v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->calibrationFailed:Z

    .line 295
    iput-boolean v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->gotEnoughCalibrationWinks:Z

    .line 296
    iput-boolean v3, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isInCalibration:Z

    .line 298
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wink_for_picture_enabled"

    invoke-static {v1, v2, v3}, Lcom/google/android/glass/provider/Settings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->wasWinkTurnedOn:Z

    .line 300
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 581
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/gesture/R$menu;->wink_calibration_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 582
    const/4 v0, 0x1

    return v0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 1
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isDismissed:Z

    .line 496
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "feature"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopHintCarousel()V

    .line 598
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->pauseBackgroundVideo()V

    .line 601
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->endCalibration()V

    .line 603
    invoke-super {p0, p1, p2}, Lcom/google/glass/app/GlassActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedItem"    # Landroid/view/MenuItem;

    .prologue
    .line 624
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 625
    .local v0, "selectedItemId":I
    sget v1, Lcom/google/glass/gesture/R$id;->wink_need_help:I

    if-ne v0, v1, :cond_0

    .line 626
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.ACTION_WINK_CALIBRATION_TIPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startActivity(Landroid/content/Intent;)V

    .line 627
    const/4 v1, 0x1

    .line 631
    :goto_0
    return v1

    .line 629
    :cond_0
    iget-object v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown menu item is tapped!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startHintCarousel()V

    .line 613
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startBackgroundVideo()V

    .line 616
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startCalibration()Z

    .line 619
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 620
    return-void
.end method

.method protected onPauseInternal()V
    .locals 3

    .prologue
    .line 466
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onPauseInternal()V

    .line 469
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->winkReceiver:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->unregister(Landroid/content/Context;)V

    .line 471
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopHintCarousel()V

    .line 473
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopCalibrationTimeoutRunner()V

    .line 475
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->stopTapForHelpHintRunner()V

    .line 477
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->pauseBackgroundVideo()V

    .line 484
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->endCalibration()V

    .line 487
    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isDismissed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->wasWinkTurnedOn:Z

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v1, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/eye/EyeGestureManager;->loadCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    .line 489
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wink_for_picture_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 491
    :cond_0
    return-void
.end method

.method protected onResumeInternal()V
    .locals 3

    .prologue
    .line 401
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 402
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Starting wink calibration interval..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->winkReceiver:Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;

    invoke-virtual {v0, p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity$WinkReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startCalibration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    sget v0, Lcom/google/glass/gesture/R$drawable;->open_eye_alpha_animation:I

    invoke-direct {p0, v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->playAlphaAnimation(I)V

    .line 414
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startBackgroundVideo()V

    .line 416
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startHintCarousel()V

    .line 418
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->startCalibrationTimeoutRunner()V

    .line 420
    invoke-direct {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->restartTapForHelpHintRunner()V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 396
    sget v0, Lcom/google/glass/gesture/R$layout;->wink_calibration_activity:I

    return v0
.end method

.method protected shouldAllowCameraButton()Z
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method protected startCalibration()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 428
    iget-boolean v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isInCalibration:Z

    if-eqz v2, :cond_0

    .line 429
    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Already in calibration. Do not restart."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    :goto_0
    return v0

    .line 434
    :cond_0
    iput v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->numWinksDetected:I

    .line 436
    iput-boolean v1, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->gotEnoughCalibrationWinks:Z

    .line 439
    invoke-virtual {p0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wink_for_picture_enabled"

    invoke-static {v2, v3, v0}, Lcom/google/android/glass/provider/Settings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 440
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to enable wink detection."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    sget v0, Lcom/google/glass/gesture/R$string;->wink_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showErrorDialogAndFinish(I)V

    move v0, v1

    .line 442
    goto :goto_0

    .line 446
    :cond_1
    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v3, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v2, v3}, Lcom/google/android/glass/eye/EyeGestureManager;->clearCalibration(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 447
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to clear wink calibration data."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    sget v0, Lcom/google/glass/gesture/R$string;->wink_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showErrorDialogAndFinish(I)V

    move v0, v1

    .line 449
    goto :goto_0

    .line 453
    :cond_2
    iget-object v2, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->eyeGestureManager:Lcom/google/android/glass/eye/EyeGestureManager;

    sget-object v3, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v2, v3}, Lcom/google/android/glass/eye/EyeGestureManager;->startCalibrationInterval(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 454
    iget-object v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to start wink calibration interval."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 455
    sget v0, Lcom/google/glass/gesture/R$string;->wink_calibration_failure:I

    invoke-direct {p0, v0}, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->showErrorDialogAndFinish(I)V

    move v0, v1

    .line 456
    goto :goto_0

    .line 459
    :cond_3
    iput-boolean v0, p0, Lcom/google/glass/gesture/eye/ui/WinkCalibrationActivity;->isInCalibration:Z

    goto :goto_0
.end method
