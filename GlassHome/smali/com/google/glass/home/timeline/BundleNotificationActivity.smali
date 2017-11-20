.class public Lcom/google/glass/home/timeline/BundleNotificationActivity;
.super Lcom/google/glass/home/timeline/TimelineNotificationActivity;
.source "BundleNotificationActivity.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private view:Lcom/google/glass/home/timeline/BundleNotificationView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;-><init>()V

    .line 19
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->view:Lcom/google/glass/home/timeline/BundleNotificationView;

    return-object v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lcom/google/glass/home/R$id;->notification_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/BundleNotificationView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->view:Lcom/google/glass/home/timeline/BundleNotificationView;

    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->view:Lcom/google/glass/home/timeline/BundleNotificationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/BundleNotificationView;->setHorizontalScrollBarEnabled(Z)V

    .line 36
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 37
    return-void
.end method

.method protected onResumeInternal()V
    .locals 9

    .prologue
    .line 41
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->onResumeInternal()V

    .line 43
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing BundleNotificationView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->view:Lcom/google/glass/home/timeline/BundleNotificationView;

    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleNotificationActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v3

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleNotificationActivity;->getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    move-result-object v4

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleNotificationActivity;->getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-result-object v5

    .line 49
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v1, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    :goto_0
    iget-object v8, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    move-object v1, p0

    .line 44
    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/home/timeline/BundleNotificationView;->init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 52
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 54
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->view:Lcom/google/glass/home/timeline/BundleNotificationView;

    new-instance v1, Lcom/google/glass/home/timeline/BundleNotificationActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/BundleNotificationActivity$1;-><init>(Lcom/google/glass/home/timeline/BundleNotificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/BundleNotificationView;->addOnSelectListener(Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;)V

    .line 64
    return-void

    .line 49
    :cond_0
    iget-object v7, p0, Lcom/google/glass/home/timeline/BundleNotificationActivity;->bundleItemId:Lcom/google/glass/timeline/TimelineItemId;

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/google/glass/home/R$layout;->bundle_notification_activity:I

    return v0
.end method
