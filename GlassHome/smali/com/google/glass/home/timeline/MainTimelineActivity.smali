.class public Lcom/google/glass/home/timeline/MainTimelineActivity;
.super Lcom/google/glass/timeline/ui/TimelineActivity;
.source "MainTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;,
        Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final NO_WAKE_UP_TIME:J = -0x1L

.field private static final TIMELINE_LOADERS_DELAY_SECONDS:I = 0xf

.field private static final UPTIME_THRESHOLD_MILLIS:J = 0x927c0L

.field private static handler:Lcom/google/glass/android/os/HandlerWrapper;


# instance fields
.field private lasOkGlassHelper:Lcom/google/glass/home/timeline/LasOkGlassHelper;

.field private launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private mainMenuLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

.field private final notificationReceivedReceiver:Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;

.field private onResumeTask:Landroid/content/Intent;

.field private onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private power:Lcom/google/glass/util/PowerHelper;

.field private resetTimelinePosition:Z

.field private final returnToHomeItemRunnable:Ljava/lang/Runnable;

.field private final showTimelineWithAnimationRunnable:Ljava/lang/Runnable;

.field private final showTimelineWithoutAnimationRunnable:Ljava/lang/Runnable;

.field private timelineLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation
.end field

.field private timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

.field timelineView:Lcom/google/glass/home/timeline/MainTimelineView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field userEventHelper:Lcom/google/glass/userevent/UserEventHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

.field private wakeUpTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;-><init>()V

    .line 93
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 120
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithAnimationRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity$ShowTimelineRunnable;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithoutAnimationRunnable:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$1;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$1;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->returnToHomeItemRunnable:Ljava/lang/Runnable;

    .line 142
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 169
    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/home/timeline/MainTimelineActivity$1;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;

    .line 172
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 1117
    return-void
.end method

