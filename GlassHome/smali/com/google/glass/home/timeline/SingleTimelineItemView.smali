.class public Lcom/google/glass/home/timeline/SingleTimelineItemView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "SingleTimelineItemView.java"


# static fields
.field private static final NOTIFICATION_ANIMATE_IN_DURATION_MS:J = 0x3e8L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/SingleTimelineItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/SingleTimelineItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/SingleTimelineItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/SingleTimelineItemView;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/SingleTimelineItemView;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/home/timeline/SingleTimelineItemView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 102
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
.method public init(Lcom/google/glass/app/GlassActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;)Landroid/content/CursorLoader;
    .locals 10
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;
    .param p2, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p3, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p4, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p5, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p6, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 51
    .line 52
    invoke-virtual/range {p6 .. p6}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {p1, v1}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForSingleItem(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v9

    .line 54
    .local v9, "cursorLoader":Landroid/content/CursorLoader;
    new-instance v3, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;

    const/4 v1, 0x1

    invoke-direct {v3, p0, v1, p1}, Lcom/google/glass/home/timeline/SingleTimelineItemView$1;-><init>(Lcom/google/glass/home/timeline/SingleTimelineItemView;ZLcom/google/glass/app/GlassActivity;)V

    .line 79
    .local v3, "cursorManager":Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/home/timeline/SingleTimelineItemView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v9, v1, v3}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 82
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p5

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 86
    .local v0, "adapter":Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/glass/home/timeline/SingleTimelineItemView$2;

    invoke-direct {v5, p0, v0}, Lcom/google/glass/home/timeline/SingleTimelineItemView$2;-><init>(Lcom/google/glass/home/timeline/SingleTimelineItemView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/google/glass/home/timeline/SingleTimelineItemView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 98
    return-object v9
.end method
