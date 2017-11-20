.class Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;
.super Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
.source "ReadMoreTimelineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/timeline/ReadMoreTimelineView;->init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isFirstCursor:Z

.field final synthetic this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

.field final synthetic val$activity:Lcom/google/glass/app/GlassActivity;

.field final synthetic val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field final synthetic val$id:Lcom/google/glass/timeline/TimelineItemId;

.field final synthetic val$notificationState:Lcom/google/glass/timeline/ui/NotificationState;

.field final synthetic val$syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

.field final synthetic val$timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;


# direct methods
.method constructor <init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;ZLcom/google/glass/app/GlassActivity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;
    .param p2, "x0"    # Z

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    iput-object p3, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iput-object p4, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iput-object p5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    iput-object p6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iput-object p7, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    iput-object p8, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$id:Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {p0, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;-><init>(Z)V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->isFirstCursor:Z

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
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
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 106
    invoke-super {p0, p1, p2}, Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 109
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    invoke-static {v1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$000(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    invoke-static {}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Query result for item being read is empty; dismissing self."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    sget-object v2, Lcom/google/glass/input/InputListener$DismissAction;->OPTION_ITEM:Lcom/google/glass/input/InputListener$DismissAction;

    invoke-virtual {v1, v2}, Lcom/google/glass/app/GlassActivity;->onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->isFirstCursor:Z

    if-eqz v1, :cond_0

    .line 120
    iput-boolean v5, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->isFirstCursor:Z

    .line 123
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    invoke-static {}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Could not move to first item in cursor."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    .line 129
    .local v12, "serializationHelper":Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
    invoke-virtual {v12, p2}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v9

    .line 132
    .local v9, "parentItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->attachment:[Lcom/google/googlex/glass/common/proto/TimelineNano$Attachment;

    .line 135
    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->this$0:Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .line 136
    invoke-virtual {v1, v9}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->createItemListAndLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;

    move-result-object v11

    .line 137
    .local v11, "listAndLoader":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;Lcom/google/glass/timeline/ui/TimelineItemLoader;>;"
    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 138
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    iget-object v3, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineItemLoader;

    .line 141
    .local v3, "itemLoader":Lcom/google/glass/timeline/ui/TimelineItemLoader;
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    iget-object v1, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$activity:Lcom/google/glass/app/GlassActivity;

    iget-object v2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    iget-object v6, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$notificationState:Lcom/google/glass/timeline/ui/NotificationState;

    iget-object v7, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$syncStatusReceiver:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    iget-object v8, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->val$timestampUpdateReceiver:Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;

    move v5, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 145
    .local v0, "adapter":Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v4, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;

    move-object v5, p0

    move-object v6, v10

    move-object v7, v3

    move-object v8, v0

    invoke-direct/range {v4 .. v9}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 100
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method
