.class public abstract Lcom/google/glass/camera/BaseRecordVideoActivity;
.super Lcom/google/glass/voice/GlassVoiceActivity;
.source "BaseRecordVideoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;,
        Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;,
        Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;,
        Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DELAY_TO_HIDE_TIP_MS:J

.field private static final DELAY_TO_SHOW_TIP_MS:J = 0x3e8L

.field private static final DELAY_TO_START_TIP_FADE_MS:J = 0x3eL

.field private static final FILE_NAME_FOR_THUMBNAIL:Ljava/lang/String; = "thumb_%s"

.field private static final PROGRESS_BAR_UPDATE_MS:J = 0x21L

.field private static final RECORDING_SERVICE:Landroid/content/ComponentName;

.field private static final SHORT_VIDEO_DURATION_MS:J

.field private static final TIP_ANIMATION_LENGTH_MS:J = 0xfaL

.field private static final mainHandler:Landroid/os/Handler;

.field private static testV1:Z


# instance fields
.field private activityRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

.field private final audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field final batteryStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

.field final batteryStateTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

.field private final callStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;

.field private final connection:Lcom/google/glass/util/SafeServiceConnection;

.field private final decodeExecutor:Ljava/util/concurrent/ExecutorService;

.field private final elapsedTimeRunnable:Ljava/lang/Runnable;

.field final extendVideoTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

.field private isAutoStopPaused:Z

.field private isVideoExtended:Z

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field progressView:Lcom/google/glass/widget/ProgressBar;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private recordingService:Lcom/google/glass/camera/RecordingService;

.field private resumeRecording:Z

.field serviceListener:Lcom/google/glass/camera/RecordingServiceListener;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final shortVideoRunnable:Ljava/lang/Runnable;

.field private shouldPlayTerminalSound:Z

.field private startAutoStopPaused:J

.field private startRecordingRequestTime:J

.field private startRecordingTime:J

.field private stopRecordingRequestTime:J

.field private stopRecordingTime:J

.field private final storageReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

.field private thumbnailContainerView:Landroid/view/View;

.field private thumbnailPlaceholderView:Landroid/view/View;

.field private timeAutoStopPausedMillis:J

.field timerWrapper:Landroid/view/View;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private videoRecordingTimerView:Landroid/widget/TextView;

.field private viewfinderView:Landroid/view/TextureView;

.field private wasStopRecordingRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    .line 92
    sget-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    sub-long/2addr v0, v3

    sub-long/2addr v0, v3

    sput-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->DELAY_TO_HIDE_TIP_MS:J

    .line 101
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.glass.camera"

    const-string v2, "com.google.glass.camera.RecordingService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->RECORDING_SERVICE:Landroid/content/ComponentName;

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0}, Lcom/google/glass/voice/GlassVoiceActivity;-><init>()V

    .line 71
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 104
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 127
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$1;

    sget-object v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->RECORDING_SERVICE:Landroid/content/ComponentName;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$1;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    .line 154
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 156
    invoke-interface {v2}, Lcom/google/glass/logging/FormattingLogger;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/decodeExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 154
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->decodeExecutor:Ljava/util/concurrent/ExecutorService;

    .line 159
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/BaseRecordVideoActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->storageReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    .line 192
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$2;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$3;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$3;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    .line 352
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->createExtendVideoTipRunnable()Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideoTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    .line 371
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->createBatteryStateTipRunnable()Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    .line 389
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/BaseRecordVideoActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

    .line 392
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$6;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$6;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldPlayTerminalSound:Z

    .line 452
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$7;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$7;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    .line 659
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/BaseRecordVideoActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->callStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;

    .line 1151
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/RecordingService;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/RecordingService;)Lcom/google/glass/camera/RecordingService;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p1, "x1"    # Lcom/google/glass/camera/RecordingService;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearShortWakeUpStates()V

    return-void
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    return-wide v0
.end method

