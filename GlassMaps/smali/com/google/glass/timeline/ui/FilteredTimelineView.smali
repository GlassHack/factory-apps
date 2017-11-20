.class public Lcom/google/glass/timeline/ui/FilteredTimelineView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public init(Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Ljava/util/List;
    .locals 10

    .prologue
    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 39
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v9

    .line 44
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    move-result-object v0

    .line 47
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/FilteredTimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 50
    return-object v7
.end method
