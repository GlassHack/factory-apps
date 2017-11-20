.class Lcom/google/glass/home/timeline/SingleNotificationView$1;
.super Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
.source "SingleNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/SingleNotificationView;->init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

.field final synthetic val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

.field final synthetic val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/SingleNotificationView;ZLcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/time/Stopwatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/SingleNotificationView;
    .param p2, "x0"    # Z

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    iput-object p4, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 66
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    invoke-static {v0, p2}, Lcom/google/glass/home/timeline/SingleNotificationView;->access$000(Lcom/google/glass/home/timeline/SingleNotificationView;Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/google/glass/home/timeline/SingleNotificationView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Timeline item not found; dismissing self."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->val$activity:Lcom/google/glass/home/timeline/TimelineNotificationActivity;

    sget-object v1, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/home/timeline/TimelineNotificationActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

    if-eqz v0, :cond_2

    .line 74
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v1, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    invoke-virtual {v1}, Lcom/google/glass/home/timeline/SingleNotificationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_DATA_LOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "t"

    iget-object v3, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

    .line 77
    invoke-virtual {v3}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "b"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "0"

    aput-object v6, v4, v5

    .line 75
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 83
    :cond_2
    invoke-static {}, Lcom/google/glass/home/timeline/SingleNotificationView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "New timeline item content loaded; updating view."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/SingleNotificationView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 87
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/SingleNotificationView;->getY()F

    move-result v0

    cmpg-float v0, v0, v8

    if-gez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/glass/home/timeline/SingleNotificationView$1;->this$0:Lcom/google/glass/home/timeline/SingleNotificationView;

    invoke-virtual {v0}, Lcom/google/glass/home/timeline/SingleNotificationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v8}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/glass/home/timeline/SingleNotificationView$1$1;

    invoke-direct {v1, p0}, Lcom/google/glass/home/timeline/SingleNotificationView$1$1;-><init>(Lcom/google/glass/home/timeline/SingleNotificationView$1;)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 59
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/SingleNotificationView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
