.class public Lcom/google/glass/home/timeline/BundleTimelineView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "BundleTimelineView.java"

# interfaces
.implements Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private viewedPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    .line 57
    invoke-virtual {p0, p0}, Lcom/google/glass/home/timeline/BundleTimelineView;->addOnSelectListener(Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/BundleTimelineView;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleTimelineView;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/home/timeline/BundleTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/BundleTimelineView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleTimelineView;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleTimelineView;
    .param p1, "x1"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleTimelineView;
    .param p1, "x1"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method private clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 3
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 195
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 197
    :cond_0
    return-void
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 180
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

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

.method private markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 3
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleTimelineView;->viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 187
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 189
    :cond_0
    return-void
.end method

.method private viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;
    .locals 8
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    const/4 v5, 0x0

    .line 201
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getChildCount()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 203
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleTimelineView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 204
    .local v4, "view":Landroid/view/View;
    sget v6, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 205
    .local v3, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    if-nez v3, :cond_0

    move-object v1, v5

    .line 206
    .local v1, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v4    # "view":Landroid/view/View;
    :goto_2
    return-object v4

    .line 205
    .restart local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .restart local v4    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_1

    .line 202
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    move-object v4, v5

    .line 210
    goto :goto_2
.end method


# virtual methods
.method public getViewedPositions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    return-object v0
.end method

.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
    .locals 24
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p4, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p5, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p6, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p7, "id"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p8, "notificationStopwatch"    # Lcom/google/glass/time/Stopwatch;

    .prologue
    .line 79
    const/4 v6, 0x1

    .line 82
    .local v6, "descDisplayTime":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 85
    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v1

    invoke-static {v1}, Lcom/google/glass/home/timeline/BundleTimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v4

    .line 89
    .local v4, "maxItemTimestamp":J
    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->getBundleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v7

    move-object/from16 v1, p1

    .line 88
    invoke-static/range {v1 .. v7}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;

    move-result-object v23

    .line 92
    .local v23, "cursorLoader":Landroid/content/CursorLoader;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v13, "onLoadRunnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v7, Lcom/google/glass/home/timeline/BundleTimelineView$1;

    move-object/from16 v8, p0

    move v9, v6

    move-object/from16 v10, p1

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-direct/range {v7 .. v13}, Lcom/google/glass/home/timeline/BundleTimelineView$1;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;ZLcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;Ljava/util/List;)V

    .line 143
    .local v7, "cursorManager":Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/home/timeline/BundleTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v7}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 146
    new-instance v14, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v15, p1

    move-object/from16 v16, p6

    move-object/from16 v17, v7

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    invoke-direct/range {v14 .. v22}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 151
    .local v14, "adapter":Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    new-instance v1, Lcom/google/glass/home/timeline/BundleTimelineView$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/google/glass/home/timeline/BundleTimelineView$2;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;)V

    invoke-virtual {v14, v1}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setContentSizedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;)V

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v3, 0x0

    new-instance v8, Lcom/google/glass/home/timeline/BundleTimelineView$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14, v13}, Lcom/google/glass/home/timeline/BundleTimelineView$3;-><init>(Lcom/google/glass/home/timeline/BundleTimelineView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;Ljava/util/List;)V

    aput-object v8, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/home/timeline/BundleTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 176
    return-object v23
.end method

.method public onSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/glass/home/timeline/BundleTimelineView;->viewedPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method
