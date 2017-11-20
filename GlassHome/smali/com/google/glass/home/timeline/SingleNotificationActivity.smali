.class public Lcom/google/glass/home/timeline/SingleNotificationActivity;
.super Lcom/google/glass/home/timeline/TimelineNotificationActivity;
.source "SingleNotificationActivity.java"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private view:Lcom/google/glass/home/timeline/SingleNotificationView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method


# virtual methods
.method public getTimelineView()Lcom/google/glass/timeline/ui/TimelineView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->view:Lcom/google/glass/home/timeline/SingleNotificationView;

    return-object v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 25
    sget v0, Lcom/google/glass/home/R$id;->notification_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/SingleNotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/home/timeline/SingleNotificationView;

    iput-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->view:Lcom/google/glass/home/timeline/SingleNotificationView;

    .line 26
    return-void
.end method

.method public onResumeInternal()V
    .locals 8

    .prologue
    .line 30
    invoke-super {p0}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->onResumeInternal()V

    .line 33
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Initializing NotificationView"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->view:Lcom/google/glass/home/timeline/SingleNotificationView;

    .line 35
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/SingleNotificationActivity;->getNotificationState()Lcom/google/glass/timeline/ui/NotificationState;

    move-result-object v2

    .line 36
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/SingleNotificationActivity;->getSyncStatusReceiver()Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    move-result-object v3

    .line 37
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/SingleNotificationActivity;->getTimestampUpdateReceiver()Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move-result-object v4

    .line 38
    invoke-static {}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->getInstance()Lcom/google/glass/util/CachedBitmapFactory$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/util/CachedBitmapFactory$Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v6, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->itemId:Lcom/google/glass/timeline/TimelineItemId;

    iget-object v7, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->stopwatch:Lcom/google/glass/time/Stopwatch;

    move-object v1, p0

    .line 34
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/home/timeline/SingleNotificationView;->init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationActivity;->cursorLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 42
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/google/glass/home/R$layout;->single_notification_activity:I

    return v0
.end method
