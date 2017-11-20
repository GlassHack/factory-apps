.class public Lcom/google/glass/home/timeline/SingleNotificationView;
.super Lcom/google/glass/timeline/ui/TimelineView;
.source "SingleNotificationView.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/home/timeline/SingleNotificationView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/home/timeline/SingleNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/home/timeline/SingleNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/home/timeline/SingleNotificationView;Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/home/timeline/SingleNotificationView;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/SingleNotificationView;->isCursorEmpty(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/home/timeline/SingleNotificationView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private isCursorEmpty(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 131
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
.method public init(Lcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/TimelineItemId;Lcom/google/glass/time/Stopwatch;)Landroid/content/CursorLoader;
    .locals 11
    .param p1, "activity"    # Lcom/google/glass/home/timeline/TimelineNotificationActivity;
    .param p2, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p3, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p4, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p5, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p6, "id"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p7, "notificationStopwatch"    # Lcom/google/glass/time/Stopwatch;

    .prologue
    .line 54
    sget-object v2, Lcom/google/glass/home/timeline/SingleNotificationView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "initializing cursor loader for item %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual/range {p6 .. p6}, Lcom/google/glass/timeline/TimelineItemId;->getItemId()Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {p1, v2}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForSingleItem(Landroid/content/Context;Ljava/lang/String;)Landroid/content/CursorLoader;

    move-result-object v10

    .line 58
    .local v10, "cursorLoader":Landroid/content/CursorLoader;
    new-instance v4, Lcom/google/glass/home/timeline/SingleNotificationView$1;

    const/4 v2, 0x1

    move-object/from16 v0, p7

    invoke-direct {v4, p0, v2, p1, v0}, Lcom/google/glass/home/timeline/SingleNotificationView$1;-><init>(Lcom/google/glass/home/timeline/SingleNotificationView;ZLcom/google/glass/home/timeline/TimelineNotificationActivity;Lcom/google/glass/time/Stopwatch;)V

    .line 101
    .local v4, "cursorManager":Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
    sget-object v2, Lcom/google/glass/home/timeline/SingleNotificationView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v10, v2, v4}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 104
    new-instance v1, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object/from16 v3, p5

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    .line 109
    .local v1, "adapter":Lcom/google/glass/timeline/ui/TimelineItemAdapter;
    invoke-virtual {p0, v1}, Lcom/google/glass/home/timeline/SingleNotificationView;->createRemainingContentListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    .line 111
    new-instance v2, Lcom/google/glass/home/timeline/SingleNotificationView$2;

    invoke-direct {v2, p0, p1}, Lcom/google/glass/home/timeline/SingleNotificationView$2;-><init>(Lcom/google/glass/home/timeline/SingleNotificationView;Lcom/google/glass/home/timeline/TimelineNotificationActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setItemLoadedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ItemLoadedListener;)V

    .line 119
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    const/4 v5, 0x0

    new-instance v6, Lcom/google/glass/home/timeline/SingleNotificationView$3;

    invoke-direct {v6, p0, v1}, Lcom/google/glass/home/timeline/SingleNotificationView$3;-><init>(Lcom/google/glass/home/timeline/SingleNotificationView;Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    aput-object v6, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/home/timeline/SingleNotificationView;->setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 127
    return-object v10
.end method
