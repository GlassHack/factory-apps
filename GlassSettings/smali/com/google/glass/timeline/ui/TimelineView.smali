.class public abstract Lcom/google/glass/timeline/ui/TimelineView;
.super Lcom/google/android/glass/widget/CardScrollView;
.source "TimelineView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/timeline/ui/TimelineView$MainAdapter;,
        Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;,
        Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;,
        Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;,
        Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    }
.end annotation


# static fields
.field private static final ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID:Ljava/lang/String; = "com.google.glass.ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID"

.field public static final EXTRA_URL:Ljava/lang/String; = "extra_url"

.field private static final MIN_QUERY_PARAM_TIME_DELTA:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field protected static final nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final debugBroadcastReceiver:Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;

.field private onSelectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

.field private wrappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 67
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/timeline/ui/TimelineView;->MIN_QUERY_PARAM_TIME_DELTA:J

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/ui/TimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/timeline/ui/TimelineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/glass/widget/CardScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;-><init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/glass/timeline/ui/TimelineView$1;)V

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->debugBroadcastReceiver:Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;

    .line 157
    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/ui/TimelineView;->setWillNotDraw(Z)V

    .line 160
    invoke-virtual {p0, v2}, Lcom/google/glass/timeline/ui/TimelineView;->setLayoutDirection(I)V

    .line 163
    invoke-super {p0, p0}, Lcom/google/android/glass/widget/CardScrollView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 164
    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/ui/TimelineView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 63
    sget-wide v0, Lcom/google/glass/timeline/ui/TimelineView;->MIN_QUERY_PARAM_TIME_DELTA:J

    return-wide v0
.end method

.method static synthetic access$500()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/google/glass/timeline/ui/TimelineView;->createBugReportIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineView;->logTimelineItemIdOnBugReport()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/timeline/ui/TimelineView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/timeline/ui/TimelineView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/glass/timeline/ui/TimelineView;->logTimelineItemIdOnUserRequest()V

    return-void
.end method

.method private static createBugReportIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 600
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BUG_REPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    const-string v1, "com.google.glass.ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 603
    return-object v0
.end method

.method protected static getMaxItemTimestamp(Z)J
    .locals 5
    .param p0, "pinned"    # Z

    .prologue
    .line 512
    if-eqz p0, :cond_0

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 515
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private logTimelineItemIdOnBugReport()V
    .locals 7

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 578
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 579
    .local v1, "itemId":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Bugreport associated with timeline item ID: %s, context: %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    return-void

    .line 578
    .end local v1    # "itemId":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private logTimelineItemIdOnUserRequest()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 589
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 590
    .local v1, "itemId":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "%s: Timeline item ID: %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "com.google.glass.ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID"

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 593
    sget-object v2, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "%s: Full timeline item: %s"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "com.google.glass.ACTION_SHOW_CURRENT_TIMELINE_ITEM_ID"

    aput-object v5, v4, v6

    .line 594
    invoke-static {v0}, Lcom/google/glass/protobuf/ProtoDebugUtils;->lazyAsciiDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v7

    .line 593
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_0
    return-void

    .line 589
    .end local v1    # "itemId":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addOnSelectListener(Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;)V
    .locals 1
    .param p1, "onSelectListener"    # Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->onSelectListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 192
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->onSelectListeners:Ljava/util/List;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->onSelectListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method protected createRemainingContentListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    .prologue
    .line 481
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/timeline/ui/TimelineView$3;-><init>(Lcom/google/glass/timeline/ui/TimelineView;)V

    invoke-virtual {p1, v0}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;->setContentSizedListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter$ContentSizedListener;)V

    .line 503
    return-void
.end method

