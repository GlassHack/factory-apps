.class public Lcom/google/glass/home/timeline/ReadMoreTimelineView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "ReadMoreTimelineView.java"


# static fields
.field private static final NUM_VIEWS_FOR_READ_MORE:I = 0x20

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->setNumViewsToLoad(I)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/google/glass/timeline/ui/TimelineItemLoader;
    .param p3, "x3"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->appendRemainingText(Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;
    .param p1, "x1"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p2, "x2"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->applyNewData(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/home/timeline/ReadMoreTimelineView;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/ReadMoreTimelineView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method private appendRemainingText(Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V
    .locals 1
    .param p2, "loader"    # Lcom/google/glass/timeline/ui/TimelineItemLoader;
    .param p3, "adapter"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader;",
            "Lcom/google/glass/timeline/ui/TimelineItemAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->createRemainingTextListener(Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setRemainingTextListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;)V

    .line 254
    return-void
.end method

.method private applyNewData(Lcom/google/glass/timeline/ui/TimelineItemAdapter;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    .locals 4
    .param p1, "adapter"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    .param p2, "parentItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 233
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 236
    iput-object p2, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 239
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/glass/home/timeline/ReadMoreTimelineView$3;

    invoke-direct {v3, p0, p1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$3;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 247
    return-void
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 172
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


# virtual methods
.method createItemListAndLoader(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Landroid/util/Pair;
    .locals 3
    .param p1, "parentItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;

    invoke-direct {v1, p0, v0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$2;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Ljava/util/List;)V

    .line 228
    .local v1, "loader":Lcom/google/glass/timeline/ui/TimelineItemLoader;
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method createRemainingTextListener(Ljava/util/List;Lcom/google/glass/timeline/ui/TimelineItemLoader;)Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;
    .locals 1
    .param p2, "loader"    # Lcom/google/glass/timeline/ui/TimelineItemLoader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;",
            ">;",
            "Lcom/google/glass/timeline/ui/TimelineItemLoader;",
            ")",
            "Lcom/google/glass/timeline/ui/TimelineItemAdapter$RemainingTextListener;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;>;"
    new-instance v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$4;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;Lcom/google/glass/timeline/ui/TimelineItemLoader;Ljava/util/List;)V

    return-object v0
.end method

.method public getParentOfSelectedItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->parentItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    return-object v0
.end method

.method public bridge synthetic getParentOfSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->getParentOfSelectedItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
    .locals 10
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p4, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p5, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p6, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p7, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 96
    .line 97
    invoke-virtual/range {p7 .. p7}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForSingleItem(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v9

    .line 100
    .local v9, "cursorLoader":Landroid/content/CursorLoader;
    new-instance v0, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/home/timeline/ReadMoreTimelineView$1;-><init>(Lcom/google/glass/home/timeline/ReadMoreTimelineView;ZLcom/google/glass/app/GlassActivity;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/timeline/TimelineItemId;)V

    .line 167
    .local v0, "cursorManager":Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/home/timeline/ReadMoreTimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v9, v1, v0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 168
    return-object v9
.end method
