.class public Lcom/google/glass/timeline/ui/FilteredTimelineView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "FilteredTimelineView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public init(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Ljava/util/List;
    .locals 11
    .param p1, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p2, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p3, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p4, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p5, "filter"    # Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "Lcom/google/glass/timeline/ui/NotificationState;",
            "Lcom/google/glass/sync/TimelineSyncStatusReceiver;",
            "Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;",
            "Lcom/google/glass/timeline/TimelineDatabaseFilter;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 39
    .local v7, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v10

    .line 44
    .local v10, "pinnedTimelineAdapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v9

    .line 47
    .local v9, "historyTimelineAdapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v2, 0x0

    aput-object v10, v1, v2

    const/4 v2, 0x1

    aput-object v9, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 50
    return-object v7
.end method