.method protected createTimelineItemAdapter(Lcom/google/glass/util/CachedBitmapFactory;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;Ljava/util/List;Lcom/google/glass/timeline/TimelineDatabaseFilter;)Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;
    .locals 13
    .param p1, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;
    .param p2, "pinned"    # Z
    .param p3, "descDisplayTime"    # Z
    .param p4, "notificationState"    # Lcom/google/glass/timeline/ui/NotificationState;
    .param p5, "syncStatusReceiver"    # Lcom/google/glass/sync/TimelineSyncStatusReceiver;
    .param p6, "timestampUpdateReceiver"    # Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;
    .param p8, "timelineDatabaseFilter"    # Lcom/google/glass/timeline/TimelineDatabaseFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/CachedBitmapFactory;",
            "ZZ",
            "Lcom/google/glass/timeline/ui/NotificationState;",
            "Lcom/google/glass/sync/TimelineSyncStatusReceiver;",
            "Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;>;",
            "Lcom/google/glass/timeline/TimelineDatabaseFilter;",
            ")",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 622
    .line 623
    .local p7, "loaders":Ljava/util/List;, "Ljava/util/List<Landroid/content/Loader<Landroid/database/Cursor;>;>;"
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/google/glass/timeline/ui/TimelineView;->getMaxItemTimestamp(Z)J

    move-result-wide v2

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p8

    .line 622
    invoke-static/range {v1 .. v6}, Lcom/google/glass/timeline/TimelineHelper;->createItemLoaderForTimeline(Landroid/content/Context;JZZLcom/google/glass/timeline/TimelineDatabaseFilter;)Landroid/content/CursorLoader;

    move-result-object v11

    .line 624
    .local v11, "cursorLoader":Landroid/content/CursorLoader;
    move-object/from16 v0, p7

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 630
    .local v10, "onLoadRunnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    new-instance v12, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 632
    .local v12, "timelineItemAdapter":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/timeline/ui/TimelineItemAdapter;>;"
    new-instance v4, Lcom/google/glass/timeline/ui/TimelineView$4;

    move/from16 v0, p3

    invoke-direct {v4, p0, v0, v12, v10}, Lcom/google/glass/timeline/ui/TimelineView$4;-><init>(Lcom/google/glass/timeline/ui/TimelineView;ZLjava/util/concurrent/atomic/AtomicReference;Ljava/util/List;)V

    .line 653
    .local v4, "cursorManager":Lcom/google/glass/timeline/ui/binder/TimelineCursorManager;
    sget-object v1, Lcom/google/glass/timeline/ui/TimelineView;->nextLoaderId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v11, v1, v4}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 656
    new-instance v1, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/google/glass/timeline/ui/TimelineItemAdapter;-><init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/timeline/ui/TimelineItemLoader;ZZLcom/google/glass/timeline/ui/NotificationState;Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/timeline/ui/TimestampUpdateReceiver;)V

    invoke-virtual {v12, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 658
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/glass/widget/CardScrollAdapter;

    .line 659
    .local v7, "historyAdapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/timeline/ui/TimelineItemAdapter;

    invoke-virtual {p0, v1}, Lcom/google/glass/timeline/ui/TimelineView;->createRemainingContentListener(Lcom/google/glass/timeline/ui/TimelineItemAdapter;)V

    .line 662
    new-instance v5, Lcom/google/glass/timeline/ui/TimelineView$5;

    move-object v6, p0

    move v8, p2

    move-object v9, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/glass/timeline/ui/TimelineView$5;-><init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;ZLandroid/content/CursorLoader;Ljava/util/List;)V

    return-object v5
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    invoke-virtual {v0}, Lcom/google/glass/userevent/UiPerformanceLog;->onRenderStart()V

    .line 247
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/glass/widget/CardScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 248
    return-void
.end method

.method public find(Lcom/google/glass/timeline/TimelineItemId;)I
    .locals 1
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-interface {v0, p1}, Lcom/google/glass/timeline/SearchableAdapter;->findPosition(Lcom/google/glass/timeline/TimelineItemId;)I

    move-result v0

    return v0
.end method

.method protected getAdapterAndPosition(I)Landroid/util/Pair;
    .locals 8
    .param p1, "position"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 461
    if-ne p1, v6, :cond_0

    .line 462
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 473
    :goto_0
    return-object v5

    .line 464
    :cond_0
    const/4 v3, 0x0

    .line 465
    .local v3, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 466
    iget-object v5, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 467
    .local v4, "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    invoke-virtual {v4}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v0

    .line 468
    .local v0, "count":I
    if-lt p1, v3, :cond_1

    add-int v5, v3, v0

    if-ge p1, v5, :cond_1

    .line 469
    sub-int v5, p1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_0

    .line 471
    :cond_1
    add-int/2addr v3, v0

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 473
    .end local v0    # "count":I
    .end local v4    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_0
.end method

