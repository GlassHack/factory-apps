.class public Lcom/google/glass/home/timeline/BundleNotificationView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "BundleNotificationView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/BundleNotificationView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/BundleNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/BundleNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/BundleNotificationView;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleNotificationView;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/glass/home/timeline/BundleNotificationView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/BundleNotificationView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleNotificationView;
    .param p1, "x1"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->markItemAsReadMore(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/BundleNotificationView;Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/BundleNotificationView;
    .param p1, "x1"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V

    return-void
.end method

.method private clearReadMoreMark(Lcom/google/glass/timeline/TimelineItemId;)V
    .locals 3
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 193
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 195
    :cond_0
    return-void
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 178
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
    .line 183
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/BundleNotificationView;->viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;

    move-result-object v0

    .line 184
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 185
    sget v1, Lcom/google/glass/home/R$id;->tag_item_read_more:I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    :cond_0
    return-void
.end method

.method private viewForItem(Lcom/google/glass/timeline/TimelineItemId;)Landroid/view/View;
    .locals 8
    .param p1, "itemId"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    const/4 v5, 0x0

    .line 199
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/BundleNotificationView;->getChildCount()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 201
    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/BundleNotificationView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 202
    .local v4, "view":Landroid/view/View;
    sget v6, Lcom/google/glass/home/R$id;->tag_horizontal_scroll_read_result:I

    invoke-virtual {v4, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;

    .line 203
    .local v3, "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    if-nez v3, :cond_0

    move-object v1, v5

    .line 204
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

    .line 208
    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v4    # "view":Landroid/view/View;
    :goto_2
    return-object v4

    .line 203
    .restart local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .restart local v4    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;->getItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    goto :goto_1

    .line 200
    .restart local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v3    # "result":Lcom/google/glass/timeline/ui/TimelineItemLoader$ReadResult;
    .end local v4    # "view":Landroid/view/View;
    :cond_2
    move-object v4, v5

    .line 208
    goto :goto_2
.end method


# virtual methods
.method public init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
    .locals 19
    .param p1, "activity"    # Lcom/google/glass/home/timeline/TimelineNotificationActivity;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p4, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p5, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p6, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p7, "id"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p8, "notificationStopwatch"    # Lcom/google/glass/time/Stopwatch;

    .prologue
    .line 72
    const/4 v8, 0x1

    .line 75
    .local v8, "descDisplayTime":Z
    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/home/timeline/BundleNotificationView;->getMaxItemTimestamp(Z)J

    move-result-wide v6

    .line 79
    .local v6, "maxItemTimestamp":J
    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->getBundleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->isPinned()Z

    move-result v9

    move-object/from16 v3, p1

    .line 78
    invoke-static/range {v3 .. v9}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForBundleTimeline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZZ)Landroid/content/CursorLoader;

    move-result-object v18

    .line 82
    .local v18, "cursorLoader":Landroid/content/CursorLoader;
    new-instance v12, Lcom/google/glass/home/timeline/BundleNotificationView$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    invoke-direct {v12, v0, v8, v1, v2}, Lcom/google/glass/home/timeline/BundleNotificationView$1;-><init>(Lcom/google/glass/home/timeline/BundleNotificationView;ZLcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/time/Stopwatch;)V

    .line 134
    .local v12, "cursorManager":Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
    sget-object v3, Lcom/google/glass/home/timeline/BundleNotificationView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v12}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 137
    new-instance v9, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v9 .. v17}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 143
    .local v9, "adapter":Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    new-instance v3, Lcom/google/glass/home/timeline/BundleNotificationView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/google/glass/home/timeline/BundleNotificationView$2;-><init>(Lcom/google/glass/home/timeline/BundleNotificationView;)V

    invoke-virtual {v9, v3}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setContentSizedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;)V

    .line 154
    new-instance v3, Lcom/google/glass/home/timeline/BundleNotificationView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/google/glass/home/timeline/BundleNotificationView$3;-><init>(Lcom/google/glass/home/timeline/BundleNotificationView;Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V

    invoke-virtual {v9, v3}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setItemLoadedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;)V

    .line 162
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v5, 0x0

    new-instance v10, Lcom/google/glass/home/timeline/BundleNotificationView$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9}, Lcom/google/glass/home/timeline/BundleNotificationView$4;-><init>(Lcom/google/glass/home/timeline/BundleNotificationView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    aput-object v10, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/google/glass/home/timeline/BundleNotificationView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 174
    return-object v18
.end method