.method static synthetic access$002(Lcom/google/glass/home/timeline/MainTimelineActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->resetTimelinePosition:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/home/timeline/TimelineOverlayView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/MainTimelineActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/MainTimelineActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;
    .param p1, "x1"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "x2"    # Z

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToItem(Lcom/google/glass/timeline/TimelineItemId;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/glass/home/timeline/MainTimelineActivity;Landroid/content/Intent;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/MainTimelineActivity;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p3, "x3"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "x4"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->onNotificationItemFound(Landroid/content/Intent;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method private cancelOnTimelineLoadRunnable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Execution of post-load task has been canceled."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    .line 832
    :cond_1
    return-void
.end method

.method private createTimelineView()V
    .locals 8

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 241
    .local v0, "contentFrameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-direct {v3, p0}, Lcom/google/glass/home/timeline/MainTimelineView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 242
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 245
    new-instance v3, Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-direct {v3, v4, v5}, Lcom/google/glass/home/timeline/TimelineOverlayView;-><init>(Landroid/content/Context;Lcom/google/glass/timeline/ui/TimelineView;)V

    iput-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    .line 246
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 249
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/util/CachedBitmapFactory;

    .line 250
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-result-object v7

    .line 249
    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/google/glass/home/timeline/MainTimelineView;->init(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 253
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    new-instance v4, Lcom/google/glass/home/timeline/MainTimelineActivity$2;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$2;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/MainTimelineView;->addTransformListener(Lcom/google/android/glass/widget/CardScrollView$TransformListener;)V

    .line 269
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->M_CVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    new-instance v4, Lcom/google/glass/home/timeline/MainTimelineActivity$3;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$3;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    invoke-virtual {v3, v4}, Lcom/google/glass/home/timeline/MainTimelineView;->addOnSelectListener(Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;)V

    .line 282
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x927c0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    const-wide/16 v1, 0x0

    .line 286
    .local v1, "delayInSeconds":J
    :goto_0
    sget-object v3, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v4, Lcom/google/glass/home/timeline/MainTimelineActivity$4;

    invoke-direct {v4, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$4;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 298
    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 286
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/glass/android/os/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    return-void

    .line 282
    .end local v1    # "delayInSeconds":J
    :cond_1
    const-wide/16 v1, 0xf

    goto :goto_0
.end method

.method private destroyTimelineView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 305
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Stopping %d timeline loaders."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Loader;

    .line 308
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {v0}, Landroid/content/Loader;->reset()V

    goto :goto_0

    .line 310
    .end local v0    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    :cond_0
    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    if-eqz v1, :cond_3

    .line 315
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 316
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 317
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->deactivate()V

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1, v6}, Lcom/google/glass/home/timeline/MainTimelineView;->setUiPerformanceLog(Lcom/google/glass/userevent/UiPerformanceLog;)V

    .line 320
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->clear()V

    .line 321
    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 322
    iput-object v6, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineOverlayView:Lcom/google/glass/home/timeline/TimelineOverlayView;

    .line 324
    :cond_3
    return-void
.end method

.method private getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 2

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    const-string v1, "MAIN_MENU"

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    return-object v0
.end method

.method private goToBestLiveCard(Landroid/content/Intent;Z)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allowNavStart"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 720
    const/4 v1, 0x0

    .line 721
    .local v1, "reason":Lcom/google/android/glass/os/WakeUpReason;
    if-eqz p1, :cond_0

    .line 722
    const-string v2, "wake_up_reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .end local v1    # "reason":Lcom/google/android/glass/os/WakeUpReason;
    check-cast v1, Lcom/google/android/glass/os/WakeUpReason;

    .line 723
    .restart local v1    # "reason":Lcom/google/android/glass/os/WakeUpReason;
    const-string v2, "wake_up_reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 727
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {p0, p1, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->determineActivationPosition(Landroid/content/Intent;Lcom/google/glass/home/timeline/MainTimelineView;)I

    move-result v0

    .line 728
    .local v0, "activationPosition":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 733
    sget-object v2, Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;->NAVIGATION:Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;

    invoke-static {v2}, Lcom/google/glass/ongoing/OngoingActivityService;->isActivityOngoing(Lcom/google/glass/ongoing/OngoingActivityManager$ActivityType;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 734
    sget-object v2, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_SWIPE_LEFT:Lcom/google/android/glass/os/WakeUpReason;

    if-ne v1, v2, :cond_4

    .line 735
    add-int/lit8 v0, v0, -0x1

    .line 760
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 761
    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 760
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 762
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Showing position at wake: %d; home: %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 763
    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    .line 762
    invoke-interface {v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v2, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(I)V

    .line 765
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v2, v4

    .line 728
    goto :goto_0

    .line 736
    :cond_4
    sget-object v2, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_SWIPE_RIGHT:Lcom/google/android/glass/os/WakeUpReason;

    if-ne v1, v2, :cond_5

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 739
    :cond_5
    if-eqz p2, :cond_1

    .line 740
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Showing Navigation after wake during Navigation."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    invoke-static {p0}, Lcom/google/glass/maps/NavigationLauncher;->bringNavigationToForeground(Landroid/content/Context;)V

    .line 742
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    goto :goto_2

    .line 748
    :cond_6
    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/util/TtsHelper;

    invoke-virtual {v2}, Lcom/google/glass/util/TtsHelper;->isSpeaking()Z

    move-result v2

    if-nez v2, :cond_2

    .line 752
    sget-object v2, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_SWIPE_LEFT:Lcom/google/android/glass/os/WakeUpReason;

    if-ne v1, v2, :cond_7

    .line 753
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 754
    :cond_7
    sget-object v2, Lcom/google/android/glass/os/WakeUpReason;->TOUCHPAD_SWIPE_RIGHT:Lcom/google/android/glass/os/WakeUpReason;

    if-ne v1, v2, :cond_1

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private goToItem(Lcom/google/glass/timeline/TimelineItemId;Z)Z
    .locals 3
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "animate"    # Z

    .prologue
    .line 651
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1, p1}, Lcom/google/glass/home/timeline/MainTimelineView;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    .line 652
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 653
    if-eqz p2, :cond_0

    .line 655
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    sget-object v2, Lcom/google/android/glass/widget/CardScrollView$Animation;->NAVIGATION:Lcom/google/android/glass/widget/CardScrollView$Animation;

    invoke-virtual {v1, v0, v2}, Lcom/google/glass/home/timeline/MainTimelineView;->animate(ILcom/google/android/glass/widget/CardScrollView$Animation;)Z

    .line 659
    :goto_0
    const/4 v1, 0x1

    .line 661
    :goto_1
    return v1

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(I)V

    goto :goto_0

    .line 661
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private goToTimeline(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 480
    const-string v0, "null intent"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->revealLiveCard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->navigateToLiveCard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    const-string v0, "animate"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 489
    .local v4, "animate":Z
    const-string v0, "item_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    const-string v0, "bundle_item_id"

    .line 492
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "bundle_item_id"

    .line 493
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    move-object v2, v0

    .line 495
    .local v2, "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    :goto_1
    const-string v0, "bundle_item"

    iget-object v8, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 496
    invoke-static {p1, v0, v8}, Lcom/google/glass/timeline/TimelineItemUtils;->tryGetFromIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/google/glass/logging/FormattingLogger;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v6

    .line 499
    .local v6, "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v2, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 505
    :goto_2
    const-string v0, "item_id"

    .line 506
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/TimelineItemId;

    .line 507
    .local v3, "itemId":Lcom/google/glass/timeline/TimelineItemId;
    iget-object v8, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Got timeline item id, will try to start at item: %s. bundleItemId: [%s], has bundleItem? [%s]"

    const/4 v0, 0x3

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v3, v10, v5

    aput-object v2, v10, v1

    const/4 v11, 0x2

    if-eqz v6, :cond_4

    move v0, v1

    .line 508
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v10, v11

    .line 507
    invoke-interface {v8, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    invoke-direct {p0, v3, v4}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToItem(Lcom/google/glass/timeline/TimelineItemId;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Found the target item."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-direct {p0, p1, v3, v6, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->onNotificationItemFound(Landroid/content/Intent;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)V

    goto :goto_0

    .end local v2    # "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v3    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v6    # "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_2
    move-object v2, v7

    .line 493
    goto :goto_1

    .line 502
    .restart local v2    # "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    .restart local v6    # "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    goto :goto_2

    .restart local v3    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    :cond_4
    move v0, v5

    .line 507
    goto :goto_3

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Item not yet loaded; will wait for: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v5

    invoke-interface {v0, v8, v1}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    if-nez v2, :cond_6

    .line 519
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 523
    :cond_6
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    .line 524
    new-instance v8, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/google/glass/home/timeline/MainTimelineActivity$6;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/home/timeline/MainTimelineActivity$6;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/timeline/TimelineItemId;ZLandroid/content/Intent;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-direct {v8, v0, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    .line 544
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v3, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->waitForLoad(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 547
    .end local v2    # "bundleItemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v3    # "itemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v6    # "bundleItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_7
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "No timeline item id given: going to best live card..."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0, v7, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 550
    invoke-direct {p0, p1, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToBestLiveCard(Landroid/content/Intent;Z)V

    goto/16 :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 335
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Saved intent is not null, what the what?"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    :goto_0
    return-void

    .line 338
    :cond_0
    if-nez p1, :cond_1

    .line 339
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Incoming intent was null, what the what?"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :cond_1
    const-string v4, "bundle_item_id"

    .line 346
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemId;

    .line 347
    .local v0, "bundleId":Lcom/google/glass/timeline/TimelineItemId;
    const-string v4, "is_notification"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 348
    .local v3, "isNotification":Z
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 349
    const-string v4, "item_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    const-string v4, "item_id"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/TimelineItemId;

    .line 351
    .local v2, "id":Lcom/google/glass/timeline/TimelineItemId;
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v4}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 352
    .local v1, "currentItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "requested to show the currently visible item, aborting."

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    .end local v1    # "currentItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v2    # "id":Lcom/google/glass/timeline/TimelineItemId;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 363
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    goto :goto_0
.end method

.method private isFromHandsFreeScreenOff()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1018
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1019
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "screen_turned_on"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v2

    .line 1023
    :cond_1
    const-string v1, "wake_up_reason"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const-string v1, "wake_up_reason"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/google/android/glass/os/WakeUpReason;

    sget-object v3, Lcom/google/android/glass/os/WakeUpReason;->HEAD_LOOK_UP:Lcom/google/android/glass/os/WakeUpReason;

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private isLoadingTimelineData()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onTimelineLoadRunnable:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNotificationItemFound(Landroid/content/Intent;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "parentItemId"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p3, "bundleItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p4, "bundleItemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 677
    const/4 v5, 0x0

    .line 678
    .local v5, "notificationStopwatch":Lcom/google/glass/time/Stopwatch;
    if-eqz p1, :cond_0

    const-string v0, "notificationStopwatch"

    .line 679
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "notificationStopwatch"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5    # "notificationStopwatch":Lcom/google/glass/time/Stopwatch;
    check-cast v5, Lcom/google/glass/time/Stopwatch;

    .line 685
    .restart local v5    # "notificationStopwatch":Lcom/google/glass/time/Stopwatch;
    :cond_0
    if-eqz p4, :cond_2

    .line 686
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Opening bundle for item: %s"

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p4, v2, v7

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 687
    invoke-static/range {v0 .. v5}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToBundle(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/timeline/TimelineItemId;ZLcom/google/glass/time/Stopwatch;)V

    .line 694
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_notification"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setIntent(Landroid/content/Intent;)V

    .line 710
    :cond_1
    :goto_0
    return-void

    .line 697
    :cond_2
    if-eqz v5, :cond_3

    .line 698
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_DATA_LOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    .line 701
    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "b"

    aput-object v6, v4, v7

    const-string v6, "0"

    aput-object v6, v4, v8

    .line 699
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 698
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 706
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    goto :goto_0
.end method

.method private openSettingsVoiceMenu(J)Lcom/google/glass/voice/VoiceConfig;
    .locals 4
    .param p1, "commandCreationUpTimeMillis"    # J

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 990
    .local v0, "voiceMenu":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    sget-object v1, Lcom/google/android/glass/app/ContextualMenus$Command;->SHOW_MORE:Lcom/google/android/glass/app/ContextualMenus$Command;

    new-instance v2, Lcom/google/glass/home/timeline/MainTimelineActivity$8;

    invoke-direct {v2, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$8;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/glass/voice/menu/Requirement;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuBuilder;->add(Lcom/google/android/glass/app/ContextualMenus$Command;Lcom/google/glass/voice/menu/VoiceMenuBuilder$OnVoiceMenuItemSelectedListener;[Lcom/google/glass/voice/menu/Requirement;)V

    .line 996
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v1

    invoke-static {p1, p2, v1, p0, v0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->openVoiceMenu(JLcom/google/glass/sound/SoundManager;Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/voice/menu/VoiceMenuBuilder;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    return-object v1
.end method

.method private revealLiveCard(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 560
    const-string v3, "com.google.android.glass.action.REVEAL_CARD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 589
    :goto_0
    return v2

    .line 565
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/MainTimelineView;->getTimelineApiAdapter()Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v8

    .line 566
    .local v8, "timelineApiAdapter":Lcom/google/glass/home/timeline/TimelineApiAdapter;
    if-nez v8, :cond_1

    .line 567
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Got intent to reveal live timeline card, but no timelineApiAdapter exists."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v9

    .line 568
    goto :goto_0

    .line 571
    :cond_1
    invoke-virtual {v8, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->getItemIdToReveal(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "itemIdToReveal":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Got timeline item id to reveal: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    if-eqz v1, :cond_2

    .line 576
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    .line 581
    .local v0, "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 583
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v7

    .line 584
    .local v7, "pos":I
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    sget-object v4, Lcom/google/android/glass/widget/CardScrollView$Animation;->INSERTION:Lcom/google/android/glass/widget/CardScrollView$Animation;

    invoke-virtual {v3, v7, v4}, Lcom/google/glass/home/timeline/MainTimelineView;->animate(ILcom/google/android/glass/widget/CardScrollView$Animation;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 585
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Could not set selection to reveal item id: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v0    # "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v7    # "pos":I
    :cond_2
    move v2, v9

    .line 589
    goto :goto_0
.end method


# virtual methods
.method public createTimelineMenuBuilder()Lcom/google/glass/timeline/TimelineMenuBuilder;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/HomeTimelineMenuBuilder;-><init>(Lcom/google/glass/app/GlassActivity;)V

    return-object v0
.end method

.method public createTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;
    .locals 3

    .prologue
    .line 218
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    .line 219
    .local v0, "databaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    new-instance v1, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;

    .line 221
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;-><init>(Landroid/app/Activity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    .line 222
    .local v1, "timelineMenuSelectionHandler":Lcom/google/glass/home/timeline/HomeTimelineMenuSelectionHandler;
    return-object v1
.end method

.method determineActivationPosition(Landroid/content/Intent;Lcom/google/glass/home/timeline/MainTimelineView;)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "timelineView"    # Lcom/google/glass/home/timeline/MainTimelineView;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 772
    if-eqz p1, :cond_1

    const-string v5, "locked"

    .line 773
    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 774
    .local v2, "isFromLockscreen":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 776
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Coming from lockscreen, going to home position."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 777
    invoke-virtual {p2}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v1

    .line 793
    :cond_0
    :goto_1
    return v1

    .end local v2    # "isFromLockscreen":Z
    :cond_1
    move v2, v4

    .line 773
    goto :goto_0

    .line 781
    .restart local v2    # "isFromLockscreen":Z
    :cond_2
    const/4 v1, -0x1

    .line 782
    .local v1, "activationPosition":I
    invoke-virtual {p2}, Lcom/google/glass/home/timeline/MainTimelineView;->getActivationPointer()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 783
    .local v0, "activationPointer":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Activation pointer: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v0, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    if-eqz v0, :cond_3

    .line 785
    invoke-virtual {p2}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 786
    iget-object v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Activation pointer position: %d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-interface {v5, v6, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 788
    :cond_3
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 790
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Activation falling back to home position."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    invoke-virtual {p2}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v1

    goto :goto_1
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 838
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->returnToHomeItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 839
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->returnToHomeItemRunnable:Ljava/lang/Runnable;

    .line 840
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/home/R$integer;->timeline_reset_delay_ms:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 839
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/android/os/HandlerWrapper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 841
    return-void
.end method

.method getTimelineLoadersForTest()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1068
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 1069
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineLoaders:Ljava/util/List;

    return-object v0
.end method

.method protected getTimelineNavigationUserEventAction()Lcom/google/glass/userevent/UserEventAction;
    .locals 1

    .prologue
    .line 922
    sget-object v0, Lcom/google/glass/userevent/UserEventAction;->TIMELINE_NAVIGATION:Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method

.method public getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    return-object v0
.end method

.method hideTimeline()V
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Hiding timeline view."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1061
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/MainTimelineView;->setVisibility(I)V

    .line 1062
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1063
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithoutAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1064
    return-void
.end method

.method logWakeUpDelay(J)V
    .locals 7
    .param p1, "showTimeMillis"    # J

    .prologue
    const-wide/16 v5, -0x1

    .line 906
    iget-wide v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 907
    iget-wide v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    sub-long v0, p1, v2

    .line 908
    .local v0, "delay":J
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->WAKE_UP_DELAY:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 909
    iput-wide v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 913
    .end local v0    # "delay":J
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "No wake up time known."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method navigateToLiveCard(Landroid/content/Intent;)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 599
    const-string v3, "com.google.android.glass.action.NAVIGATE_TO_CARD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 636
    :goto_0
    return v2

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/MainTimelineView;->getTimelineApiAdapter()Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v8

    .line 604
    .local v8, "timelineApiAdapter":Lcom/google/glass/home/timeline/TimelineApiAdapter;
    if-nez v8, :cond_1

    .line 605
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Got intent to navigate to live timeline card, but no timelineApiAdapter exists."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v9

    .line 606
    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {v8, p1}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->getItemIdToNavigateTo(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "itemIdToNavigate":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Got timeline item id to navigate to: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    if-eqz v1, :cond_3

    .line 612
    new-instance v0, Lcom/google/glass/timeline/TimelineItemId;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Ljava/lang/String;ZJLjava/lang/String;Z)V

    .line 617
    .local v0, "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline()V

    .line 618
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3, v0}, Lcom/google/glass/home/timeline/MainTimelineView;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v7

    .line 622
    .local v7, "pos":I
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 623
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v2, v7}, Lcom/google/glass/home/timeline/MainTimelineView;->setSelection(I)V

    .line 631
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v2}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 632
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v2}, Lcom/google/glass/util/PowerHelper;->wakeUp()V

    .end local v0    # "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    .end local v7    # "pos":I
    :cond_3
    move v2, v9

    .line 636
    goto :goto_0

    .line 624
    .restart local v0    # "timelineItemId":Lcom/google/glass/timeline/TimelineItemId;
    .restart local v7    # "pos":I
    :cond_4
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v3

    if-eq v3, v7, :cond_2

    .line 625
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    sget-object v4, Lcom/google/android/glass/widget/CardScrollView$Animation;->NAVIGATION:Lcom/google/android/glass/widget/CardScrollView$Animation;

    invoke-virtual {v3, v7, v4}, Lcom/google/glass/home/timeline/MainTimelineView;->animate(ILcom/google/android/glass/widget/CardScrollView$Animation;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 626
    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Could not set selection to navigate to item id: [%s]"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->M_CVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->requestWindowFeature(I)Z

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 190
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/android/os/HandlerWrapper;->createHandlerWrapper(Landroid/os/Looper;)Lcom/google/glass/android/os/HandlerWrapper;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    .line 191
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .line 192
    new-instance v0, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 193
    new-instance v0, Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineMenuSelectionHandler()Lcom/google/glass/timeline/TimelineMenuSelectionHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 194
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v4

    invoke-static {}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->getInstance()Lcom/google/glass/util/TtsHelperLazySingletonProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/TtsHelperLazySingletonProvider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/TtsHelper;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/timeline/VoiceOptionsHelper;-><init>(Lcom/google/glass/voice/GlassVoiceActivity;Lcom/google/glass/timeline/TimelineMenuSelectionHandler;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/sound/SoundManager;Lcom/google/glass/util/TtsHelper;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    .line 197
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->createTimelineView()V

    .line 200
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;

    .line 201
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 200
    invoke-virtual {v1, v0, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 207
    invoke-static {}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;->getInstance()Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;->get(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->mainMenuLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    .line 208
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getVoiceInputHelper()Lcom/google/glass/voice/VoiceInputHelper;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/glass/voice/GrammarLoader;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->mainMenuLoader:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceInputHelper;->addGrammarLoaders([Lcom/google/glass/voice/GrammarLoader;)V

    .line 210
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LAS_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    new-instance v0, Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    iput-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->lasOkGlassHelper:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    .line 213
    :cond_1
    return-void
.end method

.method protected onDestroyInternal()V
    .locals 2

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->destroyTimelineView()V

    .line 850
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->notificationReceivedReceiver:Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;

    .line 851
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 850
    invoke-virtual {v1, v0, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$NotificationReceivedBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Landroid/content/Context;)V

    .line 853
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->LAS_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->lasOkGlassHelper:Lcom/google/glass/home/timeline/LasOkGlassHelper;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/LasOkGlassHelper;->onDestroyInternal()V

    .line 857
    :cond_0
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onDestroyInternal()V

    .line 858
    return-void
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    .line 927
    sget-object v0, Lcom/google/glass/input/InputListener$DismissAction;->SWIPE_DOWN:Lcom/google/glass/input/InputListener$DismissAction;

    if-ne p1, v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->HOME_DISMISSED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 931
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setNotificationItemId(Ljava/lang/String;)V

    .line 933
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 328
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->handleIntent(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "selectedOptionMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 880
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/google/glass/home/R$id;->menu_browse_website:I

    if-ne v0, v1, :cond_0

    .line 882
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 884
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getUserEventContextDataForWebLink()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {p0, v0, v1}, Lcom/google/glass/browser/BrowserHelper;->invokeBrowser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const/4 v0, 0x1

    .line 887
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPauseInternal()V
    .locals 0

    .prologue
    .line 642
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onPauseInternal()V

    .line 643
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 863
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 865
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/google/glass/home/timeline/active/HomeItemView;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_TAPPED:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenu(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;)Z

    move-result v0

    .line 875
    :goto_0
    return v0

    .line 869
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->B_WC:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 870
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 869
    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->isBoutiqueWelcomeCard(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 872
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-static {v0}, Lcom/google/glass/voice/menu/VoiceMenuUtils;->getPackageName(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v0

    .line 871
    invoke-virtual {v1, p0, p1, v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->onCreateOptionsMenu(Lcom/google/glass/app/GlassActivity;Landroid/view/Menu;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 874
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/timeline/MainTimelineView;->insertLinksOnSelectedViewAsMenus(Landroid/view/Menu;)V

    .line 875
    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    goto :goto_0
.end method

.method public onResumeInternal()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 389
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onResumeInternal()V

    .line 391
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/google/glass/camera/RecordVideoHelper;->isRecordingVideo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Video recording is ongoing, redirecting to RecordVideoActivity."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.glass.action.RECORD_VIDEO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v1, "resumeRecordingIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v2, "resume_recording"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->startActivity(Landroid/content/Intent;)V

    .line 397
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 457
    .end local v1    # "resumeRecordingIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 403
    :cond_0
    sget-object v2, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v3, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->returnToHomeItemRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->resetTimelinePosition:Z

    if-eqz v2, :cond_1

    .line 407
    invoke-direct {p0, v4, v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToBestLiveCard(Landroid/content/Intent;Z)V

    .line 408
    iput-boolean v5, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->resetTimelinePosition:Z

    .line 412
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/MainTimelineView;->updateQueryParameters()V

    .line 415
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 417
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    iput-object v4, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->onResumeTask:Landroid/content/Intent;

    .line 423
    const-string v2, "wake_up_time"

    invoke-virtual {v0, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setWakeUpTime(J)V

    .line 426
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isLoadingTimelineData()Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not waiting for timeline data, going to the timeline."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-direct {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->goToTimeline(Landroid/content/Intent;)V

    .line 450
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 451
    invoke-virtual {v2}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getSerialExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/google/glass/home/timeline/MainTimelineActivity$5;

    invoke-direct {v3, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$5;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 431
    :cond_3
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "There is no pending task, checking for pending runnable."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    invoke-virtual {p0, v6, v7}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setWakeUpTime(J)V

    .line 437
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isLoadingTimelineData()Z

    move-result v2

    if-nez v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not waiting for timeline data, showing the timeline."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-virtual {p0, v5}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline(Z)V

    goto :goto_1
.end method

.method protected onStartInternal()V
    .locals 2

    .prologue
    .line 378
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onStartInternal()V

    .line 381
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getTimelineApiAdapter()Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v0

    .line 382
    .local v0, "timelineApiAdapter":Lcom/google/glass/home/timeline/TimelineApiAdapter;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onActivityStarted()V

    .line 385
    :cond_0
    return-void
.end method

.method public onStopInternal()V
    .locals 2

    .prologue
    .line 800
    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getTimelineApiAdapter()Lcom/google/glass/home/timeline/TimelineApiAdapter;

    move-result-object v0

    .line 801
    .local v0, "timelineApiAdapter":Lcom/google/glass/home/timeline/TimelineApiAdapter;
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0}, Lcom/google/glass/home/timeline/TimelineApiAdapter;->onActivityStopped()V

    .line 806
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->cancelOnTimelineLoadRunnable()V

    .line 812
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->hideTimeline()V

    .line 813
    invoke-super {p0}, Lcom/google/glass/timeline/ui/TimelineActivity;->onStopInternal()V

    .line 814
    return-void
.end method

.method public onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 8
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 938
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 940
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceCommand;->getGuardPhrase(Landroid/content/Context;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/glass/voice/VoiceCommand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 941
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v0

    .line 942
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->VOICE_PENDING:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 944
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_COMMAND_SPOKEN:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 949
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    new-instance v1, Lcom/google/glass/home/timeline/MainTimelineActivity$7;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/MainTimelineActivity$7;-><init>(Lcom/google/glass/home/timeline/MainTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 956
    invoke-virtual {p0, p1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->openInvocationMenu(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 975
    :goto_0
    return-object v0

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v7

    .line 959
    .local v7, "position":I
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0, v7}, Lcom/google/glass/home/timeline/MainTimelineView;->isLiveCardPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 960
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0, v7}, Lcom/google/glass/home/timeline/MainTimelineView;->isVoiceMenuEnabledForLiveCard(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 961
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 963
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 964
    :cond_3
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->isOnSettingsCoverCard()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 965
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/glass/home/timeline/MainTimelineActivity;->openSettingsVoiceMenu(J)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 967
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/timeline/ui/TimelineView;->getParentOfSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 968
    .local v3, "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    .line 969
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->canReadMore()Z

    move-result v4

    const-string v5, "t"

    .line 970
    invoke-virtual {p0, v3}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getTimelineItemDeletedListener(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/timeline/TimelineItemDeletedListener;

    move-result-object v6

    .line 968
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/timeline/VoiceOptionsHelper;->triggerOkGlass(JLcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;ZLjava/lang/String;Lcom/google/glass/timeline/TimelineItemDeletedListener;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0

    .line 975
    .end local v3    # "selectedItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v7    # "position":I
    :cond_5
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V
    .locals 2
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isFromHandsFreeScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->HANDSFREE_VOICE_ACTION:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 1008
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wake_up_reason"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1011
    :cond_0
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onVoiceMenuCommand(Lcom/google/glass/voice/VoiceCommand;)V

    .line 1012
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1074
    invoke-super {p0, p1}, Lcom/google/glass/timeline/ui/TimelineActivity;->onWindowFocusChanged(Z)V

    .line 1075
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/MainTimelineView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->timelineView:Lcom/google/glass/home/timeline/MainTimelineView;

    .line 1076
    invoke-virtual {v1}, Lcom/google/glass/home/timeline/MainTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1080
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->voiceOptionsHelper:Lcom/google/glass/timeline/VoiceOptionsHelper;

    invoke-virtual {v0}, Lcom/google/glass/timeline/VoiceOptionsHelper;->getInitialVoiceConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->setVoiceConfig(Lcom/google/glass/voice/VoiceConfig;)V

    .line 1083
    :cond_1
    return-void
.end method

.method public openInvocationMenu(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/VoiceConfig;
    .locals 3
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    .line 979
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->newVoiceMenu()Lcom/google/glass/voice/menu/VoiceMenuBuilder;

    move-result-object v0

    .line 980
    .local v0, "builder":Lcom/google/glass/voice/menu/VoiceMenuBuilder;
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->RVM:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 981
    check-cast v1, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;

    invoke-virtual {v1}, Lcom/google/glass/voice/menu/LocalVoiceMenuBuilder;->getVoiceMenuItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .line 982
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getVoiceMainMenuItems()Ljava/util/List;

    move-result-object v2

    .line 981
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 984
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getCommandCreationUpTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/home/timeline/MainTimelineActivity;->openVoiceMenu(Lcom/google/glass/voice/menu/VoiceMenuBuilder;J)Lcom/google/glass/voice/VoiceConfig;

    .line 985
    invoke-direct {p0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->getMainMenuConfig()Lcom/google/glass/voice/VoiceConfig;

    move-result-object v1

    return-object v1
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 368
    sget v0, Lcom/google/glass/home/R$layout;->timeline_activity:I

    return v0
.end method

.method setPowerHelperForTest(Lcom/google/glass/util/PowerHelper;)V
    .locals 0
    .param p1, "power"    # Lcom/google/glass/util/PowerHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 232
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 233
    iput-object p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->power:Lcom/google/glass/util/PowerHelper;

    .line 234
    return-void
.end method

.method setWakeUpTime(J)V
    .locals 0
    .param p1, "wakeUpTimeMillis"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 896
    iput-wide p1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->wakeUpTimeMillis:J

    .line 897
    return-void
.end method

.method protected shouldFinishTurnScreenOff()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    return v0
.end method

.method showTimeline()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1037
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimeline(Z)V

    .line 1038
    return-void
.end method

.method showTimeline(Z)V
    .locals 2
    .param p1, "animate"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1051
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1052
    sget-object v0, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithoutAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/glass/android/os/HandlerWrapper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1053
    sget-object v1, Lcom/google/glass/home/timeline/MainTimelineActivity;->handler:Lcom/google/glass/android/os/HandlerWrapper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithAnimationRunnable:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/glass/android/os/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1055
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/google/glass/home/timeline/MainTimelineActivity;->showTimelineWithoutAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method