.method protected getAdapterOffset(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 446
    .local p1, "w":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    const/4 v2, 0x0

    .line 447
    .local v2, "offset":I
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 448
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 449
    .local v3, "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    if-ne v3, p1, :cond_0

    .line 450
    return v2

    .line 452
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v4

    add-int/2addr v2, v4

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    .end local v3    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Not our adapter."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getCurrentVoiceConfig()Lcom/google/glass/voice/VoiceConfig;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->ATC_OK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/VoiceConfig;->getGuardConfig(Landroid/content/Context;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0
.end method

.method public getParentOfSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getUserEventContextDataForWebLink()Ljava/lang/String;
    .locals 4

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 525
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 526
    :goto_0
    return-object v1

    .line 525
    :cond_0
    const-string v1, "us"

    .line 527
    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemUtils;->getViewType(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 526
    invoke-static {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insertLinksOnSelectedViewAsMenus(Landroid/view/Menu;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getSelectedView()Landroid/view/View;

    move-result-object v4

    .line 536
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 538
    sget v5, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_bound_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 539
    .local v1, "boundView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 540
    sget v5, Lcom/google/glass/common/R$id;->tag_menu_item:I

    invoke-virtual {v1, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/glass/widget/MenuItemDescriptor;

    move-object v3, v5

    check-cast v3, [Lcom/google/glass/widget/MenuItemDescriptor;

    .line 542
    .local v3, "items":[Lcom/google/glass/widget/MenuItemDescriptor;
    if-eqz v3, :cond_0

    .line 543
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 544
    const/4 v5, 0x0

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lcom/google/glass/widget/MenuItemDescriptor;->getId()I

    move-result v6

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/google/glass/widget/MenuItemDescriptor;->getCommand()Lcom/google/android/glass/app/ContextualMenus$Command;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/glass/app/ContextualMenus$Command;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v5, v6, v2, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 545
    .local v0, "add":Landroid/view/MenuItem;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "extra_url"

    aget-object v7, v3, v2

    invoke-virtual {v7}, Lcom/google/glass/widget/MenuItemDescriptor;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 546
    aget-object v5, v3, v2

    invoke-virtual {v5}, Lcom/google/glass/widget/MenuItemDescriptor;->getIconRid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 547
    invoke-static {}, Lcom/google/glass/menu/GlassMenuHelperProvider;->getInstance()Lcom/google/glass/menu/GlassMenuHelperProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/menu/GlassMenuHelperProvider;->get()Lcom/google/glass/menu/GlassMenuHelper;

    move-result-object v5

    aget-object v6, v3, v2

    .line 548
    invoke-virtual {v6}, Lcom/google/glass/widget/MenuItemDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v6

    .line 547
    invoke-virtual {v5, v0, v6}, Lcom/google/glass/menu/GlassMenuHelper;->setDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "add":Landroid/view/MenuItem;
    .end local v1    # "boundView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "items":[Lcom/google/glass/widget/MenuItemDescriptor;
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 557
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollView;->onAttachedToWindow()V

    .line 558
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering BugReportBroadcastReceiver"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->debugBroadcastReceiver:Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;

    .line 560
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 559
    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 561
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0}, Lcom/google/android/glass/widget/CardScrollView;->onDetachedFromWindow()V

    .line 566
    sget-object v0, Lcom/google/glass/timeline/ui/TimelineView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering BugReportBroadcastReceiver"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->debugBroadcastReceiver:Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;

    .line 568
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/glass/timeline/ui/TimelineView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    .line 567
    invoke-virtual {v0, v1}, Lcom/google/glass/timeline/ui/TimelineView$DebugBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 569
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->onSelectListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 226
    const/4 v6, 0x0

    .local v6, "i":I
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->onSelectListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "n":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 227
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->onSelectListeners:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;

    invoke-interface {v0, p3}, Lcom/google/glass/timeline/ui/TimelineView$OnSelectedListener;->onSelected(I)V

    .line 226
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 230
    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_0
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 233
    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/google/glass/timeline/ui/TimelineView;->selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    .line 240
    :cond_0
    return-void
.end method

.method protected varargs setAdapters(Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;[",
            "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "homePositionAdapter":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    .local p2, "newWrappers":[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "[Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    const/4 v7, 0x0

    .line 260
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    .line 263
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v8, p2

    if-ge v3, v8, :cond_0

    .line 264
    aget-object v8, p2, v3

    invoke-virtual {v8}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/glass/widget/CardScrollAdapter;->hasStableIds()Z

    move-result v8

    invoke-static {v8}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 265
    aget-object v8, p2, v3

    invoke-virtual {v8}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v8

    instance-of v8, v8, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-static {v8}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    array-length v8, p2

    if-nez v8, :cond_1

    .line 270
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/google/glass/timeline/ui/TimelineView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 403
    :goto_1
    return-void

    .line 276
    :cond_1
    array-length v8, p2

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 278
    aget-object v8, p2, v7

    invoke-virtual {v8}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    .line 291
    .local v1, "contentAdapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    :goto_2
    instance-of v8, v1, Lcom/google/glass/timeline/SearchableAdapter;

    invoke-static {v8}, Lcom/google/glass/predicates/Assert;->assertTrue(Z)V

    .line 294
    array-length v8, p2

    :goto_3
    if-ge v7, v8, :cond_4

    aget-object v6, p2, v7

    .line 295
    .local v6, "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    iget-object v9, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 281
    .end local v1    # "contentAdapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    .end local v6    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_2
    array-length v8, p2

    add-int/lit8 v8, v8, -0x2

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    .line 282
    .local v2, "first":Lcom/google/android/glass/widget/CardScrollAdapter;
    array-length v8, p2

    add-int/lit8 v8, v8, -0x1

    aget-object v8, p2, v8

    invoke-virtual {v8}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v4

    .line 283
    .local v4, "second":Lcom/google/android/glass/widget/CardScrollAdapter;
    new-instance v5, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;

    invoke-direct {v5, v2, v4}, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 284
    .local v5, "treeAdapter":Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;
    array-length v8, p2

    add-int/lit8 v3, v8, -0x3

    :goto_4
    if-ltz v3, :cond_3

    .line 285
    aget-object v8, p2, v3

    invoke-virtual {v8}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v2

    .line 286
    move-object v4, v5

    .line 287
    new-instance v5, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;

    .end local v5    # "treeAdapter":Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;
    invoke-direct {v5, v2, v4}, Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;-><init>(Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/android/glass/widget/CardScrollAdapter;)V

    .line 284
    .restart local v5    # "treeAdapter":Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 289
    :cond_3
    move-object v1, v5

    .restart local v1    # "contentAdapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    goto :goto_2

    .line 299
    .end local v2    # "first":Lcom/google/android/glass/widget/CardScrollAdapter;
    .end local v4    # "second":Lcom/google/android/glass/widget/CardScrollAdapter;
    .end local v5    # "treeAdapter":Lcom/google/glass/timeline/ui/TimelineView$SearchableCompositeAdapter;
    :cond_4
    new-instance v0, Lcom/google/glass/timeline/ui/TimelineView$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/timeline/ui/TimelineView$1;-><init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;)V

    .line 390
    .local v0, "adapter":Lcom/google/android/glass/widget/CardScrollAdapter;
    new-instance v7, Lcom/google/glass/timeline/ui/TimelineView$2;

    invoke-direct {v7, p0, v0}, Lcom/google/glass/timeline/ui/TimelineView$2;-><init>(Lcom/google/glass/timeline/ui/TimelineView;Lcom/google/android/glass/widget/CardScrollAdapter;)V

    invoke-virtual {v1, v7}, Lcom/google/android/glass/widget/CardScrollAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 402
    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/ui/TimelineView;->setAdapter(Lcom/google/android/glass/widget/CardScrollAdapter;)V

    goto :goto_1
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 206
    return-void
.end method

.method public setSelectionListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView;->selectionListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 213
    return-void
.end method

.method public setUiPerformanceLog(Lcom/google/glass/userevent/UiPerformanceLog;)V
    .locals 0
    .param p1, "uiPerformanceLog"    # Lcom/google/glass/userevent/UiPerformanceLog;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/timeline/ui/TimelineView;->uiPerformanceLog:Lcom/google/glass/userevent/UiPerformanceLog;

    .line 187
    return-void
.end method

.method public updateQueryParameters()V
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    invoke-virtual {v2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->updateQueryParameters()V

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    return-void
.end method

.method public waitForLoad(Lcom/google/glass/timeline/TimelineItemId;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "id"    # Lcom/google/glass/timeline/TimelineItemId;
    .param p2, "onLoad"    # Ljava/lang/Runnable;

    .prologue
    .line 429
    const/4 v1, 0x0

    .line 430
    .local v1, "matched":Z
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 431
    iget-object v4, p0, Lcom/google/glass/timeline/ui/TimelineView;->wrappers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;

    .line 432
    .local v3, "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    if-eqz v1, :cond_1

    .line 434
    invoke-virtual {v3, p1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v4

    invoke-static {v4}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 430
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v3, p1}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->matches(Lcom/google/glass/timeline/TimelineItemId;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    const/4 v1, 0x1

    .line 438
    invoke-virtual {v3, p2}, Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;->waitForLoad(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 442
    .end local v3    # "wrapper":Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper;, "Lcom/google/glass/timeline/ui/TimelineView$AdapterWrapper<*>;"
    :cond_2
    return-void
.end method
