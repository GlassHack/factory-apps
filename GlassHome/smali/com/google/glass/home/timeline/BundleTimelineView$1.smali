.class Lcom/google/glass/home/timeline/BundleTimelineView$1;
.super Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
.source "BundleTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/BundleTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFirstCursor:Z

.field final synthetic this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$id:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

.field final synthetic val$onLoadRunnables:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/BundleTimelineView;ZLcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/BundleTimelineView;
    .param p2, "x0"    # Z

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput-object p4, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    iput-object p5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

    iput-object p6, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$onLoadRunnables:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;-><init>(Z)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

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

    .line 101
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 104
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-static {v2, p2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Bundle is empty; dismissing self."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    sget-object v3, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v2, v3}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 141
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "New timeline database content loaded; updating views."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollAdapter;->notifyDataSetChanged()V

    .line 116
    iget-boolean v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    if-eqz v2, :cond_2

    .line 117
    iput-boolean v8, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->isFirstCursor:Z

    .line 118
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-virtual {p0, v2}, Lcom/google/glass/home/timeline/BundleTimelineView$1;->find(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v1

    .line 119
    .local v1, "startPosition":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 120
    const/4 v1, 0x0

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v2, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->setSelection(I)V

    .line 123
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-static {v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->access$200(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/BundleTimelineView;->getSelectedItemPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

    if-eqz v2, :cond_2

    .line 127
    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->this$0:Lcom/google/glass/home/timeline/BundleTimelineView;

    invoke-virtual {v3}, Lcom/google/glass/home/timeline/BundleTimelineView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->NOTIFICATION_DATA_LOAD:Lcom/google/glass/userevent/UserEventAction;

    const-string v4, "t"

    iget-object v5, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$notificationStopwatch:Lcom/google/glass/time/Stopwatch;

    .line 130
    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "b"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    const-string v8, "1"

    aput-object v8, v6, v7

    .line 128
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 137
    .end local v1    # "startPosition":I
    :cond_2
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 138
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 140
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :cond_3
    iget-object v2, p0, Lcom/google/glass/home/timeline/BundleTimelineView$1;->val$onLoadRunnables:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/BundleTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