.method static synthetic access$1400()J
    .locals 2

    .prologue
    .line 70
    sget-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600()J
    .locals 2

    .prologue
    .line 70
    sget-wide v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->DELAY_TO_HIDE_TIP_MS:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/context/BroadcastReceiverRegistrar;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->activityRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->storageReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeRecording:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p1, "x1"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldPlayTerminalSound:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopTimer()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p1, "x1"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->showThumbnail(Lcom/google/glass/camera/Video;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/google/glass/camera/BaseRecordVideoActivity;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p1, "x1"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingRequestTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecordingRequestTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeRecording()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/glass/camera/BaseRecordVideoActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->resetUi()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->viewfinderView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/glass/camera/BaseRecordVideoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailContainerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/glass/camera/BaseRecordVideoActivity;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->onCallStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/camera/BaseRecordVideoActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/camera/BaseRecordVideoActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/glass/camera/BaseRecordVideoActivity;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;
    .param p1, "x1"    # J

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/google/glass/camera/BaseRecordVideoActivity;->setTimer(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/camera/BaseRecordVideoActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/camera/BaseRecordVideoActivity;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private adjustScreenBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 643
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 644
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 645
    return-void
.end method

.method private clearExtendVideoRelatedRunnablesFromHandler()V
    .locals 2

    .prologue
    .line 1015
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1016
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideoTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->cancel()V

    .line 1017
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->cancel()V

    .line 1018
    return-void
.end method

.method private clearShortWakeUpStates()V
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->PWU:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->clearWakeUpRunnable()V

    .line 557
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->releaseWakeLock()V

    .line 559
    :cond_0
    return-void
.end method

.method private getElapsedRecordingTimeMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 1010
    iget-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method private onCallStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 673
    new-instance v0, Lcom/google/glass/phone/PhoneCallHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/phone/PhoneCallHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/phone/PhoneCallHelper;->isInCall(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecordingForPhoneCall()V

    .line 676
    :cond_0
    return-void
.end method

.method private registerForPhoneCallUpdates()V
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->callStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 663
    return-void
.end method

.method private resetUi()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 821
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ProgressBar;->setVisibility(I)V

    .line 822
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailPlaceholderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 825
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeRecording:Z

    if-eqz v0, :cond_0

    .line 826
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity;->setTimer(J)V

    .line 830
    :goto_0
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 833
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeRecording:Z

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    .line 834
    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    .line 835
    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->wasStopRecordingRequested:Z

    .line 836
    iput-wide v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    .line 837
    return-void

    .line 828
    :cond_0
    invoke-direct {p0, v3, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity;->setTimer(J)V

    goto :goto_0
.end method

.method private resumeRecording()V
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->getStartRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    .line 882
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->resetUi()V

    .line 884
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 885
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->viewfinderView:Landroid/view/TextureView;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordingService;->resumeRecording(Lcom/google/glass/camera/RecordingServiceListener;Landroid/view/TextureView;)V

    .line 887
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startTimer()V

    .line 890
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 891
    return-void
.end method

.method static setTestV1(Z)V
    .locals 0
    .param p0, "isOnV1"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1177
    sput-boolean p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->testV1:Z

    .line 1178
    return-void
.end method

.method private setTimer(J)V
    .locals 2
    .param p1, "elapsedTimeMillis"    # J

    .prologue
    .line 967
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingTimerView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/google/glass/util/DateHelper;->getVideoRecordingTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    return-void
.end method

.method private shouldKeepScreenOn()Z
    .locals 1

    .prologue
    .line 656
    sget-boolean v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->testV1:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->SOFF:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showThumbnail(Lcom/google/glass/camera/Video;)V
    .locals 5
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    const/4 v4, 0x0

    .line 1057
    .line 1058
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/camera/R$integer;->record_video_show_thumbnail_fade_duration_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v0, v2

    .line 1061
    .local v0, "duration":J
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailPlaceholderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1062
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailPlaceholderView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    iget-object v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailPlaceholderView:Landroid/view/View;

    .line 1064
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1065
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 1066
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1069
    new-instance v2, Lcom/google/glass/camera/BaseRecordVideoActivity$12;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$12;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;Lcom/google/glass/camera/Video;J)V

    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->decodeExecutor:Ljava/util/concurrent/ExecutorService;

    new-array v4, v4, [Ljava/lang/Void;

    .line 1117
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/camera/BaseRecordVideoActivity$12;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1118
    return-void
.end method

.method private startTimer()V
    .locals 2

    .prologue
    .line 913
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 914
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 915
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 919
    sget-object v0, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->elapsedTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 920
    return-void
.end method

.method private unregisterForPhoneCallUpdates()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->callStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;

    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$CallStateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 667
    return-void
.end method


# virtual methods
.method createBatteryStateTipRunnable()Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 375
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$5;

    sget v1, Lcom/google/glass/camera/R$string;->low_battery_tip:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity$5;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V

    return-object v0
.end method

.method createExtendVideoTipRunnable()Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 356
    new-instance v0, Lcom/google/glass/camera/BaseRecordVideoActivity$4;

    sget v1, Lcom/google/glass/camera/R$string;->extend_video_tip:I

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/camera/BaseRecordVideoActivity$4;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;IZ)V

    return-object v0
.end method

.method extendVideo()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 925
    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    .line 926
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 927
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideoTipRunnable:Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;

    invoke-virtual {v0}, Lcom/google/glass/camera/BaseRecordVideoActivity$TipRunnable;->hide()V

    .line 930
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/ProgressBar;->hide(Z)V

    .line 936
    return-void
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getBatteryState()Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1022
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    return-object v0
.end method

.method protected getCachedFilesManagerForThumbnail()Lcom/google/glass/util/CachedFilesManager;
    .locals 1

    .prologue
    .line 1043
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    return-object v0
.end method

.method protected isRecordingFinished()Z
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    .line 1028
    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->STOPPED:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingOngoing()Z
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->REQUESTED:Lcom/google/glass/camera/RecordingService$RecordingState;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    .line 1034
    invoke-virtual {v1}, Lcom/google/glass/camera/RecordingService;->getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/RecordingService$RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/camera/RecordingService$RecordingState;->RECORDING:Lcom/google/glass/camera/RecordingService$RecordingState;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    .line 1035
    invoke-virtual {v1}, Lcom/google/glass/camera/RecordingService;->getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/RecordingService$RecordingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVideoExtended()Z
    .locals 1

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Activity attached to window!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 728
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onAttachedToWindow()V

    .line 729
    return-void
.end method

.method public onCameraButtonPressed(Z)Z
    .locals 1
    .param p1, "isLongPress"    # Z

    .prologue
    .line 972
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCameraButtonPressed(Z)Z

    move-result v0

    .line 987
    :goto_0
    return v0

    .line 977
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->closeOptionsMenu()V

    .line 982
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v0, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideo()V

    .line 987
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 985
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    goto :goto_1
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 588
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 589
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->activityRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 590
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioManager:Landroid/media/AudioManager;

    .line 594
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "resume_recording"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeRecording:Z

    .line 596
    sget v0, Lcom/google/glass/camera/R$id;->progress:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    .line 597
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->progressView:Lcom/google/glass/widget/ProgressBar;

    sget-wide v1, Lcom/google/glass/camera/BaseRecordVideoActivity;->SHORT_VIDEO_DURATION_MS:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/ProgressBar;->setMax(I)V

    .line 598
    sget v0, Lcom/google/glass/camera/R$id;->thumbnail_container:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailContainerView:Landroid/view/View;

    .line 599
    sget v0, Lcom/google/glass/camera/R$id;->thumbnail_placeholder:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->thumbnailPlaceholderView:Landroid/view/View;

    .line 600
    sget v0, Lcom/google/glass/camera/R$id;->recording_time_wrapper:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timerWrapper:Landroid/view/View;

    .line 601
    sget v0, Lcom/google/glass/camera/R$id;->recording_time:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->videoRecordingTimerView:Landroid/widget/TextView;

    .line 604
    sget v0, Lcom/google/glass/camera/R$id;->viewfinder:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->viewfinderView:Landroid/view/TextureView;

    .line 607
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/glass/camera/RecordingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 608
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 610
    new-instance v0, Lcom/google/glass/util/StorageHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/StorageHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/glass/util/StorageHelper;->showDialogIfFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Storage is full, not recording the video"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->DEVICE_STORAGE_BLOCK_USER_ACTION:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->finish()V

    .line 616
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/camera/R$menu;->record_video_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 781
    const/4 v0, 0x1

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Activity detached from window!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 761
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->unbind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 764
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->serviceListener:Lcom/google/glass/camera/RecordingServiceListener;

    .line 766
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 768
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onDetachedFromWindow()V

    .line 769
    return-void

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 744
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopTimer()V

    .line 745
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 752
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->releaseSurfaceTexture()V

    goto :goto_0

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    iget-wide v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingTime:J

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/camera/RecordingService;->setStartRecordingTime(J)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 715
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 717
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 718
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 809
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/camera/R$id;->stop_recording:I

    if-ne v1, v2, :cond_0

    .line 810
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 816
    :goto_0
    return v0

    .line 812
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/google/glass/camera/R$id;->extend_video:I

    if-ne v1, v2, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->extendVideo()V

    goto :goto_0

    .line 816
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->resumeAutoStop()V

    .line 804
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 805
    return-void
.end method

.method protected onPauseInternal()V
    .locals 2

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->setMuted(Z)V

    .line 706
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onPauseInternal()V

    .line 707
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 786
    invoke-super {p0, p1}, Lcom/google/glass/voice/GlassVoiceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 787
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingOngoing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->wasStopRecordingRequested:Z

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    .line 796
    :goto_0
    return v1

    .line 792
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->pauseAutoStop()V

    .line 795
    sget v2, Lcom/google/glass/camera/R$id;->extend_video:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onStartInternal()V
    .locals 1

    .prologue
    .line 543
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStartInternal()V

    .line 544
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearShortWakeUpStates()V

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->registerForPhoneCallUpdates()V

    .line 548
    return-void
.end method

.method protected onStopInternal()V
    .locals 2

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->unregisterForPhoneCallUpdates()V

    .line 566
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->batteryStateReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->activityRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$BatteryStateBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 567
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->storageReceiver:Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->activityRegistrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/BaseRecordVideoActivity$StorageBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 568
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v1, Lcom/google/glass/camera/BaseRecordVideoActivity$8;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$8;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 583
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onStopInternal()V

    .line 584
    return-void
.end method

.method protected onStopRecording(Lcom/google/glass/camera/Video;)V
    .locals 0
    .param p1, "video"    # Lcom/google/glass/camera/Video;

    .prologue
    .line 1050
    return-void
.end method

.method protected onThumbnailGenerated(Ljava/lang/String;)V
    .locals 0
    .param p1, "thumbnailFilePath"    # Ljava/lang/String;

    .prologue
    .line 1053
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 620
    invoke-super {p0}, Lcom/google/glass/voice/GlassVoiceActivity;->onUserInteraction()V

    .line 622
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v1, Lcom/google/glass/camera/BaseRecordVideoActivity$9;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$9;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 631
    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0, v0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->adjustScreenBrightness(F)V

    .line 633
    :cond_0
    return-void
.end method

.method protected pauseAutoStop()V
    .locals 2

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v0, :cond_0

    .line 941
    iget-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    if-nez v0, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->clearExtendVideoRelatedRunnablesFromHandler()V

    .line 943
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startAutoStopPaused:J

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    .line 947
    :cond_0
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 692
    sget v0, Lcom/google/glass/camera/R$layout;->record_video_activity:I

    return v0
.end method

.method protected resumeAutoStop()V
    .locals 6

    .prologue
    .line 951
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    if-nez v2, :cond_0

    .line 952
    iget-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    if-eqz v2, :cond_0

    .line 953
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getElapsedRecordingTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startAutoStopPaused:J

    sub-long v0, v2, v4

    .line 954
    .local v0, "paused":J
    iget-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->timeAutoStopPausedMillis:J

    .line 955
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isAutoStopPaused:Z

    .line 956
    sget-object v2, Lcom/google/glass/camera/BaseRecordVideoActivity;->mainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shortVideoRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x21

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 959
    .end local v0    # "paused":J
    :cond_0
    return-void
.end method

.method protected shouldAllowCameraButton()Z
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0}, Lcom/google/glass/util/SafeServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->recordingService:Lcom/google/glass/camera/RecordingService;

    .line 995
    invoke-virtual {v0}, Lcom/google/glass/camera/RecordingService;->getRecordingState()Lcom/google/glass/camera/RecordingService$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/google/glass/camera/RecordingService$RecordingState;->REQUESTED:Lcom/google/glass/camera/RecordingService$RecordingState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldAllowDismiss()Z
    .locals 1

    .prologue
    .line 1005
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->isRecordingFinished()Z

    move-result v0

    return v0
.end method

.method protected shouldHandleCameraButton()Z
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldScreenOffFinish()Z
    .locals 1

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    return v0
.end method

.method protected startRecording()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 845
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->resetUi()V

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "maxDurationSeconds":I
    const-wide/16 v1, 0x0

    .line 850
    .local v1, "maxFileSizeBytes":J
    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.durationLimit"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 853
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 856
    :cond_0
    if-gtz v0, :cond_1

    cmp-long v3, v1, v7

    if-lez v3, :cond_2

    .line 858
    :cond_1
    iput-boolean v6, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->isVideoExtended:Z

    .line 863
    :cond_2
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->startRecordingRequestTime:J

    .line 868
    iget-object v3, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v4, Lcom/google/glass/camera/BaseRecordVideoActivity$10;

    invoke-direct {v4, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$10;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 874
    return-void
.end method

.method protected stopRecording()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 896
    iput-boolean v2, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->wasStopRecordingRequested:Z

    .line 899
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 902
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecordingRequestTime:J

    .line 903
    iget-object v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->connection:Lcom/google/glass/util/SafeServiceConnection;

    new-instance v1, Lcom/google/glass/camera/BaseRecordVideoActivity$11;

    invoke-direct {v1, p0}, Lcom/google/glass/camera/BaseRecordVideoActivity$11;-><init>(Lcom/google/glass/camera/BaseRecordVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeServiceConnection;->runWhenConnected(Ljava/lang/Runnable;)V

    .line 909
    return-void
.end method

.method protected stopRecordingForPhoneCall()V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldPlayTerminalSound:Z

    .line 682
    invoke-direct {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->shouldKeepScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->stopRecording()V

    .line 687
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/camera/BaseRecordVideoActivity;->finish()V

    .line 688
    return-void
.end method

.method protected useCardScrollView()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method
